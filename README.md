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
1. Add detailed diagnostic printing capability (--verbose)
2. Add p12 password parameter (--passphrase), which can be empty as a default to support current behavior, but it seems that keychain is no longer accepting an empty string (even when using `security` tool). So, the current plugin might be silently failing to install the certificate, which explains why we have to use a separate certificate upload step in Azure
3. Simplify provisioning profiles input. The folder name does not need to be assumed as `Signing`. The profiles have a bundle identifier in the metadata, so all we need to do is find a matching target and set its build settings to point to the matching profile.
4. Improve code quality
