Return-Path: <devicetree+bounces-25851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D23814C9A
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 17:12:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91A7DB21BA2
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 16:12:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D3C23BB25;
	Fri, 15 Dec 2023 16:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="gW1S4Cfs"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264EC3E476
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 16:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BFG0lFT028565;
	Fri, 15 Dec 2023 10:00:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702656047;
	bh=PFRb3nB7DNDD7Amj2y0IECbdgddsQN2leKdBzb3pLas=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=gW1S4CfsdNDj+J9K8Qco+zj5vzWkXeLkFK30RRj1w7Im8y3yYnE/tHXawdQR642C3
	 JImeL6t2eQj3AOqd4DYt6uTiDRoRHlk/r/z706aVWEL7DmfJaZR/6gRDT6WkUpWDM/
	 mlNqQ+p/aJPJv8SDg9MHpPsm64pZQ6YF4z39OgEg=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BFG0lQB107235
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 15 Dec 2023 10:00:47 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 15
 Dec 2023 10:00:47 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 15 Dec 2023 10:00:47 -0600
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BFG0lGw023420;
	Fri, 15 Dec 2023 10:00:47 -0600
Date: Fri, 15 Dec 2023 10:00:47 -0600
From: Nishanth Menon <nm@ti.com>
To: Tony Lindgren <tony@atomide.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Dhruva Gole <d-gole@ti.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc
 for wkup_uart0
Message-ID: <20231215160047.uiitnlgmirbudmj5@scored>
References: <20231114073209.40756-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231114073209.40756-1-tony@atomide.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 09:32-20231114, Tony Lindgren wrote:
> The devices in the wkup domain are capable of waking up the system from
> suspend. We can configure the wkup domain devices in a generic way using
> the ti-sysc interconnect target module driver like we have done with the
> earlier TI SoCs.
> 
> As ti-sysc manages the SYSCONFIG related registers independent of the
> child hardware device, the wake-up configuration is also set even if
> wkup_uart0 is reserved by sysfw.
> 
> The wkup_uart0 device has interconnect target module register mapping like
> dra7 wkup uart. There is a 1 MB interconnect target range with one uart IP
> block in the target module. The power domain and clock affects the whole
> interconnect target module.
> 
> Note we change the functional clock name to follow the ti-sysc binding
> and use "fck" instead of "fclk".
> 
> Tested-by: Dhruva Gole <d-gole@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
> 
> Changes since v1:
> 
> - Added Tested-by from Dhruva
> 
> ---
>  arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi | 33 ++++++++++++++++++----
>  1 file changed, 27 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
> --- a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
> @@ -5,6 +5,8 @@
>   * Copyright (C) 2020-2022 Texas Instruments Incorporated - https://www.ti.com/
>   */
>  
> +#include <dt-bindings/bus/ti-sysc.h>
> +
>  &cbass_wakeup {
>  	wkup_conf: syscon@43000000 {
>  		bootph-all;
> @@ -21,14 +23,33 @@ chipid: chipid@14 {
>  		};
>  	};
>  
> -	wkup_uart0: serial@2b300000 {
> -		compatible = "ti,am64-uart", "ti,am654-uart";
> -		reg = <0x00 0x2b300000 0x00 0x100>;
> -		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> +	target-module@2b300000 {

should be  target-module@2b300050 to match up with reg?

> +		compatible = "ti,sysc-omap2", "ti,sysc";
> +		reg = <0 0x2b300050 0 0x4>,
> +		      <0 0x2b300054 0 0x4>,
> +		      <0 0x2b300058 0 0x4>;
> +		reg-names = "rev", "sysc", "syss";
> +		ti,sysc-mask = <(SYSC_OMAP2_ENAWAKEUP |
> +				 SYSC_OMAP2_SOFTRESET |
> +				 SYSC_OMAP2_AUTOIDLE)>;
> +		ti,sysc-sidle = <SYSC_IDLE_FORCE>,
> +				<SYSC_IDLE_NO>,
> +				<SYSC_IDLE_SMART>,
> +				<SYSC_IDLE_SMART_WKUP>;
> +		ti,syss-mask = <1>;
>  		power-domains = <&k3_pds 114 TI_SCI_PD_EXCLUSIVE>;
>  		clocks = <&k3_clks 114 0>;
> -		clock-names = "fclk";
> -		status = "disabled";
> +		clock-names = "fck";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0 0x2b300000 0x100000>;
> +
> +		wkup_uart0: serial@2b300000 {

serial@0  to match up with reg?

> +			compatible = "ti,am64-uart", "ti,am654-uart";
> +			reg = <0 0x100>;
> +			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
>  	};
>  
>  	wkup_i2c0: i2c@2b200000 {
> -- 
> 2.42.1

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

