# 📰 News Application

**News Application** is a Flutter-based mobile app that displays the latest news from different categories using a REST API.  
The app is built with a clean architecture using Models, Services, Views, and Widgets for better code organization.  

---

## ✨ Features  

- 🌍 Browse news by category.  
- 📰 View detailed articles with title, description, and image.  
- 🖼️ Display news in list and card formats.  
- 📱 Responsive design for both Android and iOS.  
- ⚡ Fetch live news using REST API.  

---

## 🛠️ Technologies  

- **Flutter & Dart**  
- **HTTP package** for API requests  
- **Material Design Widgets**  

---

## 📂 Project Structure  

```
lib/
 ┣ models/                  
 ┃ ┣ article_model.dart         # News article model
 ┃ ┗ category_model.dart        # News category model

 ┣ services/                
 ┃ ┗ news_service.dart          # API service for fetching news

 ┣ views/                   
 ┃ ┣ category_view.dart         # News by category screen
 ┃ ┗ home_view.dart             # Home screen

 ┣ widgets/                 
 ┃ ┣ categories_list_view.dart  # List of categories
 ┃ ┣ category_card.dart         # Category card widget
 ┃ ┣ holde.dart                 # Helper widget/file
 ┃ ┣ news_list_view.dart        # News list view
 ┃ ┣ news_list_view_builder.dart# News list view builder
 ┃ ┗ news_tile.dart             # Single news tile

 ┗ main.dart                 # App entry point
```

---

## 🚀 Getting Started  

### 1. Clone the repository  
```bash
git clone https://github.com/KhaledBahjat/newsApp
```

### 2. Navigate to the project folder  
```bash
cd news_app
```

### 3. Install dependencies  
```bash
flutter pub get
```

### 4. Run the app  
```bash
flutter run
```

---

## 📌 Roadmap / Future Improvements  

- 📝 Save favorite articles.  
- 🔔 Push notifications for breaking news.  
- 🌙 Dark mode support.  
- 🌐 Multi-language support.  

---
