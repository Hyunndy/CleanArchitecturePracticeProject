#  CleanArchitecture


### Data Layer
- 여러 DataSource (API, 로컬 DB, keyChain, plist, ...)
- Repository 구현체 (from Domain Layer) (실제 API 받아오는 구현체) (ex. APIService, LocalDBService 등)
- Domain Model

### Domain Layer
- Entity
- Use Case
- Repository Interface

### Presentaion Layer
- View
- ViewModel

# [클린 아키텍쳐 과제 프로젝트]
검색어 입력 + 검색 버튼
검색 결과 리스트 UI
결과 중 하나 클릭 -> 상세 화면

https://api.sampleapis.com/coffee/hot
