<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <all_tags>
		<footerField1><xsl:value-of select="all_tags/footerField1"/></footerField1>
		<footerField2><xsl:value-of select="all_tags/footerField2"/></footerField2>
		<footerCopyrightYear><xsl:value-of select="all_tags/footerCopyrightYear"/></footerCopyrightYear>
    	
      <xsl:for-each select="//contractnum">
      	<xsl:sort data-type="number" order="ascending" select="count(//tag[ContractNum=current()])"/>
      	
      	<xsl:variable name="tmpContract" select="."/>
      	<xsl:variable name="opt2" select="sum(//tag[ContractNum=$tmpContract]/Opt2Price)"/>
      	<xsl:variable name="opt3" select="sum(//tag[ContractNum=$tmpContract]/Opt3ICPrice) + sum(//tag[ContractNum=$tmpContract]/Opt3ACPrice)"/>
      	<xsl:variable name="opt1" select="sum(//tag[ContractNum=$tmpContract]/Opt1Price)"/>
        <contract number="{$tmpContract}" opt2total="{$opt2}" opt3total="{$opt3}" opt1total="{$opt1}" count="{count(//tag[ContractNum=$tmpContract])}">
        	<xsl:for-each select="//tag[ContractNum=$tmpContract]">
	<tag>
		<SoldToNum><xsl:value-of select="SoldToNum"/></SoldToNum>
		<SoldToName><xsl:value-of select="SoldToName"/></SoldToName>
		<ShipToNum><xsl:value-of select="ShipToNum"/></ShipToNum>
		<BillToNum><xsl:value-of select="BillToNum"/></BillToNum>
		<PayerNum><xsl:value-of select="PayerNum"/></PayerNum>
		<ContractNum><xsl:value-of select="ContractNum"/></ContractNum>
		<ItemNum><xsl:value-of select="ItemNum"/></ItemNum>
		<MaterialNum><xsl:value-of select="MaterialNum"/></MaterialNum>
		<MaterialDesc><xsl:value-of select="MaterialDesc"/></MaterialDesc>
		<StartDate><xsl:value-of select="StartDate"/></StartDate>
		<EndDate><xsl:value-of select="EndDate"/></EndDate>
		<Media><xsl:value-of select="Media"/></Media>
		<OnlinePlatform><xsl:value-of select="OnlinePlatform"/></OnlinePlatform>
		<Quantity><xsl:value-of select="Quantity"/></Quantity>
		<HighLevelItem><xsl:value-of select="HighLevelItem"/></HighLevelItem>
		<InventoryDTNCode><xsl:value-of select="InventoryDTNCode"/></InventoryDTNCode>
		<RenewalTypeCode><xsl:value-of select="RenewalTypeCode"/></RenewalTypeCode>
		<RenewalTypeDesc><xsl:value-of select="RenewalTypeDesc"/></RenewalTypeDesc>
		<AccessType><xsl:value-of select="AccessType"/></AccessType>
		<AuthType><xsl:value-of select="AuthType"/></AuthType>
		<IDtoToBeIssued><xsl:value-of select="IDtoToBeIssued"/></IDtoToBeIssued>
		<MaxNumOfUsers><xsl:value-of select="MaxNumOfUsers"/></MaxNumOfUsers>
		<ConcurrentUsers><xsl:value-of select="ConcurrentUsers"/></ConcurrentUsers>
		<InvoiceNum><xsl:value-of select="InvoiceNum"/></InvoiceNum>
		<NetPriceForItem><xsl:value-of select="NetPriceForItem"/></NetPriceForItem>
		<DetailMap><xsl:value-of select="DetailMap"/></DetailMap>
		<FinalMaterial><xsl:value-of select="FinalMaterial"/></FinalMaterial>
		<FinalMaterialDesc><xsl:value-of select="FinalMaterialDesc"/></FinalMaterialDesc>
		<DisplayDesc><xsl:value-of select="DisplayDesc"/></DisplayDesc>
		<Opt1Materal><xsl:value-of select="Opt1Materal"/></Opt1Materal>
		<Opt1Price><xsl:value-of select="Opt1Price"/></Opt1Price>
		<Opt1Flag><xsl:value-of select="Opt1Flag"/></Opt1Flag>
		<Opt2Material><xsl:value-of select="Opt2Material"/></Opt2Material>
		<Opt2Price><xsl:value-of select="Opt2Price"/></Opt2Price>
		<Opt2ICFlag><xsl:value-of select="Opt2ICFlag"/></Opt2ICFlag>
		<Opt2ACFlag><xsl:value-of select="Opt2ACFlag"/></Opt2ACFlag>
		<Opt3ICMaterial><xsl:value-of select="Opt3ICMaterial"/></Opt3ICMaterial>
		<Opt3ICPrice><xsl:value-of select="Opt3ICPrice"/></Opt3ICPrice>
		<Opt3ICFlag><xsl:value-of select="Opt3ICFlag"/></Opt3ICFlag>
		<Opt3ACMaterial><xsl:value-of select="Opt3ACMaterial"/></Opt3ACMaterial>
		<Opt3ACPrice><xsl:value-of select="Opt3ACPrice"/></Opt3ACPrice>
		<Opt3ACFlag><xsl:value-of select="Opt3ACFlag"/></Opt3ACFlag>
		<Enclude_vs_Exclude><xsl:value-of select="Enclude"/></Enclude_vs_Exclude>
		<ExcludeReason><xsl:value-of select="ExcludeReason"/></ExcludeReason>
		<SingleMultipleContact><xsl:value-of select="SingleMultipleContact"/></SingleMultipleContact>
		<DateOnMailPiece><xsl:value-of select="DateOnMailPiece"/></DateOnMailPiece>
		<ShipToFirstName><xsl:value-of select="ShipToFirstName"/></ShipToFirstName>
		<ShipToLastName><xsl:value-of select="ShipToLastName"/></ShipToLastName>
		<ShipToAddress><xsl:value-of select="ShipToAddress"/></ShipToAddress>
		<ShipToAddress2><xsl:value-of select="ShipToAddress2"/></ShipToAddress2>
		<ShipToCity><xsl:value-of select="ShipToCity"/></ShipToCity>
		<ShipToState><xsl:value-of select="ShipToState"/></ShipToState>
		<ShipToZip><xsl:value-of select="ShipToZip"/></ShipToZip>
		<ShipToEMAddress><xsl:value-of select="ShipToEMAddress"/></ShipToEMAddress>
		<RepName><xsl:value-of select="RepName"/></RepName>
		<RepPhone><xsl:value-of select="RepPhone"/></RepPhone>
		<RepEMAddress><xsl:value-of select="RepEMAddress"/></RepEMAddress>
		<RepDivision><xsl:value-of select="RepDivision"/></RepDivision>
	</tag>
	
					</xsl:for-each>










        </contract>
      </xsl:for-each>
    </all_tags>
  </xsl:template>
</xsl:stylesheet>
