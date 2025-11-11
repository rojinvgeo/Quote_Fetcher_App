# ✨ Quote Fetcher App

A **mini Flutter project** demonstrating **Clean Architecture concepts** — refactoring features into **modules, interfaces, and testing seams**.  
This simple app fetches and displays random quotes using a structured, maintainable codebase.

---

## 🚀 Features
✅ Fetch random quotes from a public API  
✅ Clear separation of **UI**, **Domain**, and **Data** layers  
✅ Demonstrates **repository pattern**, **abstraction**, and **dependency injection**  
✅ Perfect for beginners learning **clean architecture** in Flutter  

---


📁 **Layers Explanation:**
- **Data Layer:** Handles fetching quotes from the API  
- **Domain Layer:** Defines entities and abstract repositories  
- **Presentation Layer:** UI widgets and screens (Flutter UI)

---

## ⚙️ How It Works

1. `QuoteRepositoryImpl` fetches quotes from a REST API  
2. The domain layer defines the `Quote` entity and the repository contract  
3. The UI layer calls the repository via dependency injection  
4. The fetched quote is displayed beautifully in the `QuotePage`

---

## 🧩 Technologies Used
- **Flutter** 🐦  
- **Dart** 💙   
- **Clean Architecture Pattern** 🧱  

---

## 🖥️ Setup Instructions

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/rojinvgeo/Quote_Fetcher_App.git
```
```bash
cd quote_fetcher_app
```
```bash
flutter run
```


