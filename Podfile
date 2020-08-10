# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'UnitTests' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'SwiftLint'
  def testing_pods
      pod 'Quick'
      pod 'Nimble'
  end

  target 'UnitTestsTests' do
    inherit! :search_paths
    testing_pods
  end

  target 'UnitTestsUITests' do
    testing_pods
  end

end
