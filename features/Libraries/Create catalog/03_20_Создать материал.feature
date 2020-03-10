#language: ru

Функционал: <Создать материал>

Как <Роль>
Я хочу <описание функционала> 
Чтобы <бизнес-эффект> 

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>

	И В командном интерфейсе я выбираю 'Ресурсы' 'Материалы'
	Тогда открылось окно 'Материалы'
	И в таблице "ТипыРесурсов" я нажимаю на кнопку с именем 'ТипыРесурсовСоздать'
	Тогда открылось окно 'Типы ресурсов (создание)'
	И в поле 'Наименование' я ввожу текст 'Тестовая группа'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Типы ресурсов (создание) *' в течение 20 секунд
	Тогда открылось окно 'Материалы'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Материал [Тестовая группа] (создание)'
	И в поле 'Наименование' я ввожу текст 'Тестовый материал'
	И я нажимаю на кнопку создать поля "Единица измерения"
	Тогда открылось окно 'Классфикатор единиц измерения (создание)'
	И в поле 'Наименование' я ввожу текст '1'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Классфикатор единиц измерения (создание) *' в течение 20 секунд
	Тогда открылось окно 'Материал [Тестовая группа] (создание) *'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Материал [Тестовая группа] (создание) *' в течение 20 секунд
	Тогда открылось окно 'Материалы'
	И Я закрываю окно 'Материалы'
