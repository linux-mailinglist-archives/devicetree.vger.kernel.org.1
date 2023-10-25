Return-Path: <devicetree+bounces-11930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4257D7152
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 17:58:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5102E1C20C57
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B577527EF4;
	Wed, 25 Oct 2023 15:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="SPXkLk8T"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9D7156E5
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 15:57:56 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D731012F;
	Wed, 25 Oct 2023 08:57:54 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39PFvhET013312;
	Wed, 25 Oct 2023 10:57:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1698249463;
	bh=EeIvSdJTPv70yRQJz4urS0T172AtomQUKqKng0i1Tq8=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=SPXkLk8T0knwJiZAGrH0ZM3/o0HwCMlCbli8aNfJZMMM6BDAwrLAZyBXmjgItr+Zf
	 DYD/s+FXMTwblSj60kv8XpdOnJKyxDM50ID70wle81G+4KxH5FEwYLKwnUdFPb+cm5
	 Fz5YTtSCwXZOgckiCn+RFrIQrLZ82VrDyqrcZUkw=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39PFvhpC114580
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 25 Oct 2023 10:57:43 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 25
 Oct 2023 10:57:43 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 25 Oct 2023 10:57:43 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39PFvhfV100334;
	Wed, 25 Oct 2023 10:57:43 -0500
Date: Wed, 25 Oct 2023 10:57:43 -0500
From: Nishanth Menon <nm@ti.com>
To: Nitin Yadav <n-yadav@ti.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: boot: dts: ti: k3-am62a-main: Fix GPIO pin count
 in DT nodes.
Message-ID: <20231025155743.nk7un6pvib7swtxg@decorator>
References: <20231025110252.1089979-1-n-yadav@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231025110252.1089979-1-n-yadav@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 16:32-20231025, Nitin Yadav wrote:
> Fix number of gpio pins in main_gpio0 & main_gpio1 DT nodes according
> to AM62a SK datasheet. The Link of datasheet is in the following line:

SK? line?

Please rephrase above and just mention the section of the data sheet to
refer to.

> 
> https://www.ti.com/lit/gpn/am62a3
> 
> Section: 6.3.10 GPIO (Page No. 52-55)

> 
> Fixes: '5fc6b1b62639c ("arm64: dts: ti: Introduce AM62A7 family of SoCs")'

What is the single quote for?
Also note the additional comment in the list to drop the extra EoL.


Did you check the MCU and WKUP GPIO count as well? if there are bugs
around it, fix it in a single commit please.

> 
> Signed-off-by: Nitin Yadav <n-yadav@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62a-main.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> index 3198af08fb9f..de36abb243f1 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
> @@ -462,7 +462,7 @@ main_gpio0: gpio@600000 {
>  			     <193>, <194>, <195>;
>  		interrupt-controller;
>  		#interrupt-cells = <2>;
> -		ti,ngpio = <87>;
> +		ti,ngpio = <92>;
>  		ti,davinci-gpio-unbanked = <0>;
>  		power-domains = <&k3_pds 77 TI_SCI_PD_EXCLUSIVE>;
>  		clocks = <&k3_clks 77 0>;
> @@ -480,7 +480,7 @@ main_gpio1: gpio@601000 {
>  			     <183>, <184>, <185>;
>  		interrupt-controller;
>  		#interrupt-cells = <2>;
> -		ti,ngpio = <88>;
> +		ti,ngpio = <52>;
>  		ti,davinci-gpio-unbanked = <0>;
>  		power-domains = <&k3_pds 78 TI_SCI_PD_EXCLUSIVE>;
>  		clocks = <&k3_clks 78 0>;
> -- 
> 2.25.1
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

