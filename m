Return-Path: <devicetree+bounces-18174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D467F58E7
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 08:13:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F0FFB20D64
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 07:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC15014013;
	Thu, 23 Nov 2023 07:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="HLHEvWE4"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A68B91;
	Wed, 22 Nov 2023 23:12:53 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AN7CZuJ119516;
	Thu, 23 Nov 2023 01:12:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700723555;
	bh=cERezhvzHjdKon4CHCgC/GCE6511lNZNhj3Wy0LCFRw=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=HLHEvWE4XNeB7HeJXs3DXeToH/9yiIqJ5Am9/2DQ8BqdW420GQXN5214LzAkRZIU/
	 v88FK1fsvCNMvCUnGp/f6N8VcYLbvNVc8G5bG+RiS17eaO8NqU4lFwMhVH4p0F/m65
	 DK56AzGIQm75mNvTSlBYoP515dxARhbGA+sc/FjA=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AN7CZeS077691
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 23 Nov 2023 01:12:35 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 23
 Nov 2023 01:12:35 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 23 Nov 2023 01:12:35 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AN7CZpj100335;
	Thu, 23 Nov 2023 01:12:35 -0600
Date: Thu, 23 Nov 2023 01:12:35 -0600
From: Nishanth Menon <nm@ti.com>
To: Parth Pancholi <parth105105@gmail.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>,
        Francesco Dolcini
	<francesco.dolcini@toradex.com>,
        Marcel Ziswiler
	<marcel.ziswiler@toradex.com>,
        Parth Pancholi <parth.pancholi@toradex.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Tero
 Kristo <kristo@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v1] arm64: dts: k3-am625-verdin: enable Verdin UART2
Message-ID: <20231123071235.omgxs3ixnojpkfvu@greeter>
References: <20231121160436.1032364-1-parth105105@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231121160436.1032364-1-parth105105@gmail.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 17:04-20231121, Parth Pancholi wrote:
> From: Parth Pancholi <parth.pancholi@toradex.com>
> 
> Enable UART2 for AM62 based SOM's Verdin carrier boards Dahlia,
> Development and Yavia.
> Earlier Verdin UART2 was reserved by R5 DM firmware which can be now
> configured using boardcfg during U-boot compilation in the latest TI
> SDKs. In a default config, no one writes to this UART.
> 
> Signed-off-by: Parth Pancholi <parth.pancholi@toradex.com>
> 
> ---
> 
>  arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi | 3 +--
>  arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi    | 3 +--
>  arch/arm64/boot/dts/ti/k3-am62-verdin-yavia.dtsi  | 3 +--
>  3 files changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi b/arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi
> index 013357d17d48..bf6d27e70bc4 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-verdin-dahlia.dtsi
> @@ -214,6 +214,5 @@ &verdin_gpio_keys {
>  
>  /* Verdin UART_2 */
>  &wkup_uart0 {
> -	/* FIXME: WKUP UART0 is used by DM firmware */
> -	status = "reserved";
> +	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi b/arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi
> index 6701cb8974bb..680071688dcb 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-verdin-dev.dtsi
> @@ -235,6 +235,5 @@ &verdin_gpio_keys {
>  
>  /* Verdin UART_2 */
>  &wkup_uart0 {
> -	/* FIXME: WKUP UART0 is used by DM firmware */
> -	status = "reserved";
> +	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-verdin-yavia.dtsi b/arch/arm64/boot/dts/ti/k3-am62-verdin-yavia.dtsi
> index c685df7deaee..997dfafd27eb 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-verdin-yavia.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-verdin-yavia.dtsi
> @@ -207,6 +207,5 @@ &verdin_gpio_keys {
>  
>  /* Verdin UART_2 */
>  &wkup_uart0 {
> -	/* FIXME: WKUP UART0 is used by DM firmware */
> -	status = "reserved";
> +	status = "okay";
>  };
> -- 
> 2.34.1
> 

Do the &pinctrl_wkup_uart0 in verdin.dtsi hold good through these
variants?

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

