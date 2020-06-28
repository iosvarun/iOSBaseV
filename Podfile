# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

inhibit_all_warnings!
use_frameworks!

def shared_pods()
  pod 'Firebase/Analytics'
  pod 'DeviceGuru'

end


def iosapp_pods()

end

def api_pods()
  pod 'SDWebImage', '~> 5.0'
  pod 'Alamofire', '~> 5.0.0-beta.5'
end



target 'BaseV' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
    shared_pods()

  # Pods for BaseV

  target 'BaseVTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'BaseVUITests' do
    # Pods for testing
  end

end
