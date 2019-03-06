Create fifty macro variables containing l00 variable names each using sql like                                                  
                                                                                                                                
Need a SAS release later than 9.4M2.                                                                                            
                                                                                                                                
github                                                                                                                          
https://tinyurl.com/y5zcbzpo                                                                                                    
https://github.com/rogerjdeangelis/utl-create-fifty-macro-variables-containing-l00-variable-names-each-using-sql-like           
                                                                                                                                
github                                                                                                                          
https://tinyurl.com/y2ym8om2                                                                                                    
https://communities.sas.com/t5/SAS-Programming/Resolve-macro-variable-within-SQL-like/m-p/540148                                
                                                                                                                                
PGStats                                                                                                                         
https://communities.sas.com/t5/user/viewprofilepage/user-id/462                                                                 
                                                                                                                                
*_                   _                                                                                                          
(_)_ __  _ __  _   _| |_                                                                                                        
| | '_ \| '_ \| | | | __|                                                                                                       
| | | | | |_) | |_| | |_                                                                                                        
|_|_| |_| .__/ \__,_|\__|                                                                                                       
        |_|                                                                                                                     
;                                                                                                                               
                                                                                                                                
                                                                                                                                
data have;                                                                                                                      
  length nam $11;                                                                                                               
  array xs[50,100] x1-x5000 (5000*1);                                                                                           
    do col=1 to 100;                                                                                                            
       do row=1 to 50;                                                                                                          
          nam=cats('x',put(col,4.),'level',put(row,4.));                                                                        
          keep nam;                                                                                                             
          output;                                                                                                               
       end;                                                                                                                     
    end;                                                                                                                        
    stop;                                                                                                                       
run;quit;                                                                                                                       
                                                                                                                                
%0 Arrays of 100 variables                                                                                                      
                                                                                                                                
 x1level1 x2level1 x3level1 .... x100level1                                                                                     
 x1level2 x2level2 x3level2 .... x100level2                                                                                     
 ....                                                                                                                           
 x1level50 x2evel50 x3level50 .... x100level50                                                                                  
                                                                                                                                
                                                                                                                                
WORK.HAVE total obs=5,000                                                                                                       
                                                                                                                                
 Obs       NAM                                                                                                                  
                                                                                                                                
   1    x1level1                                                                                                                
   2    x1level2                                                                                                                
   3    x1level3                                                                                                                
   4    x1level4                                                                                                                
   5    x1level5                                                                                                                
   6    x1level6                                                                                                                
   7    x1level7                                                                                                                
   8    x1level8                                                                                                                
   9    x1level9                                                                                                                
  10    x1level10                                                                                                               
...                                                                                                                             
                                                                                                                                
4997    x100level47                                                                                                             
4998    x100level48                                                                                                             
4999    x100level49                                                                                                             
5000    x100level50                                                                                                             
                                                                                                                                
*            _               _                                                                                                  
  ___  _   _| |_ _ __  _   _| |_                                                                                                
 / _ \| | | | __| '_ \| | | | __|                                                                                               
| (_) | |_| | |_| |_) | |_| | |_                                                                                                
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                               
                |_|                                                                                                             
;                                                                                                                               
                                                                                                                                
50 macro vaiaibles with 100 varibles in each macro                                                                              
                                                                                                                                
WORK.LOG total obs=5                                                                                                            
                                                                                                                                
                       STATUS                                                                                                   
                                                                                                                                
  macro variabe namelist1 with x1level 1-50 created                                                                             
  macro variabe namelist2 with x2level 1-50 created                                                                             
  macro variabe namelist3 with x3level 1-50 created                                                                             
  macro variabe namelist4 with x4level 1-50 created                                                                             
  macro variabe namelist5 with x5level 1-50 created                                                                             
 ....                                                                                                                           
  macro variabe namelist48 with x48level 1-50 created                                                                           
  macro variabe namelist49 with x49level 1-50 created                                                                           
  macro variabe namelist50 with x50level 1-50 created                                                                           
                                                                                                                                
%put &=namelist1;                                                                                                               
                                                                                                                                
NAMELIST1=                                                                                                                      
x1level1 x2level1 x3level1 x4level1 x5level1 x6level1 x7level1 x8level1 x9level1 x10level1                                      
x11level1 x12level1 x13level1 x14level1 x15level1 x16level1 x17level1                                                           
x18level1 x19level1 x20level1 x21level1 x22level1 x23level1 x24level1 x25level1 x26level1                                       
x27level1 x28level1 x29level1 x30level1 x31level1 x32level1 x33level1 x34level1                                                 
x35level1 x36level1 x37level1 x38level1 x39level1 x40level1 x41level1 x42level1 x43level1                                       
x44level1 x45level1 x46level1 x47level1 x48level1 x49level1 x50level1 x51level1                                                 
x52level1 x53level1 x54level1 x55level1 x56level1 x57level1 x58level1 x59level1 x60level1                                       
x61level1 x62level1 x63level1 x64level1 x65level1 x66level1 x67level1 x68level1                                                 
x69level1 x70level1 x71level1 x72level1 x73level1 x74level1 x75level1 x76level1 x77level1                                       
x78level1 x79level1 x80level1 x81level1 x82level1 x83level1 x84level1 x85level1                                                 
x86level1 x87level1 x88level1 x89level1 x90level1 x91level1 x92level1 x93level1 x94level1                                       
x95level1 x96level1 x97level1 x98level1 x99level1 x100level1                                                                    
....                                                                                                                            
                                                                                                                                
%put &=namelist50;                                                                                                              
                                                                                                                                
408   %put &=namelist50;                                                                                                        
NAMELIST50=x1level50 x2level50 x3level50 x4level50 x5level50 x6level50 x7level50 x8level50                                      
x9level50 x10level50 x11level50 x12level50 x13level50 x14level50 x15level50                                                     
x16level50 x17level50 x18level50 x19level50 x20level50 x21level50 x22level50 x23level50                                         
x24level50 x25level50 x26level50 x27level50 x28level50 x29level50 x30level50                                                    
x31level50 x32level50 x33level50 x34level50 x35level50 x36level50 x37level50 x38level50                                         
x39level50 x40level50 x41level50 x42level50 x43level50 x44level50 x45level50                                                    
x46level50 x47level50 x48level50 x49level50 x50level50 x51level50 x52level50 x53level50                                         
x54level50 x55level50 x56level50 x57level50 x58level50 x59level50 x60level50                                                    
x61level50 x62level50 x63level50 x64level50 x65level50 x66level50 x67level50 x68level50                                         
x69level50 x70level50 x71level50 x72level50 x73level50 x74level50 x75level50                                                    
x76level50 x77level50 x78level50 x79level50 x80level50 x81level50 x82level50 x83level50                                         
x84level50 x85level50 x86level50 x87level50 x88level50 x89level50 x90level50                                                    
x91level50 x92level50 x93level50 x94level50 x95level50 x96level50 x97level50 x98level50                                         
x99level50 x100level50                                                                                                          
                                                                                                                                
                                                                                                                                
*          _       _   _                                                                                                        
 ___  ___ | |_   _| |_(_) ___  _ __                                                                                             
/ __|/ _ \| | | | | __| |/ _ \| '_ \                                                                                            
\__ \ (_) | | |_| | |_| | (_) | | | |                                                                                           
|___/\___/|_|\__,_|\__|_|\___/|_| |_|                                                                                           
                                                                                                                                
;                                                                                                                               
                                                                                                                                
data log;                                                                                                                       
                                                                                                                                
  do idx=1 to 5 ;                                                                                                               
                                                                                                                                
    call symputx('idx',idx);                                                                                                    
                                                                                                                                
    rc=dosubl('                                                                                                                 
                                                                                                                                
       /* %let idx=50; */                                                                                                       
                                                                                                                                
       proc sql noprint;                                                                                                        
         select                                                                                                                 
               nam                                                                                                              
         into                                                                                                                   
               :namelist&idx.                                                                                                   
               separated by " "                                                                                                 
         from                                                                                                                   
               have                                                                                                             
         where                                                                                                                  
               nam like "x%"||"level&idx."                                                                                      
                                                                                                                                
       ;quit;                                                                                                                   
       %let cc=&sqlobs;                                                                                                         
    ');                                                                                                                         
    if symgetn("cc") ne 0 then status=cats("macro variabe namelist with x",put(idx,3.),"level 1-50 created");                   
    else status=cats("macro variabe namelist with x",put(idx,3.),"level 1-50 failed");                                          
    drop rc idx res;                                                                                                            
    output;                                                                                                                     
                                                                                                                                
  end;                                                                                                                          
                                                                                                                                
  stop;                                                                                                                         
                                                                                                                                
run;quit;                                                                                                                       
                                                                                                                                
%put &=namelist1;                                                                                                               
                                                                                                                                
NAMELIST1=                                                                                                                      
x1level1 x2level1 x3level1 x4level1 x5level1 x6level1 x7level1 x8level1 x9level1 x10level1                                      
x11level1 x12level1 x13level1 x14level1 x15level1 x16level1 x17level1                                                           
x18level1 x19level1 x20level1 x21level1 x22level1 x23level1 x24level1 x25level1 x26level1                                       
x27level1 x28level1 x29level1 x30level1 x31level1 x32level1 x33level1 x34level1                                                 
x35level1 x36level1 x37level1 x38level1 x39level1 x40level1 x41level1 x42level1 x43level1                                       
x44level1 x45level1 x46level1 x47level1 x48level1 x49level1 x50level1 x51level1                                                 
x52level1 x53level1 x54level1 x55level1 x56level1 x57level1 x58level1 x59level1 x60level1                                       
x61level1 x62level1 x63level1 x64level1 x65level1 x66level1 x67level1 x68level1                                                 
x69level1 x70level1 x71level1 x72level1 x73level1 x74level1 x75level1 x76level1 x77level1                                       
x78level1 x79level1 x80level1 x81level1 x82level1 x83level1 x84level1 x85level1                                                 
x86level1 x87level1 x88level1 x89level1 x90level1 x91level1 x92level1 x93level1 x94level1                                       
x95level1 x96level1 x97level1 x98level1 x99level1 x100level1                                                                    
....                                                                                                                            
                                                                                                                                
%put &=namelist50;                                                                                                              
                                                                                                                                
408   %put &=namelist50;                                                                                                        
NAMELIST50=x1level50 x2level50 x3level50 x4level50 x5level50 x6level50 x7level50 x8level50                                      
x9level50 x10level50 x11level50 x12level50 x13level50 x14level50 x15level50                                                     
x16level50 x17level50 x18level50 x19level50 x20level50 x21level50 x22level50 x23level50                                         
x24level50 x25level50 x26level50 x27level50 x28level50 x29level50 x30level50                                                    
x31level50 x32level50 x33level50 x34level50 x35level50 x36level50 x37level50 x38level50                                         
x39level50 x40level50 x41level50 x42level50 x43level50 x44level50 x45level50                                                    
x46level50 x47level50 x48level50 x49level50 x50level50 x51level50 x52level50 x53level50                                         
x54level50 x55level50 x56level50 x57level50 x58level50 x59level50 x60level50                                                    
x61level50 x62level50 x63level50 x64level50 x65level50 x66level50 x67level50 x68level50                                         
x69level50 x70level50 x71level50 x72level50 x73level50 x74level50 x75level50                                                    
x76level50 x77level50 x78level50 x79level50 x80level50 x81level50 x82level50 x83level50                                         
x84level50 x85level50 x86level50 x87level50 x88level50 x89level50 x90level50                                                    
x91level50 x92level50 x93level50 x94level50 x95level50 x96level50 x97level50 x98level50                                         
x99level50 x100level50                                                                                                          
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
