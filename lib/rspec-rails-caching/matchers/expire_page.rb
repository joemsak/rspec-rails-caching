require 'rspec-rails-caching/matchers/base'

module RSpecRailsCaching::Matchers

  caching_matcher :expire_page do
    def cache_or_expire
      "expire page"
    end

    def cache_results
      cache_store.expired_pages
    end
  end

end
