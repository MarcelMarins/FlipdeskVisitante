using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cadastro_Empresa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        Empresa emp = new Empresa();
        emp.Cnpj = txtCnpj.Text;
        emp.Celular = txtCelular.Text;
        emp.Responsavel = txtNome.Text;
        emp.Razao = txtRazao.Text;
        emp.Fantasia = txtFantasia.Text;
        emp.Email = txtEmail.Text;
        emp.Senha = Funcoes.HashTexto(txtSenha.Text);

        if (EmpresaBD.NovoCadastro(emp) == 0)
            Page.ClientScript.RegisterStartupScript(GetType(), "script", "<script> alert('Cadastro Realizado Com Sucesso!') </script>", false);
        else
            Page.ClientScript.RegisterStartupScript(GetType(), "script", "<script> alert('Falhou') </script>", false);
    }
}