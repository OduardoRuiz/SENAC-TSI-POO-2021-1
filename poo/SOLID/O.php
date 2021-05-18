<?php

class Frete
{

    private $empresa;

    public function __construct(string $empresa)
    {

        $this->empresa = $empresa;
    }

    public function calcular()
    {


        if ($this->empresa == 'Correios') {

            $logistica = new Correios;

            //Lógica
        } elseif ($this->empresa == 'TotalExpress') {
            //Lógica
        } elseif ($this->empresa == 'DHL') {
            //Lógica
        } else {
            return false;
        }
    }
}


interface EmpresaDeLogistica
{

    public function setPeso();
    public function setDestino();
    public function setOrigem();
    public function setTamanho();
    public function calcular();
}

class Correios implements EmpresaDeLogistica
{

    // Lógica
}

class TotalExpress implements EmpresaDeLogistica
{

    // Lógica
}

class DHL implements EmpresaDeLogistica
{

    // Lógica
}

class Frete
{

    private $empresa;

    public function __construct(EmpresaDeLogistica $empresa)
    {
        $this->empresa = $empresa;
    }

    public function calcular()
    {
    }
}


class Negativacao
{

    private $devedor;

    public function __construct(Devedor $devedor)
    {
        $this->devedor = $devedor;
    }

    public function enviar(string $orgaoNegativador)
    {


        if ($orgaoNegativador == 'Serasa') {
            //Lógica 
        } elseif ($orgaoNegativador == 'SPC Brasil') {
            //Lógica
        } else {
            return 'Erro, órgão negativador não suportado';
        }
    }
}


interface OrgaoNegativador
{

    public function enviarRemessaInclusao();
    public function enviarRemessaExclusao();
    public function receberRetorno();
}

class Serasa implements OrgaoNegativador
{

    public function enviarRemessaInclusao()
    {
        //Lógica
    }
}

class SpcBrasil implements OrgaoNegativador
{

    public function enviarRemessaInclusao()
    {
        //Lógica
    }
}

class BoaVista implements OrgaoNegativador
{

    public function enviarRemessaInclusao()
    {
        //Lógica
    }
}

class Negativacao
{

    private $devedor;

    public function __construct(Devedor $devedor)
    {
        $this->devedor = $devedor;
    }

    public function enviar(OrgaoNegativador $orgao)
    {
        //Lógica
    }
}
