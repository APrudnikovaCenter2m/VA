#language: ru

Функционал: <Создать инструмент>

Как <Роль>
Я хочу <описание функционала> 
Чтобы <бизнес-эффект> 

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>

	И В командном интерфейсе я выбираю 'Ресурсы' 'Инструменты, приспособления'
	Тогда открылось окно 'Инструменты, приспособления'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Инструмент или приспособление (создание)'
	И в поле 'Наименование' я ввожу текст 'Тестовый'
	И я нажимаю на кнопку 'Заполнить наименование'
	И в поле 'Наименование' я ввожу текст 'Тестовый'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Инструмент или приспособление (создание) *' в течение 20 секунд
