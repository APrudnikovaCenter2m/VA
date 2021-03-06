#language: ru

Функционал: <Создать объект обслуживания копированием2>

Как <Роль>
Я хочу <Создать объект обслуживания копированием2>
Чтобы <бизнес-эффект>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <Создать объект обслуживания копированием2>

	И В командном интерфейсе я выбираю 'Инфраструктура' 'Объекты обслуживания'
	Тогда открылось окно 'Объекты обслуживания'
	И в таблице "СоставТекущегоОбъекта" я разворачиваю текущую строку
	И в таблице "СоставТекущегоОбъекта" я перехожу к строке:
		| Класс объекта | Наименование                                |
		| Участок ВЛ    | 'Участок 1-15 (ВЛ 0,4 кВ Л-1 от ТП Б-0-15)' |
	И я выбираю пункт контекстного меню с именем 'СоставТекущегоОбъектаКонтекстноеМенюСкопировать' на элементе формы с именем "СоставТекущегоОбъекта"
	И в поле 'Наименование' я ввожу текст 'тест_Участок 1-15 (ВЛ 0,4 кВ Л-1 от ТП Б-0-15)'
	И я нажимаю кнопку выбора у поля "Родитель"
	Когда открылось окно 'Объекты обслуживания'
	И в таблице "ОбъектыОбслуживания" я нажимаю на кнопку с именем 'ОбъектыОбслуживанияВыбрать'
	Тогда открылось окно 'Объект обслуживания (создание) *'
	И я перехожу к закладке "Свойства"
	И я перехожу к закладке "Идентификатор объекта"
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Объект обслуживания (создание) *' в течение 20 секунд
