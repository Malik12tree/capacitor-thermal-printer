require 'xcodeproj'

project_path = 'ios/App/App.xcodeproj'
project = Xcodeproj::Project.open(project_path)

target = project.targets.first
resource_files = target.resources_build_phase.files.to_a

has_ble_serial = resource_files.any? do |file|
    file.file_ref.real_path.basename.to_s == "ble_serial.plist"
end

if has_ble_serial then
    raise "ble_serial.plist file already exists!"
end

ble_file = project.new(Xcodeproj::Project::Object::PBXFileReference)
ble_file.set_path(__dir__ + '/../ios/Plugin/SDK/Resource/ble_serial.plist')

target.resources_build_phase.add_file_reference(ble_file, true)

project.save