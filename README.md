# MyMLB

Esse aplicativo busca reproduzir uma temporada da Major League Baseball (MLB). O caledário usado é de 2017, pois foi o mais acessível quando eu criava o modelo de partidas.
O aplicativo é construído em Ruby on Rails 5.0.1 e usa, via CDN, Materialize 

This app tries to reproduce a MLB season (Regular season and Postseason). I used 2017 schedule because it was more accessble when I created Matches model.
App is built on Ruby on Rails version 5.0.1 and uses Materialize through CDN

# O que foi feito (What has been done)?

* Uma temporada pode ser simulada, pelo menos na sua temporada regular (regular season can be simultaed)
    * a simulação dos jogos é feita na view **. Tentei fazer no helper, e no modelo. Infelizmente, e por algum motivo desconhecido, não deu certo
    * game simulation is made in the view ** .Tried to create a method on model, and on hepler. Unfurtunately, and for some unknown reason, it didn't work
    * a forma de classificar os times ainda está em desenvolvimento
    * classification is still on development

# Próximos passos (Next steps)

* Refatorar o sistema, ou recriar o projeto usando Ruby como API ou mesmo como ferramenta princiapl
* Refactor the system or recreating it using Ruby as API or even main tool

(**) modo porco (it refers to the worst way possible to make something happen)
