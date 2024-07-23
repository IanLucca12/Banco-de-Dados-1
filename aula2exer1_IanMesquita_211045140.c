#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char nome[30];
    int cpf;
    int renavam;
    char modelo[30];
    int ano;
    char cor[30];
    char placa[30];
} motorista;


typedef struct{
    char nome[30];
    int cpf;
    int cep;
    int telefone;
} usuarios;

//--------------------------------------------------------------------------------------------------------------
// partes que ir�o lidar com a ordena��o do arquivo de usu�rios pela chave cpf
// Fun��o para trocar dois elementos do array de usu�rios por CPF
void trocarUsuarios(usuarios *a, usuarios *b) {
    usuarios temp = *a;
    *a = *b;
    *b = temp;
}

// Fun��o para particionar o array de usu�rios por CPF
int particionarUsuarios(usuarios *arr, int inicio, int fim) {
    int pivo = arr[fim].cpf;
    int i = inicio - 1;

    for (int j = inicio; j < fim; j++) {
        if (arr[j].cpf <= pivo) {
            i++;
            trocarUsuarios(&arr[i], &arr[j]);
        }
    }
    trocarUsuarios(&arr[i + 1], &arr[fim]);
    return i + 1;
}

// Fun��o Quick Sort para ordenar os usu�rios por CPF
void quickSortUsuarios(usuarios *arr, int inicio, int fim) {
    if (inicio < fim) {
        int pi = particionarUsuarios(arr, inicio, fim);

        quickSortUsuarios(arr, inicio, pi - 1);
        quickSortUsuarios(arr, pi + 1, fim);
    }
}

// Fun��o para imprimir o array de usu�rios
void imprimirUsuarios(usuarios *arr, int tamanho) {
    for (int i = 0; i < tamanho; i++) {
        printf("Nome: %s, CPF: %d, CEP: %d, Telefone: %d\n", arr[i].nome, arr[i].cpf, arr[i].cep, arr[i].telefone);
    }
}

//==================================================================================================================================
void trocamotorista(motorista*c,motorista*d){
motorista temp=*c;
*c=*d;
*d=temp;
}

int particionamotorista(motorista*arr,int inicio, int fim) {
    int pivo = arr[fim].renavam;
    int i = inicio - 1;

    for (int j = inicio; j < fim; j++) {
        if (arr[j].renavam<= pivo) {
            i++;
            trocamotorista(&arr[i], &arr[j]);
        }
    }
    trocamotorista(&arr[i + 1], &arr[fim]);
    return i + 1;
}

void quickSortmotorista(motorista *arr, int inicio, int fim) {
    if (inicio < fim) {
        int pi = particionamotorista(arr, inicio, fim);

        quickSortmotorista(arr, inicio, pi - 1);
        quickSortmotorista(arr, pi + 1, fim);
    }
}

// Fun��o para imprimir o array de dados do motorista
void imprimirmotorista(motorista *arr, int tamanho) {
    for (int i = 0; i < tamanho; i++) {
        printf("%s - %d - %d - %s - %d - %s - %s %\n", arr[i].nome, arr[i].cpf, arr[i].renavam, arr[i].modelo,arr[i].ano,arr[i].cor,arr[i].placa);
    }
}
//=========================================================================================================================================
int main(void){
    FILE *leitura_usuario;
    FILE *leitura_carro;
    FILE *carronovo;
    FILE *usuarionovo;

    usuarios u;
    motorista m;

    leitura_usuario= fopen("cadastro_menbros.bin","rb");
    leitura_carro= fopen("registros.bin","rb");
    carronovo= fopen("novosregistros.bin","ab");
    usuarionovo=fopen("novousuario.bin","ab");

    // Verificar se os arquivos foram abertos corretamente
    if (leitura_usuario == NULL || leitura_carro == NULL) {
        perror("Erro ao abrir o arquivo");
        return 1;
    }

    // Lendo os usu�rios
    fseek(leitura_usuario, 0, SEEK_END); // Coloca o cursor do arquivo no final
    long fileSize = ftell(leitura_usuario); // Obtem o tamanho do arquivo
    int numUsuarios = fileSize / sizeof(usuarios); // Calcula o n�mero de usu�rios no arquivo
    usuarios *usuariosArray = (usuarios *)malloc(numUsuarios * sizeof(usuarios)); // Aloca mem�ria para o array de usu�rios
    rewind(leitura_usuario); // Volta o cursor para o in�cio do arquivo


    fseek(leitura_carro,0,SEEK_END);
    long fileSize1=ftell(leitura_carro);
    int nummotorista=fileSize1 / sizeof(motorista);
    motorista* motoristaArray= (motorista*)malloc(nummotorista*sizeof(motorista));
    rewind(leitura_carro);

    // Lendo os usu�rios do arquivo para o array
    fread(usuariosArray, sizeof(usuarios), numUsuarios, leitura_usuario);
    fread(motoristaArray,sizeof(motorista),nummotorista,leitura_carro);

    // Ordenando os usu�rios por CPF
    quickSortUsuarios(usuariosArray, 0, numUsuarios - 1);
    quickSortmotorista(motoristaArray,0,nummotorista -1);

    // Imprimindo os usu�rios ordenados
    printf("Usu�rios ordenados por CPF \n");
    imprimirUsuarios(usuariosArray, numUsuarios);

    printf("Veiculos ordenados por Renavam \n");
    imprimirmotorista(motoristaArray, nummotorista);

    fwrite(&m,sizeof(motorista),1, carronovo);
    fwrite(&u,sizeof(usuarios),1, usuarionovo);

    // Liberando a mem�ria alocada para o array de usu�rios e para o array de motoristas
    free(usuariosArray);
    free(motoristaArray);

    // Fechando os arquivos
    fclose(leitura_usuario);
    fclose(leitura_carro);

    return 0;
}
