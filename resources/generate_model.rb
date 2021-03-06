actions :backup, :disable, :remove

attribute :options, :kind_of => Hash
attribute :base_dir, :kind_of => String, :default => "/opt/backup"
attribute :gem_bin_dir, :kind_of => String, :default => nil
attribute :split_into_chunks_of, :kind_of => Fixnum, :default => nil
attribute :description, :kind_of => String, :default => nil
attribute :backup_type, :kind_of => String, :default => "database"
attribute :database_type, :kind_of => String, :default => nil
attribute :store_with, :kind_of => Hash
attribute :sync_with, :kind_of => Hash
attribute :before_hook, :kind_of => String, :default => nil
attribute :after_hook, :kind_of => String, :default => nil
attribute :hour, :kind_of => String, :default => "1"
attribute :minute, :kind_of => String, :default => "0"
attribute :day, :kind_of => String, :default => "*"
attribute :month, :kind_of => String, :default => "*"
attribute :weekday, :kind_of => String, :default => "*"
attribute :mailto, :kind_of => String, :default => nil
attribute :tmp_path, :kind_of => String, :default => nil
attribute :cron_path, :kind_of => String, :default => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin"
attribute :cron_log, :kind_of => String, :default => nil

def initialize(*args)
  super
  @action = :nothing
end
