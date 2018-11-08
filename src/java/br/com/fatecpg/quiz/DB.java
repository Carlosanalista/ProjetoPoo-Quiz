/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author Carlos
 */
public class DB {
  public static ArrayList<Question> getMathTest(){
        ArrayList<Question> test = new ArrayList<>();
        test.add(new Question("1+1?","2", new String[]{"1","2","3"}));
        test.add(new Question("1+2?","3", new String[]{"1","2","3"}));
        test.add(new Question("1+5?","6", new String[]{"6","-4","5"}));
        test.add(new Question("2x2?","4", new String[]{"2","4","0"}));
        test.add(new Question("3-1?","2", new String[]{"1","2","3"}));
        return test;
    }
}
