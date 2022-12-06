using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Principal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["PESSOA_LOGADA"]!= null)
        {
            Atendente ate = (Atendente)Session["PESSOA_LOGADA"];
            id.Text = "ID do usuário logado: " + ate.Id;
            nome.Text = "Nome do Usuário: " + ate.Nome;
            email.Text = "E-Mail do Usuário: " + ate.Email;
            senhacrip.Text = "Senha Criptografada: " + ate.Senha;
        }
        else
        {
            Response.Redirect("Index.aspx");
        }
    }
}