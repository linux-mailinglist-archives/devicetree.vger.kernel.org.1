Return-Path: <devicetree+bounces-12314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D723F7D8EEE
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 08:49:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71C1FB20F15
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 06:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B3108F41;
	Fri, 27 Oct 2023 06:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="XWlzjriI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0D06101
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 06:49:30 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51E301A1;
	Thu, 26 Oct 2023 23:49:28 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39R6nCns098288;
	Fri, 27 Oct 2023 01:49:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1698389352;
	bh=psfOJgM1N9Kdx7TFXRYbjR43AtXKlFrDFTccUJHBzkM=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=XWlzjriIm1RdExjRuP9OE0NdFVJxoWTgKOjc72zS0705WbD2D6dZAPBUXPL0WopI5
	 Sl7rrfT8sg5cgvb7Nas62ZKgHzfVlkGK8mV3onsOp2zngKVLSwDU0ZLzLnmaEHdEQX
	 fPTIwG7m0PeiTHcN9WYG1NAy6NzWrrQ6TVwlmrVc=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39R6nC5a069544
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 27 Oct 2023 01:49:12 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 27
 Oct 2023 01:49:11 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 27 Oct 2023 01:49:11 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39R6nB3G127815;
	Fri, 27 Oct 2023 01:49:11 -0500
Date: Fri, 27 Oct 2023 01:49:11 -0500
From: Nishanth Menon <nm@ti.com>
To: Nitin Yadav <n-yadav@ti.com>
CC: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: boot: dts: ti: k3-am62a-main: Fix GPIO pin
 count in DT nodes.
Message-ID: <20231027064911.tn7nillbelz463fu@manlike>
References: <20231027061833.1185703-1-n-yadav@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231027061833.1185703-1-n-yadav@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 11:48-20231027, Nitin Yadav wrote:
> Fix number of gpio pins in main_gpio0 & main_gpio1 DT nodes according
> to AM62A SK datasheet[0].

Looks like you didn't get the hint from my review comment in v1.. so
here goes:

AM62A is a SoC and AM62A SK is a board. datasheet is for AM62A. Drop the "SK"

btw, Use AM62A7 as it the specific device (as used in the buggy
commit).

> 
> [0]https://www.ti.com/lit/gpn/am62a3 Section: 6.3.10 GPIO (Page No. 52-55)
> 
> Fixes: 5fc6b1b62639c ("arm64: dts: ti: Introduce AM62A7 family of SoCs")
> Signed-off-by: Nitin Yadav <n-yadav@ti.com>
> ---
> 
> v2:
>  - Updated commit msge to include links.
>  - Updated fixes tag
> 
> v1: https://lore.kernel.org/all/20231025110252.1089979-1-n-yadav@ti.com/
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

