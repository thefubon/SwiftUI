# SwiftUI

Набор готовых компонентов SwiftUI

- [X] Онбординг

# Код

```swift
Image()
  .resizable()
  
  .frame(width: 0, height: 0)
  .frame(minWidth: 0, maxHeight: 0) // minWidth, maxWidth, maxWidth, maxHeight
  
  .aspectRatio(contentMode: .fit) // .fit, .fill
  
  .clipShape(Circle()) // Circle(), Capsule()
  
  .padding(.top) // .top, .bottom, .verticale, .horizontal
  .padding(.top, 100)
```

# Предварительные настроки

### Отключение поворота экрана

<img width="691" alt="001" src="https://user-images.githubusercontent.com/43171309/223675759-850abc0d-98e9-4f17-80ef-3ab0f07ee121.png">

### Отключение темной темы
<img width="838" alt="002" src="https://user-images.githubusercontent.com/43171309/223675768-9bd2503a-bb35-4534-aad2-a5ebf4852e6a.png">
