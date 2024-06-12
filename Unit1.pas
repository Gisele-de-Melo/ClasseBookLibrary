//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Unit2; // Supondo que as classes TBook e TLibrary estão definidas em Unit2

procedure TForm1.Button1Click(Sender: TObject);
var
  aLibrary: TLibrary;
  Book1, Book2: TBook;
begin
  aLibrary := TLibrary.Create;
  try
    Book1 := TBook.Create;
    Book1.Title := '1984';
    Book1.Author := 'George Orwell';
    Book1.Year := 1949;
    aLibrary.AddBook(Book1);

    Book2 := TBook.Create;
    Book2.Title := 'To Kill a Mockingbird';
    Book2.Author := 'Harper Lee';
    Book2.Year := 1960;
    aLibrary.AddBook(Book2);

    aLibrary.DisplayBooks;
  finally
    aLibrary.Free;
  end;
end;

end.
