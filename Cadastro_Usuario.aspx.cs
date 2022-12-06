using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cadastro_Usuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        Atendente ate = new Atendente();
        ate.Nome = txtNome.Text;
        ate.Email = txtEmail.Text;
        ate.Senha = Funcoes.HashTexto(txtSenha.Text);

        if (AtendenteBD.NovoAtendente(ate) == 0)
            Page.ClientScript.RegisterStartupScript(GetType(), "script", "<script> alert('Cadastro Realizado Com Sucesso!') </script>", false);
        else
            Page.ClientScript.RegisterStartupScript(GetType(), "script", "<script> alert('Falhou') </script>", false);
    }
}