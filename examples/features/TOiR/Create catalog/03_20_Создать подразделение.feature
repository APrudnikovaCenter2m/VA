#language: ru

Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала> 
Чтобы <бизнес-эффект> 

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>

	И В командном интерфейсе я выбираю 'Инфраструктура' 'Подразделения'
	Тогда открылось окно 'Подразделения'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Подразделения (создание)'
	И в поле 'Наименование' я ввожу текст 'Тестовое подразделение'
	И я устанавливаю флаг 'Уровень детального планирования работ'
	И я изменяю флаг 'Курирующее подразделение'
	И я изменяю флаг 'Подразделение исполняющее работы'
	И я изменяю флаг 'Используются подразделения исполняющие работы'
	И в таблице "ПодразделенияИсполняющиеРаботы" я нажимаю на кнопку с именем 'ПодразделенияИсполняющиеРаботыДобавить'
	И в таблице "ПодразделенияИсполняющиеРаботы" из выпадающего списка "Подразделение" я выбираю точное значение 'Курганский участок СВЛ'
	И в таблице "ПодразделенияИсполняющиеРаботы" я завершаю редактирование строки
	И в таблице "ПодразделенияИсполняющиеРаботы" я добавляю строку
	И в таблице "ПодразделенияИсполняющиеРаботы" я завершаю редактирование строки
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Подразделения (создание) *' в течение 20 секунд
	Тогда открылось окно 'Подразделения'
	И я нажимаю на кнопку с именем 'ФормаСкопировать'
	Тогда открылось окно 'Подразделения (создание)'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Подразделения (создание)' в течение 20 секунд
