local smaato = require "plugin.smaato"
local json = require "json"

local function somoListerner( event )
	print("++++smaato Event:", json.prettify(event))
	
	if event.phase == "init" then
		
        smaato.show( "banner", {adSpaceId = 0, y="bottom", autoRefresh=true, refreshInterval=45 })
		smaato.load( "interstitial", {adSpaceId = 0})
		
    elseif event.phase == "loaded" then
        if event.isError == true then
            
            btimer.performWithDelay( 45000, function()
                smaato.load( "interstitial", {adSpaceId = 0}) 
			end )
			
        end
	elseif event.phase == "hidden" then
		smaato.load( "interstitial", {adSpaceId = 0} ) 
		
    end
end

smaato.init( somoListerner, { pubId = 0} )
            
timer.performWithDelay( 30000, function()
	smaato.show("interstitial")
end, 1 )

