local smaato = require "plugin.smaato"
local json = require "json"

local function somoListerner( event )
	print("++++smaato Event:", json.prettify(event))
	
	if event.phase == "init" then
    smaato.show( "banner", {adSpaceId = 0, y="bottom", autoRefresh=true, refreshInterval=45 })
		smaato.load( "interstitial", {adSpaceId = 0})
    smaato.load( "rewardedVideo", {adSpaceId = 0})
	
  elseif event.phase == "hidden" then
		smaato.load( "interstitial", {adSpaceId = 0} ) 
		smaato.show( "banner", {adSpaceId = 0, y="top", autoRefresh=true, refreshInterval=45 })
    end
end

smaato.init( somoListerner,{ pubId = 0} )
            
timer.performWithDelay( 30000, function()
	if smaato.isLoaded( "interstitial" ) then
		smaato.hide("banner")
		smaato.show("interstitial")
	end
end, 1 )

timer.performWithDelay(45000, function()
  if smaato.isLoaded( "rewardedVideo" ) then
    smaato.hide("banner")
    smaato.show("rewardedVideo")
  end
end, 1)


