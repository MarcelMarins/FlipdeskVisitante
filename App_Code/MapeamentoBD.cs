using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Configuration;

/// <summary>
/// Descrição resumida de MapeamentoBD
/// </summary>
public static class MapeamentoBD
{
  /// <summary>
  /// Metodo responsavel por abrir a conexão do BD
  /// chamando a string de conexao do webconfig
  /// </summary>
  /// <returns>Retorna o obj conexao já acessando
  /// o bd</returns>
    public static IDbConnection Conexao()
    {
        MySqlConnection objConexao = new MySqlConnection(ConfigurationManager.AppSettings["stringConexao"]);
        objConexao.Open();
        return objConexao;
    }

    public static IDbCommand Comando(string sql, IDbConnection conexao)
    {
        IDbCommand executarComando = conexao.CreateCommand();
        executarComando.CommandText = sql;
        return executarComando;
    }

    public static IDbDataAdapter Adapter(IDbCommand comando)
    {
        IDbDataAdapter adap = new MySqlDataAdapter();
        adap.SelectCommand = comando;
        return adap;
    }
    
    public static IDbDataParameter Parametro(string nomeParametro, object valor)
    {
        return new MySqlParameter(nomeParametro, valor);
    }
}