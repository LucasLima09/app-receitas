# 🍲 Receitas (DeliMeals)

Um aplicativo Flutter de receitas ("DeliMeals"). Este aplicativo permite aos usuários explorar diversas categorias de pratos, visualizar os detalhes de cada receita, favoritar suas refeições preferidas e aplicar filtros de restrições alimentares (Sem glúten, sem lactose, vegano e vegetariano).

## ✨ Funcionalidades

- **Navegação por abas (Tabs):** Navegação fluida entre as categorias e os pratos favoritos.
- **Categorias de Refeições:** Explore refeições baseadas em categorias (ex: Italiano, Rápido e Fácil, Hamburgers, etc.).
- **Detalhes da Refeição:** Descubra os ingredientes e os passos (modo de preparo) necessários para cada prato.
- **Favoritos:** Salve suas refeições favoritas em uma aba exclusiva para acesso rápido.
- **Filtros Personalizados:** Tela de configurações para filtrar pratos exibidos de acordo com suas restrições:
  - Sem Glúten
  - Sem Lactose
  - Vegano
  - Vegetariano
- **Drawer de Navegação:** Menu lateral acessível na tela principal para navegar facilmente entre "Refeições" e "Configurações".

## 📱 Telas (Screens)

- **Tabs Screen:** Tela principal que gerencia as abas Inferiores (Categorias e Favoritos).
- **Categorias Screen:** Lista de estilos e tipos de refeição em formato de grade (grid).
- **Categorias Meals Screen:** Exibe todas as refeições disponíveis na categoria selecionada, respeitando os filtros ativos.
- **Meal Details Screen:** Mostra uma imagem da refeição, ingredientes, e os passos necessários para cozinhar. Possui o botão estilo FAB para favoritar o prato.
- **Settings Screen:** Tela com as opções de switch para aplicar filtros globais às refeições.
- **Favorite Screen:** Exibição rápida das refeições favoritadas.

## 🛠️ Tecnologias Utilizadas

- **Flutter / Dart**
- **Gerenciamento de Estado:** `setState` (Gerenciamento clássico)
- **Roteamento:** Navegação por rotas nomeadas (`Navigator.of(context).pushNamed(...)`)
- **UI Responsiva Básica:** Uso de MediaQuery e AspectRatio adaptado para mobile.

## 📁 Estrutura de Arquivos Principal

```text
lib/
├── components/          # Widgets reutilizáveis (CategoryItem, MealItem, MainDrawer)
├── data/                # Dados fictícios (dummy_data) estruturando as categorias e refeições
├── models/              # Classes de modelo (Category, Meal, Settings)
├── screens/             # Telas da aplicação
│   ├── categorys_meals_screen.dart
│   ├── categorys_screen.dart
│   ├── favorite_screen.dart
│   ├── meal_details_screen.dart
│   ├── settings_screen.dart
│   └── tabs_screen.dart
├── utils/               # Utilitários e rotas nomeadas (app_routes.dart)
└── main.dart            # Ponto de entrada, configuração do tema geral e das rotas
```

## 🚀 Como Executar

**Pré-requisitos:** Você precisa ter o [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado.

1. **Faça o Clone do Repositório (ou baixe os arquivos):**
   ```bash
   git clone <sua-url-aqui>
   ```

2. **Acesse a pasta do projeto:**
   ```bash
   cd app-receitas
   ```

3. **Instale as dependências:**
   ```bash
   flutter pub get
   ```

4. **Execute o App:**
   ```bash
   flutter run
   ```

