# Clone MegaCoffee App Project
> **UI위주로 구현 Clone Mega Coffee UI App Study입니다.**
&nbsp;


</br>

## 🤝_ 프로젝트 목표
1. 깃을 통한 협업과정 익혀보기
2. 
&nbsp;



</br>

## 💻  _ Developers 

| Name | link | Part |
| :---: | :---: | :---: |
| 원준연 | https://github.com/chobo5 | 선물하기 |





</br>

## 🎯 _ 개발 목표 기간
`2022.10.05` ~ `2022.12.05`
&nbsp;



</br>

## 🛠  _ Development Environment & Simulator
- iOS `15.5` 
- XCode `13.4`, `13.4.1`
&nbsp;


</br>


#### 📚 _ Library

| 라이브러리        | Version | Tool |
| ----------------- | :-----: | ----- |
| nil       | `0.0.0` | `CocoaPod` |
| nil       | `0.0.0` | `CocoaPod` |
| nil       | `0.0.0` | `CocoaPod` |





</br>

## 🗂 _ Foldering
&nbsp;


</br>

## 🌳  _ Git Branch & Source Tree

개별 브랜치 관리 및 병합의 안정성을 위해 `Git Forking & Source Tree WorkFlow`를 적용했습니다.
&nbsp;



### 💁‍♂️ _ Git forking workflow 적용

1. 방장 프로젝트 repo를 Fork합니다.(이하 방장 repo = 방장 develop)
2. Fork한 개인 repo(이하 개인 repo)를 clone합니다. (Desktop에 빈 folder를 만들어서 clone)
3. Source Tree에 개인 repo 주소를 추가하고, 원격저장소에 방장 repo 주소를 추가합니다.
4. 이제 신경써야할 branch는 방장 develop, 개인 develop, 개인 branch 입니다.

🟡🟡🟡🟡🟡 소스트리 작업 하기 전 필수 사항! 🟡🟡🟡🟡🟡
1. ⭐️ 필수 ⭐️ 현재 브런치를 확인합니다. (개인 develop)
2. 방장 develop(원격)에서 개인 develop(로컬)으로 pull합니다.
3. 개인 develop에서 개인 develop으로 push합니다.
4. 개인 branch로 branch를 변경합니다.
5. 개인 branch에서 개인 develop에 있는 작업물을 pull합니다.
6. 개인 branch에서 개인 branch으로 push합니다.
7. 본인의 작업물을 확인합니다. (자신의 작업물과 pull로 땡겨온 작업물이 공존하고, build가 되는지.)
8. 이상이 없다면, 개인 branch에서 개인 branch로 push합니다.
9. 개인 develop으로 branch를 변경합니다.
10. 개인 develop에서 개인 branch를 pull로 땡겨옵니다.
11. 개인 devleop에서 개인 develop으로 push합니다.
12. 자신의 git fork 저장소로 접속합니다. (website)
13. pull request를 누른 후 정상적으로 머지가 된다는 표시를 확인하고 pull request 요청을 보냅니다.
14. 방장이 확인 후 merge합니다.

15. 모든 인원의 작업물이 합쳐지고, 방장 develop에서 정상적으로 되는지 확인되면, 최종 결과물을 main branch로 이동합니다.
&nbsp;


</br>

## 💪 _ 10월 개인별 일정

- **원준연**

| 기간 | 구현 목표 | 보완점(간단히) |
|:---:|:---:|:---:|
|`10.06-10.12`| 선물하기 메인화면(CollectionView의 compositionLayout사용)| CollectionView와 cell사용법에 대한 이해가 더 필요함 |
|`10.13-10.19`| 메인화면의 상품(cell)선택시 화면이동, 상품상세뷰 구현(Delegate) | delegatePattern 에 대한 이해가 더 필요함 |
|`10.20-10.26`| 상품상세뷰에서 '담기'버튼 구현(CoreData를 이용한 CRUD) | 데이터 CoreData에 대한 이해와 Optaional처리가 더 필요해보임  |
|`10.27-11.02`| 메인화면에 장바구니버튼 구현과 주문하기 뷰(TableView)구현| 장바구니버튼 위치설정 수정필요 |
|`11.03-11.09`| 카테고리 화면의 카테고리별 메뉴 불러오기(CollectionView + TableView) | - |
|`11.10-11.16`| 카테고리 화면에서만 navigationBarItem표시와 상품선택시 상품상세뷰와 연결 | - |
|`11.17-11.23`| dummyData구조 변경과 다른뷰들의 데이터를 불러오는 부분 수정 | 추후 데이터 추가 필요 |
|`11.24-11.30`| 카테고리 화면에서 돋보기버튼 -> 상품검색뷰 구현 | - |
|`12.01-12.07`| 선물함 화면 구현(CollectionView의 compositionLayout사용) | - |
  

