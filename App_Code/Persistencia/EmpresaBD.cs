using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de EmpresaBD
/// </summary>
public class EmpresaBD
{
    public static int NovoCadastro(Empresa emp)
    {
        try
        {
            IDbConnection dbConnection;
            IDbCommand dbCommand;
            string sql = "insert into empresa values (0, ?cnpj,?razao,?fantasia,'','',?responsavel,?email,?senha,?telefone); ";
            dbConnection = MapeamentoBD.Conexao();
            dbCommand = MapeamentoBD.Comando(sql, dbConnection);
            dbCommand.Parameters.Add(MapeamentoBD.Parametro("?cnpj", emp.Cnpj));
            dbCommand.Parameters.Add(MapeamentoBD.Parametro("?razao", emp.Razao));
            dbCommand.Parameters.Add(MapeamentoBD.Parametro("?fantasia", emp.Fantasia));
            dbCommand.Parameters.Add(MapeamentoBD.Parametro("?responsavel", emp.Responsavel));
            dbCommand.Parameters.Add(MapeamentoBD.Parametro("?email", emp.Email));
            dbCommand.Parameters.Add(MapeamentoBD.Parametro("?senha", emp.Senha));
            dbCommand.Parameters.Add(MapeamentoBD.Parametro("?telefone", emp.Celular));
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
}