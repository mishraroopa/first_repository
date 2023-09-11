function append(value){
    document.getElementById("calci").value+= value;
    }
    function equal(){
     let result= eval(document.getElementById("calci").value);
     document.getElementById("calci").value =result;
  }
     function allclear(){
      document.getElementById("calci").value="";
  } 
