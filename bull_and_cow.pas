unit bull_and_cow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

const max_mot = 10;

type
  TForm7 = class(TForm)
    mot_saisi: TEdit;
    bull: TEdit;
    cow: TEdit;
    Check: TButton;
    Ràz: TButton;
    Quit: TButton;
    nbr_essais: TEdit;
    taille_mot: TEdit;
    mot_label: TLabel;
    bull_label: TLabel;
    cow_label: TLabel;
    essais_label: TLabel;
    liste_mot: TMemo;
    lancement: TButton;
    taille_label: TLabel;
    mot_choisi: TEdit;
    procedure RàzClick(Sender: TObject);
    procedure QuitClick(Sender: TObject);
    procedure lancementClick(Sender: TObject);
    procedure CheckClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}


procedure TForm7.CheckClick(Sender: TObject);

VAR
  cows:INTEGER;
  bulls:INTEGER;
  compteur:INTEGER;
  i:INTEGER;
begin
bull.Text:=IntToStr(0);
  for compteur := 1 to StrToInt(taille_mot.Text) do
    BEGIN
      if taille_mot.Text[compteur]=mot_saisi.Text[compteur] then
        bulls:=bulls+1;
        bull.Text:=IntToStr(Bulls);


    END;

  for compteur := 1 to StrToInt(taille_mot.Text) do
    BEGIN
        if taille_mot.Text[compteur]<> mot_saisi.Text[compteur] then
           if taille_mot.Text[compteur]=mot_saisi.Text[compteur] then

            cows:=cows+1;
        cow.Text:=IntToStr(cows);


    END;


end;




procedure TForm7.lancementClick(Sender: TObject);

VAR
  compteur:INTEGER;
  essais:INTEGER;
begin
  liste_mot.Lines.LoadFromFile('mots.txt');
  Randomize;
  mot_choisi.Text:=liste_mot.Lines[Random(max_mot)];
  lancement.Visible:=False;
  taille_mot.Text:=IntToStr(length(mot_choisi.Text));
  if taille_mot.Text='3' then essais:=4 else
  if taille_mot.Text='4' then essais:=7 else
  if taille_mot.Text='5' then essais:=10 else
  if taille_mot.Text='6' then essais:=16 else
  if taille_mot.Text='7' then essais:=20 else
  nbr_essais.Text:=IntToStr(essais);

end;

procedure TForm7.QuitClick(Sender: TObject);
begin
  if MessageDlg('Voulez-vous quitter le programme?',mtConfirmation,[mbYes,mbNo],0,mbYes)=mrYes then close;
end;

procedure TForm7.RàzClick(Sender: TObject);
begin
  mot_saisi.Text:='';
  bull.Text:='';
  cow.Text:='';
end;

end.
