unit Unit1;

{$MODE Delphi}

interface

uses Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls
  , LCLType
  , LMessages
  , LCLIntf
  ;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure TmrOnTimer(var Msg: TLMTimer); message LM_TIMER;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  SetTimer(Handle, 1, 1000, nil);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  SetTimer(Handle, 2, 1000, nil);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  SetTimer(Handle, 3, 1000, nil);
end;

procedure TForm1.TmrOnTimer(var Msg: TLMTimer);
begin
  KillTimer(Handle, Msg.TimerID);
  case Msg.TimerID of
    1: Memo1.Lines.Add('Button1 OnTimer');
    2: Memo1.Lines.Add('Button2 OnTimer');
    3: Memo1.Lines.Add('Button3 OnTimer');
  end;
end;

end.
