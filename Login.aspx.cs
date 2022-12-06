using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        Atendente ate = AtendenteBD.Validar(txtLogin.Text, Funcoes.HashTexto(txtSenha.Text));
        if (ate != null)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "script", "<script> alert('Login Realizado Com Sucesso!') </script>", false);
            Session["PESSOA_LOGADA"] = ate;
            Response.Redirect("Principal.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "script", "<script> alert('Usuário não encontrado.') </script>", false);
        }
    }
}