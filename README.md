![hero-lockup-large_2x](https://user-images.githubusercontent.com/43171309/223688176-2e187cc8-1658-4264-9726-b907730f954c.png)
# 🔥 SwiftUI

Набор готовых компонентов SwiftUI

## 📦 Скриншоты готовых проектов

<details><summary>Carousel (data.json) 🆕</summary>
<p>
 
![Carousel](https://user-images.githubusercontent.com/43171309/223750860-29bd6cb8-b144-4a17-9e80-b4fd7d0caa0a.png)
  
</p>
</details>

<details><summary>Onboard</summary>
<p>
  
![Onboard](https://user-images.githubusercontent.com/43171309/223706763-046765e1-f9b9-4b41-8f39-2508e633bc82.png)
  
</p>
</details>

<details><summary>layouts (NavigationBar, Footer)</summary>
<p>
  
![Layouts](https://user-images.githubusercontent.com/43171309/223706222-e472e4ef-3639-4e52-b9e4-a2159b187ef5.png)
  
</p>
</details>

## 📜 Constant

```swift
import SwiftUI

// DATA

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")

// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorBackground: Color = Color(UIColor.systemGary4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
 return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
```

## CodableBundleExtension.swift

```swift
import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in bundle.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) in bundle.")
        }
        
        // 5. Return the ready-to-use data
        return decodedData
        
    }
}
```

## data.json

```swift
[
    {
        "id": 1,
        "image": "Rectangle",
        "title": "Page 1"
    },
    {
        "id": 2,
        "image": "Rectangle",
        "title": "Page 2"
    },
    {
        "id": 3,
        "image": "Rectangle",
        "title": "Page 3"
    },
    {
        "id": 4,
        "image": "Rectangle",
        "title": "Page 4"
    },
    {
        "id": 5,
        "image": "Rectangle",
        "title": "Page 5"
    }
]

```

## 📖 Документация
[https://swiftontap.com](https://swiftontap.com)

# ⚙️ Предварительные настроки

### 📲 Отключение поворота экрана

<img width="691" alt="001" src="https://user-images.githubusercontent.com/43171309/223675759-850abc0d-98e9-4f17-80ef-3ab0f07ee121.png">

### 🎨 Отключение темной темы
<img width="838" alt="002" src="https://user-images.githubusercontent.com/43171309/223675768-9bd2503a-bb35-4534-aad2-a5ebf4852e6a.png">
