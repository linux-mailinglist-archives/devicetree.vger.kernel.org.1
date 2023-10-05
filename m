Return-Path: <devicetree+bounces-6126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEEF7B9E89
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:08:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AD5AD2821AA
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B74B28694;
	Thu,  5 Oct 2023 14:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="JEu6WQvK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C8527722
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 14:08:44 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 967C963EF5;
	Thu,  5 Oct 2023 07:08:41 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 395BFtwW113496;
	Thu, 5 Oct 2023 06:15:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696504555;
	bh=uM+Jae/KsDO60KLh7i4asx8qWU4wCJFbP5sgHLbd4rY=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=JEu6WQvKTIGcsP2Im/8InGeeNNLUiJI40IT7slkpHmdfVgKZwtQAHFruoOX3/6X4E
	 6Fss6uLBg7LCmPDap3GKAX2LADypWn7b05lxQ/6Pl4g6EIQWAZMikc8bowo1QKHhGt
	 00BPqTPcEWJr1x00JAPJYRnGoNTczqnxxmBYOIEQ=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 395BFtGd012019
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 5 Oct 2023 06:15:55 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 5
 Oct 2023 06:15:55 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 5 Oct 2023 06:15:55 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 395BFttr007999;
	Thu, 5 Oct 2023 06:15:55 -0500
Date: Thu, 5 Oct 2023 06:15:55 -0500
From: Nishanth Menon <nm@ti.com>
To: "J, KEERTHY" <j-keerthy@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <robh+dt@kernel.org>,
        <conor+dt@kernel.org>, <kristo@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <u-kumar1@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 2/7] arm64: dts: ti: k3-j784s4: Add ESM instances
Message-ID: <20231005111554.ol4vu4oxlensmx6m@booth>
References: <20230927023357.9883-1-j-keerthy@ti.com>
 <20230927023357.9883-3-j-keerthy@ti.com>
 <4eb50f24-b6c8-790e-91b0-5646ebbb2d10@ti.com>
 <c7c32ec5-d0c1-443d-9851-3bb8e772c8fc@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c7c32ec5-d0c1-443d-9851-3bb8e772c8fc@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 06:45-20231005, J, KEERTHY wrote:
> 
> 
> On 10/3/2023 12:20 PM, Vignesh Raghavendra wrote:
> > 
> > 
> > On 27/09/23 08:03, Keerthy wrote:
> > > Patch adds the ESM instances for j784s4. It has 3 instances.
> > > One in the main domain and two in the mcu-wakeup domian.
> > > 
> > > Signed-off-by: Keerthy <j-keerthy@ti.com>
> > > ---
> > >   arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi       |  8 ++++++++
> > >   arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi | 14 ++++++++++++++
> > >   2 files changed, 22 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> > > index efed2d683f63..26dc3776f911 100644
> > > --- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> > > +++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> > > @@ -1568,4 +1568,12 @@
> > >   		firmware-name = "j784s4-c71_3-fw";
> > >   		status = "disabled";
> > >   	};
> > > +
> > > +	main_esm: esm@700000 {
> > > +		compatible = "ti,j721e-esm";
> > > +		reg = <0x00 0x700000 0x00 0x1000>;
> > > +		ti,esm-pins = <688>, <689>, <690>, <691>, <692>, <693>, <694>,
> > > +			      <695>;
> > > +		bootph-pre-ram;
> > 
> > Similar to other nodes in this file, here and elsewhere use
> > 		bootph-all
> 
> Okay. I will switch to bootph-all

Is'nt esm configuration just needed during pre-ram?

> 
> > 
> > 
> > > +	};
> > >   };
> > > diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
> > > index 4ab4018d3695..a7b5c4cb7d3e 100644
> > > --- a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
> > > +++ b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
> > > @@ -700,4 +700,18 @@
> > >   			status = "disabled";
> > >   		};
> > >   	};
> > > +
> > > +	mcu_esm: esm@40800000 {
> > > +		compatible = "ti,j721e-esm";
> > > +		reg = <0x00 0x40800000 0x00 0x1000>;
> > > +		ti,esm-pins = <95>;
> > > +		bootph-pre-ram;
> > > +	};
> > > +
> > > +	wkup_esm: esm@42080000 {
> > > +		compatible = "ti,j721e-esm";
> > > +		reg = <0x00 0x42080000 0x00 0x1000>;
> > > +		ti,esm-pins = <63>;
> > > +		bootph-pre-ram;
> > > +	};
> > >   };
> > 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

