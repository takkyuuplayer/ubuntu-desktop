%w( ibus-mozc terminator ).each do |pkg|
    package pkg do
          action :install
            end
end
