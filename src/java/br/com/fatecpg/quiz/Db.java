/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author Carlos
 */
public class Db {
  private static ArrayList<Usuario> listaUsuario;
  private static ArrayList<Teste> listaTeste;
  private static ArrayList<Integer> listaNum;
  
  public static ArrayList<Question> getMathTest(){
        
        ArrayList<Question> test = new ArrayList<>();
        
        test.add(new Question("Qual o nome da primeira capital que o Brasil teve, de 1549 até 1763 ?","Salvador", new String[]{"Rio de Janeiro","São Vicente","Salvador","São Paulo","Recife"}));
        test.add(new Question("Qual a capital de Sergipe ?","Aracaju", new String[]{"Aracaju","Natal","Maceió","Palmares","Uruguaína"}));
        test.add(new Question("Qual a capital do Acre ?","Rio Branco", new String[]{"Cruzeiro do Sul","Rio Branco","Rio Acre","Tabatinga","Benjamin Constant"}));
        test.add(new Question("A partir de 1763, onde se localizou a sede do governo brasileiro, estatuto que o local manteve até 21 de abril de 1960?","Rio de Janeiro", new String[]{"Salvador","Brasília","Olinda","Rio de Janeiro","Angra dos Reis"}));
        test.add(new Question("Qual a capital de Santa Catarina ?","Florianópolis", new String[]{"Joinville","Itajaí","Florianópolis","Blumenau","Criciúma"}));
        test.add(new Question("Qual a capital de Pernambuco ?","Recife", new String[]{"Olinda","Recife","Caruaru","Petrolina","Pernambucópolis"}));
        test.add(new Question("Qual a capital do Piauí ?","Teresina", new String[]{"Teresinha","Teresa","Teresópolis","Parnaíba","Teresina"}));
        test.add(new Question("Qual a capital do Distrito Federal ?","Brasília", new String[]{"Brasília","Taguatinga","Gama","Candangolândia","Não possui capital"}));
        test.add(new Question("Qual a capital do Amapá ?","Macapá", new String[]{"Amapá","Macapá","Amacapá","Serra do Navio","Oiapoque"}));
        test.add(new Question("Qual a capital do Mato Grosso do Sul ?","Campo Grande", new String[]{"Mato Fino","Mato Fino do Sul","Cuiabá","Campo Grande","Campo Pequeno"}));
        test.add(new Question("Qual a capital da Paraíba ?","João Pessoa", new String[]{"Campina Grande","João Pessoa","Epitácio Pessoa","Parahyba","Cabedelo"}));
        test.add(new Question("Qual a capital do Mato Grosso ?","Cuiabá", new String[]{"Cuiabá","Mato Fino","Campo Grande","Mato Fino do Sul","Campo Pequeno"}));
        test.add(new Question("Qual a capital do Amazonas ?","Manaus", new String[]{"Buena Vista","Belém","Parintins","Manaus","Santarém"}));
        test.add(new Question("Qual a capital de Rondônia ?","Porto Velho", new String[]{"Bela Vista","Boa Vista","Buena Vista","Boa Visão","Porto Velho"}));
        test.add(new Question("Qual a capital do Paraná ?","Curitiba", new String[]{"Paranaguá","Curitiba","Maringá","Londrina","Foz do Iguaçu"}));
        test.add(new Question("Qual a capital do Maranhão ?","São Luís", new String[]{"São Luiz","Imperatriz","Bacabal","Itapecuru","Maranholândia"}));
        test.add(new Question("Qual a capital do Espírito Santo ?","Vitória", new String[]{"Cachoeiro de Itapemirim","Capixabópolis","Vila Velha","Vitória","Derrota"}));
        test.add(new Question("Qual a capital do Rio Grande do Norte ?","Natal", new String[]{"Mossoró","Nova Amsterdã","Natal","Parnamirim","Rio Grande"}));
        test.add(new Question("Qual a capital do Ceará ?","Fortaleza", new String[]{"Aracati","Fortaleza","Juazeiro do Norte","Araripe","São Luís"}));
        test.add(new Question("Qual a capital do Rio Grande do Sul ?","Porto Alegre", new String[]{"Pouso Alegre","Porto Velho","Rio Grande","Pelotas","Porto Alegre"}));
        return test;
    }
  
  public static ArrayList<Usuario> usuario(){
        if( listaUsuario == null){
            listaUsuario = new ArrayList<>();
        }
        return listaUsuario;
  }
  
  public static ArrayList<Teste> teste(){
    if( listaTeste == null){
        listaTeste = new ArrayList<>();
    }
    return listaTeste;
  }
  
  public static ArrayList<Teste> notasMax(){
    if( listaTeste == null){
        listaTeste = new ArrayList<>();
    }else{
        double aux;
        for(int i = 0; i<listaTeste.size(); i++){
          for(int j = 0; j<listaTeste.size()-1; j++){
              if(listaTeste.get(j).getNota() > listaTeste.get(j + 1).getNota()){
                  aux = listaTeste.get(j).getNota();
                  listaTeste.get(j).setNota(listaTeste.get(j + 1).getNota());
                  listaTeste.get(j + 1).setNota(aux);
              }
          }
        }
    }
    return listaTeste;
  }
  
  public static ArrayList<Integer> listaNum(){
    if( listaNum == null){
        listaNum = new ArrayList<>();
    }
    return listaNum;
  }
  public static void listaNumClear(){
    listaNum.clear();
  }
}
