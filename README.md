# Shopping List App

Um aplicativo de lista de compras desenvolvido em Flutter que permite adicionar, visualizar e remover itens, utilizando formulários com validação.

## 📋 Sobre o Projeto

Este projeto é uma aplicação de lista de compras. Os usuários podem adicionar itens com nome, quantidade e categoria, além de remover itens deslizando-os para o lado (swipe to dismiss).

## 🚀 Tecnologias Utilizadas

- **Flutter** - Framework de desenvolvimento multiplataforma
- **Dart** (^3.11.5) - Linguagem de programação
- **Material Design** - Design system do Google para interface do usuário

## 📱 Como Executar o Projeto

### Pré-requisitos

- Flutter SDK instalado ([Guia de instalação](https://docs.flutter.dev/get-started/install))
- Editor de código (VS Code, Android Studio, etc.)
- Emulador ou dispositivo físico configurado

### Passos para executar

1. Clone o repositório:
```bash
git clone https://github.com/gabrielMendes21/meals_app.git
cd shopping_list_app
```

2. Instale as dependências:
```bash
flutter pub get
```

3. Verifique se há dispositivos disponíveis:
```bash
flutter devices
```

4. Execute o projeto:
```bash
flutter run
```

Ou escolha um dispositivo específico:
```bash
flutter run -d <device-id>
```

## 🎯 Principais Conceitos Aprendidos

* **Lidando com formulários (validators e globalKey)** - Implementação de formulários com validação de dados usando `GlobalKey<FormState>`, validators personalizados para campos de texto e número, e métodos `validate()` e `save()` para processar os dados do formulário de forma segura e eficiente.

## 📁 Estrutura do Projeto

```
lib/
├── main.dart            
├── data/
│   ├── categories.dart  
│   └── dummy_items.dart 
├── models/
│   ├── category.dart    
│   └── grocery_item.dart
└── widget/
    ├── grocery_list.dart
    └── new_item.dart    
```
