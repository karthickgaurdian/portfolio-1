# A.I.P Sutherson - Real Estate & Property Solutions

A professional website for A.I.P Sutherson, offering comprehensive real estate and property solutions in South India.

## Features

- Responsive design that works on all devices
- Dynamic team member display
- Animated achievements slider
- Contact form with validation
- Modern UI with blood red and lava gold color scheme

## Project Structure

```
sutherson/
├── index.html          # Main HTML file
├── css/
│   └── style.css       # Stylesheet
├── js/
│   ├── config.js       # Configuration file
│   └── main.js         # Main JavaScript file
└── assets/             # Media assets
```

## How to Run

### Method 1: Direct File Opening (Simplest)
1. Simply double-click the `index.html` file to open it in your default browser
2. The website should load immediately

### Method 2: Using VS Code Live Server (Recommended for Development)
1. Install VS Code from [code.visualstudio.com](https://code.visualstudio.com/)
2. Install the "Live Server" extension in VS Code
3. Open the project folder in VS Code
4. Right-click `index.html` and select "Open with Live Server"

## Customization

### Team Members
Edit the `teamMembers` array in `js/main.js`:
```javascript
const teamMembers = [
    {
        name: 'S Navaneedha Krishnan',
        position: 'Superior Director',
        image: 'images/team/navaneedha.jpg',
        description: '...',
        isBrand: true
    },
    // Add more team members here
];
```

### Achievements
Modify the `achievements` array in `js/main.js`:
```javascript
const achievements = [
    {
        icon: '🏆',
        title: 'Industry Excellence Award',
        description: '...'
    },
    // Add more achievements here
];
```

### Contact Information
Update contact details in `js/config.js`

### Styling
Adjust colors and styles in `css/style.css`:
```css
:root {
    --blood-red: #8B0000;
    --lava-gold: #FFA500;
    /* Add more custom colors here */
}
```

## Browser Compatibility

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)

## License

© 2024 A.I.P Sutherson. All rights reserved. 