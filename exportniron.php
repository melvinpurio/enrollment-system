<?PHP
session_start(); //to use any session that has ben set
	if(!isset($_SESSION["username"]))//if no session, the user will be directed to index.php
{
	header("location: ../Index.php");
}	
	require("fpdf/fpdf.php");
	$pdf=new FPDF();
	
	$pdf->AddPage();
	$pdf->SetTitle('Export');
	$pdf->SetFont('Arial','','8');
	$pdf->Cell(17,10,'Student ID:',1,0);
	$pdf->Cell(143,10,'',1,0);
	$pdf->Cell(30,10,'',1,1,'R');
	
	$pdf->Image('slsu.png',45,20,20,20);
	$pdf->SetFont('Arial','',14);	
	$pdf->Cell(0,7,'Southern Luzon State University',1,1,'C');
	$pdf->SetFont('Arial','B',14);
	$pdf->Cell(0,7,'College of Engineering',1,1,'C');
	$pdf->SetFont('Arial','',14);
	$pdf->Cell(0,7,'Lucban, Quezon',1,1,'C');
	$pdf->ln(5);
	
	
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(15,10,'Name: ',1,0,'L');
	$pdf->SetFont('Arial','',12);
	$pdf->Cell(175,10,'',1,1,'L');
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(30,10,'Course/Year: ',1,0,'L');
	$pdf->SetFont('Arial','',12);
	$pdf->Cell(160,10,'BSCpE-III',1,1,'L');
	$pdf->Ln(10);

	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(30,10,'DESCRIPTION',1,0,'C');
	$pdf->Cell(18,10,'PRICE',1,0,'C');
	$pdf->Cell(25,10,'YEAR INFO',1,0,'C');
	$pdf->Cell(28,10,'SEMESTER',1,0,'C');
	$pdf->Cell(28,10,'DUE DATE',1,0,'C');
	$pdf->Cell(35,10,'SCHOOL YEAR',1,0,'C');
	$pdf->Cell(28,10,'STATUS',1,1,'C');

	
	
	
	
	$pdf->Output();
?>