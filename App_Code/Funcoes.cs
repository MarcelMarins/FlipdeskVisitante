using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

public static class Funcoes
{
    public static string HashTexto(string texto)
    {
        HashAlgorithm hashAlgo = HashAlgorithm.Create("SHA-512");
        byte[] hash = hashAlgo.ComputeHash(Encoding.UTF8.GetBytes(texto));
        return Convert.ToBase64String(hash);
    }
}