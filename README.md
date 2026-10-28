# NewsCloud

A simple Flutter app that fetches the latest US headlines from NewsAPI and shows them in a scrollable feed. Pick a category to browse news by topic.

## Preview

<p align="center">
  <img src="screen%20(1).jpeg" width="250" alt="Home page">
  <img src="screen%20(2).jpeg" width="250" alt="Category page">
  <img src="screen%20(3).jpeg" width="250" alt="News list">
</p>

## Features

- Seven categories: Business, Entertainment, Health, Science, Technology, Sports and General
- Live headlines from NewsAPI, each with an image, a title and a short description
- Loading spinner while the news is being fetched
- Articles with broken images are hidden automatically
- Simple navigation between the home page and category pages

## How it works

One `NewsListViewBuilder` is reused on every screen. It receives a category, calls `NewsService` once in `initState`, and uses a `FutureBuilder` to show a spinner, an error message, or the list of articles.

`main.dart` → `HomeView` → `CategoriesListView` → `CategoryCard` → `CategoryView` → `NewsListViewBuilder` → `NewsListView` → `NewsTile`

## What I learned

- Making API calls with Dio and `Future` / `async` / `await`
- Turning JSON into models (`ArticleModel`, `CategoryModel`)
- Showing loading, error and data states with `FutureBuilder`
- Building a scrolling page with `CustomScrollView` and slivers
- Navigating between pages with `Navigator.push`

## Acknowledgment

This project was built while learning from **Complete Flutter & Dart Development Course [Arabic]** by **Tharwat Samy**.
