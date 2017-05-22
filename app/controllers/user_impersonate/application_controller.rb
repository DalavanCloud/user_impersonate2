module UserImpersonate
  class ApplicationController < ::ApplicationController
  	[:before, :after, :around].each do |callback|
  	  define_method "#{callback}_filter" do |*names, &blk|
        send("#{callback}_action", *names, &blk)
      end
  	end
  end
end
