# WeSplit - Tip Calculator

A simple tip calculator app built with SwiftUI as part of my iOS development practice.

## Features

- Calculate tips and split bills between multiple people
- Persistent data storage using `@AppStorage`
- Clean, modern UI with dark theme
- Reset button to clear all values

## What I Learned

- SwiftUI basics (Forms, Pickers, TextField)
- Data persistence with `@AppStorage`
- MVVM architecture pattern
- Code organization and separation of concerns
- Custom view modifiers

## Requirements

- iOS 16.0+
- Xcode 14+
- Swift 5.7+

## How to Use

1. Enter the check amount
2. Select number of people
3. Choose tip percentage
4. View the calculated amount per person
5. Use Reset button to clear all values

## Architecture

The app follows MVVM pattern:
- **Model**: `TipCalculatorModel` - Handles calculations
- **ViewModel**: `TipCalculatorViewModel` - Manages app state and persistence
- **View**: `ContentView` - UI components

## Screenshots

<img width="432" alt="image" src="https://github.com/user-attachments/assets/ee55d65d-1b65-4594-b103-920078a653a4" />


---

by @emisanzmor 
