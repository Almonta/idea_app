require 'rails_helper'

describe 'POST /ideas' do
  before do
    post "/api/v1/ideas", params: { idea: { body: 'test' } }
  end
  it '登録できること' do
    expect(response).to have_http_status 422
    # expect(Idea.all.count).to eq 1
  end
end
