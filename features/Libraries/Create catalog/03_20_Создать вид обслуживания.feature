#language: ru

Функционал: <Создать вид обслуживания>

Как <Роль>
Я хочу <Создать вид обслуживания>
Чтобы <бизнес-эффект>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>

	И В командном интерфейсе я выбираю 'Обслуживание' 'Виды обслуживания'
	Тогда открылось окно 'Виды обслуживания'
	И в таблице "Список" я разворачиваю текущую строку
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Виды обслуживания (создание)'
	И в поле 'Наименование' я ввожу текст 'Капитальный ремонт_тест'
	Тогда открылось окно 'Виды обслуживания (создание)'
	И я изменяю флаг 'Использовать при планировании'
	И я изменяю флаг 'Заполнять работы по дефектам'
	И в таблице "ТиповойСоставРабот" я нажимаю на кнопку с именем 'ТиповойСоставРаботДобавить'
	И в таблице "ТиповойСоставРабот" из выпадающего списка "Параметр отбора" я выбираю точное значение 'ПС 110 кВ и выше'
	И я перехожу к следующему реквизиту
	И в таблице "ТиповойСоставРабот" я активизирую поле "Работа"
	И в таблице "ТиповойСоставРабот" в поле 'Работа' я ввожу текст '000000639'
	И в таблице "ТиповойСоставРабот" я активизирую поле "Количество"
	И в таблице "ТиповойСоставРабот" я выбираю текущую строку
	И в таблице "ТиповойСоставРабот" в поле 'Количество' я ввожу текст '2,000'
	И в таблице "ТиповойСоставРабот" я завершаю редактирование строки
	И я перехожу к закладке "Применимость"
	И в таблице "Применимость" я нажимаю на кнопку с именем 'ПрименимостьДобавить'
	И в таблице "Применимость" из выпадающего списка "Значение" я выбираю точное значение 'ПС 110 кВ и выше'
	И в таблице "Применимость" я завершаю редактирование строки
	И в таблице "Применимость" я нажимаю на кнопку с именем 'ПрименимостьДобавить'
	И в таблице "Применимость" я нажимаю кнопку выбора у реквизита "Значение"
	Тогда открылось окно 'Параметры отбора'
	И в таблице "Список" я перехожу к строке:
		| Наименование   |
		| Устройства РЗА |
	И я нажимаю на кнопку 'Выбрать'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Капитальный ремонт_тест (Виды обслуживания)' в течение 20 секунд
