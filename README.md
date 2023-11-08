# Cyber Katalog Mobile

This is my weekly assignment for Platform Based Programming lecture.

### Jump to
- [Week 07](#week-07)

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
