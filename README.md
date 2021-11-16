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

Новости представлены с помощью ScrollView в виде списка, нажатие на новость направляет на новый экран.

<img width="552" alt="Снимок экрана 2021-11-16 в 16 07 51" src="https://user-images.githubusercontent.com/56388642/141991977-8654a14f-129e-4f4f-9395-874189adb64e.png">

<img width="552" alt="Снимок экрана 2021-11-16 в 16 14 05" src="https://user-images.githubusercontent.com/56388642/141992128-5c30c15b-a17c-4f75-bff1-402887b8b214.png">

### Детали новостей

Экран представляет следующую информацию: источник, изображение (реализованно с помощью AsyncImage), заголовок и текст.

<img width="473" alt="NewsDetail_SE1" src="https://user-images.githubusercontent.com/56388642/141994355-befdc171-24a5-4431-a91d-207df4829b44.png">

<img width="523" alt="NewsDetail_SE2" src="https://user-images.githubusercontent.com/56388642/141994412-736444a6-be0a-49ea-9af3-9e7ee8b62590.png">

## Сайт

Экран открывает ссылку на GitHub-репозиторий приложения, реализовано с помощью WebKit.

<img width="552" alt="Снимок экрана 2021-11-16 в 16 09 35" src="https://user-images.githubusercontent.com/56388642/141994651-24a0b64a-f591-4273-a3d2-eb48c736bb72.png">

<img width="523" alt="Снимок экрана 2021-11-16 в 16 09 44" src="https://user-images.githubusercontent.com/56388642/141994700-f496d0f2-d2f3-4e3c-8fb5-b738afe3f4c1.png">

## Таблица

Вывод на экран данных с [JSON-файла](https://github.com/AlexanderRozhdestvenskiy/TestApp/blob/main/TestApp/Resources/Data.json) в виде табличного представления с использованием LazyVGrid. Нажатие на каждый элемент таблицы направляет на экран с детальной информацией.

<img width="552" alt="Снимок экрана 2021-11-16 в 16 10 06" src="https://user-images.githubusercontent.com/56388642/141994768-ec37ba48-3377-4fec-b0f2-45c8c99cd1d5.png">

<img width="429" alt="Снимок экрана 2021-11-16 в 16 10 09" src="https://user-images.githubusercontent.com/56388642/141994781-55c483d5-665f-414d-aea7-39f83ca9013f.png">

### Детали таблицы

Демонстрируется возможность передачи данных из JSON-файла между экранами приложения.

<img width="552" alt="Снимок экрана 2021-11-16 в 16 10 30" src="https://user-images.githubusercontent.com/56388642/141994841-d09ccb68-316c-4d57-b6c8-3934ec310ed5.png">

<img width="523" alt="Снимок экрана 2021-11-16 в 16 10 38" src="https://user-images.githubusercontent.com/56388642/141994859-202f37ac-0cd2-45b3-9df3-c90d373f1fe3.png">

## Монитор

Экран отображает подключение/отсутствие подключения к сети с помощью изображения.

<img width="508" alt="Снимок экрана 2021-11-16 в 16 10 58" src="https://user-images.githubusercontent.com/56388642/141994904-86194f6a-3b0d-47e3-8754-2593edc352a4.png">

<img width="523" alt="Снимок экрана 2021-11-16 в 16 12 57" src="https://user-images.githubusercontent.com/56388642/141994925-e62b3b27-41e6-4eb5-888e-43db54ab4baf.png">
