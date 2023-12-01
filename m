Return-Path: <devicetree+bounces-20560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 315C28002C9
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 06:05:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BDB531F20D38
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 05:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38F128E8;
	Fri,  1 Dec 2023 05:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="XIe9ofVn"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27A3E1FF6;
	Thu, 30 Nov 2023 21:05:04 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B154xh5045796;
	Thu, 30 Nov 2023 23:04:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701407099;
	bh=BPTpZ3qb6rzwwZ0+u4a8PFx/wc1FuiOvMZ2AYMOiUxw=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=XIe9ofVnmU7VrwqNqcMHcsnRmkrGN3S5OfYS0UlhwYwjWyJNaT0tOH3PCULToeLST
	 Iu7DjS7gTQDw7wa3+XVLW8ToLvOKLy3+DmqA7H9xynf5AuZ7rP8ECNz3VMtTl76sBI
	 NvmlLHd60Lhd3fVrReRCW3XatkBxHpHKncs74QNo=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B154xJj004211
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 30 Nov 2023 23:04:59 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 30
 Nov 2023 23:04:59 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 30 Nov 2023 23:04:58 -0600
Received: from [172.24.227.247] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B154tV3072106;
	Thu, 30 Nov 2023 23:04:56 -0600
Message-ID: <2e81a8c1-28f5-d19a-44ba-2993b68c885c@ti.com>
Date: Fri, 1 Dec 2023 10:34:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 2/2] arm64: dts: ti: k3-j721s2-evm: Add overlay for
 PCIE1 Endpoint Mode
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>
References: <20231115085204.3578616-1-s-vadapalli@ti.com>
 <20231115085204.3578616-3-s-vadapalli@ti.com>
From: Ravi Gunasekaran <r-gunasekaran@ti.com>
In-Reply-To: <20231115085204.3578616-3-s-vadapalli@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180



On 11/15/23 2:22 PM, Siddharth Vadapalli wrote:
> Add overlay to enable the PCIE1 instance of PCIe on J721S2-EVM in
> Endpoint mode of operation.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  arch/arm64/boot/dts/ti/Makefile               |  3 ++
>  .../boot/dts/ti/k3-j721s2-evm-pcie1-ep.dtso   | 53 +++++++++++++++++++
>  2 files changed, 56 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j721s2-evm-pcie1-ep.dtso
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index 5620db44d4dc..70baf88964fb 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -77,6 +77,8 @@ dtb-$(CONFIG_ARCH_K3) += k3-j721s2-common-proc-board.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-j721s2-evm-gesi-exp-board.dtbo
>  k3-j721s2-evm-dtbs := k3-j721s2-common-proc-board.dtb k3-j721s2-evm-gesi-exp-board.dtbo
>  dtb-$(CONFIG_ARCH_K3) += k3-j721s2-evm.dtb
> +k3-j721s2-evm-pcie1-ep-dtbs := k3-j721s2-evm.dtb k3-j721s2-evm-pcie1-ep.dtbo
> +dtb-$(CONFIG_ARCH_K3) += k3-j721s2-evm-pcie1-ep.dtb
>  
>  # Boards with J784s4 SoC
>  dtb-$(CONFIG_ARCH_K3) += k3-am69-sk.dtb
> @@ -89,3 +91,4 @@ DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
>  DTC_FLAGS_k3-j721e-common-proc-board += -@
>  DTC_FLAGS_k3-j721e-evm += -@
>  DTC_FLAGS_k3-j721s2-common-proc-board += -@
> +DTC_FLAGS_k3-j721s2-evm += -@
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


Reviewed-by: Ravi Gunasekaran <r-gunasekaran@ti.com>

-- 
Regards,
Ravi

