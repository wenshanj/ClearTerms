require "test_helper"

describe CompaniesController do
  let(:company) { companies :one }

  it "gets index" do
    get companies_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_company_url
    value(response).must_be :success?
  end

  it "creates company" do
    expect {
      post companies_url, params: { company: { crunchbase_url: company.crunchbase_url, description: company.description, last_crawled_date: company.last_crawled_date, logo: company.logo, name: company.name, tc_filename: company.tc_filename, tc_url: company.tc_url, url: company.url } }
    }.must_change "Company.count"

    must_redirect_to company_path(Company.last)
  end

  it "shows company" do
    get company_url(company)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_company_url(company)
    value(response).must_be :success?
  end

  it "updates company" do
    patch company_url(company), params: { company: { crunchbase_url: company.crunchbase_url, description: company.description, last_crawled_date: company.last_crawled_date, logo: company.logo, name: company.name, tc_filename: company.tc_filename, tc_url: company.tc_url, url: company.url } }
    must_redirect_to company_path(company)
  end

  it "destroys company" do
    expect {
      delete company_url(company)
    }.must_change "Company.count", -1

    must_redirect_to companies_path
  end
end
