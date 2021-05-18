<?php
//Single Responsability


class Usuario
{

    private $nome;

    public function setNome()
    {
    }
    public function getNome()
    {
    }
}

class Email
{

    public function enviarEmail()
    {
    }
}

class ExportarDados
{
}

class ExportarDadosPlanilhas extends ExportarDados
{
    public function exportarParaPlanilha()
    {
    }
}

class Relatorio
{
    private $dados;
    public function setDados(array $dados)
    {
    }
}

class ExportarDadosPdf extends ExportarDados
{
    public function exportarParaPdf()
    {
    }
}
class ExportarDadosCsv extends ExportarDados
{

    public function exportarParaCsv()
    {
    }
}
//------------------------
//exemplo 3



class Post
{
    private $titulo;

    public function setTitulo(string $titulo)
    {
    }
}

class URL
{
    public function gerarUrlAmivavel()
    {
    }
}

class Busca
{
}

class BuscaPorSemelhanca extends Busca
{

    public function buscarPostSemelhante()
    {
    }
}
