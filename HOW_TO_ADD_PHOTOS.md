# Как добавить фотографии на сайт

## Способ 1: Использовать онлайн-фото (URL)

Я обновлю код, чтобы использовать фотографии из Wikimedia Commons (бесплатные фото):

1. Фото будут загружаться с надежных источников
2. Не нужно скачивать файлы
3. Работает сразу на GitHub Pages

## Способ 2: Добавить свои фотографии

Если хотите добавить свои фото:

1. Создайте папку `images` в папке site1
2. Положите туда фотографии замка (например: `castle1.jpg`, `castle2.jpg` и т.д.)
3. Обновите style.css, заменив градиенты на:

```css
.slide:nth-child(1) .slide-image {
    background-image: url('images/castle1.jpg');
    background-size: cover;
    background-position: center;
}

.slide:nth-child(2) .slide-image {
    background-image: url('images/castle2.jpg');
    background-size: cover;
    background-position: center;
}
```

## Способ 3: Скачать фото из Google

1. Найдите "Олеський замок фото" в Google Images
2. Скачайте 5 понравившихся фото
3. Следуйте инструкциям из Способа 2

Какой способ предпочитаете? Я могу сразу обновить код с онлайн-фото!
