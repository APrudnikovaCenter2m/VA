# language: ru
# encoding: utf-8
#parent uf:
@UF6_текстовые_и_видео_инструкции
#parent ua:
@UA41_формировать_текстовые_инструкции

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOnWeb



Функционал: Задать размер окна тестирования с помощью компоненты 1cWinCtrl





	
Сценарий: Задать размер окна тестирования с помощью компоненты 1cWinCtrl
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "1cWinCtrl/1cWinCtrl01"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я устанавливаю флаг с именем 'ИспользоватьКомпоненту1cWinCtrl'
	И я устанавливаю флаг с именем 'ИспользоватьВнешнююКомпонентуДляСкриншотов'
	
	И в поле с именем "КаталогПроекта" я ввожу текст "$КаталогИнструментов$"
	
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient


	И я перехожу к закладке с именем "ГруппаДополнительно"
	И я нажимаю на кнопку с именем 'ЗадатьРазмерОкнаКлиентаТестирования'
	Тогда открылось окно 'Vanessa Automation'
	
	И я нажимаю на кнопку с именем 'Размер960х540'
	И пауза 1
	И я нажимаю на кнопку с именем 'Размер960х720'
	И пауза 1
	И я нажимаю на кнопку с именем 'Размер1024х576'
	И пауза 1
	И я нажимаю на кнопку с именем 'Размер1024х768'
	И пауза 1
	И я нажимаю на кнопку с именем 'Широкий1280х720'
	И пауза 1
	И я нажимаю на кнопку с именем 'Размер1280х960'
	И пауза 1
	И я нажимаю на кнопку с именем 'Широкий1600х900'
	И пауза 1
	И я нажимаю на кнопку с именем 'Размер800х600'
	И пауза 1

	И в поле с именем 'ПозицияПоГоризонтали' я ввожу текст '1'
	И в поле с именем 'ПозицияПоВертикали' я ввожу текст '1'
	И в поле с именем 'РазмерПоГоризонтали' я ввожу текст '800'
	И я перехожу к следующему реквизиту
	И в поле с именем 'РазмерПоВертикали' я ввожу текст '600'
	И я нажимаю на кнопку с именем 'ФормаУстановить'
	И пауза 1
	
	
	
	
	И я перехожу к закладке с именем "ГруппаКартинка"
	И я нажимаю на кнопку с именем 'СделатьСнимок'
	И я перехожу к закладке с именем "Группа1"
	И я нажимаю на кнопку с именем 'СделатьСнимкиДочернихОкон'
	И в таблице "СписокОкон" я перехожу к строке:
		| 'Title'             |
		| '111 (Справочник1)' |
		
	И пауза 1
	
	И в таблице "СписокОкон" я перехожу к строке:
		| 'Title'        |
		| 'Конфигурация' |

	И пауза 1
	
	И Я закрываю текущее окно




	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient


Сценарий: Активизация основного клиента
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
	
	