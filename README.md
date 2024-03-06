# Desafio The Movie DB
Você deverá criar um aplicativos sobre filmes, utilizando a [API](https://developer.themoviedb.org/docs/getting-started) do [TheMovieDB](https://www.themoviedb.org/), a ideia é que esse app a princípio seja básico e depois vamos evoluindo com features personalizadas, busca, favoritos e afins. 

## 1 Etapa - CI/CD, Splash, Login e Integração com redes :dart:

### CI/CD
Nesse desafio será obrigatório integrar esse app a uma pipeline, então você vai precisar pesquisar sobre os conceitos de Continuos Integration and Deploy. Utilizaremos o [Bitrise](https://bitrise.io/) como nossa plataforma para os builds. Crie uma conta e dê uma olhada nos pré requisitos.

### SPLASH
Para a Splash, crie uma class do tipo UIViewController para gerenciar essa cena, poderemos utilizar mais pra frente.
Utilize esse [Lottie](https://app.lottiefiles.com/animation/7d65ae82-deab-4200-aeba-d6c383f70235?channel=web&source=public-animation&panel=embed)

[Tutorial de como usar Lottie](https://lottiefiles.com/blog/working-with-lottie-animations/how-to-add-lottie-animation-ios-app-swift)

### LOGIN VIEW
Utilize o modelo proposto abaixo no Figma, contendo as labels, dois botões para login ou criar conta, e 3 botões para redes sociais (no momento só faremos layout - mas já deixe preparadas as cenas);
No nosso login teremos possibilidade de realizá-lo via social medias, você vai precisar pesquisar sobre como integrar a chamada para essas apis e habilitar login através delas para os nossos usuários. (Google, Apple e Facebook)

[Figma 1 Etapa](https://www.figma.com/file/jPXgNyq6UVbhmgB40uuQLD/tmDB?type=design&node-id=0%3A1&mode=design&t=Fv16s9cb2vFSbYJx-1)


## OBRIGATORIEDADES :warning: (em construção)
- Quadro [TRELLO](https://trello.com/invite/b/K0PZVC3b/ATTId44dbb30a0308f32259b1f5ef3cefc5a30C67DEC/squad-juniores), deve ser atualizado sempre que possível, com as estimativas e as informações que você vai precisar passar pro seu PM/ PO/ TM/ TechLead;
- Aplicação deve rodar o CI/CD;
- Precisa estar documentado então mantenha um README, com mínimo de informações sobre o que está sendo feito, e screenshoots;
- Testes Unitários;
- Aplicação deve ser construída puramente em viewCode;
- Arquitetura MVVM;
- Gitflow (feat -> develop -> main) - não abra PR para a main!
- Conventional commits
