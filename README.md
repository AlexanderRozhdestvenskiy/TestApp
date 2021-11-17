# TestApp

TestApp - тестовое приложение, созданное для демонстрации навыков. 
Написано на языке Swift, с использованием фреймворка SwiftUI на архитектуре MVVM.
Минимальная поддерживаемая версия iOS - 15.0. 
В качестве API используется сервис [Finhub.io](https://finnhub.io).
Поддерживается светлая и темная темы.

В приложении 4 основных раздела, переключаться между которыми можно с помощью Tab Bar: 
1. Новости
2. Сайт
3. Таблица
4. Монитор

## Новости

Новости представлены с помощью ScrollView в виде списка, нажатие на который направляет на новый экран.

<img width="552" alt="News" src="https://user-images.githubusercontent.com/56388642/142205073-5f2138dc-04cc-473c-9d4a-ad255394661d.png">

### Детали новостей

Экран представляет следующую информацию: источник, изображение (реализовано с помощью AsyncImage), заголовок и текст.

<img width="552" alt="Detail" src="https://user-images.githubusercontent.com/56388642/142205143-6862f7cc-8547-414f-a109-f723fa41e3fb.png">

## Сайт

Экран открывает ссылку на GitHub-репозиторий приложения, реализовано с помощью WebKit.

<img width="552" alt="Web" src="https://user-images.githubusercontent.com/56388642/142205203-552ebab6-3682-49ad-a338-1197c01e8b9d.png">

## Таблица

Вывод на экран данных с [JSON-файла](https://github.com/AlexanderRozhdestvenskiy/TestApp/blob/main/TestApp/Resources/Data.json) в виде табличного представления с использованием LazyVGrid. Нажатие на каждый элемент таблицы направляет на экран с детальной информацией.

<img width="552" alt="Tab" src="https://user-images.githubusercontent.com/56388642/142205393-68756bd3-8f2c-4597-9c18-79098dd8376c.png">


### Детали таблицы

Демонстрируется возможность передачи данных из JSON-файла между экранами приложения.

<img width="552" alt="Card" src="https://user-images.githubusercontent.com/56388642/142205427-a70a48dd-ae6b-49c2-a396-0c8c470afdfa.png">


## Монитор

Экран отображает подключение или отсутствие подключения к сети с помощью изображения.

<img width="552" alt="Monitor" src="https://user-images.githubusercontent.com/56388642/142205472-f8548246-f08b-41c6-8b56-5938428a41ee.png">


# Обзор

![Screen](https://user-images.githubusercontent.com/56388642/142067055-d4731953-b4de-44ee-9a27-204627fef6cb.png)

