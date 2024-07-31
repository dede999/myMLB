# MyMLB

Esse aplicativo busca reproduzir uma temporada da Major League Baseball (MLB). O caledário usado é de 2017, pois foi o mais acessível quando eu criava o modelo de partidas.
O aplicativo é construído em Ruby on Rails 5.0.1 e usa, via CDN, Materialize 

This app tries to reproduce a MLB season (Regular season and Postseason). I used 2017 schedule because it was more accessble when I created Matches model.
App is built on Ruby on Rails version 5.0.1 and uses Materialize through CDN

## O que foi feito (What has been done)?

* Uma temporada pode ser simulada, pelo menos na sua temporada regular (regular season can be simultaed)
    * a simulação dos jogos é feita na view. Não é o ideal, mas eu tentei fazer um método no helper ou no modelo. Infelizmente, e por algum motivo desconhecido, não deu certo
    * game simulation is made in the view. It's not ideal, but I tried to create a helper or a model method for that. Unfurtunately, and for some unknown reason, it didn't work
    * a forma de classificar os times ainda está em desenvolvimento
    * classification is still on development

# Próximos passos (Next steps)

* Refatorar o sistema, ou recriar o projeto usando Ruby como API ou mesmo como ferramenta princiapl
* Refactor the system or recreating it using Ruby as API or even main tool

## Post mortem

* Most of these applications are made for exploration purpose only. The professional ones are closed by the clients
* Writing that simulation on the view was a very poor choice, and it did not work as I did not find a way for that changes to be visible as they happened.
  * To achieve that, I'd probably have to use [Action Cable](https://guides.rubyonrails.org/action_cable_overview.html), but I did not study the documentation far enough to be sure
  * One other possibility was to perform a Job to simulate the match course until its end
  * The better solution envolves avoiding the user to be locked in that screen
