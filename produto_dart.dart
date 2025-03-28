import 'package:bloco4/bloco4.dart' as bloco4;
import 'dart:io';

class Produto {
  late String _nome;
  late int _quantidadeEmEstoque;
  String? _descricao;
  late double _preco;

  get getNome => _nome;
  get getEstoque => _quantidadeEmEstoque;
  get getDescricao => _descricao;
  get getPreco => _preco;

  set setNome(String nome) {
    nome = _nome;
  }
  set setEstoque(int estoque) {
    estoque= _quantidadeEmEstoque;
  }
  set setDescricao(String des) {
    des= _descricao!;
  }
  set setPreco(double preco) {
    preco= _preco;
  }

Produto({
    required String nome,
    required int quantidadeEmEstoque,
    String? descricao, 
    required double preco,
  }) {
    _nome = nome;
    _quantidadeEmEstoque = quantidadeEmEstoque;
    _descricao = descricao; 
    _preco = preco;
  }

  bool vender(int quantidade) {
    if (quantidade > _quantidadeEmEstoque){
        return false;
    } else {
      _quantidadeEmEstoque-=quantidade;
      return true;
    }
  }
  
  void reporEstoque(int quantidade){
     _quantidadeEmEstoque=_quantidadeEmEstoque+quantidade;
  }
  
  void mostrarInfo(){
      print("Nome: $_nome | Estoque: $_quantidadeEmEstoque | Preco: $_preco ");
}
}

void main() {
  var p1 = Produto(nome: 'João', quantidadeEmEstoque: 30, preco:180);
  p1.mostrarInfo(); 
  if (p1.vender(3)){
    print("Venda realizada! Novo estoque: ${p1._quantidadeEmEstoque}");
  }
  p1.mostrarInfo(); 
  p1.reporEstoque(10);
  p1.mostrarInfo(); 
 
}