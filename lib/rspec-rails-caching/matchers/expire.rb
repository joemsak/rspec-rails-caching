require 'rspec-rails-caching/matchers/base'

module RSpecRailsCaching::Matchers

  caching_matcher :expire do
    def cache_or_expire
      "expire"
    end

    def cache_results
      cache_store.expired
    end
  end

  alias_method :expire_fragment, :expire
  alias_method :expire_action,   :expire

end
