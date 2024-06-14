# Flutter Firebase Book App

## Descrição

O **Flutter Firebase Book App** é um aplicativo desenvolvido em Flutter que permite aos usuários se registrarem e fazerem login usando o Firebase Authentication. Além disso, o aplicativo utiliza a API OpenLibrary para buscar e exibir capas de livros a partir de seus ISBNs.

## Funcionalidades

- Registro e login de usuários usando Firebase Authentication.
- Pesquisa de capas de livros utilizando a API OpenLibrary através de ISBNs.

## Tecnologias Utilizadas

- [Flutter](https://flutter.dev/) - Framework para desenvolvimento de interfaces nativas.
- [Firebase Authentication](https://firebase.google.com/products/auth) - Serviço de autenticação de usuários.
- [API OpenLibrary](https://openlibrary.org/developers/api) - API para obtenção de dados sobre livros.

## Requisitos

- Flutter 2.0 ou superior
- Conta no Firebase
- Chave de API do OpenLibrary

## Configuração do Projeto

1. Clone este repositório:

    ```bash
    git clone [https://github.com/seu-usuario/seu-repositorio.git](https://github.com/Carolina-Silva/BookFlutter.git)
    ```

2. Navegue até o diretório do projeto:

    ```bash
    cd bookshifter
    ```

3. Instale as dependências do Flutter:

    ```bash
    flutter pub get
    ```

4. Configure o Firebase Authentication:

   - Crie um projeto no [Firebase Console](https://console.firebase.google.com/).
   - Siga as instruções para adicionar o Firebase ao seu aplicativo Flutter (incluindo o download do `google-services.json` para Android e/ou `GoogleService-Info.plist` para iOS).
   - Habilite o provedor de autenticação Email/Senha no Firebase Authentication.

5. Configure a API do OpenLibrary:

   - A API do OpenLibrary não requer uma chave de API, mas você deve ler a [documentação da API](https://openlibrary.org/developers/api) para entender os endpoints disponíveis.

## Uso

1. Execute o aplicativo no emulador ou dispositivo físico:

    ```bash
    flutter run
    ```


## Licença

Este projeto está licenciado sob a Licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

<div align="center">
    <img src="https://storage.googleapis.com/cms-storage-bucket/6a07d8a62f4308d2b854.svg" width="100">
    <img src="https://firebase.google.com/downloads/brand-guidelines/PNG/logo-vertical.png" width="100">
    <img src="https://openlibrary.org/static/images/openlibrary-logo-tighter.svg" width="100">
</div>

