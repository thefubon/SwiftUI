![hero-lockup-large_2x](https://user-images.githubusercontent.com/43171309/223688176-2e187cc8-1658-4264-9726-b907730f954c.png)
# 🔥 SwiftUI

Набор готовых компонентов SwiftUI

## 📦 Скриншоты готовых проектов

<details><summary>SearchBar & Filter 🆕</summary>
<p>
 
![OffcanvasMenu](https://user-images.githubusercontent.com/43171309/224394200-649127dd-cd30-4b87-908a-dc666d6180f7.png)

</p>
</details>

<details><summary>OffcanvasMenu</summary>
<p>
 
![OffcanvasMenu](https://user-images.githubusercontent.com/43171309/224394200-649127dd-cd30-4b87-908a-dc666d6180f7.png)

</p>
</details>

<details><summary>CardGrid (data.json)</summary>
<p>
 
![CardGrid](https://user-images.githubusercontent.com/43171309/224280413-607959c6-4f50-47c1-8f28-8db059d117ae.png)

</p>
</details>

<details><summary>Grid (data.json)</summary>
<p>
 
![Grid](https://user-images.githubusercontent.com/43171309/224035487-36310ae5-ef58-492a-84f0-d8f97ef51711.png)

</p>
</details>

<details><summary>Carousel (data.json)</summary>
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

## 🗒️ Использование .Json файлов

### Model/NameModel.swift

```swift
import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
```

### Utility/Constant.swift

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

### Extension/CodableBundleExtension.swift

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

### Data/data.json

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
    }
]
```
## 📖 Документация
[https://swiftontap.com](https://swiftontap.com)

## 📂 Структура проектов

- App
- View
  - Home
  - Detail
- Data
- Model
- Extansion
- Utility

## ⚙️ Предварительные настроки

### 📲 Отключение поворота экрана

<img width="691" alt="001" src="https://user-images.githubusercontent.com/43171309/223675759-850abc0d-98e9-4f17-80ef-3ab0f07ee121.png">

### 🎨 Отключение темной темы
<img width="838" alt="002" src="https://user-images.githubusercontent.com/43171309/223675768-9bd2503a-bb35-4534-aad2-a5ebf4852e6a.png">
