#language: ru

Функционал: <описание фичи>

Как <Роль>
Я хочу <Создать присоединения> 
Чтобы <бизнес-эффект> 

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>

	И В командном интерфейсе я выбираю 'Инфраструктура' 'Присоединения'
	Тогда открылось окно 'Присоединения'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Присоединения (создание)'
	И из выпадающего списка "Объект присоединения 1" я выбираю точное значение '[ВЛ-110кВ Варгаши-Строево]'
	Тогда открылось окно 'Присоединения (создание) *'
	И в поле 'Объект присоединения 2' я ввожу текст '[ВЛ-110кВ '
	И я нажимаю на кнопку создать поля "Объект присоединения 2"
	Тогда открылось окно 'Объект обслуживания (создание)'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Объект обслуживания (создание)' в течение 20 секунд
	Тогда открылось окно 'Присоединения (создание) *'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Присоединения (создание) *' в течение 20 секунд
