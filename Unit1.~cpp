//---------------------------------------------------------------------------
#include <math.h>
#include <stdio.h>
#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
typedef struct {
   float v[4][4];
} MATRIZ;
MATRIZ identidad= {{{1,0,0,0},
                    {0,1,0,0},
                    {0,0,1,0},
                    {0,0,0,1} }};
MATRIZ mtrans=identidad;
typedef struct {
   float x,y,z;
   int dib;
} VTX;
int maxvtx=18;
VTX lista[100000]={{   0,   0,  0,0} ,
                 { 100,   0,  0,1},
                 { 100, 100,  0,1},
                 {   0, 100,  0,1},
                 {   0,   0,  0,1},
{   0,   0, 100,0} ,
                 { 100,   0, 100,1},
                 { 100, 100, 100,1},
                 {   0, 100, 100,1},
                 {   0,   0, 100,1},
                 {   0,   0,    0,0} ,
                 {   0,   0, 100,1} ,
                 { 100,   0,   0,0},
                 { 100,   0, 100,1},
                 { 100, 100,   0,0},
                 { 100, 100, 100,1},
                 {   0, 100,   0, 0},
                 {   0, 100, 100,1}};
void aplica_matriz(VTX a,VTX &b) {
  b.x=   mtrans.v[0][0]*a.x+
         mtrans.v[0][1]*a.y+
         mtrans.v[0][2]*a.z+
         mtrans.v[0][3]*1;
  b.y=   mtrans.v[1][0]*a.x+
         mtrans.v[1][1]*a.y+
         mtrans.v[1][2]*a.z+
         mtrans.v[1][3]*1;
  b.z=   mtrans.v[2][0]*a.x+
         mtrans.v[2][1]*a.y+
         mtrans.v[2][2]*a.z+
         mtrans.v[2][3]*1;
  b.dib= a.dib;
}
void dibujar(void)
{
   VTX aux;
   int i;
   int xc=Form1->Width/2;
   int yc=Form1->Height/2;
   Form1->Canvas->Pen->Mode=pmCopy;
   for (i=0;i<maxvtx;i++)
   {
        aplica_matriz(lista[i],aux);
        if(aux.dib==0)
           Form1->Canvas->MoveTo(xc+aux.x, yc-aux.y);
        else
           Form1->Canvas->LineTo(xc+aux.x, yc-aux.y);
   }
}

void __fastcall TForm1::FormPaint(TObject *Sender)
{
    dibujar();
}
//---------------------------------------------------------------------------
void multiplica(MATRIZ a,MATRIZ b,MATRIZ &c)
{
   int i,j,k;
   for (i=0;i<4;i++)  {
      for (j=0;j<4;j++)  {
          c.v[i][j]=0;
          for (k=0;k<4;k++) 
             c.v[i][j]+=a.v[i][k]*b.v[k][j];
     }
   }
}
void trasladar(float tx,float ty,float tz)
{
    MATRIZ aux,temp;
    aux=identidad;
    aux.v[0][3]=tx;
    aux.v[1][3]=ty;
    aux.v[2][3]=tz;
    temp=mtrans;
    multiplica(aux,temp,mtrans);
}

void __fastcall TForm1::Button1Click(TObject *Sender)
{
   trasladar(-10,0,0);
   Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
   trasladar(+10,0,0);
   Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
   trasladar(0,-10,0);
   Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
   trasladar(0,+10,0);
   Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
{
   trasladar(0,0,-10);
   Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button6Click(TObject *Sender)
{
   trasladar(0,0,+10);
   Repaint();
}
//---------------------------------------------------------------------------
void escalar(float sx,float sy,float sz)
{
    MATRIZ aux,temp;
    aux=identidad;
    aux.v[0][0]=sx;
    aux.v[1][1]=sy;
    aux.v[2][2]=sz;
    temp=mtrans;
    multiplica(aux,temp,mtrans);
}

void __fastcall TForm1::Button7Click(TObject *Sender)
{
   escalar(0.8,0.8,0.8);
   Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button8Click(TObject *Sender)
{
   escalar(1.2,1.2,1.2);
   Repaint();
}
//---------------------------------------------------------------------------
void rotarx(float ang)
{
    MATRIZ aux=identidad,temp;
    ang=ang*3.141516/180;
    float vcos=cos(ang), vsin=sin(ang);
    aux.v[1][1]=vcos;
    aux.v[1][2]=-vsin;
    aux.v[2][1]=vsin;
    aux.v[2][2]=vcos;
    temp=mtrans;
    multiplica(aux,temp, mtrans);
}

void __fastcall TForm1::Button9Click(TObject *Sender)
{
   rotarx(-10);
   Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button10Click(TObject *Sender)
{
   rotarx(+10);
   Repaint();
}
//---------------------------------------------------------------------------
void rotary(float ang)
{
    MATRIZ aux=identidad,temp;
    ang=ang*3.141516/180;
    float vcos=cos(ang), vsin=sin(ang);
    aux.v[0][0]=vcos;
    aux.v[0][2]=vsin;
    aux.v[2][0]=-vsin;
    aux.v[2][2]=vcos;
    temp=mtrans;
    multiplica(aux,temp, mtrans);
}

void __fastcall TForm1::Button11Click(TObject *Sender)
{
   rotary(-10);
   Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button12Click(TObject *Sender)
{
   rotary(+10);
   Repaint();
}
//---------------------------------------------------------------------------
void rotarz(float ang)
{
    MATRIZ aux=identidad,temp;
    ang=ang*3.141516/180;
    float vcos=cos(ang), vsin=sin(ang);
    aux.v[0][0]=vcos;
    aux.v[0][1]=-vsin;
    aux.v[1][0]=vsin;
    aux.v[1][1]=vcos;
    temp=mtrans;
    multiplica(aux,temp, mtrans);
}

void __fastcall TForm1::Button13Click(TObject *Sender)
{
   rotarz(-10);
   Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button14Click(TObject *Sender)
{
   rotarz(+10);
   Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button15Click(TObject *Sender)
{
    maxvtx=0;
    Repaint();           
}
//---------------------------------------------------------------------------
int x0,y0,x1,y1,dib=0;

void __fastcall TForm1::FormMouseDown(TObject *Sender, TMouseButton Button,
      TShiftState Shift, int X, int Y)
{
   if(Button==mbLeft){
      x0=X;
      y0=Y;
      x1=X;
      y1=Y;
      if(EJE->ItemIndex==2) {
        lista[maxvtx].x=X;
        lista[maxvtx].y=Y;
        lista[maxvtx].z=Edit1->Text.ToInt();
      }
      if(EJE->ItemIndex==1) {
        lista[maxvtx].x=X;
        lista[maxvtx].y=Edit1->Text.ToInt();
        lista[maxvtx].z=Y;
      }
      if(EJE->ItemIndex==0) {
        lista[maxvtx].x=Edit1->Text.ToInt();
        lista[maxvtx].y=X;
        lista[maxvtx].z=Y;
      }
      lista[maxvtx].dib=dib;
      maxvtx++;
      dib=1;
   }
   if(Button==mbRight)
      dib=0;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormMouseMove(TObject *Sender, TShiftState Shift,
      int X, int Y)
{
    if(dib){
        Canvas->Pen->Mode=pmNotXor;
        Canvas->MoveTo(x0,y0);
        Canvas->LineTo(x1,y1);
        x1=X;
        y1=Y;
        Canvas->MoveTo(x0,y0);
        Canvas->LineTo(x1,y1);
    }
    ejex->Caption=X;
    ejey->Caption=Y;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button16Click(TObject *Sender)
{
  int X,Y;
  float ang;
  dib=0;
  for (ang=0;ang<360 ;ang+=10)
  {
      X=50+50*sin(ang*3.14159/180);
      Y=50+50*cos(ang*3.14159/180);
      if(EJE->ItemIndex==2) {
        lista[maxvtx].x=X;
        lista[maxvtx].y=Y;
        lista[maxvtx].z=Edit1->Text.ToInt();
      }
      if(EJE->ItemIndex==1) {
        lista[maxvtx].x=X;
        lista[maxvtx].y=Edit1->Text.ToInt();
        lista[maxvtx].z=Y;
      }
      if(EJE->ItemIndex==0) {
        lista[maxvtx].x=Edit1->Text.ToInt();
        lista[maxvtx].y=X;
        lista[maxvtx].z=Y;
      }
      lista[maxvtx].dib=dib;
      maxvtx++;
      dib=1;
  }
  dib=0;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button17Click(TObject *Sender)
{
   int X,Y,radio;
  float ang;
  for (radio=0;radio<=50;radio+=5)
  {
      dib=0;
      for (ang=0;ang<=360 ;ang+=10)
      {
          X=50+radio*sin(ang*3.14159/180);
          Y=50+radio*cos(ang*3.14159/180);
          if(EJE->ItemIndex==2) {
            lista[maxvtx].x=X;
            lista[maxvtx].y=Y;
            lista[maxvtx].z=radio*2;
          }
          if(EJE->ItemIndex==1) {
            lista[maxvtx].x=X;
            lista[maxvtx].y=radio*2;
            lista[maxvtx].z=Y;
          }
          if(EJE->ItemIndex==0) {
            lista[maxvtx].x=radio*2;
            lista[maxvtx].y=X;
            lista[maxvtx].z=Y;
          }
          lista[maxvtx].dib=dib;
          maxvtx++;
          dib=1;
      }
  }
  dib=0;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button18Click(TObject *Sender)
{
   FILE *arch;
   int i;
   mtrans=identidad;
   if(OpenDialog1->Execute())
   {
      arch=fopen(OpenDialog1->FileName.c_str(),"rt");
      maxvtx=0;
      while(!feof(arch))
      {
       fscanf(arch,"%f%f%f%d",&lista[maxvtx].x,&lista[maxvtx].y,&lista[maxvtx].z,&lista[maxvtx].dib);
       if(!feof(arch))
         maxvtx++;
      }
      fclose(arch);
      Repaint();
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button19Click(TObject *Sender)
{
   FILE *arch;
   VTX aux;
   int i;
   if(SaveDialog1->Execute())
   {
      arch=fopen(SaveDialog1->FileName.c_str(),"wt");
      for (i=0;i<maxvtx;i++)
      {
        aplica_matriz(lista[i],aux);
        fprintf(arch,"%8.1f %8.1f %8.1f %3d\n",aux.x,aux.y,aux.z,aux.dib);
      }
      fclose(arch);
   }
}
//---------------------------------------------------------------------------
//EXTRUIR
void __fastcall TForm1::Button20Click(TObject *Sender)
{
    // copiar datos en eje z =100
    int dato=maxvtx;
    for (int i=0;i<maxvtx;i++)
    {
       lista[maxvtx+i]=lista[i];
       //plano x
       if(EJE->ItemIndex==0)
       lista[maxvtx+i].x=Edit2->Text.ToInt();
       //plano y
       if(EJE->ItemIndex==1)
       lista[maxvtx+i].y=Edit2->Text.ToInt();
       //plano z
       if(EJE->ItemIndex==2)
       lista[maxvtx+i].z=Edit2->Text.ToInt();

    }
    maxvtx=2*maxvtx;
    for (int i=0;i<dato;i++)
    {
       lista[maxvtx]=lista[i];
       lista[maxvtx].dib=0;
       maxvtx++;
       lista[maxvtx]=lista[i];
       //plano x
       if(EJE->ItemIndex==0)
       lista[maxvtx].x=Edit2->Text.ToInt();
       //plano y
       if(EJE->ItemIndex==1)
       lista[maxvtx].y=Edit2->Text.ToInt();
       //plano z
       if(EJE->ItemIndex==2)
       lista[maxvtx].z=Edit2->Text.ToInt();

       lista[maxvtx].dib=1;
       maxvtx++;
    }
    Repaint();
}
//---------------------------------------------------------------------------
//REVOLUCION
void __fastcall TForm1::Button21Click(TObject *Sender)
{
    //dibujar una circunferencia
    int dato=maxvtx;
    for (int i=0;i<dato;i++)
    {
      for (int ang=0;ang<=360;ang+=10)
      {
         lista[maxvtx].x=lista[i].x*cos(ang*3.141516/180);
         lista[maxvtx].y=lista[i].y;
         lista[maxvtx].z=lista[i].x*sin(ang*3.141516/180);

         lista[maxvtx].dib=(ang==0)?0:1;
         maxvtx++;
      }
    }
    for (int ang=0;ang<=360;ang+=10)
    {
      for (int i=0;i<dato;i++)
      {
         lista[maxvtx].x=lista[i].x*cos(ang*3.141516/180);
         lista[maxvtx].y=lista[i].y;
         lista[maxvtx].z=lista[i].x*sin(ang*3.141516/180);
         lista[maxvtx].dib=(i==0)?0:1;
         maxvtx++;
      }
    }
    Repaint();
}
//---------------------------------------------------------------------------


