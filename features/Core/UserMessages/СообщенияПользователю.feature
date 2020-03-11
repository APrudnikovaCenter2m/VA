# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA44_Прочая_активность_по_проверке

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb


@tree

Функциональность: Проверка сообщений пользователю в разных шагах


Сценарий: Проверка сообщений пользователю в разных шагах
		
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе


	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "СообщенияПользователю/СообщенияПользователю01"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюСвернутьДоСценариев' на элементе формы с именем "ДеревоТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                                          | 'Статус'  |
		| 'СообщенияПользователю01.feature'                                                       | ''        |
		| 'СообщенияПользователю01'                                                               | ''        |
		| 'СообщенияПользователю01'                                                               | 'Success' |
		| 'СообщенияПользователю01 - Когда в логе сообщений TestClient есть строки. Нет ошибки.'  | 'Success' |
		| 'СообщенияПользователю01 - Когда в логе сообщений TestClient есть строки. Есть ошибка.' | 'Failed'  |


	И я перехожу к закладке с именем "ГруппаСлужебная"
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

			
			
Сценарий: Активизация основного клиента
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'