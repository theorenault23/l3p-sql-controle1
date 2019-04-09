INSERT INTO T_ENTIER_ENT 
SELECT TEU.ENT_N                     
       + 10   * TED.ENT_N            
       + 100  * TEC.ENT_N            
       + 1000 * TEM.ENT_N             
FROM   T_ENTIER_ENT TEU,              
              T_ENTIER_ENT TED,       
              T_ENTIER_ENT TEC,       
              T_ENTIER_ENT TEM        
WHERE  TEU.ENT_N           
       + 10   * TED.ENT_N  
       + 100  * TEC.ENT_N  
       + 1000 * TEM.ENT_N  > 9;