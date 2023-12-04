Return-Path: <devicetree+bounces-21360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D3645803574
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 101661C20975
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 13:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A4525567;
	Mon,  4 Dec 2023 13:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Nwxdfzge"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2636E114;
	Mon,  4 Dec 2023 05:51:16 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B4Dp4JY103466;
	Mon, 4 Dec 2023 07:51:04 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701697864;
	bh=tv5pjDbnRezsVRk90ySS34y41jhjB0BRxdV3Hiwv5LA=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=Nwxdfzge+6E5QociIeF5NoMx3hjZ8YV3swKslu4BU004MFCsEn4DtFdApdw8+fH5J
	 3zgseL6WTWzJNuFs+MuBWZ95BoWudIwrZFFldj5tw5WMgmp8Ofy8B8F0AwdMhEcRjW
	 Ny636roIld36R4JiBMSCheGi0OjBc0zNScNFSr7I=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B4Dp4eX102720
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Dec 2023 07:51:04 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 4
 Dec 2023 07:51:04 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 4 Dec 2023 07:51:03 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B4Dp3fd073245;
	Mon, 4 Dec 2023 07:51:03 -0600
Date: Mon, 4 Dec 2023 07:51:03 -0600
From: Nishanth Menon <nm@ti.com>
To: Wadim Egorov <w.egorov@phytec.de>
CC: Garrett Giordano <ggiordano@phytec.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <upstream@lists.phytec.de>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [Upstream] [PATCH 1/3] arm64: dts: ti:
 k3-am625-phyboard-lyra-rdk: Lower I2C1 frequency
Message-ID: <20231204135103.rqb6r4iddvashtgl@autistic>
References: <20231129183817.2327259-1-ggiordano@phytec.com>
 <bd5284ec-6f25-464a-9ee7-4c50496482f1@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bd5284ec-6f25-464a-9ee7-4c50496482f1@phytec.de>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 13:07-20231130, Wadim Egorov wrote:
> 
> Am 29.11.23 um 19:38 schrieb Garrett Giordano:
> > The gpio-expander on i2c-1 has a maximum frequency of 100kHz. Update our
> > main_i2c1 frequency to allow the nxp,pcf8574 gpio-expander to function
> > properly.
> > 
> > Signed-off-by: Garrett Giordano <ggiordano@phytec.com>
> 
> For all three patches,
> 
> Reviewed-by: Wadim Egorov <w.egorov@phytec.de>
> 
> 
> > ---
> >   arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts b/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> > index a438baf542c2..171354b13e33 100644
> > --- a/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> > +++ b/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> > @@ -187,7 +187,7 @@ cpsw3g_phy3: ethernet-phy@3 {
> >   &main_i2c1 {
> >   	pinctrl-names = "default";
> >   	pinctrl-0 = <&main_i2c1_pins_default>;
> > -	clock-frequency = <400000>;
> > +	clock-frequency = <100000>;
> >   	status = "okay";
> >   	gpio_exp: gpio-expander@21 {


Please resubmit the patches - the archives don't seem to have a copy
and b4 drops out. Also, when doing that, please pick up the reviews.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

