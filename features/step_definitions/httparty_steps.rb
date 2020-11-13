Dado("que eu tenha o link da api") do
  @resp = Base.new
  @response = @resp.zupprod(32091202851)

  # @get = HTTParty.get('https://nextel.gateway.zup.me/abrt/v1/document/32091202851',
  #   :headers => {'x_organization_slug': 'nextel',
  #   'x-application-id': '734fae3d46d4da63ee36d2b6fd25a77f3f7c3ef5',
  #   'x-uid': '6271d600-1b19-11e8-b8bf-0275f85bd101',
  #   'x-application-key': '37f57cc04b570134b042021e75abe44c',
  #   'Content-Type': 'application/json'})

  # @getzup = HTTParty.post('http://osbmob.nextel.com.br/BillingInvoice/SearchInvoiceSN', :body => '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:sear="hhttp://www.nextel.com.br/BillingInvoice/SearchInvoiceMesssage">
  #     <soapenv:Header/>
  #     <soapenv:Body>
  #        <sear:SearchInvoice>
  #           <sear:CustomerCode>6.810460</sear:CustomerCode>
  #           <sear:CycleYear>2020</sear:CycleYear>
  #           <sear:CycleMonth>10</sear:CycleMonth>
  #        </sear:SearchInvoice>
  #     </soapenv:Body>
  #   </soapenv:Envelope>')

  print @response.body
  print @response.code
  # print @response.size
  # print @response.message

  # puts @getzup '<Bairro xmlns="">CUPECE</Bairro>' + "\n" + @getzup '<Cep xmlns="">04652200</Cep>' + "\n" + @getzup '<QualidadeCadastral xmlns="">BRONZE</QualidadeCadastral>'
end

Entao("o meu status code tem que ser igual a {int}") do |valor|
  expect(@response.code).to eq 200
  # puts @getzup.message if expect(@getzup.code).to eq valor
end