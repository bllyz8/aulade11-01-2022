<html>

<head>
 <title>mediaAlunos</title>
<style> 

table
{
  border-color: black;
  border-width: 1px;
  border-style: solid;
  width: 1116px;
}

td
{
  border-style: solid;
  border-color: black;
  border-width: 1px;
  font-size: 20px;
  text-align: center;
  font-family: Arial, Helvetica, sans-serif;
}

.Esquerda
{
  border-style: solid;
  border-color: black;
  border-width: 1px;
  width: 196px;
}

.Direita
{
  border-style: solid;
  border-color: black;
  border-width: 1px;
  width: 450px;
  height: 18px;
}

.llll
{
  border-style: solid;
  border-color: white;
  border-width: 1px;
  height: 18px;
  width: 196px;
}


.Aprovado
{
  border-style: solid;
  border-color: black;
  border-width: 1px;
  width: 225px;
  height: 18px;
}

.indicativo
{
  border-style: solid;
  border-color: black;
  border-width: 1px;
  width: 266px;
}

.numA
{
  border-style: solid;
  border-color: black;
  border-width: 1px;
  width: 196px;
  height: 58px;
}

.pts
{
  border-style: solid;
  border-color: black;
  border-width: 1px;
  width: 225px;
  height: 58px;
}

img
{
  height: 58px;
}



</style>
</head>

<body>
<center>
<script language="javascript">

var médiasFinais, somaMédias, média, aprovados, percentualAprov, alunos, reprovados;

somaMédias = 0;
aprovados = 0;
alunos = 2;

médiasFinais = new Array(4);

  for (var ind = 0; ind < alunos; ind++) 
  {
    médiasFinais[ind] = parseFloat(window.prompt("Digite as médias finais : "));
  }

  for (ind = 0; ind < alunos; ind++) 
  {
    somaMédias += médiasFinais[ind];
    média = somaMédias / alunos;

    if (médiasFinais[ind] >= 6) 
    {
      aprovados++;
    }

  }

  percentualAprov = aprovados * 100 / alunos;

  document.write("<table>");
  document.write("<tr><td colspan='3' class='Esquerda'>Média global da turma:</td> <td class='Direita'>" + média +"</td></tr>");
  document.write("<tr><td colspan='3' class='Esquerda'>Quantidade de alunos acima da média:</td> <td class='Direita'>" + aprovados + "</td></tr>");
  document.write("<tr><td colspan='3' class='Esquerda'>Percentual de aprovados (média >= 6,0):</td> <td class='Direita'>" + percentualAprov+ "% </td></tr>");
  document.write("<tr><td class='llll'></td></tr>");
  document.write("<tr><td class='Esquerda'>Nº do Aluno</td><td class='Esquerda'>Média Final</td>");
  document.write("<td class='indicativo'>Indicativo Visual</td><td class='Aprovado'>Pontos para atingir a aprovação</td></tr>");

  for (ind = 0; ind < alunos; ind++) 
  {
    document.write("<tr><td class='numA'>" + (ind + 1) + "</td><td class='numA'>" + médiasFinais[ind] + "</td>");
    
    if (aprovados) 
    {
      document.write("<td> <img src='POSITIVO.png'width='90'height='100'> </td>" )
    }

  
    else 
    {
      document.write("<td> <img src='NEGATIVO.png'width='90'height='100'> </td>" )
    }

    if (médiasFinais[ind] < 6) 
    {
      reprovados = 6 - médiasFinais[ind];
      document.write("<td class='pontos'>" + reprovados + "</td>");
    }

    else
    {
      document.write("<td class='pontos'> --- </td>");
    }
    
  }

  document.write("</table>");


</script>
  </form>
</center>
</body>
</html>
