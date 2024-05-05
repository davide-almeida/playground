class Server < Sinatra::Base
  configure :development do
    enable :logging
  end

  set :views, settings.root + '/app/templates'
  set :variables, {
    :title => 'Título do bom',
    :description => 'Descrição da boa'
  }

  get '/' do
    erb :'hello/index.html', :locals => settings.variables
  end

  private

  def partial(name, options = {})
    slash = name.to_s.rindex('/') # pega a última ocorrência de '/'
    # Sobre o "reverse index": https://apidock.com/ruby/v2_5_5/Array/rindex
    erb :"#{name[0..slash]}_#{name[(slash + 1)..]}.html", options.merge(layout: false) # Ex.: 'shared/_header' (com o "_")
    # erb :"#{name}.html", options.merge(layout: false) # Ex.: 'shared/header' (sem o "_")
  end
end
