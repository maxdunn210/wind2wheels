class StaticPagesController < ApplicationController

  def home_page
    @tenant_brand = Tenant.where(domain: request.domain).first.brand rescue "Varimetrics" # For title
  end

end
