<?php

class Employe
{
    Private $_nom;
    Private $_prenom;
    Private $_dateEmbauche ;
    Private $_fonction;
    Private $_salaire;
    Private $_service;
    Private $_agence;
    // private $_modeRestauration;
    // public $_anciennete;
    public static $nbrEmploye = 0;
  
    

    // private $_prime;

    // Mutateur : définit/modifie la valeur passée en argument à l'attribut 
    public function setNom($sNom) 
    {
        return $this->_nom = $sNom;
    }

    // Accesseur : renvoie la valeur d'un attribut  
    public function getNom() 
    {
        return $this->_nom;
    }

    // Mutateur : définit/modifie la valeur passée en argument à l'attribut 
    public function setPrenom($sPrenom) 
    {
    return $this->_prenom = $sPrenom;
    }

    // Accesseur : renvoie la valeur d'un attribut  
    public function getPrenom() 
    {
        return $this->_prenom;
    }

    // Mutateur : définit/modifie la valeur passée en argument à l'attribut 
    
    public function setDateEmbauche($sDateEmbauche) 
    {
        // $_dateEmbauchestock = explode("/", $sDateEmbauche);
        // $this->_dateEmbauche = date_create($_dateEmbauchestock[2]."-".$_dateEmbauchestock[1]."-".$_dateEmbauchestock[0]);
         
        
        $this->_dateEmbauche = Datetime::createFromFormat("d/m/Y",$sDateEmbauche);
        // var_dump($this->_dateEmbauche);
        
    }

    // Accesseur : renvoie la valeur d'un attribut  
    public function getDateEmbauche() 
    {
        // $_dateEmbauchestock = explode("-",  $this->_dateEmbauche->format('Y-m-d'));
        // $this->_dateEmbauche = $_dateEmbauchestock[2]."/".$_dateEmbauchestock[1]."/".$_dateEmbauchestock[0];

        // return DateTime::createFromFormat("d/m/Y",$this->_dateEmbauche);
         
        // var_dump($this->_dateEmbauche);
        return $this->_dateEmbauche;  
    }

    // Mutateur : définit/modifie la valeur passée en argument à l'attribut 
    public function setFonction($sFonction) 
    {
    return $this->_fonction = $sFonction;
    }

    // Accesseur : renvoie la valeur d'un attribut  
    public function getFonction() 
    {
        return $this->_fonction;
    }

    // Mutateur : définit/modifie la valeur passée en argument à l'attribut 
    public function setSalaire($sSalaire) 
    {
    return $this->_salaire = $sSalaire;
    }

    // Accesseur : renvoie la valeur d'un attribut  
    public function getSalaire() 
    {
        return $this->_salaire;
    }

    // Mutateur : définit/modifie la valeur passée en argument à l'attribut 
    public function setService($sService) 
    {
    return $this->_service = $sService;
    }

    // Accesseur : renvoie la valeur d'un attribut  
    public function getService() 
    {
        return $this->_service;
    }


        

   public function getAnciennete()
   {
        // $datetime1 = $this->_dateEmbauche;
        // $datetime2 = date("Y-m-d");
        // $interval = date_diff(date_create($datetime1->format('Y-m-d')), date_create($datetime2));
        // return (int)$interval->format('%y');
        $datetime1 = $this->getDateEmbauche();
        $interval = date_diff(($datetime1), new DateTime());
        return(int)$interval->format('%y,%m,%d');
   }

   
   public function calculerPrime ()
   {    
        $primeSalaire=(int)(($this->_salaire*0.05)+(($this->_salaire*$this->getAnciennete())*0.02));
        return $primeSalaire;
   }

   // Mutateur : définit/modifie la valeur passée en argument à l'attribut 
   public function setAgence($sAgence) 
   {
       return $this->_agence = $sAgence;
   }

   // Accesseur : renvoie la valeur d'un attribut  
   public function getAgence() 
   {
       return $this->_agence;
   }

   // Mutateur : définit/modifie la valeur passée en argument à l'attribut 
   public function isChequeVacance() 
   {
    //    $interval= "";
    //     $this->getAnciennete($interval)>=1;
    //     $bol = boolval($interval);
      
      if ($bol = "true")
      {
          
          echo "a le droit d'un chèque cadeau ";
      }

        
   }

   

     
   


  
   function __construct() 
   {
    self::$nbrEmploye ++ ;
    
    }



}



?>