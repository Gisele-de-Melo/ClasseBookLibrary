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

unit Unit2;

interface

uses System.SysUtils, Vcl.Dialogs, Generics.Collections;

type
  TBook = class
  private
    FTitle: string;
    FAuthor: string;
    FYear: Integer;
    function GetDescription: string;
  public
    property Title: string read FTitle write FTitle;
    property Author: string read FAuthor write FAuthor;
    property Year: Integer read FYear write FYear;
    property Description: string read GetDescription;
    procedure DisplayInfo;
  end;

  TLibrary = class
  private
    FBooks: TList<TBook>;
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddBook(ABook: TBook);
    procedure DisplayBooks;
  end;

implementation

{ TBook }

function TBook.GetDescription: string;
begin
  Result := FTitle + ' by ' + FAuthor + ', published in ' + IntToStr(FYear);
end;

procedure TBook.DisplayInfo;
begin
  ShowMessage(Description);
end;

{ TLibrary }

constructor TLibrary.Create;
begin
  FBooks := TList<TBook>.Create;//cria a lista de livros
end;

destructor TLibrary.Destroy;
begin
  FBooks.Free; //destrói a lista de livros
  inherited;
end;

procedure TLibrary.AddBook(ABook: TBook);
begin
  FBooks.Add(ABook);//adiciona um novo livro na lista
end;

procedure TLibrary.DisplayBooks;
var
  Book: TBook;
begin
  //chama o método DisplayInfo para livro dentro da lista de livros.
  for Book in FBooks do
  begin
    Book.DisplayInfo;
  end;
end;

end.
