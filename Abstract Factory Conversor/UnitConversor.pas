unit UnitConversor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DBXJSON, Data.DBXJSONCommon, Data.DBXJSONReflect, System.JSON,
  System.JSONConsts, System.IOUtils, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Grids, Vcl.DBGrids, InterfaceConversor,
  FactoryConversor;

type
  TForm1 = class(TForm)
    btnCarregarJson: TButton;
    btnCarregarXml: TButton;
    btnCarregarCsv: TButton;
    rchTextos: TRichEdit;
    gridJSON: TDBGrid;
    cdsConversor: TClientDataSet;
    dsConversor: TDataSource;
    procedure btnCarregarCsvClick(Sender: TObject);
    procedure btnCarregarJsonClick(Sender: TObject);
    procedure btnCarregarXmlClick(Sender: TObject);
  private
    Factory: TFactoryConversor;
    Conversor: TConversor;

  const
    ArquivoJSON =
      'C:\Users\Gabriel Scavassa\Documents\Embarcadero\Studio\Projects\Design Patterns\'
      + 'Design-Patterns\Abstract Factory Conversor\mockdata\data.json';
    ArquivoXML =
      'C:\Users\Gabriel Scavassa\Documents\Embarcadero\Studio\Projects\Design Patterns\'
      + 'Design-Patterns\Abstract Factory Conversor\mockdata\data.xml';
    ArquivoCSV =
      'C:\Users\Gabriel Scavassa\Documents\Embarcadero\Studio\Projects\Design Patterns\Design-Patterns\'
      + 'Abstract Factory Conversor\mockdata\data.csv';
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  JSONToDataSet, CSVToDataSet, XMlToDataSet;

{$R *.dfm}

procedure TForm1.btnCarregarCsvClick(Sender: TObject);
begin
  Conversor := nil;
  Factory := TFactoryConversor.Create;
  try
    rchTextos.Lines.Clear;
    Conversor := Factory.ConverterArquivo(ArquivoCSV, cdsConversor);
    Conversor.Converter;
  finally
    Conversor.Free;
    Factory.Free;
  end;
end;

procedure TForm1.btnCarregarJsonClick(Sender: TObject);
begin
  Conversor := nil;
  Factory := TFactoryConversor.Create;
  try
    rchTextos.Lines.Clear;
    Conversor := Factory.ConverterArquivo(ArquivoJSON, cdsConversor);
    Conversor.Converter;
  finally
    Conversor.Free;
    Factory.Free;
  end;
end;

procedure TForm1.btnCarregarXmlClick(Sender: TObject);
begin
  Conversor := nil;
  Factory := TFactoryConversor.Create;
  try
    rchTextos.Lines.Clear;
    Conversor := Factory.ConverterArquivo(ArquivoXML, cdsConversor);
    Conversor.Converter;
  finally
    Conversor.Free;
    Factory.Free;
  end;
end;

end.
