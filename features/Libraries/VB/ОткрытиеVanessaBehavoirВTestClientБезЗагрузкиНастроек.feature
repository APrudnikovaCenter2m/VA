# language: ru
# encoding: utf-8
#parent uf:
@UF10_Запуск_VA
#parent ua:
@UA35_запускать_интерактивно

@IgnoreOnCIMainBuild
@ExportScenarios

Функциональность: Открытие Vanessa-Automation без загрузки сохраненных настроек
	Как Разработчик
	Я Хочу чтобы чтобы у меня была возможность открыть Vanessa-Automation в TestClient без загрузки сохраненных настроек
	Чтобы я мог использовать этот сеанс для записи инструкций

	
Сценарий: Я открываю Vanessa-Automation в TestClient для записи автодокументации "ДопПараметр"
	И я устанавливаю текущему сеансу заголовок приложения "Управляющий сеанс"
	И я запоминаю строку "ДопПараметр" в переменную "ЗначениеПараметра"
	Если '$ЗначениеПараметра$ = "TestManager"' Тогда
		Дано Я открыл новый сеанс TestClient как TestManager или подключил уже существующий без загрузки настроек
	Иначе
		Дано Я открыл новый сеанс TestClient или подключил уже существующий без загрузки настроек
	И Я закрыл все окна клиентского приложения
	И    Я открываю VanessaAutomation в режиме TestClient
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И    я снимаю флаг 'Режим самотестирования'
	И я перехожу к закладке с именем "ГруппаНастройки"
	
	И я перехожу к закладке с именем "ГруппаЗапускТестов"
	И в поле 'Количество попыток выполнения действия' я ввожу текст '2'
	И в поле 'Количество секунд поиска окна' я ввожу текст '5'
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке "Выполнить код"
	И в поле 'Произвольный код' я ввожу текст 
		|'ПоказыватьНастройкуПроверкаРаботыVanessaAutomationВРежимеTestClient = Ложь;'|
		|'Объект.ПроверкаРаботыVanessaAutomationВРежимеTestClient = Ложь;'|
		|'ПроверкаРаботыVanessaAutomationВРежимеTestClientПриИзменении(Неопределено);'|
		|'УстановитьЗаголовокПриложения("Основной сеанс");'|
	И я нажимаю на кнопку 'Выполнить произвольный код'
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	
	И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"
	И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
	И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
	
	И    В открытой форме я перехожу к закладке "Запуск сценариев"
	И    я нажимаю на кнопку с именем 'ПоказатьСкрытьВсеКолонки'
	И    я запускаю SikuliX сервер



Сценарий: Я открываю Vanessa-Automation в TestClient без загрузки сохраненных настроек
	Дано Я открыл новый сеанс TestClient или подключил уже существующий без загрузки настроек
	И Я закрыл все окна клиентского приложения
	И    Я открываю VanessaAutomation в режиме TestClient
	И    В открытой форме я перехожу к закладке "Сервис"
	И    В открытой форме я снимаю флаг "Проверка работы Vanessa-Automation в режиме test client"
	И    В открытой форме я перехожу к закладке "Запуск сценариев"


	
Сценарий: Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	Дано я фиксирую текущую форму
	И я снимаю флаг с именем 'ФлагСценарииЗагружены'
	И я нажимаю на кнопку с именем 'Перезагрузить'
	И у элемента с именем "ФлагСценарииЗагружены" я жду значения "Да" в течение 150 секунд
	Дано я отменяю фиксирование формы
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	
Сценарий: Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И я фиксирую текущую форму
	И я снимаю флаг с именем 'ФлагСценарииВыполнены'
	И я нажимаю на кнопку с именем 'ВыполнитьСценарии'
	И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 150 секунд
	Дано я отменяю фиксирование формы


	
	