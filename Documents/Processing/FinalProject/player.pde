class player {
  
  int pX = 50;
  int pY = 50;
  int pSize = 80;
  

  int player;
  
 player(int player_){

   player = player_;

   
 }
 
   
  void display(){
    
    ellipse(pX,pY,pSize,pSize);
    
    
    if(keyDown == true){
      
      if(player == 1){
        
        if(currentKey == 'w'){
          pY = pY - 100;
        }
        
        if(currentKey == 's'){
          pY = pY + 100;

        }
        
        if(currentKey == 'a'){
          pX = pX - 100;

        }
        
        if(currentKey == 'd'){
          pX = pX + 100;

        }  
      }
      
      if(player == 2){

        if(currentKey == 'i'){

        }
        
        if(currentKey == 'k'){

        }
        
        if(currentKey == 'j'){

        }
        
        if(currentKey == 'l'){

        }
      }
      
   
    }
   
    
  }
  
  
}
