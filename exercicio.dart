
// Criando a classe Carro
class Carro {

  // Criando as variáveis
  String modelo;
  double velocidadeAtual = 0;
  double velocidadeMax;

  // Método construtor
  Carro(this.modelo, this.velocidadeMax);

  // Método acelerar
  void acelerar(qtd) {
    velocidadeAtual += qtd;
    if (velocidadeAtual > velocidadeMax) {
      velocidadeAtual = velocidadeMax;
      print("Velocidade máxima atingida!");
    }
  }

  // Método frear
  void frear(qtd) {
    velocidadeAtual -= qtd;
    if (velocidadeAtual < 0) {
      velocidadeAtual = 0;
      print("O carro já está parado.");
    }
  }

  // Método desligar
  void desligar(){
    velocidadeAtual = 0;
    print("Carro desligado. Velocidade zerada.");
  }

  // Método exibirEstado
  void exibirEstado(){
    print("Carro: $modelo | Velocidade atual: ${velocidadeAtual}km/h | Velocidade máxima: ${velocidadeMax}km/h");
  }
}

// Criando a função main
void main(){

  // Criando o carro
  Carro carro1 = Carro("Fusca", 120);

  // Acelerando o carro
  carro1.acelerar(50);
  carro1.acelerar(80); // Trava em 120

  // Exibindo o estado do carro
  carro1.exibirEstado();

  // Freando o carro parcialmente
  carro1.frear(30);
  carro1.frear(70);
  carro1.frear(50); // Trava em 0

  // Exibindo o estado do carro novamente
  carro1.exibirEstado();

  // Acelerando novamente
  carro1.acelerar(50);

  // Desligando o carro
  carro1.desligar();

  // Exibindo o estado final
  carro1.exibirEstado();
} 