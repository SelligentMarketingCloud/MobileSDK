Pod::Spec.new do |s|
  s.name         = "SelligentMobileSDK"
  s.summary      = "Selligent Marketing Cloud - Mobile SDK for iOS"
  s.description  = <<-DESC
    The Selligent Marketing Cloud - Mobile SDK is a tool that enables you to use the Selligent Marketing Cloud - Mobile feature in a very easy and straightforward way.
    By incorporating our latest SDK for iOS in your app, we support you in handling push messages, in app messages, in app content, standard and custom events as well as logins and logouts in the app.
                   DESC
  s.homepage     = "https://github.com/SelligentMarketingCloud/MobileSDK-iOS"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "SelligentMarketingCloud"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/SelligentMarketingCloud/MobileSDK-iOS.git", :branch => 'hotfix_2.5.1' }
  
  s.default_subspec = "Core"

  s.subspec "Core" do |sc|
    sc.source_files  = "iOS Lib/include"
    sc.vendored_libraries = "iOS Lib/libSelligentMobile.a"
  end
  
  s.subspec "Geofencing" do |sg|
    sg.source_files  = "iOS Lib- Plot geofencing support/include"
    sg.vendored_libraries = "iOS Lib- Plot geofencing support/libSelligentMobile.a"
    sg.dependency "PlotPlugin"
  end
end
