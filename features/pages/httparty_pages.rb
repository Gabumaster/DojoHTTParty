class Base

    include HTTParty

    base_uri "https://nextel.gateway.zup.me"

    def zupprod(cpf)   

    self.class.get("/abrt/v1/document/#{cpf}",
        :headers => {'x_organization_slug' => 'nextel', 'x-application-id' => '734fae3d46d4da63ee36d2b6fd25a77f3f7c3ef5', 'x-uid' => '6271d600-1b19-11e8-b8bf-0275f85bd101', 'x-application-key' => '37f57cc04b570134b042021e75abe44c'})
    end    
end
