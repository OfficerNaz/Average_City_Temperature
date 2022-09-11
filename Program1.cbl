       Identification Divison.
       program-id. CityTemp as "City Temp".
       Author. Naz Sassine.
       Installation. Desktop.
       Date-written. 2022-06-13.
       Date-compiled. 2022-06-13.
       Security. None.
       
       environment division.

       data division.
       working-storage section.
       01 City1 PIC A(8) value 'Montreal'.
       01 City2 PIC A(6) value 'Ottawa'.
       01 City3 PIC A(7) value 'Toronto'.
       01 City4 PIC A(8) value 'Kingston'.
       01 City5 PIC A(8) value 'Cornwall'.
       01 CityTemp1  PIC 99v9.
       01 CityTemp2  PIC 99v9.
       01 CityTemp3  PIC 99v9.
       01 CityTemp4  PIC 99v9.
       01 CityTemp5  PIC 99v9.
       01 sumOfAll PIC 99v9.
       01 averageTemp PIC 99v9.
       01 avTempMontreal  PIC 99v9.
       01 avTempOttawa PIC 99v9.
       01 avTempToronto PIC 99v9.
       01 avTempKingston PIC 99v9.
       01 avTempCornwall PIC 99v9.
       
         
       procedure division.
       AVERAGE Section.
      *Student Name: Naz Sassine   
      * Student Number: 040979531 
       DISPLAY-MESSAGE-MONTREAL. *> This fucntion is used to calcualate the tempurature for Montreal.
           Display 'ENTER the last 5 daily high temperatures for: ' 
           city1
           Display ''.
           PERFORM ADDING-TEMPERATURES
           COMPUTE  avTempMontreal = averageTemp
           display ''
           PERFORM DISPLAY-MESSAGE-OTTAWA.
          
       
       DISPLAY-MESSAGE-OTTAWA.   *> This fucntion is used to calcualate the tempurature for Ottawa.
           Display 'ENTER the last 5 daily high temperatures for: ' 
           city2
           Display ''.
           PERFORM ADDING-TEMPERATURES
           COMPUTE  avTempOttawa = averageTemp
           PERFORM DISPLAY-MESSAGE-TORONTO.
           
       DISPLAY-MESSAGE-TORONTO.  *> This fucntion is used to calcualate the tempurature for Toronto.
           Display 'ENTER the last 5 daily high temperatures for: ' 
           city3
           Display ''.
           PERFORM ADDING-TEMPERATURES
           COMPUTE  avTempToronto = averageTemp
           PERFORM DISPLAY-MESSAGE-KINSTON.
           
       DISPLAY-MESSAGE-KINSTON.  *> This fucntion is used to calcualate the tempurature for Kingston.
           Display 'ENTER the last 5 daily high temperatures for: ' 
           city4
           Display ''.
           PERFORM ADDING-TEMPERATURES
           COMPUTE  avTempKingston = averageTemp
           PERFORM DISPLAY-MESSAGE-CORNWALL.
           
       DISPLAY-MESSAGE-CORNWALL.  *> This fucntion is used to calcualatethe tempurature for Cornwall.  
           Display 'ENTER the last 5 daily high temperatures for: ' 
           city5
           Display ''.
           PERFORM ADDING-TEMPERATURES
           COMPUTE  avTempCornwall = averageTemp
           PERFORM BLANK-SCREEN.
           
       ADDING-TEMPERATURES.    *> This function takes care of taking the user's input and assigning them and calculates the average between 5 tempuratures.
                                                                         
           Display 'Temperatures (one decimal place only'
           Display 'Enter temperature #1 : '
           Accept CityTemp1
           Display 'Enter temperature #2 : '
           Accept CityTemp2
           Display 'Enter temperature #3 : '
           Accept CityTemp3
           Display 'Enter temperature #4 : '
           Accept CityTemp4
           Display 'Enter temperature #5 : '
           Accept CityTemp5
           compute sumOfAll = CityTemp1 + CityTemp2 + CityTemp3 + 
             CityTemp4 + CityTemp5
           compute averageTemp = sumOfAll/5.
           
       BLANK-SCREEN.    *> This function is used to clear the screan.
           
           DISPLAY SPACE UPON CRT
           Perform ALL-Display.
           
       ALL-DISPLAY.   *> This function is used to display all 
                      *>temperature averages for all cities depicted.
           
           Display 
           'here are all the temperature averages for all cities'
           display ''
           Display City1, ' ', City2,' ', City3, '  ',City4,
           ' ',City5
           Display avTempMontreal,'F',' ', avTempOttawa,'F', ' ', 
           avTempToronto,'F', ' ' ,avTempKingston,'F',' ' ,
           avTempCornwall,'F'
           perform END-PROGRAM.
             
       END-PROGRAM.   *> This function is used to end the program.

           stop run.
       end program CityTemp.
