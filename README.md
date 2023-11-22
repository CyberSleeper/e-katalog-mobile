# Cyber Katalog Mobile

This is my weekly assignment for Platform Based Programming lecture.

### Jump to
- [Week 07](#week-07)
- [Week 08](#week-08)
- [Week 09](#week-09)

## Week 07

### Scope
- [What are the main differences between stateless and stateful widget in Flutter?](#what-are-the-main-differences-between-stateless-and-stateful-widget-in-flutter)
- [Explain all widgets that you used in this assignment.](#explain-all-widgets-that-you-used-in-this-assignment)
- [Explain how you implemented the checklist above step-by-step.](#explain-how-you-implemented-the-checklist-above-step-by-step)

---

### What are the main differences between stateless and stateful widget in Flutter?
Stateful widgets can change over time according to the given state. For example, stateful widgets can change in response to user interactions or when a data feed updates. On the other hand, stateless widgets are pre-defined and does not depend on any runtime state. Once we set the parameters of a stateless widget, it cannot be changed on run time. `MyHomePage` in `lib/menu.dart` is a stateless widget. We need to make it stateful if we want to change the `items` list based on user interactions.

### Explain all widgets that you used in this assignment.
- `MyApp` in `lib/main.dart`
- `MyHomePage` in `lib/menu.dart`
- `ShopCard` in `lib/menu.dart`

All of them are stateless widgets.


### Explain how you implemented the checklist above step-by-step.
1. Organize the initial project of flutter, separate.
2. Make a file named `menu.dart` so `main.dart` only needs to import and call `MyHomePage()` widget from `menu.dart` for better modularity.
3. Create a new widget for our 3 buttons followed by snackbar.


## Week 08

### Scope
- [Explain the difference between `Navigator.push()` and `Navigator.pushReplacement()`, accompanied by examples of the correct usage of both methods!](#explain-the-difference-between-navigatorpush-and-navigatorpushreplacement-accompanied-by-examples-of-the-correct-usage-of-both-methods)

- [Explain each layout widget in Flutter and their respective usage contexts!](#explain-each-layout-widget-in-flutter-and-their-respective-usage-contexts)

- [List the form input elements you used in this assignment and explain why you used these input elements!](#list-the-form-input-elements-you-used-in-this-assignment-and-explain-why-you-used-these-input-elements)

- [How is clean architecture implemented in a Flutter application?](#how-is-clean-architecture-implemented-in-a-flutter-application)

- [Explain how you implemented the checklist above step-by-step.](#explain-how-you-implemented-the-checklist-above-step-by-step)

---

### Explain the difference between `Navigator.push()` and `Navigator.pushReplacement()`, accompanied by examples of the correct usage of both methods!

`Navigator.push()` will push a new route to the top of routes stack. This means that the previous route will still be accessible by pressing the back button. Meanwhile, `Navigator.pushReplacement()` will replace the top of routes stack with a new route. This means that the previous route will not be accessible by pressing the back button. 

`Navigator.push()` is the normal way to add routes when we navigate to other route. The example use case of `Navigator.pushReplacement()` is when we want to replace the login page with the home page after the user successfully logged in.

### Explain each layout widget in Flutter and their respective usage contexts!

- `Container` is a widget that can be used to contain other widgets just like `<div>` in HTML. We can set the styling like `padding`, `margin`, `color`, `decoration`, etc. It is also used to set the width and height of the widget.
- `Row` is a widget that can be used to arrange widgets horizontally. It is similar to `<div style="display: flex; flex-direction: row">` in HTML.
- `Column` is a widget that can be used to arrange widgets vertically. It is similar to `<div style="display: flex; flex-direction: column">` in HTML.
- `ListView` is a widget that can be used to display a list of widgets. It is similar to `<ul>` in HTML.
- `GridView` is a widget that can be used to display a grid of widgets. It is similar to `<table>` in HTML.
- `Card` is a widget that can be used to display a card. It is similar to `<div style="border: 1px solid black; padding: 10px">` in HTML.
- `TextFormField` is a widget that can be used to display a text input field. It is similar to `<input type="text">` in HTML.
- `TextField` is a widget that can be used to display a text input field. It is similar to `<input type="text">` in HTML.
- `Text` is a widget that can be used to display a text. It is similar to `<p>` in HTML.
- `Image` is a widget that can be used to display an image. It is similar to `<img>` in HTML.
- `Icon` is a widget that can be used to display an icon. It is similar to `<i>` in HTML.

### List the form input elements you used in this assignment and explain why you used these input elements!
I used `TextFormField` to create input fields for name, amount, and description. The reason to use it is because it also comes with input validation.

### How is clean architecture implemented in a Flutter application?
Clean architecture in a flutter application is implemented by separating the code into 3 layers: presentation, domain, and data.

- The presentation layer is where we put the UI code. 
- The domain layer is where we put the business logic. 
- The data layer is where we put the code to access the data source. 

The presentation layer can access the domain layer, but not the data layer. The domain layer can access the data layer, but not the presentation layer. The data layer can access the data source, but not the presentation layer. This way, we can make sure that the business logic is separated from the UI code.

### Explain how you implemented the checklist above step-by-step.
1. Create an add product page using form for adding a new product with 3 fields: name, amount, and description. The form will be validated before submitting. If the form is valid, it will show a popup with the form data.
2. Create a drawer menu with 2 menu items: home and add product. The home menu item will navigate to the home page. The add product menu item will navigate to the add product page.
3. Integrate the routing of buttons with its respective pages.

## Week 09

### Scope

- [Can we retrieve JSON data without creating a model first? If yes, is it better than creating a model before retrieving JSON data?](#can-we-retrieve-json-data-without-creating-a-model-first-if-yes-is-it-better-than-creating-a-model-before-retrieving-json-data)

- [Explain the function of CookieRequest and explain why a CookieRequest instance needs to be shared with all components in a Flutter application.](#explain-the-function-of-cookierequest-and-explain-why-a-cookierequest-instance-needs-to-be-shared-with-all-components-in-a-flutter-application)

- [Explain the mechanism of fetching data from JSON until it can be displayed on Flutter.](#explain-the-mechanism-of-fetching-data-from-json-until-it-can-be-displayed-on-flutter)

- [Explain the authentication mechanism from entering account data on Flutter to Django authentication completion and the display of menus on Flutter.](#explain-the-authentication-mechanism-from-entering-account-data-on-flutter-to-django-authentication-completion-and-the-display-of-menus-on-flutter)

- [List all the widgets you used in this assignment and explain their respective functions.](#list-all-the-widgets-you-used-in-this-assignment-and-explain-their-respective-functions)

- [Explain how you implemented the checklist above step-by-step.](#explain-how-you-implemented-the-checklist-above-step-by-step)

---

### Can we retrieve JSON data without creating a model first? If yes, is it better than creating a model before retrieving JSON data?

Yes, it is possible by using `Map<String, dynamic>`. However, it is better to create a model first because it will make the code more readable and easier to maintain.

### Explain the function of CookieRequest and explain why a CookieRequest instance needs to be shared with all components in a Flutter application.

Just like cookie in web development, `CookieRequest` is used to store necessary informations like session id. It needs to be shared with all components in a Flutter application because we need to send the session id to the server every time we make a request.

### Explain the mechanism of fetching data from JSON until it can be displayed on Flutter.

Firstly, we need to create a model for the data. Then, we need to create a service to fetch the data from the server. After that, we need to create a repository to call the service. Finally, we can call the repository from the UI code to fetch the data.

### Explain the authentication mechanism from entering account data on Flutter to Django authentication completion and the display of menus on Flutter.

Flutter will send the auth data to our Django server. Django will check the auth data and return the corrresponding response. If the auth data is valid, Django will return a session id. Then, Flutter will store the session id in `CookieRequest` and use it to make requests to the server. If the auth data is invalid, Django will return an error message and Flutter will show the error message to the user.

### List all the widgets you used in this assignment and explain their respective functions.

- `ListView`: to display a list of widgets.
- `SizedBox`: to set a fixed size of a widget.
- `Container`: to contain other widgets.
- `Column`: to arrange widgets vertically.
- `Row`: to arrange widgets horizontally.
- `TextFormField`: to display a text input field.
- `Text`: to display a text.
- `Scaffold`: to create a page with a navigation bar.

### Explain how you implemented the checklist above step-by-step.

1. Create a login page.
2. integrate it with our Django server.
3. Create a model for the product data.
4. Create a service to fetch the product data from the server.
5. Create a page to display the product data.