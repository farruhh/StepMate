# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'StepMate' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for StepMate
# Networking
pod 'Alamofire', '~> 5.1'
pod 'SwiftyJSON'
pod 'PromiseKit', '~> 6.8'

# Rx
pod 'RxSwift'

#Bond
pod 'Bond'

# KWDrawerController
pod 'KWDrawerController', '~> 4.2'
pod 'KWDrawerController/RxSwift'

# LottieAnimations
pod 'lottie-ios'

## DEBUGging
pod 'CocoaLumberjack/Swift'


  target 'StepMateTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'StepMateUITests' do
    # Pods for testing
  end
deployment_target = '12.0'

post_install do |installer|
    installer.generated_projects.each do |project|
        project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = deployment_target
            end
        end
        project.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = deployment_target
        end
    end
end
end
