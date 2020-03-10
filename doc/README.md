# Автозапуск Vanessa Automation
Выполнить последовательность шагов:

## Установка
git clone https://github.com/Pr-Mex/vanessa-automation.git

## Компиляция
Через oscript (предварительно установить по ссылке: http://oscript.io/docs/page/install)

Если Vanessa_Dir = "C:\Users\Администратор\vanessa-automation",
тогда  
%Vanessa_Dir%>oscript .\tools\onescript\Compile.os .\

ИЛИ выполнить скрипт: 

## Запуск 
##  Запуск автоматически

1) Выполнить команду: 
%V83PATH% /Execute C:\vanessa-automation\vanessa-automation.epf /C"StartFeaturePlayer;VBParams=C:\VBParams.json"

##  Запуск вручную
## Запустить smoke
В окне VanessaAutomation.epf - выполнить

Дымовое тестирование

## Автоформирование видеоинструкций
