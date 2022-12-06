using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de AtendenteBD
/// </summary>
public class AtendenteBD
{
    public static int NovoAtendente(Atendente ate)
    {
        try
        {
            IDbConnection dbConnection;
            IDbCommand dbCommand;
            string sql = "insert into atendente values (0, ?nome,?email,'',?senha); ";
            dbConnection = MapeamentoBD.Conexao();
            dbCommand = MapeamentoBD.Comando(sql, dbConnection);
            dbCommand.Parameters.Add(MapeamentoBD.Parametro("?nome", ate.Nome));
            dbCommand.Parameters.Add(MapeamentoBD.Parametro("?email", ate.Email));
            dbCommand.Parameters.Add(MapeamentoBD.Parametro("?senha", ate.Senha));
            dbCommand.ExecuteNonQuery();
            dbConnection.Close();
            dbCommand.Dispose();
            dbConnection.Dispose();
            return 0;
        }
        catch (Exception e)
        {
            return -2;
        }
        return 0;
    }

    public static Atendente Validar(string email, string senha)
    {
        Atendente ate = null;
        try
        {
            IDbConnection objConexao;
            IDbCommand objComando;
            IDataReader objLeitor;
            objConexao = MapeamentoBD.Conexao();
            string sql = @"select * from atendente where ate_email = ?email and ate_senha = ?senha;";
            objComando = MapeamentoBD.Comando(sql, objConexao);
            objComando.Parameters.Add(MapeamentoBD.Parametro("?email", email));
            objComando.Parameters.Add(MapeamentoBD.Parametro("?senha", senha));
            objLeitor = objComando.ExecuteReader();
            while (objLeitor.Read())
            {
                ate = new Atendente();
                ate.Id = Convert.ToInt32(objLeitor["ate_id"]);
                ate.Nome = objLeitor["ate_nome"].ToString();
                ate.Email = objLeitor["ate_email"].ToString();
                ate.Senha = objLeitor["ate_senha"].ToString();
            }
            objLeitor.Close();
            objConexao.Close();
            objConexao.Dispose();
            objComando.Dispose();
            return ate;
        }
        catch (Exception ex)
        {
            return ate;
        }
    }
}