using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Atendente
{
    private int _id;
    private string _nome;
    private string _senha;
    private string _email;

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

    public string Nome
    {
        get
        {
            return _nome;
        }

        set
        {
            _nome = value;
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
}