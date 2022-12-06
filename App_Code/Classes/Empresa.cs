using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de Empresa
/// </summary>
public class Empresa
{
    private int _id;
    private string _razao;
    private string _senha;
    private string _email;
    private string _fantasia;
    private string _responsavel; 
    private string _cnpj;
    private string _celular;

    public int Id
    {
        get
        {
            return _id;
        }

        set
        {
            _id = value;
        }
    }

    public string Razao
    {
        get
        {
            return _razao;
        }

        set
        {
            _razao = value;
        }
    }

    public string Senha
    {
        get
        {
            return _senha;
        }

        set
        {
            _senha = value;
        }
    }

    public string Email
    {
        get
        {
            return _email;
        }

        set
        {
            _email = value;
        }
    }

    public string Fantasia
    {
        get
        {
            return _fantasia;
        }

        set
        {
            _fantasia = value;
        }
    }

    public string Responsavel
    {
        get
        {
            return _responsavel;
        }

        set
        {
            _responsavel = value;
        }
    }

    public string Cnpj
    {
        get
        {
            return _cnpj;
        }

        set
        {
            _cnpj = value;
        }
    }

    public string Celular
    {
        get
        {
            return _celular;
        }

        set
        {
            _celular = value;
        }
    }
}