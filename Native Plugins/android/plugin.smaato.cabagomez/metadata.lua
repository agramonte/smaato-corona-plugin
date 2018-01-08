local metadata =
{
    plugin =
    {
        format = 'jar',
        manifest = 
        {
            permissions = {},
            usesPermissions =
            {
                "android.permission.INTERNET",
                "android.permission.ACCESS_NETWORK_STATE",
                "android.permission.READ_PHONE_STATE"
            },
            
            usesFeatures = {},
            applicationChildElements =
            {
                [[<activity android:name="com.smaato.soma.interstitial.InterstitialActivity"
                android:resizeableActivity="false"  android:screenOrientation="landscape" />]],
                [[<activity android:name="com.smaato.soma.video.VASTAdActivity"
                android:resizeableActivity="false"  android:screenOrientation="landscape" />]],
                [[<activity android:name="com.smaato.soma.ExpandedBannerActivity"
                android:resizeableActivity="false"  android:screenOrientation="landscape" />]],
            },
        },
    },
    coronaManifest = {
        dependencies =
        { 
    	    ["shared.google.play.services.ads"] = "com.coronalabs",
    	    ["shared.android.support.v7"] = "com.coronalabs" 
    	}
    }
}

return metadata