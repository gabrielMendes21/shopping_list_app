# Shopping List App

Um aplicativo de lista de compras desenvolvido em Flutter que permite adicionar, visualizar e remover itens de forma intuitiva. O app utiliza formulários com validação e oferece uma interface moderna com tema escuro.

## 📋 Sobre o Projeto

Este projeto é uma aplicação de lista de compras que demonstra conceitos fundamentais do Flutter, incluindo gerenciamento de estado, navegação entre telas, validação de formulários e manipulação de listas dinâmicas. Os usuários podem adicionar itens com nome, quantidade e categoria, além de remover itens deslizando-os para o lado (swipe to dismiss).

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
├── main.dart                 # Ponto de entrada da aplicação
├── data/
│   ├── categories.dart       # Dados das categorias disponíveis
│   └── dummy_items.dart      # Dados de exemplo (não utilizados ativamente)
├── models/
│   ├── category.dart         # Modelo de dados para categorias
│   └── grocery_item.dart     # Modelo de dados para itens da lista
└── widget/
    ├── grocery_list.dart     # Tela principal com a lista de compras
    └── new_item.dart         # Tela de formulário para adicionar novos itens
```

### Principais Funcionalidades

- ✅ Adicionar itens com nome, quantidade e categoria
- ✅ Validação de formulários com feedback visual
- ✅ Remover itens com gesto de deslizar (Dismissible)
- ✅ Interface responsiva com Material Design
- ✅ Tema escuro personalizado
- ✅ Navegação entre telas com retorno de dados
