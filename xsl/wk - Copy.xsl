<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:svg="http://www.w3.org/2000/svg" version="1.0">
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="order" page-width="8.5in" page-height="11in">
                    <!--  <fo:region-body border="thin solid silver" margin-top="0.3in" margin-bottom="0.2in" margin-left="1.175in" margin-right="1in"/>  -->
                    <fo:region-body margin-top="0.3in" margin-bottom="0.2in" margin-left="1.175in" margin-right="1in"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
					<xsl:for-each select="//contract">
            <fo:page-sequence master-reference="order" initial-page-number="1">
                <fo:flow flow-name="xsl-region-body">
                	<xsl:call-template name="page_one">
                		
                	</xsl:call-template>
                </fo:flow>
            </fo:page-sequence>
					</xsl:for-each>	
        </fo:root>
    </xsl:template>

<xsl:template name="page_one">
      <fo:block font-size="11pt" font-family="FiraSans-book">
      <!--  <fo:table border="0.1pt solid black">  -->
      <fo:table>
          <fo:table-column column-width="50%"/>
          <fo:table-column column-width="50%"/>
          <fo:table-body>
              <fo:table-row>
                  <fo:table-cell>
                      <fo:block margin-left="-0.625in" >
                          <fo:external-graphic src="url('C:\version_tags\run\test\WK_logo2400-2.jpg')"/>
                      </fo:block>
                  </fo:table-cell>
                  <fo:table-cell text-align="right">
                      <fo:block font="12pt FiraSans-book">
                      	Page <fo:page-number/>
                      </fo:block>
                  </fo:table-cell>
              </fo:table-row>
              <!-- Page 1 : row 1  -->
              <fo:table-row height="3in">
                  <fo:table-cell>
                      <fo:block margin-top="0.5in"><xsl:value-of select="tag[1]/DateOnMailPiece"/></fo:block>
                      <fo:block margin-top="0.378in"><xsl:value-of select="tag[1]/SoldToName"/></fo:block>
                      <fo:block><xsl:value-of select="tag[1]/ShipToFirstName"/>&#160;<xsl:value-of select="tag[1]/ShipToLastName"/> </fo:block>
                      <fo:block><xsl:value-of select="tag[1]/ShipToAddress"/></fo:block>
                      <fo:block><xsl:value-of select="tag[1]/ShipToAddress2"/></fo:block>
                      <fo:block><xsl:value-of select="tag[1]/ShipToCity"/>&#160;<xsl:value-of select="tag[1]/ShipToState"/>&#160;<xsl:value-of select="tag[1]/ShipToZip"/></fo:block>
                  </fo:table-cell>
                  <fo:table-cell margin-top="0.75in" text-align="right">
                      <fo:block font="10pt FiraSans-book">
                          <fo:block>CCH Incorporated</fo:block>
                          <fo:block>Order Management</fo:block>
                          <fo:block>2700 Lake Cook Road</fo:block>
                          <fo:block>Riverwoods, IL 60015-3867</fo:block>
                          <fo:block>Customer Support: 800-344-3734</fo:block>
                          <fo:block margin-top=".25in" 
                          	margin-left="0.60in"
                          	margin-right="0.0in"
                          	padding="0.1in" 
                          	text-align="center" 
                          	font-size="14pt" 
                          	font-family="FiraSans-bold" 
                          	color="white" 
                          	background="black">RENEWAL NOTICE</fo:block>
                      </fo:block>
                  </fo:table-cell>
              </fo:table-row>
              <!-- Page 1 : row 2  -->
              <fo:table-row height="3in">
                  <fo:table-cell  number-columns-spanned="2">
<!-- fold line 2 -->
                  	<fo:block margin-top="-0.7in">
											<fo:leader margin-left="-1in" leader-length="8.15in"
											             leader-pattern="rule"
											             alignment-baseline="middle"
											             rule-thickness="0.5pt" color="black"/>
										</fo:block>
                  	<fo:block>
                  		We hope you have been able to Search Less, Do More with <fo:inline font-family="FiraSans-bold">CCH® Answer<fo:inline font-family="FiraSans-bolditalic">Connect!</fo:inline></fo:inline>
                  	</fo:block>
                  	<fo:block>
										Make sure you and your team continue to have access by renewing today at PORTAL URL.
                  	</fo:block>
                  	<fo:block>
											Your user name is: <xsl:value-of select="tag[1]/ShipToEMAddress"/>
                  	</fo:block>
                    <fo:block margin-top=".15in" 
                    	margin-left="0.00in"
                    	margin-right="0.0in"
                    	padding="0.05in 0.25in" 
                    	font-size="14pt" 
                    	font-family="FiraSans-bold" 
                    	color="white" 
                    	background="black">RENEWAL OPTIONS:</fo:block>

						        <fo:table font="12pt FiraSans-bold" background="#ECEDEE">
						            <fo:table-column column-width="30%"/>
						            <fo:table-column column-width="70%"/>
						            <fo:table-body>
						                <fo:table-row line-height="0.3125in">
						                    <fo:table-cell>
																	<fo:block font-family="FiraSans-bolditalic"><fo:inline margin-left=".25in" font-family="Zapf Dingbats">✓</fo:inline> Best Value!</fo:block>
						                    </fo:table-cell>
						                    <fo:table-cell>
																	<fo:block>CCH® Answer<fo:inline font-family="FiraSans-bolditalic">Connect</fo:inline></fo:block>
						                    </fo:table-cell>
				                   	</fo:table-row>
						                <fo:table-row line-height="0.3125in">
						                    <fo:table-cell border-top="0.1pt solid #AFB1B4" >
						                    </fo:table-cell>
						                    <fo:table-cell border-top="0.1pt solid #AFB1B4" >
																	<fo:block>CCH® Answer<fo:inline font-family="FiraSans-bolditalic">Connect</fo:inline> AND CCH® IntelliConnect®</fo:block>
						                    </fo:table-cell>
				                   	</fo:table-row>
						                <fo:table-row line-height="0.3125in">
						                    <fo:table-cell border-top="0.1pt solid #AFB1B4" >
						                    </fo:table-cell>
						                    <fo:table-cell border-top="0.1pt solid #AFB1B4" >
																	<fo:block>CCH® IntelliConnect®</fo:block>
						                    </fo:table-cell>
				                   	</fo:table-row>
						            </fo:table-body>
						        </fo:table>
						        
						        <fo:block font-family="FiraSans-bold" margin-top=".25in">Renew today and avoid any interruption in your service.</fo:block>
						        <fo:block margin-top="0.02in">
						        	<fo:inline font-family="FiraSans-mediumitalic">Questions regarding this renewal or want to cancel?</fo:inline> Contact your solution consultant:<fo:block><xsl:value-of select="tag[1]/RepName"/>; <xsl:value-of select="tag[1]/RepPhone"/>, <xsl:value-of select="tag[1]/RepEMAddress"/></fo:block>
						        </fo:block>
						        <fo:block font="9pt FiraSans-italic" margin-top="0.2in" text-indent='-0.75em' start-indent='1em'>
						        	* Renewal must be completed by an authorized subscriber or user. It is up to the user to contact the subscriber for
permission to renew. This is not an invoice. Your subscription will not renew until payment is received online or
via customer support. Prices do not include sales tax or other fees including shipping.
						        </fo:block>

<!-- fold line 1 -->
                  	<fo:block>
											<fo:leader margin-left="-1in" leader-length="8.15in"
											             leader-pattern="dots"
											             alignment-baseline="middle"
											             rule-thickness="0.5pt" color="black"/>
										</fo:block>
										<fo:block font="6pt FiraSans-italic" text-align="center" >
											DETACH AND RETURN <fo:inline font-family="Zapf Dingbats">  ▲</fo:inline>
										</fo:block>

                  </fo:table-cell>
                 </fo:table-row>
              <!-- Page 1 : row 3  -->
                 <fo:table-row height="3in">
                 	<fo:table-cell>
                 		<fo:block font="6pt FiraSans-book">
                      <fo:block margin-left="-0.625in">
                        <fo:external-graphic content-height="75%" content-width="75%" src="url('C:\version_tags\run\test\WK_logo2400-2.jpg')"/>
                      </fo:block>
                      <fo:block>2700 Lake Cook Road</fo:block>
                      <fo:block>Riverwoods, IL 60015</fo:block>
                      <fo:block>800-344-3734</fo:block>

                      <fo:block font="12pt FiraSans-book" margin-top="1in">
                        <fo:block ><xsl:value-of select="tag[1]/SoldToName"/></fo:block>
                        <fo:block><xsl:value-of select="tag[1]/ShipToFirstName"/>&#160;<xsl:value-of select="tag[1]/ShipToLastName"/> </fo:block>
                        <fo:block><xsl:value-of select="tag[1]/ShipToAddress"/></fo:block>
                        <fo:block><xsl:value-of select="tag[1]/ShipToAddress2"/></fo:block>
                        <fo:block><xsl:value-of select="tag[1]/ShipToCity"/>&#160;<xsl:value-of select="tag[1]/ShipToState"/>&#160;<xsl:value-of select="tag[1]/ShipToZip"/></fo:block>
                      </fo:block>
<!-- fold line 3 -->
                 		</fo:block>
                 	</fo:table-cell>
                 	<fo:table-cell >
											<fo:block padding-left=".5in" margin-top=".25in" font="10pt FiraSans-bold">YES! Renew my subscription to:</fo:block>
											<fo:block margin-right="-0.35in" font-size="9pt">
								        <fo:table>
								            <fo:table-column column-width="10%"/>
								            <fo:table-column column-width="50%"/>
								            <fo:table-column column-width="30%"/>
								            <fo:table-body font-family="FiraSans-bold">
								                <fo:table-row background="#ECEDEE" line-height=".3125in">
								                    <fo:table-cell><fo:block line-height=".1in" margin-left=".1in" margin-top=".1in" height=".015in" width=".1in" border="0.5pt solid black">&#160;</fo:block></fo:table-cell>
								                    <fo:table-cell><fo:block>CCH Answer<fo:inline font-family="FiraSans-bolditalic">Connect!</fo:inline></fo:block></fo:table-cell>
								                    <fo:table-cell><fo:block><xsl:value-of select="format-number(@opt2total,'$###,###,###.00')"/></fo:block></fo:table-cell>
						                   </fo:table-row>
								                <fo:table-row background="#ECEDEE" line-height=".3125in">
								                    <fo:table-cell padding-top="0.1in" border-top="0.2pt solid #AFB1B4" border-bottom="0.2pt solid #AFB1B4">
								                    	<fo:block line-height=".1in" margin-left=".1in" margin-top=".1in" height=".015in" width=".1in" border="0.5pt solid black">&#160;</fo:block>
								                    </fo:table-cell>
								                    <fo:table-cell border-top="0.2pt solid #AFB1B4" border-bottom="0.2pt solid #AFB1B4">
								                    	<fo:block>CCH® Answer<fo:inline font-family="FiraSans-bolditalic">Connect</fo:inline></fo:block>
								                    	<fo:block margin-top="-0.15in">AND CCH® IntelliConnect®</fo:block>
								                    </fo:table-cell>
								                    <fo:table-cell padding-top="0.1in" border-top="0.2pt solid #AFB1B4" border-bottom="0.2pt solid #AFB1B4"><fo:block><xsl:value-of select="format-number(@opt3total,'$###,###,###.00')"/></fo:block></fo:table-cell>
						                   </fo:table-row>
								                <fo:table-row background="#ECEDEE" line-height=".3125in">
								                    <fo:table-cell><fo:block line-height=".1in" margin-left=".1in" margin-top=".1in" height=".015in" width=".1in" border="0.5pt solid black">&#160;</fo:block></fo:table-cell>
								                    <fo:table-cell><fo:block>CCH® IntelliConnect®</fo:block></fo:table-cell>
								                    <fo:table-cell><fo:block><xsl:value-of select="format-number(@opt1total,'$###,###,###.00')"/></fo:block></fo:table-cell>
						                   </fo:table-row>

<!--
								                <fo:table-row line-height=".5in">
								                    <fo:table-cell><fo:block line-height=".1in" margin-left=".1in" margin-top=".3in" height=".015in" width=".1in" border="0.5pt solid black">&#160;</fo:block></fo:table-cell>
								                    <fo:table-cell number-columns-spanned="2">
								                    	<fo:block margin-top=".2in" font="9pt FiraSans-italic">I agree to the terms of the Auto-Renewal program as listed on the back.</fo:block>
																		</fo:table-cell>
						                   </fo:table-row>
-->
						                </fo:table-body>
						            </fo:table>

												<!--
												<fo:block font-size="8pt" padding-left=".3in" padding-top=".1in" margin-top=".5in" border-top="1pt solid black">
													Signature &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
													&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
													&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
													<fo:inline text-align="right">Date</fo:inline>
												</fo:block>
												-->
											</fo:block> 	
											<fo:block margin-top=".25in">

									        <fo:table border="0.5pt solid black" >
									            <fo:table-column column-width="50%"/>
									            <fo:table-column column-width="50%"/>
									            <fo:table-body>
									                <fo:table-row text-align="center" line-height="0.3125in" font="8pt FiraSans-bold" >
									                    <fo:table-cell>
																				<fo:block>Account Number</fo:block>
																			</fo:table-cell>
									                    <fo:table-cell border-right="0.5pt solid black" border-left="0.5pt solid black">
																				<fo:block><xsl:value-of select="tag[1]/PayerNum"/></fo:block>
																			</fo:table-cell>
																	</fo:table-row>
									                <fo:table-row text-align="center" line-height="0.3125in" font="8pt FiraSans-bold" >
									                    <fo:table-cell>
																				<fo:block>Contract Number</fo:block>
																			</fo:table-cell>
									                    <fo:table-cell border-right="0.5pt solid black" border-left="0.5pt solid black">
																				<fo:block><xsl:value-of select="tag[1]/ContractNum"/></fo:block>
																			</fo:table-cell>
																	</fo:table-row>
									                <fo:table-row text-align="center" line-height="0.3125in" font="8pt FiraSans-bold" >
									                    <fo:table-cell>
																				<fo:block>Expiration Date</fo:block>
																			</fo:table-cell>
									                    <fo:table-cell border-right="0.5pt solid black" border-left="0.5pt solid black">
										                    <fo:block><xsl:value-of select="tag[1]/EndDate"/></fo:block>
																			</fo:table-cell>
																	</fo:table-row>
															</fo:table-body>
													</fo:table>

<!--
									        <fo:table border="0.5pt solid black" >
									            <fo:table-column column-width="33%"/>
									            <fo:table-column column-width="34%"/>
									            <fo:table-column column-width="33%"/>
									            <fo:table-body>
									                <fo:table-row text-align="center" line-height="0.3125in" font="8pt FiraSans-bold" >
									                    <fo:table-cell>
																				<fo:block>Account Number</fo:block>
																			</fo:table-cell>
									                    <fo:table-cell border-right="0.5pt solid black" border-left="0.5pt solid black">
																				<fo:block>Contract Number</fo:block>
																			</fo:table-cell>
									                    <fo:table-cell>
																				<fo:block>Expiration Date</fo:block>
																			</fo:table-cell>
																	</fo:table-row>
									                <fo:table-row text-align="center" line-height="0.3125in" font="8pt FiraSans-book" >
									                    <fo:table-cell>
																				<fo:block><xsl:value-of select="tag[1]/PayerNum"/></fo:block>
																			</fo:table-cell>
									                    <fo:table-cell border-right="0.5pt solid black" border-left="0.5pt solid black">
																				<fo:block><xsl:value-of select="tag[1]/ContractNum"/></fo:block>
																			</fo:table-cell>
									                    <fo:table-cell>
																				<fo:block><xsl:value-of select="tag[1]/EndDate"/></fo:block>
																			</fo:table-cell>
																	</fo:table-row>
															</fo:table-body>
													</fo:table>
-->
												</fo:block>
									</fo:table-cell>
								</fo:table-row>

                <fo:table-row>
                    <fo:table-cell number-columns-spanned="2">
                    	<fo:block margin-top=".25in" font="10pt FiraSans-mediumitalic">DETACH THIS PORTION AND MAIL THIS ORDER FORM IN THE REPLY ENVELOPE PROVIDED.
                    		<fo:inline font-family="FiraSans-book" padding-left="0.5in"><xsl:value-of select="tag[1]/InventoryDTNCode"/></fo:inline>
                    	</fo:block>
                    </fo:table-cell>
               </fo:table-row>


          </fo:table-body>
      </fo:table>
      <fo:block break-before="page" break-after="page" font="8pt FiraSans-book" margin-top="6.65in">
        <fo:block font="10pt FiraSans-bold">
				<fo:leader margin-left="-1in" leader-length="8.15in"
											             leader-pattern="rule"
											             alignment-baseline="middle"
											             rule-thickness="0.5pt" color="black"/>
							        	
        	Auto-Renewal Program
        </fo:block>
        <fo:block margin-top=".15in">
By enrolling your product(s) in our Automatic Subscription Renewal Program, subscriptions automatically renew
at the end of the term without any further action on your part, until you cancel.
        </fo:block>
        
        <fo:block margin-top=".15in">
The cost of the renewal will be the subscription price in effect at the time of each renewal including applicable
sales tax and shipping and handling charges. Subscription renewal prices are subject to increase in the future.
Our customary shipping and handling charges will apply to all shipments of tangible subscription products and
are invoiced up front; such charges are based on shipping method, location and weight.
        </fo:block>
        <fo:block margin-top=".15in">
Under the Automatic Subscription Renewal Program, you are not required to renew any minimum number of times.
        </fo:block>
        <fo:block margin-top=".15in">
Should you decide for any reason that you no longer wish to be enrolled in the automatic renewal program, or you
did not intend to enroll, you may cancel at any time. You can cancel by calling Customer Service at <fo:inline font-family="FiraSans-bold">800-344-3734,</fo:inline>
or emailing <fo:inline font-family="FiraSans-bold">CCHCustomerService@wolterskluwer.com</fo:inline>, or contacting me directly. You can also choose not to renew
at any time before the invoice is due by returning the invoice marked CANCEL SUBSCRIPTION.
Enrolling a subscription product under our automatic renewal
        </fo:block>
        <fo:block margin-top=".15in">
Enrolling a subscription product under our automatic renewal program does not affect our cancellation policy
which you can find at: <fo:inline font-family="FiraSans-bold">http://support.cch.com/Answers.</fo:inline>
        </fo:block>
      </fo:block>
      
      
    
    </fo:block>

</xsl:template>

</xsl:stylesheet>
