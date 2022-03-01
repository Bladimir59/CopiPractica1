/*Primera Seccion My codigo*/
package Jflex;

import java_cup.runtime.*;
import Cup.sym;

%%   /*----------------------------------------*/
               /*Segunda Seccion */
%class Tokens
%public
%unicode
%line
%column
%cup

//codigo de lectura de aceptacion 

COMENTARIO = #(.)*\n

DEF = (D|d)ef

BARRA = Barra

PIE = Pie

AperturaLlave = \{

CierreLlave = \}

AperturaCorchete = \[ 

CierreCorchete = \]

AperturaParentesis = \(

CierreParentesis = \)

TITULO = titulo

DosPuntos = :

COMA = ,

PuntoYComa = ;

NumeroEntero = [0-9]+

//para el de barras

UNIR = unir

EJEX = ejex

EJEY = ejey

//para Pie

TIPO = tipo

CANTIDAD = Cantidad

PORCENTAJE = Porcentaje

ETIQUETA = etiqueta

VALORES = valores

TOTAL = total

EXTRA = extra

//seccion de ejecutar

EJECUTAR = Ejecutar

INFO = \"([a-z]|[A-Z]|[0-9]|(\s))*\"

MAS = "+"

MENOS = -

MULTIPLICACION = "*"

//DIVICION = /

%%  /*----------------------------------------*/
               /*Tercera Seccion Reglas lexicas*/

{COMENTARIO}		{return new Symbol(sym.COMENTARIO, yyline + 1, yycolumn + 1);}

{DEF}			{return new Symbol(sym.DEF, yyline + 1, yycolumn + 1);}

{BARRA}			{return new Symbol(sym.BARRA, yyline + 1, yycolumn + 1);}

{PIE}			{return new Symbol(sym.PIE, yyline + 1, yycolumn + 1);}

{AperturaLlave}		{return new Symbol(sym.APERTURALLAVE, yyline + 1, yycolumn + 1);}

{CierreLlave}		{return new Symbol(sym.CIERRELLAVE, yyline + 1, yycolumn + 1);}

{AperturaCorchete}	{return new Symbol(sym.APERTURACORCHETE, yyline + 1, yycolumn + 1);}

{CierreCorchete}	{return new Symbol(sym.CIERRECORCHETE, yyline + 1, yycolumn + 1);}

{AperturaParentesis}	{return new Symbol(sym.APERTURAPARENTESIS, yyline + 1, yycolumn + 1);}

{CierreParentesis}	{return new Symbol(sym.APERTURAPARENTESIS, yyline + 1, yycolumn + 1);}

{TITULO}		{return new Symbol(sym.TITULO, yyline + 1, yycolumn + 1);}

{DosPuntos}		{return new Symbol(sym.DOSPUNTOS, yyline + 1, yycolumn + 1);}

{COMA}			{return new Symbol(sym.COMA, yyline + 1, yycolumn + 1);}

{PuntoYComa}		{return new Symbol(sym.PUNTOYCOMA, yyline + 1, yycolumn + 1);}

{NumeroEntero}		{return new Symbol(sym.NUMEROENTERO, yyline + 1, yycolumn + 1);}

//para el de barras

{UNIR}			{return new Symbol(sym.UNIR, yyline + 1, yycolumn + 1);}

{EJEX}			{return new Symbol(sym.EJEX, yyline + 1, yycolumn + 1);}

{EJEY}			{return new Symbol(sym.EJEY, yyline + 1, yycolumn + 1);}

//para Pie

{TIPO}			{return new Symbol(sym.TIPO, yyline + 1, yycolumn + 1);}

{CANTIDAD}		{return new Symbol(sym.CANTIDAD, yyline + 1, yycolumn + 1);}

{PORCENTAJE}		{return new Symbol(sym.PORCENTAJE, yyline + 1, yycolumn + 1);}

{ETIQUETA}		{return new Symbol(sym.ETIQUETA, yyline + 1, yycolumn + 1);}

{VALORES}		{return new Symbol(sym.VALORES, yyline + 1, yycolumn + 1);}

{TOTAL}			{return new Symbol(sym.TOTAL, yyline + 1, yycolumn + 1);}

{EXTRA}			{return new Symbol(sym.EXTRA, yyline + 1, yycolumn + 1);}

//seccion de ejecutar

{EJECUTAR}		{return new Symbol(sym.EJECUTAR, yyline + 1, yycolumn + 1);}

{INFO}                  {return new Symbol(sym.INFO, yyline + 1, yycolumn + 1);}

{MAS}			{return new Symbol(sym.MAS, yyline + 1, yycolumn + 1);}

{MENOS}			{return new Symbol(sym.MENOS, yyline + 1, yycolumn + 1);}

{MULTIPLICACION}	{return new Symbol(sym.MULTIPLICACION, yyline + 1, yycolumn + 1);}

//{DIVICION}		{return new Symbol(sym.DIVICION, yyline + 1, yycolumn + 1);}


[^] {}//si encuentra un error que va hacer
