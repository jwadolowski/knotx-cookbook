class Chef
  class Provider
    class RemoteFile
      class CustomLocalFile < Chef::Provider::RemoteFile::LocalFile
        def fetch
          tempfile = Chef::FileContentManagement::Tempfile.new(new_resource).tempfile
          Chef::Log.debug("#{new_resource} staging #{source_path} to #{tempfile.path}")
          Chef::Log.debug("[#7248] Calling tempfile.write() instead of FileUtils.cp")
          tempfile.write(IO.read(source_path))
          tempfile.close if tempfile
          tempfile
        end
      end
    end
  end
end
