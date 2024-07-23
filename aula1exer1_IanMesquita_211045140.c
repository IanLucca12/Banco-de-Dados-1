#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>

typedef struct {
    char nome[30];
    int cpf;
    int renavam;
    char modelo[30];
    int ano;
    char cor[30];
    char placa[30];
} motorista;
//-----------------------------------------------------------------------------------------------

typedef struct{
char nome[30];
int cpf;
int cep;
int telefone;
}usuarios;

//--------------------------------------------------------------------------------------------
int main(void) {
    FILE *arquivo;
    FILE *leitura;
    FILE *pessoal;
    usuarios u;
    motorista m;
    int opcao =1;
    // Um ponteiro responsável pela leitura do arquivo e outro responsável pela escrita no arquivo
    arquivo= fopen("registros.bin","ab");
    leitura= fopen("registros.bin","rb");
    pessoal = fopen("cadastro_menbros.bin","ab");
    //----------------------------------------------------------------------------------------------
    printf("TODAS AS INFORMACOES NAO PODEM CONTER ESPACOS, ACENTOS OU CARACTERES ESPECIAIS\n \n");
    printf("Informe o nome do completo do novo usuário : ");
    scanf("%s", u.nome);

    printf("Informe o cpf do novo usuario: ");
    scanf("%d", &u.cpf);

    printf("Informe o cep do novo usuario: ");
    scanf("%d", &u.cep);

printf("Informe o telefone do novo usuario: ");
    scanf("%d", &u.telefone);

 fwrite(&u, sizeof(usuarios),1,pessoal);
 fclose(usuarios);
   //-----------------------------------------------------------------------------------------------
    while(opcao!=0){
    printf("\n TODAS AS INFORMACOES NAO PODEM CONTER ESPACOS, ACENTOS OU CARACTERES ESPECIAIS\n \n");
    printf("Informe o nome do motorista : ");
    scanf("%s", m.nome);

    printf("Informe o cpf do motorista: ");
    scanf("%d", &m.cpf);

    printf("Digite o número do renavam do carro: ");
    scanf("%d", &m.renavam);

    printf("Informe o modelo do carro: ");
    scanf("%s", m.modelo);

    printf("Informe o ano do carro: ");
    scanf("%d", &m.ano);

    printf("Informe a cor do carro: ");
    scanf("%s", m.cor);

    printf("Informe a placa do carro: ");
    scanf("%s", m.placa);

    fwrite(&m,sizeof(motorista),1, arquivo);

     printf("\n Digite: \n'0' para sair \n'1'para continuar\n");
     scanf("%d",&opcao);

    }

    fclose(arquivo); // Fecha o arquivo caso o usuário não queira mais adicionar dados na struct
  //--------------------------------------------------------------------------------------------------------
    printf("Nome - CPF - Renavam - Modelo - Ano - Cor - Placa \n \n");
    while(!feof(leitura)) //O programa continuará lendo o arquivo até chegar no fim dele
      {

         fread(&m,sizeof(motorista),1,leitura);// após a leitura do arquivo os elementos preenchidos da struct serão exibidos na tela em ordem que foram colocados
         printf("%s - %d - %d - %s - %d - %s - %s %\n", m.nome, m.cpf, m.renavam, m.modelo, m.ano, m.cor, m.placa);
      }
      fclose(leitura);
      return 0;
}
