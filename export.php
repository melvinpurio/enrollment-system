<?PHP
	$s="jonas";
		session_start(); //to use any session that has ben set
	if(!isset($_SESSION["username"]))//if no session, the user will be directed to index.php
{
	header("location: ../Index.php");
}	
	require("fpdf/fpdf.php");
	$pdf=new FPDF();
	
	$pdf->AddPage();
	$pdf->Set Title('Export');
	
	$pdf->SetFont('Courier','',34);
	$pdf->Cell(40,45,$s,1,1,'R');
	$pdf->Ln(30);
	$pdf->Cell(0,7,'Lucban, Quezon',1,1,'C');
	$pdf->Ln(5);
	
	
	
	$pdf->Output();

?>