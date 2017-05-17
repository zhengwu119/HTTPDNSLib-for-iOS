#
#  Be sure to run `pod spec lint HTTPDNSLib-for-iOS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "HTTPDNSLib-for-iOS"
  s.version      = "0.0.1"
  s.summary      = "HttpDNS lib 库 iOS版本。"

  s.description  = <<-DESC
                   A longer description of HTTPDNSLib-for-iOS in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/lovewillover/HTTPDNSLib-for-iOS"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  #s.license      = "MIT (example)"
  s.license      = { :type => "MIT" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "lovewillover" => "200884712@qq.com" }
  # Or just: s.author    = "lovewillover"
  # s.authors            = { "lovewillover" => "email@address.com" }
  # s.social_media_url   = "http://twitter.com/lovewillover"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
    s.platform     = :ios, "7.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/lovewillover/HTTPDNSLib-for-iOS.git", :commit => "c2c4cd657b1b5030220c004351bf29020132ae4d" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

    s.source_files  = "src/", "src/DNSCache/*.{h,m}"
    s.subspec 'LogManager' do |ss|
    ss.source_files = 'src/DNSCache/LogManager/**/*.{h,m}'
    end
    s.subspec 'SortManager' do |ss|
    ss.source_files = 'src/DNSCache/SortManager/**/*.{h,m}'
    end
    s.subspec 'QueryManager' do |ss|
    ss.source_files = 'src/DNSCache/QueryManager/**/*.{h,m}'
    end
    s.subspec 'NetworkManager' do |ss|
    ss.source_files = 'src/DNSCache/NetworkManager/**/*.{h,m}'
    end
    s.subspec 'ConfigManager' do |ss|
    ss.source_files = 'src/DNSCache/ConfigManager/**/*.{h,m}'
    end
    s.subspec 'SpeedTestManager' do |ss|
    ss.source_files = 'src/DNSCache/SpeedTestManager/**/*.{h,m}'
    end
    s.subspec 'HttpDnsManager' do |ss|
    ss.source_files = 'src/DNSCache/HttpDnsManager/**/*.{h,m}'
    end
    s.subspec 'CacheManager' do |ss|
    ss.source_files = 'src/DNSCache/CacheManager/**/*.{h,m}'
    end
    s.subspec 'Tools' do |ss|
    ss.source_files = 'src/DNSCache/Tools/**/*.{h,m}'
    end
    s.subspec 'Models' do |ss|
    ss.source_files = 'src/DNSCache/Models/**/*.{h,m}'
    end
  #  s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "libsqlite3"
    s.frameworks = "SystemConfiguration", "CoreTelephony"
    s.library = 'sqlite3'
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

    s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
