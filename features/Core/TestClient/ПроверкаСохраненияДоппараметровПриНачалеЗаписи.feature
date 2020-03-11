# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836






Функциональность: Проверка сохранения доппараметров при начале записи


Сценарий: Проверка сохранения доппараметров при начале записи
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	И я перехожу к закладке с именем "ГруппаНесколькоКлиентовТестирования"
	И в таблице "ДанныеКлиентовТестирования" я активизирую поле с именем "ДанныеКлиентовТестированияДопПараметры"
	И в таблице "ДанныеКлиентовТестирования" я выбираю текущую строку
	
	И Я запоминаю значение выражения 'ИмяПользователя()' в переменную "ИмяПользователя"
	И Я запоминаю значение выражения '"/111 /N" + $ИмяПользователя$' в переменную "ДанныеКлиентовТестированияДопПараметры"
	
	И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияДопПараметры' я ввожу текст '$ДанныеКлиентовТестированияДопПараметры$'
	И в таблице "ДанныеКлиентовТестирования" я завершаю редактирование строки
	И я перехожу к закладке с именем "ГруппаДополнительно"
	И я нажимаю на кнопку с именем 'кнНачатьЗаписьДействийПользователя'
	Затем я жду, что в сообщениях пользователю будет подстрока "Запись действий пользователя начата." в течение 60 секунд
	И я нажимаю на кнопку с именем 'кнЗавершитьЗаписьДействийПользователя'

	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиСохраненияДопПараметров"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	//проверка ДопПараметров
	И я перехожу к закладке с именем "ГруппаНесколькоКлиентовТестирования"
	Тогда таблица "ДанныеКлиентовТестирования" стала равной:
		| 'Имя'         | 'Доп.параметры'                            |
		| 'Этот клиент' | '$ДанныеКлиентовТестированияДопПараметры$' |


	
	
Сценарий: Активизация основного клиента
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'