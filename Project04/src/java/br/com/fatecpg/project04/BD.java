package br.com.fatecpg.project04;

import java.util.ArrayList;

/**
 *
 * @author Manoel Rodriguez
 */
public class BD {
    private static ArrayList<Usuario> usuariosList;
    
     public static ArrayList<Usuario> getUsuariosList(){
         if(usuariosList == null){
             usuariosList = new ArrayList();
             Usuario u1 = new Usuario();
             u1.setNome("Manoel");
             u1.setSobrenome("Rodriguez");
             u1.setEmail("manoel@gmail.com");
             u1.setMedia(0);
             usuariosList.add(u1);
             
             Usuario u2 = new Usuario();
             u1.setNome("Matheus");
             u1.setSobrenome("Morais");
             u1.setEmail("matheus@gmail.com");
             u1.setMedia(0);
             usuariosList.add(u2);
             
             Usuario u3 = new Usuario();
             u1.setNome("Wagner");
             u1.setSobrenome("Alves");
             u1.setEmail("wagner@gmail.com");
             u1.setMedia(0);
             usuariosList.add(u3);
             
             
         }
         return usuariosList;
     }
}
