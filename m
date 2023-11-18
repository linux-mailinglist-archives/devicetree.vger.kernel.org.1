Return-Path: <devicetree+bounces-16849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE437EFF61
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 13:09:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44B5A280F92
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 12:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B63DB1078E;
	Sat, 18 Nov 2023 12:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF12FD61
	for <devicetree@vger.kernel.org>; Sat, 18 Nov 2023 04:09:09 -0800 (PST)
Received: from i5e861935.versanet.de ([94.134.25.53] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r4K8I-0000ix-Ta; Sat, 18 Nov 2023 13:09:06 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Tim Lunn <tim@feathertop.org>
Cc: Jagan Teki <jagan@edgeble.ai>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Tim Lunn <tim@feathertop.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 7/8] ARM: dts: Add Sonoff iHost Smart Home Hub
Date: Sat, 18 Nov 2023 13:09:05 +0100
Message-ID: <4921575.Y6S9NjorxK@diego>
In-Reply-To: <20231113120705.1647498-8-tim@feathertop.org>
References:
 <20231113120705.1647498-1-tim@feathertop.org>
 <20231113120705.1647498-8-tim@feathertop.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Tim,

Am Montag, 13. November 2023, 13:07:04 CET schrieb Tim Lunn:
> Sonoff iHost is gateway device designed to provide a Smart Home Hub,
> it is based on Rockchip RV1126. There is also a version with 2GB RAM
> based off the RV1109 dual core SoC.
> 
> Features:
> - Rockchip RV1126
> - 4GB DDR4
> - 8GB eMMC
> - microSD slot
> - RMII Ethernet PHY
> - 1x USB 2.0 Host
> - 1x USB 2.0 OTG
> - Realtek RTL8723DS WiFi/BT
> - EFR32MG21 Silabs Zigbee radio
> - Speaker/Microphone
> 
> This patch adds the initial device tree for this device, it is largely
> based off the device trees for mainline Edgeble Neu2 and downstream
> Rockchip rv1126-evb-v13 configs. It has been adapted with relevant
> peripheral and GPIO pins for the iHost.
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>


> diff --git a/arch/arm/boot/dts/rockchip/rv1109.dtsi b/arch/arm/boot/dts/rockchip/rv1109.dtsi
> new file mode 100644
> index 000000000000..9cbaa08ab1b8
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1109.dtsi
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include "rv1126.dtsi"
> +
> +/ {
> +	compatible = "rockchip,rv1109";
> +
> +	cpus {
> +		/delete-node/ cpu@f02;
> +		/delete-node/ cpu@f03;
> +	};
> +
> +	arm-pmu {
> +		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-affinity = <&cpu0>, <&cpu1>;
> +	};
> +};

this definitly wants to be its own patch ;-) .

I.e. you add support for the rv1109, which seems to be the same as rv1126, just
with 2 instead of 4 cpu cores.




> +&sdio {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	keep-power-in-suspend;
> +	max-frequency = <100000000>;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
> +	rockchip,default-sample-phase = <90>;
> +	sd-uhs-sdr104;
> +	vmmc-supply = <&vcc3v3_sys>;
> +	vqmmc-supply = <&vcc_1v8>;
> +	status = "okay";
> +	#address-cells = <1>;
> +	#size-cells = <0>;

I don't think the *-cells are needed here


Thanks
Heiko



