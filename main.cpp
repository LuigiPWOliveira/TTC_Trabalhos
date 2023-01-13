#include <stdio.h>
#include "MuMaterial.h"

using namespace std;
void func1();
void func2();
MuMaterial cantus_firmus;
MuMaterial cont_pont;
void contra_ponto();

int main(){
    MuInit();

    cantus_firmus.LoadScore("cantusfirmus.sco");
    cantus_firmus.Show();
    cantus_firmus.PlaybackWithCsound("melodia");
    
    cantus_firmus.AddVoices(1);
    cantus_firmus.SetVoice(0,cont_pont,1);

    return 0;
}


void func2(){
    MuMaterial melodia, escala;
    MuNote nota;
    const int tam_escala = 12, tamanho_min = 5;
    const float nota_longa = 0.9, nota_curta = 0.6, pausa = 0.4;
    escala.HarmonicMinorScale(1.0);

    nota.SetInstr(1);
    nota.SetStart(0.0);
    //nota.SetDur();
    
    melodia += nota;
    melodia.PlaybackWithCsound("melodia");
}

void func1(){
    MuMaterial mat[3], melodia;
    MuNote nota;
    mat[0].MajorScale(0.5,true);
    mat[0].Transpose(12);
    mat[1].HarmonicMinorScale(0.5);
    mat[2].PentatonicScale(0.5);

    nota.SetInstr(1);
    nota.SetStart(0.0);
    nota.SetDur(0.17);
    int turns = 10;
    while(turns--){
        mat[0].Clear();
        mat[1].Clear();
        for(int i = 0; i < 7; i++)        {
            if(i == 0)
                nota.SetAmp(0.75);
            else
                nota.SetAmp(0.4);
                nota.SetPitch(Between(36,72));
                mat[0] += nota;
        } // end for()
        mat[1] = mat[0];
        int transp = 12; // 8va abaixo <==> 8va acima
        if (Between(0,1)) transp *= -1;
        mat[1].Transpose(transp);
        mat[0] += mat[1];
        mat[2] += mat[0];
    } // end while()

    mat[2].PlaybackWithCsound("mat");
}

//for(int i = 0; i <= 2; i++){
    //mat[i].Show();
    //printf("\n +++++++++++++++++++++++++ \n");
//}
    //mat[0].PlaybackWithCsound("mat");

void contra_ponto(){
    
}

