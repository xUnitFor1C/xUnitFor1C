﻿
// { Plugin interface
&НаКлиенте
Функция ОписаниеПлагина(ВозможныеТипыПлагинов) Экспорт
	Возврат ОписаниеПлагинаНаСервере(ВозможныеТипыПлагинов);
КонецФункции

&НаСервере
Функция ОписаниеПлагинаНаСервере(ВозможныеТипыПлагинов)
	Возврат ЭтотОбъектНаСервере().ОписаниеПлагина(ВозможныеТипыПлагинов);
КонецФункции
// } Plugin interface

// { Report generator interface
&НаКлиенте
Функция СоздатьОтчет(КонтекстЯдра, РезультатТестирования) Экспорт
	Объект.ТипыУзловДереваТестов = КонтекстЯдра.Плагин("ПостроительДереваТестов").Объект.ТипыУзловДереваТестов;
	Объект.СостоянияТестов = КонтекстЯдра.Объект.СостоянияТестов;
	ВызватьИсключение "Метод не реализован";
КонецФункции

&НаКлиенте
Процедура Показать(Отчет) Экспорт
	ВызватьИсключение "Метод не реализован";
КонецПроцедуры

&НаКлиенте
Процедура Экспортировать(Отчет, ПолныйПутьФайла) Экспорт
	ВызватьИсключение "Метод не реализован";
КонецПроцедуры
// } Report generator interface

// { Helpers
&НаСервере
Функция ЭтотОбъектНаСервере()
	Возврат РеквизитФормыВЗначение("Объект");
КонецФункции
// } Helpers
