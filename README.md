# README

## How to update Tuist version

## How to distribute a new version of plugin
### Using Xcode Archive
1. Open the plugin swift package in Xcode directly
2. Use Product -> Archive menu to create an archive
3. Export `Built Product` and save the binary somewhere
4. Discard all intermediate directories and zip the binary directly as `tuist-plugin-signing.tuist-plugin.zip` file
5. Create a new release in the repository and upload the zip file

### Using Tuist Plugin
1. Run `tuist plugin archive -p /path_to_plugin_root_dir/`
2. Create a new release in the repository and upload the zip file created by # 1 step

## TODO
