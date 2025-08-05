# Inspire Box - LLM Instructions

This is a web application for managing quotes (citations) using Ruby on Rails 8 and picocss.

## Code Style and Language

- All code must be written in **English**.
- Comments should be written in **Brazilian Portuguese (pt-BR)** to improve comprehension for the development team.
- Use **Stimulus.js** for JavaScript interactions and DOM behavior. Don't use javascript on HTML pages.
- Use **ES6+ syntax** for all JavaScript code.
- Don't use jQuery or legacy JavaScript styles.

## Backend (Rails 8)

- Follow all **Rails 8 conventions**, including MVC structure, RESTful routes, and service objects.
- Use **partials** in views to reuse components and keep templates clean.
- Prefer the use of `before_action` callbacks in controllers to keep logic DRY.

## Frontend (picocss)

- Use only **picocss classes** for layout and styling.
- Avoid writing custom CSS unless absolutely necessary.
- Prefer using picocss components over third-party UI libraries.
- Use rails helpers like **image_tag** and **link_to** in views.
- link_to should use turbo_method for verbs like post, put and delete. Example `data: {turbo_method: :delete, turbo_confirm: 'are you sure?'}`

## Project Organization

- Keep business logic in models
- Place all JavaScript controllers in `app/javascript/controllers`.

## Additional Notes

- Código limpo, legível e bem comentado é prioridade.
- Documente qualquer comportamento inesperado ou workaround com comentários em pt-BR.
- Sempre prefira a clareza à esperteza no código.
