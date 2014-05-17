class VsoController < ApplicationController
  skip_before_filter :verify_authenticity_token ,:only=>[:idobata]

  def idobata
	uri = 'https://idobata.io/hook/' + params[:id]
	body = JSON.parse(request.body.read)
	message = body["resource"]["name"] + '| <a href="' + body["resource"]["url"] + '">' + body["resource"]["status"] + '</a> | ' + body["message"]["html"]
	Net::HTTP.post_form(URI.parse(uri), { 'format' => 'html', 'source' => message })
	render :json => true
  end
end
