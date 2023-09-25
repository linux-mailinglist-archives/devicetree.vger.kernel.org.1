Return-Path: <devicetree+bounces-3230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD68E7ADCA6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:05:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B17321C20443
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26BDC21A07;
	Mon, 25 Sep 2023 16:05:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846371BDEC
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 16:05:54 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 179EA92;
	Mon, 25 Sep 2023 09:05:53 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38PG5hQ7106103;
	Mon, 25 Sep 2023 11:05:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695657943;
	bh=OYWoXvhFRey3Jy19pu8xFEtqjP/997zz5z2k/ZPWF/w=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=m0WY63OMLIAlBbY2DLAMie054PF7DB0BX17mQOO1EeTpvGqpv9kAeCieUp9QrI78s
	 iixu0VZ28DuGCK+XrM6/CDwvP01YQIBbkMZSCRsbqefBIc8foVNKZKETvIQkAUFtYK
	 a02JS+2+DUfBWNS4Nfutrr1MTnzGt1BjQj/0AEYY=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38PG5hOp007370
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 25 Sep 2023 11:05:43 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 25
 Sep 2023 11:05:43 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 25 Sep 2023 11:05:43 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38PG5hQg028417;
	Mon, 25 Sep 2023 11:05:43 -0500
Date: Mon, 25 Sep 2023 11:05:43 -0500
From: Nishanth Menon <nm@ti.com>
To: "J, KEERTHY" <j-keerthy@ti.com>
CC: <robh+dt@kernel.org>, <vigneshr@ti.com>, <conor+dt@kernel.org>,
        <kristo@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <u-kumar1@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 5/7] arm64: dts: ti: k3-j784s4-mcu: Add the main
 domain watchdog instances
Message-ID: <20230925160543.4q2rjntoxrh27qh6@drivable>
References: <20230925081332.15906-1-j-keerthy@ti.com>
 <20230925081332.15906-6-j-keerthy@ti.com>
 <20230925131927.f7ff2u2ip3jxejyg@dreadful>
 <9fef2589-c864-bcb9-be9d-435d6abd470c@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9fef2589-c864-bcb9-be9d-435d6abd470c@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 21:03-20230925, J, KEERTHY wrote:
> 
> 
> On 9/25/2023 6:49 PM, Nishanth Menon wrote:
> > On 13:43-20230925, Keerthy wrote:
> > > There are totally 2 instances of watchdog module in MCU domain.
> > > 
> > > Signed-off-by: Keerthy <j-keerthy@ti.com>
> > > ---
> > >   .../boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi     | 20 +++++++++++++++++++
> > >   1 file changed, 20 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
> > > index a7b5c4cb7d3e..0b7cc277a567 100644
> > > --- a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
> > > +++ b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
> > > @@ -714,4 +714,24 @@
> > >   		ti,esm-pins = <63>;
> > >   		bootph-pre-ram;
> > >   	};
> > > +
> > > +	mcu_watchdog0: watchdog@40600000 {
> > > +		compatible = "ti,j7-rti-wdt";
> > > +		reg = <0x00 0x40600000 0x00 0x100>;
> > > +		clocks = <&k3_clks 367 1>;
> > > +		power-domains = <&k3_pds 367 TI_SCI_PD_EXCLUSIVE>;
> > > +		assigned-clocks = <&k3_clks 367 0>;
> > > +		assigned-clock-parents = <&k3_clks 367 4>;
> > > +		status = "disabled";
> > > +	};
> > > +
> > > +	mcu_watchdog1: watchdog@40610000 {
> > > +		compatible = "ti,j7-rti-wdt";
> > > +		reg = <0x00 0x40610000 0x00 0x100>;
> > > +		clocks = <&k3_clks 368 1>;
> > > +		power-domains = <&k3_pds 368 TI_SCI_PD_EXCLUSIVE>;
> > > +		assigned-clocks = <&k3_clks 368 0>;
> > > +		assigned-clock-parents = <&k3_clks 368 4>;
> > > +		status = "disabled";
> > 
> > Explain in commit message as to why these are disabled. I believe it is
> > because this RTI instances are tightly coupled to the micro
> > controllers. but that information needs to be documented.
> 
> Sure. I will add that to the commit message.

And inline to code for context, please.
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

