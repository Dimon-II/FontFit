unit u_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ExtDlgs, Vcl.ToolWin, profixxml,
  Vcl.Samples.Spin, Winapi.CommCtrl, SynEditHighlighter, SynHighlighterXML,
  SynEdit, Vcl.Grids, System.Math, System.ImageList, Vcl.ImgList,
  SynHighlighterIni, System.NetEncoding;

type
  TFontFace=record
    font_family: string;
    units_per_em: integer;
    ascent: integer;
    descent: integer;
    x_height: integer;
    cap_height: integer;
    right: integer;
    baseright: integer;
  end;
  TGlyph=class
    PtBuf:array of TPoint;
    TpBuf:array of Byte;
    Right:integer;
    rng:array of TRect;
  end;


  TMainForm = class(TForm)
    pcGlyph: TPageControl;
    splGlyph: TSplitter;
    tsGlyph: TTabSheet;
    tsXML: TTabSheet;
    pnFont: TPanel;
    tbrFont: TToolBar;
    tbOpen: TToolButton;
    ToolButton2: TToolButton;
    treeFNT: TTreeView;
    OpenDialog: TOpenDialog;
    tsHeap: TTabSheet;
    lbUnicodeRegions: TListBox;
    StatusBar1: TStatusBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    FontDialog1: TFontDialog;
    sbrPaint: TScrollBox;
    pnImg: TPanel;
    Draw: TPaintBox;
    seGlyph: TSynEdit;
    SynXMLSyn1: TSynXMLSyn;
    sgGlyph: TStringGrid;
    sgBase: TStringGrid;
    ImageList1: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    seZoom: TSpinEdit;
    seGrid: TSpinEdit;
    Label2: TLabel;
    tbrGlyph: TToolBar;
    tbBase: TToolButton;
    ToolButton6: TToolButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    SaveDialog1: TSaveDialog;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    tsKern: TTabSheet;
    sg: TStringGrid;
    SynIniSyn1: TSynIniSyn;
    ToolBar1: TToolBar;
    ToolButton24: TToolButton;
    ToolButton26: TToolButton;
    ProgressBar1: TProgressBar;
    ToolButton25: TToolButton;
    ToolButton27: TToolButton;
    tbClearKern: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    Panel3: TPanel;
    seKern: TSynEdit;
    KernPaint: TPaintBox;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure tbOpenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure treeFNTAdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);
    procedure treeFNTCompare(Sender: TObject; Node1, Node2: TTreeNode;
      Data: Integer; var Compare: Integer);
    procedure treeFNTChange(Sender: TObject; Node: TTreeNode);
    procedure treeFNTChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure DrawPaint(Sender: TObject);
    procedure DrawStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure DrawMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure seZoomChange(Sender: TObject);
    procedure seGridChange(Sender: TObject);
    procedure tbBaseClick(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure DrawDblClick(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure KernPaintPaint(Sender: TObject);
    procedure sgSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ToolButton25Click(Sender: TObject);
    procedure tbClearKernClick(Sender: TObject);
    procedure ToolButton27Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure sgDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
  private
    { Private declarations }
    procedure ResetFNT;
    procedure ParsePath(APath: string);
    procedure PathAbs(Idx: integer);
    procedure PathRel(Idx: integer);
    procedure PathZoom(Idx: integer; k: double);
  public
    { Public declarations }
    MouseStart, ZeroXY:TPoint;
    zm:double;
    FNT: TXML_Doc;
    hFont: string;
    FontFace: TFontFace;
    BaseRect,GlyphRect:TRect;
    Nod:TXML_Nod;
    BrushBitmap:TBitmap;
    function StrToXY(s:string;Def:integer):double;
    procedure DeltaPolyBezierTo(const Points: array of TPoint;ZeroXY:Tpoint);
    procedure SvgArcTo(Curr:TPoint; rx,ry:Integer; ax:double; fa, fs:boolean; x,y:integer; Canvas:TCanvas);

    procedure DrawPath(sgDots:TStringGrid;ACanvas:TCanvas;ZeroXY:TPoint;ZM:double);
    procedure ApplyGlyph;
    procedure DrawGlypf(ACanvas:TCanvas; AGlyph:TGlyph; dx,dy:Integer);
    procedure ExistKerning;

  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}
type
  TSvgPoint=record
    X,Y:Double;
  end;
  PSvgPoint=^TSvgPoint;
  XYZ=record
    x,y,z:double;
  end;


  function GetCode(nod:TXML_Nod):integer;
  var
     s, gl_name, gl_code, rs:string;
  begin
    s := THTMLEncoding.HTML.Decode(nod.Attribute['unicode']);
    if s='' then result := -1
    else
      result := ord(s[1])
{
    gl_name := nod.Attribute['glyph-name'];
    gl_code := nod.Attribute['unicode'];
    s := '-1';

    if Pos('uni',gl_name)=1 then
    begin
      s := copy(gl_name,4,5);
      s := '$'+Copy(s,1,Pos('.',s+'.')-1);
    end
    else
    if length(gl_code)=1 then
      s := '$'+IntToHex(ord(gl_code[1]))
    else begin
      s := '$'+copy(gl_code,1,pos(';',gl_code)-1);
      s := StringReplace(s,'&#x','$',[rfIgnoreCase]);
      s := StringReplace(s,'&#','',[rfIgnoreCase]);
    end;

    result := StrToIntDef(s,-1);
}
  end;

Procedure DifV (P,Q: XYZ; Var R: XYZ);
Begin
  With R Do
  Begin
    x:=P.x-Q.x;
    y:=P.y-Q.y;
    z:=P.z-Q.z;
  End;
End;

Procedure DotV (P,Q: XYZ; Var d: Double);
Begin
  d:=P.x*Q.x+P.y*Q.y+P.z*Q.z;
End;

Procedure VecX (P,G: XYZ; s: Double; Var X: XYZ);
Begin
  With X do
  Begin
    x:=P.x+s*G.x;
    y:=P.y+s*G.y;
    z:=P.z+s*G.z;
  End;
End;

Procedure DisA (X1,X2: XYZ; Var Da: XYZ; Var Lq: Double);
Begin
  With Da do
  Begin
    x:=X2.x-X1.x;
    y:=X2.y-X1.y;
    z:=X2.z-X1.z;
    Lq:=Sqr(x)+Sqr(y)+Sqr(z);
  End;
End;

Procedure Dist (p1,q1,p2,q2: XYZ; Var x1,x2: XYZ; Var dis: Double);
Var a11,a12,a22,b1,b2,D0,D1,D2 : Double;
    s1,s2,n1,n2,sa,sb,dq,eq : Double;
    g1,g2,dp,da : XYZ;
    flg : Integer;
Begin
  DifV(q1,p1,g1);
  DifV(q2,p2,g2);
  DifV(p2,p1,dp);
  DotV(g1,g1,a11);
  DotV(g1,g2,a12); a12:=-a12;
  DotV(g2,g2,a22);
  DotV(g1,dp,b1);
  DotV(g2,dp,b2); b2:=-b2;
{ Cramer determinants }
  D0:=a11*a22-a12*a12;
  D1:= b1*a22- b2*a12;
  D2:=-b1*a12+ b2*a11;
{ In-line distance }
  flg:=0;
  If D0>0 Then
  Begin
    If (0<D1) And (D1<D0) Then Inc(flg);
    If (0<D2) And (D2<D0) Then Inc(flg);
  End;
  If D0<0 Then
  Begin
    If (0>D1) And (D1>D0) Then Inc(flg);
    If (0>D2) And (D2>D0) Then Inc(flg);
  End;
  If flg=2 Then
  Begin
    sa:=D1/D0;
    sb:=D2/D0;
  End;
{ Out-line distance }
  If flg<2 Then
  Begin
{ a11>=0, a22>=0 }
    s1:=0;
    n2:=b2; { s2:=(b2-a12*s1)/a22 }
    flg:=0;
    If n2<=0 Then
    Begin
      s2:=0;
      Inc(flg);
    End;
    If n2>=a22 Then
    Begin
      s2:=1;
      Inc(flg);
    End;
    If flg=0 Then s2:=n2/a22;
    VecX (p1,g1,s1,x1);
    VecX (p2,g2,s2,x2);
    DisA (x1,x2,da,eq);
    sa:=s1; sb:=s2; dq:=eq;
    s1:=1;
    n2:=b2-a12; { s2:=(b2-a12*s1)/a22 }
    flg:=0;
    If n2<=0 Then
    Begin
      s2:=0;
      Inc(flg);
    End;
    If n2>=a22 Then
    Begin
      s2:=1;
      Inc(flg);
    End;
    If flg=0 Then s2:=n2/a22;
    VecX (p1,g1,s1,x1);
    VecX (p2,g2,s2,x2);
    DisA (x1,x2,da,eq);
    If eq<dq Then
    Begin
      sa:=s1;
      sb:=s2;
      dq:=eq;
    End;
    s2:=0;
    n1:=b1; { s1=(b1-a12*s2)/a11 }
    flg:=0;
    If n1<=0 Then
    Begin
      s1:=0;
      Inc(flg);
    End;
    If n1>=a11 Then
    Begin
      s1:=1;
      Inc(flg);
    End;
    If flg=0 Then s1:=n1/a11;
    VecX (p1,g1,s1,x1);
    VecX (p2,g2,s2,x2);
    DisA (x1,x2,da,eq);
    If eq<dq Then
    Begin
      sa:=s1;
      sb:=s2;
      dq:=eq;
    End;
    s2:=1;
    n1:=b1-a12; { s1=(b1-a12*s2)/a11 }
    flg:=0;
    If n1<=0 Then
    Begin
      s1:=0;
      Inc(flg);
    End;
    If n1>=a11 Then
    Begin
      s1:=1;
      Inc(flg);
    End;
    If flg=0 Then s1:=n1/a11;
    VecX (p1,g1,s1,x1);
    VecX (p2,g2,s2,x2);
    DisA (x1,x2,da,eq);
    If eq<dq Then
    Begin
      sa:=s1;
      sb:=s2;
      dq:=eq;
    End;
  End;
{ For all sa=s1, sb=s2, refresh }
  VecX (p1,g1,sa,x1);
  VecX (p2,g2,sb,x2);
  DisA (x1,x2,da,dq);
  dis:=Sqrt(dq);
End;


procedure TMainForm.ApplyGlyph;
var
  s:string;
  i,j:integer;
//  Nod:TXML_Nod;
begin
  Application.ProcessMessages;
  s:='';
  for i := 1 to sgGlyph.RowCount-1 do
  begin
    if sgGlyph.Cells[1,i]='m' then
      PathAbs(i)
    else
      PathRel(i);

    for j := 1 to 8 do
      if sgGlyph.Cells[j,i]<>'' then
        s:=s + sgGlyph.Cells[j,i] + ' ';

    PathRel(i);
  end;
  seGlyph.Text:='<glyph';

  for i:=0 to Nod.Attributes.Count-1 do
    if Nod.Attributes[i].name='d' then begin end
    else
    if Nod.Attributes[i].name='horiz-adv-x' then begin end
    else
      seGlyph.Lines.add('  '+Nod.Attributes[i].name + '="' +Nod.Attributes[i].value+'"');
  seGlyph.Lines.add('  horiz-adv-x="'+IntToStr(FontFace.right)+'"');
  seGlyph.Lines.add('  d="'+s+'"');
  seGlyph.Lines.add('/>');
  seGlyph.Modified := True;
end;

procedure TMainForm.DeltaPolyBezierTo(const Points: array of TPoint; ZeroXY:Tpoint);
var p: array of TPoint;
  i:integer;
begin
   SetLength(p,length(Points));
    for i := 0 to length(Points)-1 do
    begin
      p[i].x := Points[i].x - ZeroXY.x;
      p[i].y := Points[i].y - ZeroXY.y;
    end;
    Draw.Canvas.PolyBezierTo(p);
end;

procedure TMainForm.DrawDblClick(Sender: TObject);
begin
  ZeroXY.y :=  - FontFace.ascent div 3 ;
  ZeroXY.x := - 100;
  Draw.Invalidate;
end;

procedure TMainForm.DrawDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  pnt:TPoint;
  i,n:Integer;
  zm :double;
  p0, p1, pz, pq: tpoint;
begin
  if seZoom.Value=0 then
    zm := 1
  else
  if seZoom.Value>0 then
    zm := seZoom.Value
  else
    zm := -1 / seZoom.Value;

  pnt := TControl(Source).ScreenToClient(TControl(Sender).ClientToScreen(Point(x,y)));

  if Source is TPaintBox then
  begin
    ZeroXY.x := ZeroXY.x + MouseStart.x - Mouse.CursorPos.x;
    ZeroXY.y := ZeroXY.y + MouseStart.y - Mouse.CursorPos.y;
    MouseStart := Mouse.CursorPos;
    Draw.Invalidate
  end;

  Accept := True;

end;

procedure TMainForm.DrawGlypf(ACanvas: TCanvas; AGlyph: TGlyph; dx,dy: Integer);
var i:Integer;
begin
  ACanvas.Pen.Style := psSolid;

  for i := 0 to Length(AGlyph.PtBuf)-1 do
    if AGlyph.TpBuf[i] = 6 then
       ACanvas.MoveTo(
         round(AGlyph.PtBuf[i].X/12 + dx ),
         round(AGlyph.PtBuf[i].Y/12 + dy))
      else
       ACanvas.LineTo(
         round(AGlyph.PtBuf[i].X/12 + dx),
         round(AGlyph.PtBuf[i].Y/12 + dy));

  aCanvas.Pen.Style := psDot;
  ACanvas.MoveTo(Round(dx + AGlyph.Right/12),0);
  ACanvas.LineTo(Round(dx + AGlyph.Right/12),KernPaint.Height);
  ACanvas.Pen.Style := psSolid;
end;

procedure TMainForm.DrawMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  if (ssRight in Shift)  then
    Draw.BeginDrag(True)
end;



procedure TMainForm.DrawPaint(Sender: TObject);
var
  p:array of TPoint;
  i,j,kk  :Integer;
  p0, p1, pz, pq, mx, MinXY: tpoint;
  Rx, Ry: double;
  sgDots:TStringGrid;
  k: TCanvas;
  PtBuf:array of TPoint;
  TpBuf:array of Byte;
begin
  mx:=point(0,0);
  MinXY:=point(0,0);

  with Draw.Canvas do
  begin
    if seGrid.Value > 3 then
    begin
      BrushBitmap.Width :=seGrid.Value;
      BrushBitmap.Height :=seGrid.Value;
      BrushBitmap.Canvas.Brush.Color := clWhite;
      BrushBitmap.Canvas.Pen.color := clWhite;
      BrushBitmap.Canvas.Brush.Style := bsSolid;
      BrushBitmap.Canvas.Rectangle(0,0,seGrid.Value, seGrid.Value);
      p0.x := -ZeroXY.x mod seGrid.Value;
      p0.y := -ZeroXY.y mod seGrid.Value;

      p0.x:= (8 + 2*seGrid.Value + abs(ZeroXY.x)) mod seGrid.Value;
      p0.y:= (8 + 2*seGrid.Value + abs(ZeroXY.y)) mod seGrid.Value;

      BrushBitmap.Canvas.Pixels[p0.x,p0.y]:=$FF0000;

      Pen.Style := psClear;
      Brush.Bitmap:=BrushBitmap;
      Rectangle(0,0, Mainform.Draw.Width, Mainform.Draw.Height);
      Brush.Bitmap:=nil;



    end;

    Pen.Color := $F0;
    Pen.Style := psDash;
    // Baseline
    MoveTo(0, -ZeroXY.y);
    LineTo(self.Draw.width, -ZeroXY.y);
    // Left zero
    MoveTo(-ZeroXY.x,0);
    LineTo(-ZeroXY.x, self.Draw.Height);

    Pen.Style := psDot;
    Pen.Color := $F000;
    MoveTo(0, -ZeroXY.y - round(zm * FontFace.x_height));
    LineTo(self.Draw.width, -ZeroXY.y - round(zm * FontFace.x_height));

    MoveTo(0, -ZeroXY.y - round(zm * FontFace.cap_height));
    LineTo(self.Draw.width, -ZeroXY.y - round(zm * FontFace.cap_height));

    Pen.Color := $F00000;
    MoveTo(-ZeroXY.x + Round(zm *FontFace.right) ,0);
    LineTo(-ZeroXY.x + Round(zm *FontFace.right), self.Draw.Height);

    MoveTo(0, -ZeroXY.y - round(zm * FontFace.descent));
    LineTo(self.Draw.width, -ZeroXY.y - round(zm * FontFace.descent));

    MoveTo(0, -ZeroXY.y - round(zm * FontFace.ascent));
    LineTo(self.Draw.width, -ZeroXY.y - round(zm * FontFace.ascent));

    if seZoom.Value=0 then
      zm := 1
    else
    if seZoom.Value>0 then
      zm := seZoom.Value
    else
      zm := -1 / seZoom.Value;

    MoveTo(-ZeroXY.x,-ZeroXY.y);
    Pen.Style := psSolid;

    Pen.Width := 1; Pen.Color := $F00000;

    if tbBase.Down then
    begin

      DrawPath(sgBase, MainForm.Draw.Canvas,Point(ZeroXY.X + round(FontFace.baseright *zm) ,ZeroXY.Y), zm);
      DrawPath(sgBase, MainForm.Draw.Canvas,Point(ZeroXY.X - round(FontFace.right *zm),ZeroXY.Y), zm);
    end;

    MoveTo(-ZeroXY.x,-ZeroXY.y);
    Pen.Width := 2; Pen.Color := $000000;
    DrawPath(sgGlyph, MainForm.Draw.Canvas,ZeroXY, zm);

    MoveTo(0,0);
    BeginPath(MainForm.Draw.Canvas.Handle);
    DrawPath(sgGlyph, MainForm.Draw.Canvas, point(0,0), 1);
    EndPath(MainForm.Draw.Canvas.Handle);

    Pen.Width := 1;

    FlattenPath(MainForm.Draw.Canvas.Handle);
    j:=GetPath(MainForm.Draw.Canvas.Handle,@I,@I,0);
    SetLength(PtBuf,j);
    SetLength(TpBuf,j);
    GetPath(MainForm.Draw.Canvas.Handle,@PtBuf[0],@TpBuf[0],j);

    for I:=0 to j-1 do
      if TpBuf[i]<>6 then
      begin
        GlyphRect := Rect(PtBuf[0].x,PtBuf[0].y,PtBuf[0].x,PtBuf[0].y);
        Break;
      end;

    for I:=0 to j-1 do
      if TpBuf[i]<>6 then
      begin
        if GlyphRect.Left > PtBuf[I].x then
          GlyphRect.Left := PtBuf[I].x;
        if GlyphRect.Right < PtBuf[I].x then
          GlyphRect.Right := PtBuf[I].x;

        if GlyphRect.Top > PtBuf[I].y then
          GlyphRect.Top := PtBuf[I].y;
        if GlyphRect.Bottom < PtBuf[I].y then
          GlyphRect.Bottom := PtBuf[I].y;

{
      if TpBuf[i]=2 then
        MainForm.Draw.Canvas.LineTo(PtBuf[I].x, PtBuf[i].Y)
      else
        MainForm.Draw.Canvas.MoveTo(PtBuf[I].x, PtBuf[i].Y);

      MainForm.Draw.Canvas.MoveTo(PtBuf[I].x-10, PtBuf[i].Y);
      MainForm.Draw.Canvas.LineTo(PtBuf[I].x+10, PtBuf[i].Y);
      MainForm.Draw.Canvas.MoveTo(PtBuf[I].x, PtBuf[i].Y-10);
      MainForm.Draw.Canvas.LineTo(PtBuf[I].x, PtBuf[i].Y+10);
      MainForm.Draw.Canvas.MoveTo(PtBuf[I].x, PtBuf[i].Y);
}
      end;
{
    Brush.Style := bsDiagCross;
    Brush.Color := $F0;
   Rectangle(
     -ZeroXY.x + Round(zm * GlyphRect.Left),
     -ZeroXY.y + Round(zm * GlyphRect.Top),
     -ZeroXY.x + Round(zm * GlyphRect.Right),
     -ZeroXY.y + Round(zm * GlyphRect.Bottom)
     );
}
  end;
end;

procedure TMainForm.DrawPath(sgDots:TStringGrid;ACanvas:TCanvas;ZeroXY:TPoint;ZM:double);
var
  p:array of TPoint;
  i,j,kk  :Integer;
  p0, p1, pz, pq, mx, MinXY: tpoint;
  Rx, Ry: double;
  PtBuf:array of TPoint;
  TpBuf:array of Byte;
begin
 SetLength(p,3);
 p0:=Point(0,0);

 with ACanvas do
  for i := 1 to sgDots.RowCount-1 do
  begin
     sgDots.Cells[9,i] := FloatToStr(RoundTo(p0.x/zm,-3));
     sgDots.Cells[10,i] := FloatToStr(RoundTo(p0.y/-zm,-3));
     if sgDots.Cells[1,i]='M' then
     begin
        p0.X := Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p0.Y := Round(-zm*StrToXY(sgDots.Cells[3,i],0));
        pz:=p0;
        MoveTo(p0.X-ZeroXY.x,p0.Y-ZeroXY.y);
        p[1]:=p0;
     end;
     if sgDots.Cells[1,i]='m' then
     begin
        p0.X := p0.X + Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p0.Y := p0.Y + Round(-zm*StrToXY(sgDots.Cells[3,i],0));
        pz:=p0;
        MoveTo(p0.X - ZeroXY.x ,p0.Y- ZeroXY.y);
        p[1]:=p0;
     end;
     if sgDots.Cells[1,i]='L' then
     begin
        p1.X := Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p1.Y := Round(-zm*StrToXY(sgDots.Cells[3,i],0));
        LineTo(p1.X-ZeroXY.x,p1.Y-ZeroXY.y);
        p0:=p1;
        p[1]:=p0;
     end;
     if sgDots.Cells[1,i]='l' then
     begin
        p1.X := p0.x + Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p1.Y := p0.y + Round(-zm*StrToXY(sgDots.Cells[3,i],0));
        LineTo(p1.X-ZeroXY.x,p1.Y-ZeroXY.y);
        p0:=p1;
        p[1]:=p0;
     end;
     if sgDots.Cells[1,i]='H' then
     begin
        p1.X := Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p1.Y := p0.Y;
        LineTo(p1.X-ZeroXY.x, p1.Y-ZeroXY.y);
        p0:=p1;
        p[1]:=p0;
     end;
     if sgDots.Cells[1,i]='h' then
     begin
        p1.X := p0.x + Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p1.Y := p0.Y;
        LineTo(p1.X-ZeroXY.x,p1.Y-ZeroXY.y);
        p0:=p1;
        p[1]:=p0;
     end;
     if sgDots.Cells[1,i]='V' then
     begin
        p1.X := p0.X;
        p1.Y := Round(-zm*StrToXY(sgDots.Cells[2,i],0));
        LineTo(p1.X-ZeroXY.x,p1.Y-ZeroXY.y);
        p0:=p1;
        p[1]:=p0;
     end;
     if sgDots.Cells[1,i]='v' then
     begin
        p1.X := p0.X;
        p1.Y := p0.y + Round(-zm*StrToXY(sgDots.Cells[2,i],0));
        LineTo(p1.X-ZeroXY.x, p1.Y-ZeroXY.y);
        p0:=p1;
        p[1]:=p0;
     end;
     if sgDots.Cells[1,i]='Z' then
     begin
        LineTo(pz.X-ZeroXY.x,pz.Y-ZeroXY.y);
        p0:=pz;
        p[1]:=p0;
     end;
     if sgDots.Cells[1,i]='z' then
     begin
        LineTo(pz.X-ZeroXY.x,pz.Y-ZeroXY.y);
        p0:=pz;
        p[1]:=p0;
     end;
     if sgDots.Cells[1,i]='C' then
     begin
        p[0].X := Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p[0].Y := Round(-zm*StrToXY(sgDots.Cells[3,i],0));
        p[1].X := Round(zm*StrToXY(sgDots.Cells[4,i],0));
        p[1].Y := Round(-zm*StrToXY(sgDots.Cells[5,i],0));

        p1.X := Round(zm*StrToXY(sgDots.Cells[6,i],0));
        p1.Y := Round(-zm*StrToXY(sgDots.Cells[7,i],0));
//        LineTo(p1.X-ZeroXY.x,p1.Y-ZeroXY.y);
        p[2] := p1;
        DeltaPolyBezierTo(p, ZeroXY);
        p0:=p1;
     end;
     if sgDots.Cells[1,i]='c' then
     begin
        p[0].X := p0.x + Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p[0].Y := p0.y + Round(-zm*StrToXY(sgDots.Cells[3,i],0));
        p[1].X := p0.x + Round(zm*StrToXY(sgDots.Cells[4,i],0));
        p[1].Y := p0.y + Round(-zm*StrToXY(sgDots.Cells[5,i],0));

        p1.X := p0.x + Round(zm*StrToXY(sgDots.Cells[6,i],0));
        p1.Y := p0.y + Round(-zm*StrToXY(sgDots.Cells[7,i],0));
//        LineTo(p1.X-ZeroXY.x,p1.Y-ZeroXY.y);
        p[2] := p1;
        DeltaPolyBezierTo(p, ZeroXY);
        p0:=p1;
     end;
     if sgDots.Cells[1,i]='S' then
     begin
        p[0].X := 2 * p0.x - p[1].X;
        p[0].Y := 2 * p0.y - p[1].Y;
        p[1].X := Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p[1].Y := Round(-zm*StrToXY(sgDots.Cells[3,i],0));

        p1.X := Round(zm*StrToXY(sgDots.Cells[4,i],0));
        p1.Y := Round(-zm*StrToXY(sgDots.Cells[5,i],0));
//        LineTo(p1.X-ZeroXY.x,p1.Y-ZeroXY.y);
        p[2] := p1;
        DeltaPolyBezierTo(p, ZeroXY);
        p0:=p1;
     end;
     if sgDots.Cells[1,i]='s' then
     begin
        p[0].X := 2 * p0.x - p[1].X;
        p[0].Y := 2 * p0.y - p[1].Y;
        p[1].X := p0.x + Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p[1].Y := p0.y + Round(-zm*StrToXY(sgDots.Cells[3,i],0));

        p1.X := p0.x + Round(zm*StrToXY(sgDots.Cells[4,i],0));
        p1.Y := p0.y + Round(-zm*StrToXY(sgDots.Cells[5,i],0));
//        LineTo(p1.X-ZeroXY.x,p1.Y-ZeroXY.y);
        p[2] := p1;
        DeltaPolyBezierTo(p, ZeroXY);
        p0:=p1;
     end;

     if sgDots.Cells[1,i]='Q' then
     begin
        pq.X := Round(zm*StrToXY(sgDots.Cells[2,i],0));
        pq.Y := Round(-zm*StrToXY(sgDots.Cells[3,i],0));
        p1.X := Round(zm*StrToXY(sgDots.Cells[4,i],0));
        p1.Y := Round(-zm*StrToXY(sgDots.Cells[5,i],0));

        p[0].X := round(p0.x + 2/3 *(pq.X - p0.x));
        p[0].Y := round(p0.y + 2/3 *(pq.y - p0.y));
        p[1].x := round(p1.x + 2/3 *(pq.X - p1.x));
        p[1].y := round(p1.y + 2/3 *(pq.y - p1.y));
        p[2] := p1;

        DeltaPolyBezierTo(p, ZeroXY);
        p[0] := pq;
        p[1] := pq;
        p0:=p1;
     end;
     if sgDots.Cells[1,i]='q' then
     begin
        pq.X := p0.x + Round(zm*StrToXY(sgDots.Cells[2,i],0));
        pq.Y := p0.y + Round(-zm*StrToXY(sgDots.Cells[3,i],0));
        p1.X := p0.x + Round(zm*StrToXY(sgDots.Cells[4,i],0));
        p1.Y := p0.y + Round(-zm*StrToXY(sgDots.Cells[5,i],0));

        p[0].X := round(p0.x + 2/3 *(pq.X - p0.x));
        p[0].Y := round(p0.y + 2/3 *(pq.y - p0.y));
        p[1].x := round(p1.x + 2/3 *(pq.X - p1.x));
        p[1].y := round(p1.y + 2/3 *(pq.y - p1.y));
        p[2] := p1;

        DeltaPolyBezierTo(p, ZeroXY);
        p[0] := pq;
        p[1] := pq;
        p0:=p1;
     end;
     if sgDots.Cells[1,i]='T' then
     begin
        pq.X := 2 * p0.x - pq.X;
        pq.Y := 2 * p0.y - pq.Y;
        p1.X := Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p1.Y := Round(-zm*StrToXY(sgDots.Cells[3,i],0));

        p[0].X := round(p0.x + 2/3 *(pq.X - p0.x));
        p[0].Y := round(p0.y + 2/3 *(pq.y - p0.y));
        p[1].x := round(p1.x + 2/3 *(pq.X - p1.x));
        p[1].y := round(p1.y + 2/3 *(pq.y - p1.y));
        p[2] := p1;

        DeltaPolyBezierTo(p, ZeroXY);
        p[0] := pq;
        p[1] := pq;
        p0:=p1;
     end;
     if sgDots.Cells[1,i]='t' then
     begin
        pq.X := 2 * p0.x - pq.X;
        pq.Y := 2 * p0.y - pq.Y;
        p1.X := p0.x + Round(zm*StrToXY(sgDots.Cells[2,i],0));
        p1.Y := p0.y + Round(-zm*StrToXY(sgDots.Cells[3,i],0));

        p[0].X := round(p0.x + 2/3 *(pq.X - p0.x));
        p[0].Y := round(p0.y + 2/3 *(pq.y - p0.y));
        p[1].x := round(p1.x + 2/3 *(pq.X - p1.x));
        p[1].y := round(p1.y + 2/3 *(pq.y - p1.y));
        p[2] := p1;

        DeltaPolyBezierTo(p, ZeroXY);
        p[0] := pq;
        p[1] := pq;
        p0:=p1;
     end;

     if sgDots.Cells[1,i]='A' then
     begin
        p1.X := Round(zm*StrToXY(sgDots.Cells[7,i],0));
        p1.Y := Round(-zm*StrToXY(sgDots.Cells[8,i],0));

        Rx:=zm*StrToXY(sgDots.Cells[2,i],0);
        Ry:=zm*StrToXY(sgDots.Cells[3,i],0);
 {
        if sqr(Rx) + sqr(Ry) < sqr(p0.x - p1.x)+sqr(p0.y - p1.y)  then
        begin
          Rx := sqrt(sqr(p0.x - p1.x)+sqr(p0.y - p1.y))/2;
          Ry:=Rx;
        end;
}
        if sgDots.Cells[5,i]='0' then
          Rx := -Rx;
        if sgDots.Cells[6,i]='0' then
          Ry := -Ry;

        p[0].x := Round(p0.X + Cos(pi/180  * StrToXY(sgDots.Cells[4,i],0))*Rx);
        p[0].y := Round(p0.y + Sin(pi/180  * StrToXY(sgDots.Cells[4,i],0))*Rx);
        p[1].x := Round(p0.X - Sin(pi/180  * StrToXY(sgDots.Cells[4,i],0))*Ry);
        p[1].y := Round(p0.y - Cos(pi/180  * StrToXY(sgDots.Cells[4,i],0))*Ry);

//        Pen.Style := psDot;
        SvgArcTo(p0,
           Round(zm*StrToXY(sgDots.Cells[2,i],0)),
           Round(zm*StrToXY(sgDots.Cells[3,i],0)),
           Round(StrToXY(sgDots.Cells[4,i],0)),
           (sgDots.Cells[5,i]='1'),
           (sgDots.Cells[6,i]='1'),
           p1.X, p1.Y, ACanvas);
//        LineTo(p1.X-ZeroXY.x,p1.Y-ZeroXY.y);

  //      Pen.Style := psSolid;
        p0:=p1;
     end;
     if sgDots.Cells[1,i]='a' then
     begin
        p1.X := p0.X + Round(zm*StrToXY(sgDots.Cells[7,i],0));
        p1.Y := p0.y + Round(-zm*StrToXY(sgDots.Cells[8,i],0));

        Rx:=zm*StrToXY(sgDots.Cells[2,i],0);
        Ry:=zm*StrToXY(sgDots.Cells[3,i],0);
{
        if sqr(Rx) + sqr(Ry) < sqr(p0.x - p1.x)+sqr(p0.y - p1.y)  then
        begin
          Rx := sqrt(sqr(p0.x - p1.x)+sqr(p0.y - p1.y))/2;
          Ry:=Rx;
        end;
}
        if sgDots.Cells[5,i]='0' then
          Rx := -Rx;
        if sgDots.Cells[6,i]='0' then
          Ry := -Ry;

        p[0].x := Round(p0.X + Cos(pi/180  * StrToXY(sgDots.Cells[4,i],0))*Rx);
        p[0].y := Round(p0.y + Sin(pi/180  * StrToXY(sgDots.Cells[4,i],0))*Rx);
        p[1].x := Round(p0.X - Sin(pi/180  * StrToXY(sgDots.Cells[4,i],0))*Ry);
        p[1].y := Round(p0.y - Cos(pi/180  * StrToXY(sgDots.Cells[4,i],0))*Ry);

        SvgArcTo(p0,
           Round(zm*StrToXY(sgDots.Cells[2,i],0)),
           Round(zm*StrToXY(sgDots.Cells[3,i],0)),
           Round(StrToXY(sgDots.Cells[4,i],0)),
           (sgDots.Cells[5,i]='1'),
           (sgDots.Cells[6,i]='1'),
           p1.X, p1.Y, ACanvas);

        p0:=p1;

     end;
     if (mx.x < p0.x) or (i=1) then mx.x := p0.x;
     if (mx.y < p0.y)  or (i=1) then mx.y := p0.y;

     if MinXY.x > p0.x then MinXY.x := p0.x;
     if MinXY.y > p0.y then MinXY.y := p0.y;



     sgDots.Cells[11,i] := FloatToStr(RoundTo(p0.x/zm,-3));
     sgDots.Cells[12,i] := FloatToStr(RoundTo(p0.y/-zm,-3));
  end;
end;

procedure TMainForm.DrawStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  MouseStart := Mouse.CursorPos;
end;

procedure TMainForm.ExistKerning;
var
  i,j:integer;
  nod:TXML_Nod;
begin
  ProgressBar1.Position:=0;
  ProgressBar1.Max := FNT.Node['svg'].Node['defs'].Node['font'].Nodes.Count;
  ProgressBar1.Visible := True;
  for i := 2 to sg.RowCount-1 do
    for j := 2 to sg.ColCount-1 do
      sg.Cells[j,i] := '';

  nod := FNT;
  while nod<>nil do
  begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    Application.ProcessMessages;
    if nod.LocalName='hkern' then
    begin
    for i := 2 to sg.RowCount-1 do
      if (THTMLEncoding.HTML.Decode(nod.Attribute['u1'])=sg.Cells[1,i]) or
           (pos(','+sg.Cells[0,i]+',',  ','+nod.Attribute['g1']+',')>0)
      then
      for j := 2 to sg.ColCount-1 do
          if (THTMLEncoding.HTML.Decode(nod.Attribute['u2'])=sg.Cells[j,1]) or
             (pos(','+sg.Cells[j,0]+',',  ','+nod.Attribute['g2']+',')>0)
          then begin
            sg.Cells[j,i] := nod.Attribute['k'];
//            break;
          end;
      end;
    nod := nod.next;
  end;
  ProgressBar1.Visible := False;
end;


procedure TMainForm.FormCreate(Sender: TObject);
begin
 FormatSettings.DecimalSeparator := '.';
  tsHeap.TabVisible:=False;
  pcGlyph.ActivePage := tsGlyph;
  FNT:=TXML_Doc.Create;

  FontFace.units_per_em:=2048;
  FontFace.ascent := 1536;
  FontFace.descent := -512;
  FontFace.x_height :=  768;
  FontFace.cap_height := 1024;

  ZeroXY.y :=  - FontFace.ascent div 3 ;
  ZeroXY.x := - 100;
  BrushBitmap:=TBitmap.Create;
  sg.ColWidths[0]:=100;
//  sg.RowHeights[1] := abs(FontDialog1.Font.Height);
 // sg.ColWidths[1] := abs(FontDialog1.Font.Height);
  tbClearKern.Click;

//  pnImg.SetBounds(0,0,2048,2048)
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  FNT.Free;
  if hFont<>'' then    RemoveFontResource(PChar(hFont));
 SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
 end;

procedure TMainForm.KernPaintPaint(Sender: TObject);
var
  Gl1:TGlyph;
  Gl2:TGlyph;
  i:Integer;

begin
  KernPaint.Canvas.Pen.Style := psClear;
  KernPaint.Canvas.Brush.Style := bsSolid;
  KernPaint.Canvas.Brush.Color := clWhite;
  KernPaint.Canvas.Rectangle(0,0,KernPaint.Width, KernPaint.Height);

  Gl1 := pointer(sg.Objects[0, sg.Row]);
  if Gl1 = nil then Exit;

  Gl2 := pointer(sg.Objects[sg.col,0]);


  KernPaint.Canvas.Pen.Width := 1;
  KernPaint.Canvas.Pen.Color := clBlack;
  DrawGlypf(KernPaint.Canvas, Gl1, 100 , FontFace.ascent div 12);


  if Gl2 = nil then Exit;
  KernPaint.Canvas.Pen.Style :=psDot;
  KernPaint.Canvas.Pen.Color := clSilver;
  DrawGlypf(KernPaint.Canvas, Gl2, 100 + Gl1.Right div 12, FontFace.ascent div 12);
  KernPaint.Canvas.Pen.Style :=psSolid;
  KernPaint.Canvas.Pen.Color := clBlue;
  DrawGlypf(KernPaint.Canvas, Gl2, 100 + (Gl1.Right - strtointdef(sg.Cells[sg.Col, sg.Row],0)) div 12  , FontFace.ascent div 12);





  if Length(Gl1.rng)>0 then
  begin
    KernPaint.Canvas.Pen.Color := clRed;

    KernPaint.Canvas.MoveTo(
         round(Gl1.rng[sg.col-2].Left/12 + 100 ),
         round(Gl1.rng[sg.col-2].Top/12 + FontFace.ascent/12));

    KernPaint.Canvas.LineTo(
         round(Gl1.rng[sg.col-2].Right/12 + 100 ),
         round(Gl1.rng[sg.col-2].Bottom/12 + FontFace.ascent/12));
  end;

end;

procedure TMainForm.ParsePath(APath: string);
var i,j,n:Integer;
  s:string;
  r:double;
begin
  s:=APath;
  for i := 1 to Length(s) do
    if s[i]<#33 then
       s[i]:=#32;
  s:=StringReplace(s,',',' ',[rfReplaceAll]);
  s:=trim(StringReplace(s,'-',' -',[rfReplaceAll]));
  s:=trim(StringReplace(s,'E -','E-',[rfReplaceAll]));
  s:=trim(StringReplace(s,'e -','E-',[rfReplaceAll]));
  while pos('  ', s)>0 do
    s:=StringReplace(s,'  ',' ',[rfReplaceAll]);

  n:=0;
  for i := 1 to Length(s) do
  begin
    if Pos(s[i], 'MLVHCSQTAZmlvhcsqtaz')>0 then
    begin
      inc(n);
      j:=2;
      sgGlyph.Rows[n].text := IntToStr(n);
      sgGlyph.Cells[1,n]:=s[i];
      continue;
    end
    else
    if (s[i]=#32)or(s[i]=',') then
    begin
      if sgGlyph.Cells[j,n]<>'' then
        inc(j);
      continue;
    end
    else
    if (s[i]='.')and(pos('.',sgGlyph.Cells[j,n],Pos('E',sgGlyph.Cells[j,n])+1)>0) then
      inc(j)
    else
    if (s[i]='-')and(sgGlyph.Cells[j,n]<>'')and(s[i-1]<>'E') then
      inc(j);

    if (((sgGlyph.Cells[1,n]='C')or(sgGlyph.Cells[1,n]='c'))and (j=8))
    or (((sgGlyph.Cells[1,n]='L')or(sgGlyph.Cells[1,n]='l'))and (j=4))
    or (((sgGlyph.Cells[1,n]='H')or(sgGlyph.Cells[1,n]='h'))and (j=3))
    or (((sgGlyph.Cells[1,n]='V')or(sgGlyph.Cells[1,n]='v'))and (j=3))
    or (((sgGlyph.Cells[1,n]='S')or(sgGlyph.Cells[1,n]='s'))and (j=6))
    or (((sgGlyph.Cells[1,n]='Q')or(sgGlyph.Cells[1,n]='q'))and (j=6))
    or (((sgGlyph.Cells[1,n]='T')or(sgGlyph.Cells[1,n]='t'))and (j=4))
    or (((sgGlyph.Cells[1,n]='A')or(sgGlyph.Cells[1,n]='a'))and (j=9))
    then
    begin
      j:=2;
      inc(n);
      sgGlyph.Rows[n].text := IntToStr(n);
      sgGlyph.Cells[1,n]:=sgGlyph.Cells[1,n-1];
    end;

    if ((sgGlyph.Cells[1,n]='A')or(sgGlyph.Cells[1,n]='a'))and (j in [5,6]) and (sgGlyph.Cells[j,n]<>'')
    then
      inc(j);

    if (sgGlyph.Cells[1,n]='M') and (j=4)
    then
    begin
      j:=2;
      inc(n);
      sgGlyph.Rows[n].text := IntToStr(n);
      sgGlyph.Cells[1,n]:='L';
    end;
    if (sgGlyph.Cells[1,n]='m') and (j=4)
    then
    begin
      j:=2;
      inc(n);
      sgGlyph.Rows[n].text := IntToStr(n);
      sgGlyph.Cells[1,n]:='l';
    end;

    sgGlyph.Cells[j,n]:=sgGlyph.Cells[j,n]+s[i];
  end;
  if n=0 then
    sgGlyph.RowCount:=2
  else
    sgGlyph.RowCount:=n+1;

  for i := 1 to sgGlyph.RowCount-1 do
  begin
    for j := 1 to sgGlyph.ColCount-1 do
      if pos('.',sgGlyph.Cells[j,i])>0 then
      begin
        s := sgGlyph.Cells[j,i];
        r := StrToFloatDef(s,0);
        r := RoundTo(r,-3);
        s := FloatToStr(r);
        sgGlyph.Cells[j,i] := s;
      end;
  end;
  sgGlyph.FixedRows := 1;
end;

procedure TMainForm.ResetFNT;
var
  nod:TXML_Nod;


  function GetParentNode(nod:TXML_Nod):TTreeNode;
  var
    i,n,n1,n2: Integer;
    s, rs:string;
  begin
    Result := nil;

    rs:='Other glyphs';


    n := GetCode(nod);

    for i := 0 to lbUnicodeRegions.Items.Count-1 do
    begin
      s := lbUnicodeRegions.Items[i];
      n1 := StrToInt('$'+Copy(s,1,Pos(':',s)-1));
      Delete(s,1,Pos(':',s));
      n2 := StrToInt('$'+Copy(s,1,Pos('=',s)-1));
      if (n>=n1)and(n<=n2) then
      begin
        rs := lbUnicodeRegions.Items[i];
        rs := StringReplace(rs,':',' - ',[]);
        rs := StringReplace(rs,'=',':   ',[]);
        break;
      end;
    end;

    for i := 0 to treeFNT.Items.Count-1 do
      if treeFNT.Items[i].Text=rs then
      begin
         Result := treeFNT.Items[i];
         Break;
      end;

    if Result=nil then
      Result := treeFNT.Items.Add(nil,rs);
      Result.ImageIndex:=-2;
  end;

begin
  nod := FNT;
  treeFNT.Items.BeginUpdate;
  treeFNT.Items.Clear;
  treeFNT.SortType :=stNone;


  while nod<>nil do
  begin
    if nod.LocalName='glyph' then
     with treeFNT.Items.AddChild(GetParentNode(nod),nod.Attribute['glyph-name']) do
     begin
//      StatusBar1.Panels[0].Text:='Font: '+ hFontName + '('+Inttostr(npp)+')';
//      StatusBar1.Invalidate;
//      Application.ProcessMessages;
       Data :=nod;
       ImageIndex:=-1;
       if (length(Text)=1) then
         Text := Text + ':  '+IntToHex(ord(Text[1]))
       else
       if (length(Text)>1)and(GetCode(nod)<>-1) then
         Text :=  WideChar(GetCode(nod))+':  '+Text;
      end;

    nod:=nod.next;
  end;


  treeFNT.SortType :=stText;
  treeFNT.Items.EndUpdate;
end;


procedure TMainForm.seGridChange(Sender: TObject);
begin
  Draw.Invalidate;
end;

procedure TMainForm.seZoomChange(Sender: TObject);
begin
  Draw.Invalidate;
end;

procedure TMainForm.sgDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var r:TRect;
s:string;
begin
 if ((ACol=1) and (ARow>1))or
    ((ARow=1) and (Acol>1)) then
  with sg.Canvas do begin
    Brush.Style := bsSolid;
    FillRect(Rect);
    Font := FontDialog1.Font;
    Font.Height := - sg.DefaultRowHeight;
    R:=Rect;
    s:=sg.Cells[Acol,ARow];
    TextRect(r,s , [tfVerticalCenter,tfCenter]);
  end;

end;

procedure TMainForm.sgSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
 KernPaint.Invalidate;
end;

function TMainForm.StrToXY(s: string; Def: integer): double;
begin
    Result := roundto(StrToFloatDef(s,Def),-4)
end;

procedure TMainForm.SvgArcTo(Curr: TPoint; rx, ry: Integer; ax: double; fa,
  fs: boolean; x, y: integer; Canvas: TCanvas);
begin

end;

procedure TMainForm.tbOpenClick(Sender: TObject);

begin
  if OpenDialog.Execute then
  begin
    if hFont<>'' then     RemoveFontResource(PChar(hFont));
    tbBase.Down := false;

    SaveDialog1.FileName := OpenDialog.FileName;
    hFont := '';

    FNT.LoadFromFile(OpenDialog.FileName);

    if FileExists(ChangeFileExt(OpenDialog.FileName,'.OTF')) then
      hFont := ChangeFileExt(OpenDialog.FileName,'.OTF')
    else
    if FileExists(ChangeFileExt(OpenDialog.FileName,'.TTF')) then
      hFont := ChangeFileExt(OpenDialog.FileName,'.TTF');

    if hFont<>'' then
      AddFontResourceEx(PChar(hFont), FR_PRIVATE ,nil);
    SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;

    with FNT.Node['svg'].Node['defs'].Node['font'].Node['font-face'] do
    begin
      FontFace.font_family := Attribute['font-family'];
      FontFace.units_per_em := Round(StrToFloatDef( Attribute['units-per-em'], 2048));
      FontFace.ascent := Round(StrToFloatDef( Attribute['ascent'], 1536));
      FontFace.descent := Round(StrToFloatDef( Attribute['descent'], -512));
      FontFace.x_height := Round(StrToFloatDef( Attribute['x-height'], 768));
      FontFace.cap_height := Round(StrToFloatDef( Attribute['cap-height'], 1024));
    end;

    ZeroXY.y :=  - FontFace.ascent ;
    if seZoom.Value>0 then
      ZeroXY.y := ZeroXY.y * seZoom.Value
    else
      ZeroXY.y := -ZeroXY.y div seZoom.Value;
    ZeroXY.x := - 100;

//    hFontName := FNT.Node['svg'].Node['defs'].Node['font'].Attribute['id'];
    StatusBar1.Panels[0].Text:='Font: '+ FontFace.font_family;
    FontDialog1.Font.Name := FontFace.font_family;
    treeFNT.Indent:=abs(FontDialog1.Font.Height) div 2;
    treeFNT.Perform( TVM_SETITEMHEIGHT,abs(FontDialog1.Font.Height) , 0);

    ResetFNT;
    Draw.Invalidate;
    tbClearKern.Click;
  end;
end;


procedure TMainForm.ToolButton10Click(Sender: TObject);

begin
  FontDialog1.Execute();
  treeFNT.Indent:=abs(FontDialog1.Font.Height) div 2;
  treeFNT.Perform( TVM_SETITEMHEIGHT,abs(FontDialog1.Font.Height) , 0);
  treeFNT.Invalidate;

//  sg.RowHeights[1] := abs(FontDialog1.Font.Height);
//  sg.ColWidths[1] := abs(FontDialog1.Font.Height);
end;

procedure TMainForm.ToolButton11Click(Sender: TObject);
var k: Double;
  i: Integer;
begin
  if not tbBase.Down then exit;
  k := Abs((BaseRect.Bottom-BaseRect.top)/(GlyphRect.Bottom-GlyphRect.Top));
  for I := 1 to sgGlyph.RowCount-1 do
    PathZoom(i,k);

  sgGlyph.Cells[3,1] := FloatToStr(StrToXY(sgGlyph.Cells[3,1],0)
    - BaseRect.Top + GlyphRect.Top*k );

  sgGlyph.Cells[2,1] := FloatToStr(StrToXY(sgGlyph.Cells[2,1],0)
    + GlyphRect.Left - GlyphRect.Left*k );

  FontFace.right:= Round(
    FontFace.right - GlyphRect.Width + GlyphRect.Width*k
  );

  Draw.invalidate;
  ApplyGlyph;
end;

procedure TMainForm.ToolButton12Click(Sender: TObject);
begin
  Nod.ResetXml(seGlyph.Text);
  seGlyph.Modified := False;

end;

procedure TMainForm.ToolButton13Click(Sender: TObject);
var i:Integer;
begin
     seGlyph.Lines.Text := Nod.xml;
     FontFace.right := Round(strtofloatdef(Nod.Attribute['horiz-adv-x'], 1024));


     ParsePath(Nod.Attribute['d']);
     Draw.Invalidate;
     Application.ProcessMessages;
     for i:= 1 to sgGlyph.RowCount-1 do
       PathRel(i);
     seGlyph.Modified := False;
end;

procedure TMainForm.ToolButton17Click(Sender: TObject);
begin
  sgGlyph.Cells[2,1] := FloatToStr(StrToXY(sgGlyph.Cells[2,1],0) - GlyphRect.Left);
  FontFace.right:= Round(FontFace.right - GlyphRect.Left);
  Draw.invalidate;
  ApplyGlyph;
end;

procedure TMainForm.ToolButton18Click(Sender: TObject);
begin
  sgGlyph.Cells[2,1] := FloatToStr(StrToXY(sgGlyph.Cells[2,1],0) - seGrid.Value / zm );
  FontFace.right:= Round(FontFace.right - seGrid.Value / zm);
  Draw.invalidate;
  ApplyGlyph;

end;

procedure TMainForm.ToolButton19Click(Sender: TObject);
begin
  sgGlyph.Cells[2,1] := FloatToStr(StrToXY(sgGlyph.Cells[2,1],0) + seGrid.Value / zm );
  FontFace.right:= Round(FontFace.right + seGrid.Value / zm);
  Draw.invalidate;
  ApplyGlyph;
end;

procedure TMainForm.ToolButton20Click(Sender: TObject);
begin
  FontFace.right:= FontFace.right - Round(seGrid.Value / zm );
  Draw.invalidate;
  ApplyGlyph;
end;

procedure TMainForm.ToolButton21Click(Sender: TObject);
begin
  FontFace.right:= FontFace.right + Round(seGrid.Value / zm );
  Draw.invalidate;
  ApplyGlyph;
end;

procedure TMainForm.ToolButton22Click(Sender: TObject);
begin
  FontFace.right:= Round(GlyphRect.Right);
  Draw.invalidate;
  ApplyGlyph;
end;

procedure TMainForm.ToolButton24Click(Sender: TObject);
var
  i,j,k,l:integer;
  Gl1:TGlyph;
  Gl2:TGlyph;
  nod:TXML_Nod;
  mn,mm:double;
  p11,p12,p21,p22,x1,y1:XYZ;
  min_tst, min_set, max_tst, max_set, prcz:Integer;

begin
  ProgressBar1.Max := sg.RowCount;
  ProgressBar1.Visible := True;

  p11.z:=0;
  p12.z:=0;
  p21.z:=0;
  p22.z:=0;


  min_tst := StrToIntDef(seKern.Lines.Values['min.tst'], -4096);
  min_set := StrToIntDef(seKern.Lines.Values['min.set'], 90);
  max_tst := StrToIntDef(seKern.Lines.Values['max.tst'],4096);
  max_set := StrToIntDef(seKern.Lines.Values['max.set'],120);
  prcz :=StrToIntDef(seKern.Lines.Values['precision'],1);


  ProgressBar1.Position :=1;
  for i := 2 to sg.RowCount-1 do
  begin
    ProgressBar1.Position := i;
    Application.ProcessMessages;
    Gl1 := pointer(sg.Objects[0, i]);
    SetLength(Gl1.rng,sg.ColCount);
    if Gl1=nil then continue;
    for j := 2 to sg.ColCount-1 do
    begin
      sg.Cells[j,i] := '';
{
      if    (sg.cells[0, i] = AnsiLowerCase(sg.cells[0, i]))
        and (sg.cells[0, i] <> AnsiUpperCase(sg.cells[0, i]))
        and (sg.cells[j, 0] <> AnsiLowerCase(sg.cells[j,0]))
      then Continue;
 }
      Gl2 := pointer(sg.Objects[j,0]);

      mn:=4096;
      for k := 1 to Length(Gl1.PtBuf)-1 do
        if Gl1.TpBuf[k]<>6 then
        begin
          p11.x := Gl1.PtBuf[k-1].X;
          p11.y := Gl1.PtBuf[k-1].Y;
          p12.x := Gl1.PtBuf[k].X;
          p12.y := Gl1.PtBuf[k].Y;

          for l := 1 to Length(Gl2.PtBuf)-1 do
          if Gl2.TpBuf[l]<>6 then
          begin
            p21.x := Gl2.PtBuf[l-1].X + Gl1.Right;
            p21.y := Gl2.PtBuf[l-1].Y;
            p22.x := Gl2.PtBuf[l].X + Gl1.Right;
            p22.y := Gl2.PtBuf[l].Y;
            Dist(p11,p12,p21,p22,x1,y1,mm);
//            mm := Sqrt(sqr(x1.x-y1.x) + sqr(x1.y-y1.y) );

            if mm<mn then
            begin
              mn := mm;
              Gl1.rng[j-2]:=Rect(round(x1.x), round(x1.y), round(y1.x), round(y1.y));
            end;
          end;
//         sg.Cells[i, j-1] := IntToStr(Round(mn))
        end;
      if mn < min_tst then
        sg.Cells[j,i] := FloatToStr(Round(-(min_set - mn)/prcz)*prcz)
      else
      if mn > max_tst then
        sg.Cells[j,i] := FloatToStr(Round(-(max_tst - mn)/prcz)*prcz);
      if sg.Cells[j,i] = '0' then
        sg.Cells[j,i] := '';
    end;
  end;
  ProgressBar1.Visible := False;

end;

procedure TMainForm.ToolButton25Click(Sender: TObject);
var i,j,k,l,z:integer;
  nod:txml_nod;
  Gl:TGlyph;
begin
  for i := 0 to treeFNT.SelectionCount-1 do
  begin
    if treeFNT.Selections[i].HasChildren then
      for j := 0 to treeFNT.Selections[i].Count-1 do
      begin
         nod := treeFNT.Selections[i].Item[j].Data;
         if nod.Attribute['d']='' then continue;
//         if sg.Cols[0].IndexOf(nod.Attribute['glyph-name'])=-1 then
         if sg.Cols[1].IndexOfObject(nod)=-1 then
         begin
           if sg.Cells[0,sg.RowCount-1]<>'' then
             sg.RowCount := sg.RowCount+1;
           sg.Rows[sg.RowCount-1].Clear;
           sg.Cells[0,sg.RowCount-1] := nod.Attribute['glyph-name'];
           sg.Cells[1,sg.RowCount-1] := THTMLEncoding.HTML.Decode(nod.Attribute['unicode']);
           Gl:=TGlyph.Create;
           sg.Objects[0, sg.RowCount-1] := Gl;
           sg.Objects[1, sg.RowCount-1] := nod;
           Gl.right := Round(strtofloatdef(Nod.Attribute['horiz-adv-x'], 1024));
           draw.Canvas.MoveTo(0,0);
           ParsePath(Nod.Attribute['d']);

           BeginPath(Draw.Canvas.Handle);
           DrawPath(sgGlyph, Draw.Canvas, point(0,0), 1);
           EndPath(Draw.Canvas.Handle);

           FlattenPath(Draw.Canvas.Handle);
           z:=GetPath(Draw.Canvas.Handle,nil,nil,0);
           SetLength(Gl.PtBuf,z);
           SetLength(Gl.TpBuf,z);
           GetPath(MainForm.Draw.Canvas.Handle,@(Gl.PtBuf[0]),@(Gl.TpBuf[0]),z);
         end;
      end
    else begin
      nod := treeFNT.Selections[i].Data;
      if nod.Attribute['d']='' then continue;
//      if sg.Cols[0].IndexOf(nod.Attribute['glyph-name'])=-1 then
      if sg.Cols[1].IndexOfObject(nod)=-1 then
      begin
        if sg.Cells[0,sg.RowCount-1]<>'' then
          sg.RowCount := sg.RowCount+1;
        sg.Rows[sg.RowCount-1].Clear;

        sg.Cells[0,sg.RowCount-1] := nod.Attribute['glyph-name'];
        sg.Cells[1,sg.RowCount-1] :=  THTMLEncoding.HTML.Decode(nod.Attribute['unicode']);

        Gl:=TGlyph.Create;
        sg.Objects[0, sg.RowCount-1] := Gl;
        sg.Objects[1, sg.RowCount-1] := nod;
        Gl.right := Round(strtofloatdef(Nod.Attribute['horiz-adv-x'], 1024));
        draw.Canvas.MoveTo(0,0);
           ParsePath(Nod.Attribute['d']);
        BeginPath(Draw.Canvas.Handle);
        DrawPath(sgGlyph, Draw.Canvas, point(0,0), 1);
        EndPath(Draw.Canvas.Handle);

        FlattenPath(Draw.Canvas.Handle);
        z:=GetPath(Draw.Canvas.Handle,nil,nil,0);
        SetLength(Gl.PtBuf,z);
        SetLength(Gl.TpBuf,z);
        GetPath(MainForm.Draw.Canvas.Handle,@(Gl.PtBuf[0]),@(Gl.TpBuf[0]),z);
      end;

    end;
  end;
  if (sg.Cells[0,2]<>'') and (sg.Cells[2,0]<>'') then
    ExistKerning;
end;

procedure TMainForm.ToolButton26Click(Sender: TObject);
var
  i,j,k:integer;
  n1,nod:TXML_Nod;
  s:string;
begin

  if MessageDlg('Apply new kernig settings?', TMsgDlgType.mtConfirmation, [mbYes,mbNo],0)<>mrYes then exit;

  ProgressBar1.Position:=0;
  ProgressBar1.Max := FNT.Node['svg'].Node['defs'].Node['font'].Nodes.Count + sg.RowCount-2;
  ProgressBar1.Visible := True;

  nod := FNT;
  while nod<>nil do
  begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    Application.ProcessMessages;
    if nod.LocalName='hkern' then
    begin
      for i := 2 to sg.RowCount-1 do
        if (THTMLEncoding.HTML.Decode(nod.Attribute['u1'])=sg.Cells[1,i]) or
           (pos(','+sg.Cells[0,i]+',',  ','+nod.Attribute['g1']+',')>0)
        then
        begin
          for j := 2 to sg.ColCount-1 do
            if (THTMLEncoding.HTML.Decode(nod.Attribute['u2'])=sg.Cells[j,1]) then
            begin
               nod.Attribute['u2'] := '';
               break;
            end
            else
            if  (pos(','+sg.Cells[j,0]+',',  ','+nod.Attribute['g2']+',')>0)
            then begin
              s := StringReplace(',' + nod.Attribute['g2'] +',', ','+sg.Cells[j,0]+',', ',',[]);
              if s[1]=',' then
                delete(s,1,1);
              if Copy(s,length(s),1) =',' then
                delete(s,length(s),1);
              nod.Attribute['g2'] := s;
              break;
            end;
        end;

      n1 := nod;
      nod := nod.next;
      if (n1.Attribute['g2']='')and(n1.Attribute['u2']='') then
        n1.Free;
     end
    else
      nod := nod.next;
  end;

  for i := 2 to sg.RowCount-1 do
  begin
    ProgressBar1.Position:=ProgressBar1.Position+1;
    for j := 2 to sg.ColCount-1 do
       if sg.Cells[j,i] <> '' then
       begin
         sg.Objects[j,i] := nil;
         nod := nil;
         for k := j-1 downto 2 do
           if sg.Cells[j,i]=sg.Cells[k,i] then
           begin
             nod :=pointer(sg.Objects[k,i]);
             break;
           end;
         if nod=nil then
         begin
            nod := FNT.Node['svg'].Node['defs'].Node['font'].Nodes.Add;
            nod.LocalName := 'hkern';
            nod.Attribute['g1'] :=sg.Cells[0,i];
            nod.Attribute['k'] :=sg.Cells[j,i];
         end;
         if nod.Attribute['g2']<>'' then
           nod.Attribute['g2'] := nod.Attribute['g2'] + ',';
         nod.Attribute['g2'] := nod.Attribute['g2'] + sg.Cells[j,0];
         sg.Objects[j,i] := Nod;
       end;
  end;

  ProgressBar1.Visible := False;
end;

procedure TMainForm.ToolButton27Click(Sender: TObject);
var i,j,k,l,z:integer;
  nod:txml_nod;
  Gl:TGlyph;
begin
  for i := 0 to treeFNT.SelectionCount-1 do
  begin
    if treeFNT.Selections[i].HasChildren then
      for j := 0 to treeFNT.Selections[i].Count-1 do
      begin
         nod := treeFNT.Selections[i].Item[j].Data;
         if nod.Attribute['d']='' then continue;
//         if sg.Rows[0].IndexOf(nod.Attribute['glyph-name'])=-1 then
         if sg.Rows[1].IndexOfObject(nod)=-1 then
         begin
           if sg.Cells[sg.ColCount-1,0]<>'' then
             sg.ColCount := sg.ColCount+1;
           sg.Cells[sg.ColCount-1,0] := nod.Attribute['glyph-name'];
           sg.Cells[sg.ColCount-1,1] :=  THTMLEncoding.HTML.Decode(nod.Attribute['unicode']);

           Gl:=TGlyph.Create;
          sg.Objects[sg.ColCount-1,0] := Gl;
          sg.Objects[sg.ColCount-1,1] := Nod;
          Gl.right := Round(strtofloatdef(Nod.Attribute['horiz-adv-x'], 1024));
          draw.Canvas.MoveTo(0,0);
           ParsePath(Nod.Attribute['d']);
          BeginPath(Draw.Canvas.Handle);
          DrawPath(sgGlyph, Draw.Canvas, point(0,0), 1);
          EndPath(Draw.Canvas.Handle);

          FlattenPath(Draw.Canvas.Handle);
          z:=GetPath(Draw.Canvas.Handle,nil,nil,0);
          SetLength(Gl.PtBuf,z);
          SetLength(Gl.TpBuf,z);
          GetPath(MainForm.Draw.Canvas.Handle,@(Gl.PtBuf[0]),@(Gl.TpBuf[0]),z);


         end;
      end
    else begin
      nod := treeFNT.Selections[i].Data;
      if nod.Attribute['d']='' then continue;
//      if sg.Rows[0].IndexOf(nod.Attribute['glyph-name'])=-1 then
      if sg.Rows[1].IndexOfObject(nod)=-1 then
      begin
        if sg.Cells[sg.ColCount-1,0]<>'' then
          sg.ColCount := sg.ColCount+1;
        sg.Cells[sg.ColCount-1,0] := nod.Attribute['glyph-name'];
        sg.Cells[sg.ColCount-1,1] :=  THTMLEncoding.HTML.Decode(nod.Attribute['unicode']);
        Gl:=TGlyph.Create;
        sg.Objects[sg.ColCount-1,0] := Gl;
        sg.Objects[sg.ColCount-1,1] := Nod;
        Gl.right := Round(strtofloatdef(Nod.Attribute['horiz-adv-x'], 1024));
        draw.Canvas.MoveTo(0,0);
           ParsePath(Nod.Attribute['d']);
        BeginPath(Draw.Canvas.Handle);
        DrawPath(sgGlyph, Draw.Canvas, point(0,0), 1);
        EndPath(Draw.Canvas.Handle);

        FlattenPath(Draw.Canvas.Handle);
        z:=GetPath(Draw.Canvas.Handle,nil,nil,0);
        SetLength(Gl.PtBuf,z);
        SetLength(Gl.TpBuf,z);
        GetPath(MainForm.Draw.Canvas.Handle,@(Gl.PtBuf[0]),@(Gl.TpBuf[0]),z);
      end;

    end;
  end;
  if (sg.Cells[0,2]<>'') and (sg.Cells[2,0]<>'') then
    ExistKerning;
end;

procedure TMainForm.tbClearKernClick(Sender: TObject);
var i:Integer;
begin
  for I := 0 to sg.rowcount do
    if sg.Objects[0,i]<>nil then
      FreeAndNil(sg.Objects[0,i]);

  for I := 0 to sg.colcount do
    if sg.Objects[i,0]<>nil then
      FreeAndNil(sg.Objects[i,0]);

  sg.RowCount:=3;
  sg.ColCount:=3;
  sg.rows[0].text:='GLYPH';
  sg.rows[1].text:='';
  sg.rows[2].text:='';
  sg.cells[1,1]:='chr';
end;

procedure TMainForm.ToolButton2Click(Sender: TObject);
begin
  if SaveDialog1.Execute() then
    FNT.SaveToFile(SaveDialog1.FileName);
end;

procedure TMainForm.ToolButton4Click(Sender: TObject);
begin
  if not tbBase.Down then exit;
  sgGlyph.Cells[3,1] := FloatToStr(StrToXY(sgGlyph.Cells[3,1],0)
    - ((BaseRect.Bottom+BaseRect.top) - (GlyphRect.Bottom+GlyphRect.Top)) div 2 );
  Draw.invalidate;
  ApplyGlyph;
end;

procedure TMainForm.ToolButton5Click(Sender: TObject);
begin
  if not tbBase.Down then exit;
  sgGlyph.Cells[3,1] := FloatToStr(StrToXY(sgGlyph.Cells[3,1],0)
    - BaseRect.Bottom + GlyphRect.Bottom );
  Draw.invalidate;
  ApplyGlyph;
end;

procedure TMainForm.ToolButton6Click(Sender: TObject);
begin
  if not tbBase.Down then exit;

  sgGlyph.Cells[3,1] := FloatToStr(StrToXY(sgGlyph.Cells[3,1],0)
    - BaseRect.Top + GlyphRect.Top );
  Draw.invalidate;
  ApplyGlyph;
end;

procedure TMainForm.tbBaseClick(Sender: TObject);
var i:integer;
begin
  BaseRect := GlyphRect;
  FontFace.baseright := FontFace.right;
  sgBase.RowCount := sgGlyph.RowCount;
  for i:= 0 to sgGlyph.RowCount-1 do
    sgBase.Rows[i].Assign(sgGlyph.Rows[i]);
  Draw.Invalidate;
end;

procedure TMainForm.treeFNTAdvancedCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
  var PaintImages, DefaultDraw: Boolean);
var NodeRect:TRect;
  s:string;
begin
  if (Stage=cdPostPaint)and (Node.Level=1) then
  begin
    NodeRect := Node.DisplayRect(True);
    NodeRect.Left := NodeRect.Left - NodeRect.Height;
    NodeRect.Width := NodeRect.Height;
    s:=copy(Node.Text[1],1,1);

//    NodeRect.Left := NodeRect.Right-NodeRect.Height;
    Sender.Canvas.Font := FontDialog1.Font;
    Sender.Canvas.Brush.Color := clInfoBk;
    Sender.Canvas.FillRect(NodeRect);
    if copy(Node.Text,2,1)=':' then
      Sender.Canvas.TextRect(NodeRect, s, [tfVerticalCenter,tfCenter]);

  end;
end;

procedure TMainForm.treeFNTChange(Sender: TObject; Node: TTreeNode);
var
  I: Integer;
begin
   if Node.Data<>nil then
   begin
     Nod := Node.Data;
     seGlyph.Lines.Text := Nod.xml;
     FontFace.right := Round(strtofloatdef(Nod.Attribute['horiz-adv-x'], 1024));


     ParsePath(Nod.Attribute['d']);
     Draw.OnPaint(Draw);
     Application.ProcessMessages;
     for i:= 1 to sgGlyph.RowCount-1 do
       PathRel(i);
     seGlyph.Modified := False;
   end;
end;

procedure TMainForm.treeFNTChanging(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin
  if seGlyph.Modified then
    case MessageDlg('Apply XML chandes?', TMsgDlgType.mtConfirmation, [mbYes,mbNo,mbCancel],0 ) of
      mrYes:Nod.ResetXml(seGlyph.Text);
      mrNo:;
      mrCancel:AllowChange := False;
    end;
end;

procedure TMainForm.treeFNTCompare(Sender: TObject; Node1, Node2: TTreeNode;
  Data: Integer; var Compare: Integer);
begin
  Compare := CompareStr(Node1.text, Node2.text)
end;

procedure TMainForm.PathAbs(Idx: integer);
var i,n1,n2:Integer;
  xy:array [0..1] of double;
begin
  if sgGlyph.Cells[1,Idx]='' then exit;
  n1:=2;
  n2:=-1;
  xy[0]:=StrToFloatDef(sgGlyph.Cells[9,idx],0);
  xy[1]:=StrToFloatDef(sgGlyph.Cells[10,idx],0);
  case sgGlyph.Cells[1,Idx][1] of
    'm','l','t': n2:=1;
    'h': n2:=0;
    'v': sgGlyph.Cells[2,Idx]:=FloatToStr(RoundTo(StrToFloatDef(sgGlyph.Cells[2,Idx], 0)+xy[1],-3));
    'c': n2:=5;
    's','q': n2:=3;
    'a': begin n1:=7; n2:=1; end;
  end;
  sgGlyph.Cells[1,Idx] := UpperCase(sgGlyph.Cells[1,Idx]);
  for i := 0 to n2 do
    sgGlyph.Cells[n1+i,Idx]:=FloatToStr(RoundTo(StrToFloatDef(sgGlyph.Cells[n1+i,Idx], 0)+xy[i mod 2],-3));

end;

procedure TMainForm.PathRel(Idx: integer);
var i,n1,n2:Integer;
  xy:array [0..1] of double;
begin
  if sgGlyph.Cells[1,Idx]='' then exit;

  n1:=2;
  n2:=-1;
  xy[0]:=StrToXY(sgGlyph.Cells[9,idx],0);
  xy[1]:=StrToXY(sgGlyph.Cells[10,idx],0);
  case sgGlyph.Cells[1,Idx][1] of
    'M','L','T': n2:=1;
    'H': n2:=0;
    'V': sgGlyph.Cells[2,Idx]:=FloatToStr(RoundTo(StrToXY(sgGlyph.Cells[2,Idx], 0)-xy[1],-3));
    'C': n2:=5;
    'S','Q': n2:=3;
    'A': begin n1:=7; n2:=1; end;
  end;
  sgGlyph.Cells[1,Idx] := LowerCase(sgGlyph.Cells[1,Idx]);
  for i := 0 to n2 do
    sgGlyph.Cells[n1+i,Idx]:=FloatToStr(RoundTo(StrToXY(sgGlyph.Cells[n1+i,Idx], 0)-xy[i mod 2],-3));
end;

procedure TMainForm.PathZoom(Idx: integer; k:double);
var i,n1,n2:Integer;
  xy:array [0..1] of double;
begin
  n1:=2;
  n2:=-1;
  case sgGlyph.Cells[1,Idx][1] of
    'M','L','T','m','l','t': n2:=1;
    'H','h': n2:=0;
    'V','v': sgGlyph.Cells[2,Idx]:=FloatToStr(RoundTo(StrToXY(sgGlyph.Cells[2,Idx], 0)*k,-3));
    'C','c': n2:=5;
    'S','Q','s','q': n2:=3;
    'A','a': begin
          n1:=7;
          n2:=1;
          sgGlyph.Cells[2,Idx]:=FloatToStr(RoundTo(StrToXY(sgGlyph.Cells[2,Idx], 0)*k,-3));
          sgGlyph.Cells[3,Idx]:=FloatToStr(RoundTo(StrToXY(sgGlyph.Cells[3,Idx], 0)*k,-3));
         end;
  end;
  for i := 0 to n2 do
    sgGlyph.Cells[n1+i,Idx]:=FloatToStr(RoundTo(StrToXY(sgGlyph.Cells[n1+i,Idx], 0)*k,-3));

end;



end.
