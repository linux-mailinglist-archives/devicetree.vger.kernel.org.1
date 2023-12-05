Return-Path: <devicetree+bounces-21907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 254FF805900
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 16:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 561211C20D9D
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 15:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 851675F1EE;
	Tue,  5 Dec 2023 15:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Qems+SsA"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5F9D122;
	Tue,  5 Dec 2023 07:41:36 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B5FfNgN030746;
	Tue, 5 Dec 2023 09:41:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701790883;
	bh=AVn0002yRli+Ox6PwCSlDwX08+5mwWUcBAOYBqtz3k0=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=Qems+SsAXBY/RYxhHo4hLtfo9a9z29pnnoc2wMQtW1SnhzHQ+7PiaFIuB48ozZuIr
	 caB/Ca/ORuvkqmkhZ9294UB0bxLLD7Le3eNfhOTsYCIR7fQKarIZaJ1e0Pzuov7806
	 1hSx84iC6OyfeyjmDD/WIctnI2jHq8G2DkXtzuHM=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B5FfN3g125467
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 5 Dec 2023 09:41:23 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 5
 Dec 2023 09:41:23 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 5 Dec 2023 09:41:23 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B5FfNim014099;
	Tue, 5 Dec 2023 09:41:23 -0600
Date: Tue, 5 Dec 2023 09:41:23 -0600
From: Nishanth Menon <nm@ti.com>
To: Andrew Davis <afd@ti.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Jan Kiszka <jan.kiszka@siemens.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add AM652 DTSI file
Message-ID: <20231205154123.dy3t5xcuzj6kzm3w@thorn>
References: <20231117165330.98472-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231117165330.98472-1-afd@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 10:53-20231117, Andrew Davis wrote:
> The AM652 is basically a AM654 but with 2 cores instead of 4. Add
> a DTSI file for AM652 matching AM654 except this core difference.
> 
> This removes the need to remove the extra cores from AM654 manually
> in DT files for boards that use the AM652 variant. Do that for
> the IOT2050 boards here.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
>  .../boot/dts/ti/k3-am65-iot2050-common.dtsi   |  1 -
>  arch/arm64/boot/dts/ti/k3-am652.dtsi          | 74 +++++++++++++++++++
>  .../ti/k3-am6528-iot2050-basic-common.dtsi    | 11 +--
>  .../ti/k3-am6548-iot2050-advanced-common.dtsi |  1 +
>  4 files changed, 76 insertions(+), 11 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am652.dtsi
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> index ba1c14a54acf4..bd5273a37b095 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi


Could you rebase to latest next? patch doesn't apply anymore.

> @@ -9,7 +9,6 @@
>   * Common bits of the IOT2050 Basic and Advanced variants, PG1 and PG2
>   */
>  
> -#include "k3-am654.dtsi"
>  #include <dt-bindings/phy/phy.h>
>  
>  / {
> diff --git a/arch/arm64/boot/dts/ti/k3-am652.dtsi b/arch/arm64/boot/dts/ti/k3-am652.dtsi
> new file mode 100644
> index 0000000000000..0f22e00faa903
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am652.dtsi
> @@ -0,0 +1,74 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree Source for AM65 SoC family in Dual core configuration
> + *
> + * Copyright (C) 2023 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +#include "k3-am65.dtsi"
> +
> +/ {
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		cpu-map {
> +			cluster0: cluster0 {
> +				core0 {
> +					cpu = <&cpu0>;
> +				};
> +
> +				core1 {
> +					cpu = <&cpu1>;
> +				};
> +			};
> +		};
> +
> +		cpu0: cpu@0 {
> +			compatible = "arm,cortex-a53";
> +			reg = <0x000>;
> +			device_type = "cpu";
> +			enable-method = "psci";
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&L2_0>;
> +		};
> +
> +		cpu1: cpu@1 {
> +			compatible = "arm,cortex-a53";
> +			reg = <0x001>;
> +			device_type = "cpu";
> +			enable-method = "psci";
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&L2_0>;
> +		};
> +	};
> +
> +	L2_0: l2-cache0 {
> +		compatible = "cache";
> +		cache-level = <2>;
> +		cache-unified;
> +		cache-size = <0x80000>;
> +		cache-line-size = <64>;
> +		cache-sets = <512>;
> +		next-level-cache = <&msmc_l3>;
> +	};
> +
> +	msmc_l3: l3-cache0 {
> +		compatible = "cache";
> +		cache-level = <3>;
> +		cache-unified;
> +	};
> +
> +	thermal_zones: thermal-zones {
> +		#include "k3-am654-industrial-thermal.dtsi"
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
> index 5ab434c02ab6b..feb0eae4e6df4 100644
> --- a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
> @@ -9,6 +9,7 @@
>   * Common bits of the IOT2050 Basic variant, PG1 and PG2
>   */
>  
> +#include "k3-am652.dtsi"
>  #include "k3-am65-iot2050-common.dtsi"
>  
>  / {
> @@ -17,16 +18,6 @@ memory@80000000 {
>  		/* 1G RAM */
>  		reg = <0x00000000 0x80000000 0x00000000 0x40000000>;
>  	};
> -
> -	cpus {
> -		cpu-map {
> -			/delete-node/ cluster1;
> -		};
> -		/delete-node/ cpu@100;
> -		/delete-node/ cpu@101;
> -	};
> -
> -	/delete-node/ l2-cache1;
>  };
>  
>  /* eMMC */
> diff --git a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi
> index be55494b1f3fc..ff2fdc2e12e3c 100644
> --- a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi
> @@ -11,6 +11,7 @@
>  
>  /dts-v1/;
>  
> +#include "k3-am654.dtsi"
>  #include "k3-am65-iot2050-common.dtsi"
>  
>  / {
> -- 
> 2.39.2
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

