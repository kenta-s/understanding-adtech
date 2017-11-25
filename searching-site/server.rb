require 'sinatra'

media_page_url = "http://localhost:4568"

get '/' do
<<HTML
<html>
  <body>
    <form method=get action="search">
      <input type=text name=q />
      <input type=submit value=search />
    </form>
  </body>
</html>
HTML
end

get '/search' do
<<HTML
<html>
  <body>
    <form method=get action="search">
      <input type=text name=q />
      <input type=submit value=search />
    </form>

    <div>
      <p><a href="#{media_page_url}">#{params[:q]}</a><br/>#{params[:q]}に関するページです</p>
    </div>

    <div>
      <p><a href="#{media_page_url}">#{params[:q]}</a><br/>#{params[:q]}に関するページです</p>
    </div>

    <div>
      <p><a href="#{media_page_url}">#{params[:q]}</a><br/>#{params[:q]}に関するページです</p>
    </div>
  </body>
</html>
HTML
end
