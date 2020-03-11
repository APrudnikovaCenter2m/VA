# Автозапуск Vanessa Automation

## Установка 
// git clone https://github.com/Pr-Mex/vanessa-automation.git
1) $ git clone https://github.com/

## Компиляция
// Через oscript (предварительно установить по ссылке: http://oscript.io/docs/page/install)
1) Выполнить команду: 

%Vanessa_Dir%>oscript .\tools\onescript\Compile.os .\


## Запуск 

##  Запуск в консольном режиме

1) В переменную окружения V83PATH установить значение "C:\Program Files\1cv8\8.3.14.1854\bin\1cv8.exe"

2) Выполнить команду: 
%V83PATH% /Execute C:\vanessa-automation\vanessa-automation.epf /C"StartFeaturePlayer;VBParams=C:\VBParams.json"

##  Запуск в интерактивном режиме

1) В режиме "Предприятие" открыть обработку "vanessa-automation.epf
2) Нажать "Загрузить фичи из каталога". Feature-файлы здесь: C:\Users\Администратор\git\te1808-toir\VA\examples\features\TOiR
3) Нажать кнопку "Сгенерировать шаблоны обработок". В каталоге ".\features" сгенерируются epf-файлы, идентичные имени feature-файла
4) Нажать кнопку "Запустить сценарии". Выполнится автоматизированный запуск обработок с признаком "pending" (ожидает реализации)

## Прогон Smoke

1) Для запуска smoke требуется предварительно установить VanessaADD. 
2) Далее запустить скрипт: 

@echo off

set XDD_IBaseConn="C:\Users\Администратор\Documents\InfoBase";
set XDD_IBaseUser="Иван Соловьев"
set XDD_IBasePass="IvanSolo"

set XDD_V8Bin=c:\Program Files\1cv8\8.3.14.1854\bin
setс=C:\Program Files (x86)\OneScript\lib\add

"%XDD_V8Bin%\1cv8.exe" ENTERPRISE /IBConnectionString %XDD_IBaseConn% chcp 65001>/N %XDD_IBaseUser% /P %XDD_IBasePass% /TESTMANAGER /Execute "%ADD_Dir%\xddTestRunner.epf" /C "xddConfig ""c:\Program Files (x86)\OneScript\lib\add\tests\smoke\""; xddRun загрузчикфайла ""%ADD_Dir%\bin\Tests\Smoke\Тесты_ОткрытиеФормКонфигурации.epf"";"


## Автоформирование видеоинструкций
 <будет дополнено>


## Документация

https://pr-mex.github.io/vanessa-automation/dev


