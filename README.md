![hero-lockup-large_2x](https://user-images.githubusercontent.com/43171309/223688176-2e187cc8-1658-4264-9726-b907730f954c.png)
# 🔥 SwiftUI

Набор готовых компонентов SwiftUI

# 📦 Скриншоты готовых проектов

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

# 🖼️ Image Set

<details><summary>Assets</summary>
<p>
 
![AppIcon](https://user-images.githubusercontent.com/43171309/223767780-ce7871d7-8804-40ac-b72a-23170edb4916.png)
![Logo](https://user-images.githubusercontent.com/43171309/223767781-42a6fd62-fd61-47c0-87df-af165020b257.png)
<img width="220" alt="Logo@x2" src="https://user-images.githubusercontent.com/43171309/223767784-772b0611-a19b-438c-9455-9e2dc889103e.png">
![Logo@x3](https://user-images.githubusercontent.com/43171309/223767790-8fffe254-29ac-4963-99e6-ab9bc5b2e138.png)
![Rectangle](https://user-images.githubusercontent.com/43171309/223767793-c7e1926a-6540-4933-a6e9-4f312971eb6e.png)
<img width="320" alt="Rectangle@x2" src="https://user-images.githubusercontent.com/43171309/223767796-68910712-db49-49e6-8fd7-8842d1023712.png">
![Rectangle@x3](https://user-images.githubusercontent.com/43171309/223767797-b94e4938-9a83-459c-9536-e74092326afe.png)
![Square](https://user-images.githubusercontent.com/43171309/223767802-f123220c-710c-40d2-850f-c121b07860e4.png)
<img width="228" alt="Square@x2" src="https://user-images.githubusercontent.com/43171309/223767804-fbb5b071-5ea6-45ef-a267-fc757cf89150.png">
![Square@x3](https://user-images.githubusercontent.com/43171309/223767806-bf235134-e3fe-4703-9848-0aae8f9db7c8.png)
  
</p>
</details>

# 📜 Использование .Json файлов

### Constant.swift

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

### CodableBundleExtension.swift

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

### data.json

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
# 📖 Документация
[https://swiftontap.com](https://swiftontap.com)

# Структура проектов

- APP
- View
  - Home
  - Detail
- Data
- Model
- Extansion
- Utility

# ⚙️ Предварительные настроки

### 📲 Отключение поворота экрана

<img width="691" alt="001" src="https://user-images.githubusercontent.com/43171309/223675759-850abc0d-98e9-4f17-80ef-3ab0f07ee121.png">

### 🎨 Отключение темной темы
<img width="838" alt="002" src="https://user-images.githubusercontent.com/43171309/223675768-9bd2503a-bb35-4534-aad2-a5ebf4852e6a.png">
