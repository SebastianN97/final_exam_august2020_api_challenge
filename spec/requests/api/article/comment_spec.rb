RSpec.describe "POST /api/articles/:id", type: :request do
  let(:article) { create(:article) }
  describe 'successfully' do
    before do
      get "/api/articles/#{article.id}"
    end

    it 'should respond with 200 status' do
      expect(response).to have_http_status 200
    end

    it 'returns correct article' do
      expect(response_json['article']['id']).to eq article.id
    end

    it 'returns comment on article' do
    end
  end
end
