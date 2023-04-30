## Домашнее задание №2 по дисциплине "Облачные технологии хранения и обработки данных"
#### Ершов Иван Юрьевич МИВТ-21-3-16

### Локальное тестирование
```
mkdir ershov-hw2-test && cd ershov-hw2-test && \
    git clone git@github.com:iyuershov/hw2-cloudtech.git . && \
    docker build -t ershov-hw2-cloudtech . && \
    docker run -it -d -p 8080:8888 ershov-hw2-cloudtech
```
На этом этапе необходимо подождать 1-2 секунды, чтобы внутри контейнера gunicorn завершил Application Startup.

Теперь можно проверить:
```
curl -X GET "http://localhost:8080/"
```

Ожидаемый результат:
```
{"message":"Hello World"}
```
