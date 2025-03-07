unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    miSaveAs: TMenuItem;
    miOpen: TMenuItem;
    miSave: TMenuItem;
    miExit: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure miOpenClick(Sender: TObject);
    procedure miSaveAsClick(Sender: TObject);
    procedure miSaveClick(Sender: TObject);
    procedure miExitClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

// Открыть файл
procedure TForm1.miOpenClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
  end;
end;

// Сохранить как

procedure TForm1.miSaveAsClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
  end;
end;

// Сохранить
procedure TForm1.miSaveClick(Sender: TObject);
begin
  if SaveDialog1.FileName <> '' then
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

// Выйти
procedure TForm1.miExitClick(Sender: TObject);
begin
  Close;
end;


end.

