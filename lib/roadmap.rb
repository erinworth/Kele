module Roadmap
  def get_roadmap(id)
    response = self.class.get("/roadmap/#{id}", headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end
