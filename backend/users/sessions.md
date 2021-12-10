# API USERS

Ator: Aplicação Web, Mobile ou qualquer outro front

## Sessions 

### Login do usuário

`Dado que o usuário submeteu o formulário de login com dados corretos` 
`Quando faço uma requisição POST para a rota /sessions`
`Então o status code deve ser igual a 200`
`E deve retornar um token JWT na resposta`
`E esse token deve expirar em até 10 dias`

### Senha Incorreta

`Dado que o usuário submeteu o formulário de login com senha invalida`
`quando faço uma requisição POST para a rota/sessions`
`Então o status code deve ser igual a 401`
`E deve retornar a mensagem "Unauthorized"`

### Usuário não existe

`Dado que o usuário submeteu o formulário de login com um email não cadastrado`
`quando faço uma requisição POST para a rota/sessions`
`Então o status code deve ser igual a 401`
`E deve retornar a mensagem "Unauthorized"`

### Email no formato incorreto

`Dado que o usuário submeteu o formulário de login com um email no formato incorreto`
`quando faço uma requisição POST para a rota/sessions`
`Então o status code deve ser igual a 400`
`E deve retornar a mensagem "Incorrect Email"`

### Email em branco

`Dado que o usuário submeteu o formulário de login com um email em branco`
`quando faço uma requisição POST para a rota/sessions`
`Então o status code deve ser igual a 400`
`E deve retornar a mensagem "Required Email"`

### Sem o campo email

`Dado que o usuário submeteu o formulário de login sem o email`
`quando faço uma requisição POST para a rota/sessions`
`Então o status code deve ser igual a 400`
`E deve retornar a mensagem "Required Email"`

### Senha em branco

`Dado que o usuário submeteu o formulário de login com a senha em branco`
`quando faço uma requisição POST para a rota/sessions`
`Então o status code deve ser igual a 400`
`E deve retornar a mensagem "Required pass"`

### Sem o campo senha

`Dado que o usuário submeteu o formulário de login sem o senha`
`quando faço uma requisição POST para a rota/sessions`
`Então o status code deve ser igual a 400`
`E deve retornar a mensagem "Required Pass"`
