<?php

class agence
{
    private $_nom ;
    private $_adresse ;
    private $_codePostal;
    private $_ville;
    private $_modeRestauration;

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
    public function setAdresse($sAdresse) 
    {
        return $this->_adresse = $sAdresse;
    }

    // Accesseur : renvoie la valeur d'un attribut  
    public function getAdresse() 
    {
        return $this->_adresse;
    }

    // Mutateur : définit/modifie la valeur passée en argument à l'attribut 
    public function setCodePostal($sCodePostal) 
    {
        return $this->_codePostal = $sCodePostal;
    }

    // Accesseur : renvoie la valeur d'un attribut  
    public function getCodePostal() 
    {
        return $this->_codePostal;
    }

    // Mutateur : définit/modifie la valeur passée en argument à l'attribut 
    public function setVille($sVille) 
    {
        return $this->_ville = $sVille;
    }

    // Accesseur : renvoie la valeur d'un attribut  
    public function getVille() 
    {
        return $this->_ville;
    }

   // Mutateur : définit/modifie la valeur passée en argument à l'attribut 
   public function setModeRestauration($sModeRestauration) 
   {
       return $this->_modeRestauration = $sModeRestauration;
   }

   // Accesseur : renvoie la valeur d'un attribut  
   public function getModeRestauration() 
   {
       return $this->_modeRestauration;
   }

    
}