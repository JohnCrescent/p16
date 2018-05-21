unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var n,i,f:integer;
begin
n:=strtoint(edit1.text); //načítanie premennej
 f:=1;   //f priradí 1

 if n<0 then showmessage('Faktoriál z čísla menšieho ako 0 sa nedá vypočítať. Zadaj iné číslo!')   //ošetrenie, aby bolo n>=0
 else
   begin
      for i:=1 to n do
         f:=f*i;       //výpočet faktoruálu
       label3.caption:='n!= '+inttostr(f);  //vypíše výsledok
   end;

end;

end.

