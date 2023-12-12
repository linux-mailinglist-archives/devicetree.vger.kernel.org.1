Return-Path: <devicetree+bounces-24374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C47AC80EEF5
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 15:38:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 480A01F21287
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 14:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3D3C7317D;
	Tue, 12 Dec 2023 14:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="pEl3cxEK"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 895A2AD;
	Tue, 12 Dec 2023 06:38:34 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BCEcEso038593;
	Tue, 12 Dec 2023 08:38:14 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702391894;
	bh=ctToVPkKrvBLP0P0pgqBKS3YfUXmNxUFFmv20f6QKK8=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=pEl3cxEKUk76w139iY+qysWQrkPu65RgOt+0vKW9Hh9jUrSpNR2avfa8TphuW2bs3
	 MtwHeR7RRQ3FFvcfPHOR3biQTI/ey64VI/8/Fu31UN3blQ3ADiPv25raPU9pafPaRf
	 FAfUBVGLAeXqTFT86evlNaE+GMezonjdWOkJUZHA=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BCEcEaX018920
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 12 Dec 2023 08:38:14 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 12
 Dec 2023 08:38:13 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 12 Dec 2023 08:38:13 -0600
Received: from [10.247.16.251] (ula0226330.dhcp.ti.com [10.247.16.251])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BCEad2C063051;
	Tue, 12 Dec 2023 08:38:13 -0600
Message-ID: <977d9e00-df57-4b1e-877a-5f9137b2c0d4@ti.com>
Date: Tue, 12 Dec 2023 08:38:12 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: ti: k3-j721s2-evm: Add overlay for
 PCIE1 Endpoint Mode
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <r-gunasekaran@ti.com>,
        <srk@ti.com>
References: <20231211115535.1264353-1-s-vadapalli@ti.com>
 <20231211115535.1264353-3-s-vadapalli@ti.com>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20231211115535.1264353-3-s-vadapalli@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 12/11/23 5:55 AM, Siddharth Vadapalli wrote:
> Add overlay to enable the PCIE1 instance of PCIe on J721S2-EVM in
> Endpoint mode of operation.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> Reviewed-by: Ravi Gunasekaran <r-gunasekaran@ti.com>
> ---

Reviewed-by: Andrew Davis <afd@ti.com>

>   arch/arm64/boot/dts/ti/Makefile               |  6 ++-
>   .../boot/dts/ti/k3-j721s2-evm-pcie1-ep.dtso   | 53 +++++++++++++++++++
>   2 files changed, 58 insertions(+), 1 deletion(-)
>   create mode 100644 arch/arm64/boot/dts/ti/k3-j721s2-evm-pcie1-ep.dtso
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index c6606b7678a3..52c1dc910308 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -76,6 +76,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-j721s2-common-proc-board.dtb
>   dtb-$(CONFIG_ARCH_K3) += k3-j721s2-evm-gesi-exp-board.dtbo
>   k3-j721s2-evm-dtbs := k3-j721s2-common-proc-board.dtb k3-j721s2-evm-gesi-exp-board.dtbo
>   dtb-$(CONFIG_ARCH_K3) += k3-j721s2-evm.dtb
> +dtb-$(CONFIG_ARCH_K3) += k3-j721s2-evm-pcie1-ep.dtbo
>   
>   # Boards with J784s4 SoC
>   dtb-$(CONFIG_ARCH_K3) += k3-am69-sk.dtb
> @@ -106,6 +107,8 @@ k3-am642-tqma64xxl-mbax4xxl-wlan-dtbs := \
>   	k3-am642-tqma64xxl-mbax4xxl.dtb k3-am64-tqma64xxl-mbax4xxl-wlan.dtbo
>   k3-j721e-evm-pcie0-ep-dtbs := k3-j721e-common-proc-board.dtb \
>   	k3-j721e-evm-pcie0-ep.dtbo
> +k3-j721s2-evm-pcie1-ep-dtbs := k3-j721s2-common-proc-board.dtb \
> +	k3-j721s2-evm-pcie1-ep.dtbo
>   dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
>   	k3-am625-beagleplay-csi2-tevi-ov5640.dtb \
>   	k3-am625-sk-csi2-imx219.dtb \
> @@ -117,7 +120,8 @@ dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
>   	k3-am62a7-sk-csi2-ov5640.dtb \
>   	k3-am642-tqma64xxl-mbax4xxl-sdcard.dtb \
>   	k3-am642-tqma64xxl-mbax4xxl-wlan.dtb \
> -	k3-j721e-evm-pcie0-ep.dtb
> +	k3-j721e-evm-pcie0-ep.dtb \
> +	k3-j721s2-evm-pcie1-ep.dtb
>   
>   # Enable support for device-tree overlays
>   DTC_FLAGS_k3-am625-beagleplay += -@
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-evm-pcie1-ep.dtso b/arch/arm64/boot/dts/ti/k3-j721s2-evm-pcie1-ep.dtso
> new file mode 100644
> index 000000000000..43568eb67d93
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-evm-pcie1-ep.dtso
> @@ -0,0 +1,53 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/**
> + * DT Overlay for enabling PCIE1 instance in Endpoint Configuration with the
> + * J7 common processor board.
> + *
> + * J7 Common Processor Board Product Link: https://www.ti.com/tool/J721EXCPXEVM
> + *
> + * Copyright (C) 2023 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/soc/ti,sci_pm_domain.h>
> +
> +#include "k3-pinctrl.h"
> +
> +/*
> + * Since Root Complex and Endpoint modes are mutually exclusive
> + * disable Root Complex mode.
> + */
> +&pcie1_rc {
> +	status = "disabled";
> +};
> +
> +&cbass_main {
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +	interrupt-parent = <&gic500>;
> +
> +	pcie1_ep: pcie-ep@2910000 {
> +		compatible = "ti,j7200-pcie-ep", "ti,j721e-pcie-ep";
> +		reg = <0x00 0x02910000 0x00 0x1000>,
> +		      <0x00 0x02917000 0x00 0x400>,
> +		      <0x00 0x0d800000 0x00 0x00800000>,
> +		      <0x00 0x18000000 0x00 0x08000000>;
> +		reg-names = "intd_cfg", "user_cfg", "reg", "mem";
> +		interrupt-names = "link_state";
> +		interrupts = <GIC_SPI 330 IRQ_TYPE_EDGE_RISING>;
> +		ti,syscon-pcie-ctrl = <&scm_conf 0x074>;
> +		max-link-speed = <3>;
> +		num-lanes = <1>;
> +		power-domains = <&k3_pds 276 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&k3_clks 276 41>;
> +		clock-names = "fck";
> +		max-functions = /bits/ 8 <6>;
> +		max-virtual-functions = /bits/ 8 <4 4 4 4 0 0>;
> +		dma-coherent;
> +		phys = <&serdes0_pcie_link>;
> +		phy-names = "pcie-phy";
> +	};
> +};

