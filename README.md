# day7

A new Flutter project. Use `flutter run` to run this project.

## Drawer Widget

The app uses a custom `CustomDrawer` widget for navigation and `Drawer` re-usability. It's a simple left-side menu with:
- A blue header with "Menu" title
- Navigation items (Home, Second) with icons
- Taps navigate between screens using `Navigator.push()`

**Usage:** Attached to the `Scaffold` in `HomeScreen` via the `drawer` property.

```dart
drawer: CustomDrawer(),
```

**Reusability:** Created as a separate reusable widget so it can be shared across multiple screens (HomeScreen, SecondScreen) without code duplication. Just pass it to any `Scaffold` and you get consistent navigation everywhere.

**Implementation:** The drawer extends `StatelessWidget` and wraps a `Drawer` with a `ListView`. Each navigation item is a `ListTile` with an icon and title. On tap, it navigates to the target screen using `Navigator.push()`. The blue `DrawerHeader` provides visual branding at the top.

**Proofs:**
- [video proof](https://github.com/user-attachments/assets/e2aa7a8a-7db9-4112-a9a0-8edebcc3b01e)
- images:
<img width="327" height="701" alt="image" src="https://github.com/user-attachments/assets/1c9cd161-8267-4161-b2f1-875d0dd95e71" />
<img width="327" height="701" alt="image" src="https://github.com/user-attachments/assets/ce138386-fd39-4298-88b5-e99faeeebe24" />
