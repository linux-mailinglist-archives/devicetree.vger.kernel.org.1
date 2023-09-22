Return-Path: <devicetree+bounces-2561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EFF7AB571
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:03:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 100D0282104
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 16:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD5D341757;
	Fri, 22 Sep 2023 16:03:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04610171C0
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 16:03:14 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CACB83;
	Fri, 22 Sep 2023 09:03:12 -0700 (PDT)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38M9vf5r030685;
	Fri, 22 Sep 2023 18:02:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=selector1; bh=YgwADyaAKP0p1utyzmW0h
	AzmCYwU7A3xe+e+mBk+eQ0=; b=fO8br+JCSQ5ogq5agBmect4Rxnu8pYZhCAtlV
	370cONvJUPRFJ9A5QbsYjhbJ7+EcL4Bke0DM/MBNlIcNe/r84eovPjiHwMNOKCvb
	w8sRQQGJnJkxEyBBxwsOMAA43RLrKi3JAd76D2mgupogGqSOR2PmYdrQQrRXzmzH
	cEhVI9pZ/NtdDB6pByJ/s1ngwGRZNMHC8lprNSv8RQrCIBnu9kP/3X3usj3s35UJ
	augYvfkrjniu08V7qmJgY90hHJV3IkJkkNye2WbG3gwzXgSkqGLM67FgzvUYkpSl
	0odtNLbBIpvCYqYC8kMl2GXiwZ7fGqHMEDh1MrugXv6ks2Rgw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3t8tt74730-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Sep 2023 18:02:38 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3125B100051;
	Fri, 22 Sep 2023 18:02:37 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1A4A724C0FA;
	Fri, 22 Sep 2023 18:02:37 +0200 (CEST)
Received: from gnbcxd0016.gnb.st.com (10.129.178.213) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 22 Sep
 2023 18:02:36 +0200
Date: Fri, 22 Sep 2023 18:02:27 +0200
From: Alain Volmat <alain.volmat@foss.st.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Mauro Carvalho Chehab
	<mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Russell King <linux@armlinux.org.uk>,
        Philipp
 Zabel <p.zabel@pengutronix.de>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Dan Scally <dan.scally@ideasonboard.com>,
        <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 4/5] ARM: dts: stm32: add dcmipp support to stm32mp135
Message-ID: <20230922160227.GA608616@gnbcxd0016.gnb.st.com>
Mail-Followup-To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Hugues Fruchet <hugues.fruchet@foss.st.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Russell King <linux@armlinux.org.uk>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Dan Scally <dan.scally@ideasonboard.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230901155732.252436-1-alain.volmat@foss.st.com>
 <20230901155732.252436-5-alain.volmat@foss.st.com>
 <20230905090258.GC31594@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230905090258.GC31594@pendragon.ideasonboard.com>
X-Disclaimer: ce message est personnel / this message is private
X-Originating-IP: [10.129.178.213]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-22_14,2023-09-21_01,2023-05-22_02
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Laurent,

On Tue, Sep 05, 2023 at 12:02:58PM +0300, Laurent Pinchart wrote:
> Hi Alain,
> 
> Thank you for the patch.
> 
> On Fri, Sep 01, 2023 at 05:57:23PM +0200, Alain Volmat wrote:
> > From: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > 
> > Add dcmipp support to STM32MP135.
> > 
> > Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
> > Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>
> > ---
> >  arch/arm/boot/dts/st/stm32mp135.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/st/stm32mp135.dtsi b/arch/arm/boot/dts/st/stm32mp135.dtsi
> > index abf2acd37b4e..beee9ec7ed0d 100644
> > --- a/arch/arm/boot/dts/st/stm32mp135.dtsi
> > +++ b/arch/arm/boot/dts/st/stm32mp135.dtsi
> > @@ -8,5 +8,13 @@
> >  
> >  / {
> >  	soc {
> > +		dcmipp: dcmipp@5a000000 {
> > +			compatible = "st,stm32mp13-dcmipp";
> > +			reg = <0x5a000000 0x400>;
> > +			interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
> > +			resets = <&rcc DCMIPP_R>;
> > +			clocks = <&rcc DCMIPP_K>;
> > +			status = "disabled";
> 
> This needs a port, as it's marked as required in the bindings. You can
> leave the endpoint out.

I first agreed with your comment but, having done the check (make
CHECK_DTBS=y  ...) this doesn't seem to be required because the dcmipp
node is kept disabled within our dtsi.
(it is later on only enabled in dts file which as well have the port
property).
Indeed, to check this I changed it to okay and DTC_CHK complained about
missing port property.

Hence, I'd think that port doesn't have to be added in this dtsi file.
Would you agree with that ?

Regards,
Alain

> 
> With this fixed,
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> > +		};
> >  	};
> >  };
> 
> -- 
> Regards,
> 
> Laurent Pinchart

