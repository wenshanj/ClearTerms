require "test_helper"

describe TCsController do
  let(:tc) { tcs :one }

  it "gets index" do
    get tcs_url
    value(response).must_be :success?
  end

  it "gets new" do
    get new_tc_url
    value(response).must_be :success?
  end

  it "creates tc" do
    expect {
      post tcs_url, params: { tc: { company_id: tc.company_id, rank_of_importance: tc.rank_of_importance, sentence: tc.sentence, sentence_order: tc.sentence_order } }
    }.must_change "Tc.count"

    must_redirect_to tc_path(Tc.last)
  end

  it "shows tc" do
    get tc_url(tc)
    value(response).must_be :success?
  end

  it "gets edit" do
    get edit_tc_url(tc)
    value(response).must_be :success?
  end

  it "updates tc" do
    patch tc_url(tc), params: { tc: { company_id: tc.company_id, rank_of_importance: tc.rank_of_importance, sentence: tc.sentence, sentence_order: tc.sentence_order } }
    must_redirect_to tc_path(tc)
  end

  it "destroys tc" do
    expect {
      delete tc_url(tc)
    }.must_change "Tc.count", -1

    must_redirect_to tcs_path
  end
end
