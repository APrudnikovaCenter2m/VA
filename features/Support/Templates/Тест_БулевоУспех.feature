# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA43_Модульные_тесты

@IgnoreOnCIMainBuild
@tree
@classname=ModuleExceptionPath

Функционал: МодульныеТестыVA.Тест_БулевоУспех
	Как Разработчик
	Я Хочу чтобы возвращаемое значение метода совпадало с эталонным
	Чтобы я мог гарантировать работоспособность метода

@OnServer
Сценарий: ПроверитьИстинуНаИстину
	И я выполняю код встроенного языка на сервере
	| 'Тест_БулевоУспех.ПроверитьИстинуНаИстину(Контекст());' |

@OnServer
Сценарий: ПроверитьЛожьНаИстину
	И я выполняю код встроенного языка на сервере
	| 'Тест_БулевоУспех.ПроверитьЛожьНаИстину(Контекст());' |

Сценарий: ПроверитьИстинуНаИстину
	И я выполняю код встроенного языка
	| 'Тест_БулевоУспех.ПроверитьИстинуНаИстину(Контекст());' |

Сценарий: ПроверитьЛожьНаИстину
	И я выполняю код встроенного языка
	| 'Тест_БулевоУспех.ПроверитьЛожьНаИстину(Контекст());' |