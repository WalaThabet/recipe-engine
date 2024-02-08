# RecipeApp

RecipeApp is a Ruby on Rails application designed for managing and searching recipes. It features robust user authentication, CRUD operations for recipes, and an advanced search functionality powered by Thinking Sphinx.

## Features

- **User Authentication**: Implemented with Devise for secure access.
- **Advanced Search**: Powered by Thinking Sphinx, supporting search by title, cuisine, category, author, and ingredients.
- **Pagination**: Easy navigation through recipe lists with pagination.
- **Responsive Design**: Styled with Tailwind CSS for a modern look and feel.

## Technology Stack

- **Backend**: Ruby on Rails
- **Database**: PostgreSQL and MySQL
- **Styling**: Tailwind CSS
- **Testing**: RSpec
- **Search Engine**: Thinking Sphinx

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Ruby version 3.3.0
- Rails version 7.0.8
- Node.js and Yarn
- PostgreSQL and/or MySQL

### Installation

1. Clone the repository:
```bash
   git clone https://github.com/your-username/recipe-app.git
  ```
2. Navigate to the application directory:

```bash
cd recipe-app
```

2. Install Ruby and JavaScript dependencies:
```bash
bundle install
yarn install
```
3. Set up the database:
```bash
rails db:create db:migrate
```

3. Run the recipes importing script:
```bash
rake db:import_recipes
```
4. Start the Rails server:

```bash
rails server
```
5. Open http://localhost:3000 in your web browser.
6. Running the Tests
To run the test suite, use the following command:

```bash
bundle exec rspec
```
This command will run all the RSpec tests to ensure the application works as expected.
