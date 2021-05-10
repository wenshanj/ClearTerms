require './test/sets/companies'

module Contexts
    # explicitly include all sets of contexts used for testing 
    include Contexts::Companies
  
    
    def create_all
      # Kernel.puts "Building context..."
      create_companies
      # Kernel.puts "Created companies"
    end
    
end