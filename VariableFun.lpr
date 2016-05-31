program VariableFun;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };

type

  { TVariableFun }

  TVariableFun = class(TCustomApplication)
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
  end;

{ TVariableFun }

procedure TVariableFun.DoRun;
var
 // ErrorMsg: String;
begin


  { add your program here }

  // stop program loop
  Terminate;
end;

constructor TVariableFun.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor TVariableFun.Destroy;
begin
  inherited Destroy;
end;

procedure TVariableFun.WriteHelp;
begin
  { add your help code here }
  writeln('Usage: ', ExeName, ' -h');
end;

var
  Application: TVariableFun;
begin
  Application:=TVariableFun.Create(nil);
  Application.Title:='VariableFun';
  Application.Run;
  Application.Free;
end.

