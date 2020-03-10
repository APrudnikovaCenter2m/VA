#language: ru

Функционал: <Создать/редактировать вид обслуживания>

Как <Роль>
Я хочу <Создать/редактировать вид обслуживания>
Чтобы <бизнес-эффект>

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>
    И В командном интерфейсе я выбираю 'Обслуживание' 'Правила обслуживания'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Правила обслуживания (создание)'
	И из выпадающего списка "Параметр отбора (применимость)" я выбираю точное значение 'ПС 110 кВ и выше'
	И из выпадающего списка "Вид периода" я выбираю точное значение 'Месяц'
	И из выпадающего списка "Вид обслуживания, который необходимо произвести" я выбираю точное значение 'Проверки'
	И из выпадающего списка "после вида обслуживания" я выбираю точное значение 'Проверки'
	И в поле 'Каждые' я ввожу текст '1'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Правила обслуживания (создание) *' в течение 20 секунд

