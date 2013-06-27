unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,Log4l;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
var
  appender:TLogFileAppender;
  logger:TLoglogger;
  f: file of text;
begin
 try
  appender := TLogRollingFileAppender.Create('name','log.html');
  appender.Layout := TLogHTMLLayout.Create;
  TLogBasicConfigurator.Configure(appender);
  TLogLogger.GetRootLogger.Level := ALL;
// create a named logger
  Logger := TLogLogger.GetLogger('exampleLogger');
// write log messages
  Logger.Fatal('fatal output');
  Logger.Error('error output');
  Logger.Warn('warn output');
  Logger.Info('info output');
  Logger.Debug('debug output');
  Logger.Trace('trace output');
except
on E:Exception do
begin
Writeln(E.Classname, ': ', E.Message);
end;
end;

end;

end.

