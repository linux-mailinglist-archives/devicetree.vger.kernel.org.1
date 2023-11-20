Return-Path: <devicetree+bounces-17186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 453717F181D
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 17:04:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67F171C21827
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 16:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C64ED1DDF5;
	Mon, 20 Nov 2023 16:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="bHFMbnWX"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40750A7;
	Mon, 20 Nov 2023 08:03:39 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AKG3Jq1096773;
	Mon, 20 Nov 2023 10:03:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700496199;
	bh=JU06E0R5K4tZteAWm4H4BJVz35ET0XzA+CYfwNOOyMo=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=bHFMbnWXbxff7EflG3YDPltwSzoVxGFA8h5GnnQM9F/o1DG37qz2F960nOM3cewnH
	 6JlqhA2rq+CXAWGsLUEPdUrcFtqeDm0XbmMXUje7oZmey+xBJHGLTGs9pFC1p/ehf/
	 WXq/5jEc7Q2Yo38hvHaJi2OMCKGyfD52opfxoZS4=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AKG3JHZ069385
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 20 Nov 2023 10:03:19 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 20
 Nov 2023 10:03:19 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 20 Nov 2023 10:03:19 -0600
Received: from [10.250.36.5] (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AKG3H2a015408;
	Mon, 20 Nov 2023 10:03:18 -0600
Message-ID: <6a4bca7b-7750-45e6-bbce-2d324e5fc900@ti.com>
Date: Mon, 20 Nov 2023 10:03:17 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] arm64: dts: ti: k3-am625-beagleplay: Add overlays
 for OV5640
Content-Language: en-US
To: Jai Luthra <j-luthra@ti.com>, Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Nishanth Menon <nm@ti.com>,
        Vignesh
 Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Aradhya Bhatia <a-bhatia1@ti.com>,
        Devarsh
 Thakkar <devarsht@ti.com>,
        Vaishnav Achath <vaishnav.a@ti.com>,
        Julien Massot
	<julien.massot@collabora.com>,
        Martyn Welch <martyn.welch@collabora.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
References: <20231117-csi_dts-v2-0-bf4312194a6b@ti.com>
 <20231117-csi_dts-v2-4-bf4312194a6b@ti.com>
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20231117-csi_dts-v2-4-bf4312194a6b@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 11/17/23 3:28 AM, Jai Luthra wrote:
> Three different OV5640 modules are supported using the FFC connector on
> BeaglePlay:
> - Digilent PCam 5C
> - ALINX AN5641
> - TEVI-OV5640-*-RPI
> 
> The Digilent and ALINX modules supply a 12Mhz XCLK to the sensor, while
> the TEVI module supplies a 24Mhz XCLK, thus requiring a separate
> overlay.
> 
> Signed-off-by: Jai Luthra <j-luthra@ti.com>
> ---
>   arch/arm64/boot/dts/ti/Makefile                    | 11 ++++
>   .../dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso    | 77 ++++++++++++++++++++++
>   .../ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso   | 77 ++++++++++++++++++++++
>   3 files changed, 165 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index 77a347f9f47d..c6c7825b4cb2 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -12,6 +12,8 @@
>   k3-am625-sk-hdmi-audio-dtbs := k3-am625-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
>   k3-am62-lp-sk-hdmi-audio-dtbs := k3-am62-lp-sk.dtb k3-am62x-sk-hdmi-audio.dtbo
>   dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay.dtb
> +dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay-csi2-ov5640.dtbo
> +dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
>   dtb-$(CONFIG_ARCH_K3) += k3-am625-phyboard-lyra-rdk.dtb
>   dtb-$(CONFIG_ARCH_K3) += k3-am625-sk.dtb
>   dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-nonwifi-dahlia.dtb
> @@ -80,7 +82,16 @@ dtb-$(CONFIG_ARCH_K3) += k3-j721s2-evm.dtb
>   dtb-$(CONFIG_ARCH_K3) += k3-am69-sk.dtb
>   dtb-$(CONFIG_ARCH_K3) += k3-j784s4-evm.dtb
>   
> +# Build time test only, enabled by CONFIG_OF_ALL_DTBS
> +k3-am625-beagleplay-csi2-ov5640-dtbs := k3-am625-beagleplay.dtb \
> +	k3-am625-beagleplay-csi2-ov5640.dtbo
> +k3-am625-beagleplay-csi2-tevi-ov5640-dtbs := k3-am625-beagleplay.dtb \
> +	k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
> +dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
> +	k3-am625-beagleplay-csi2-tevi-ov5640.dtb
> +
>   # Enable support for device-tree overlays
> +DTC_FLAGS_k3-am625-beagleplay += -@

Too bad the build test check doesn't add this for us, might be time
to just make this default, I see broadcom/Makefile has:

DTC_FLAGS := -@

Well we can look into that later, this patch LGTM,

Reviewed-by: Andrew Davis <afd@ti.com>

>   DTC_FLAGS_k3-am625-sk += -@
>   DTC_FLAGS_k3-am62-lp-sk += -@
>   DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso
> new file mode 100644
> index 000000000000..5e80ca7033ba
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso
> @@ -0,0 +1,77 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * ALINX AN5641 & Digilent PCam 5C - OV5640 camera module
> + * Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +
> +&{/} {
> +	clk_ov5640_fixed: ov5640-xclk {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <12000000>;
> +	};
> +};
> +
> +&main_gpio0 {
> +	p11-hog {
> +		/* P11 - CSI2_CAMERA_GPIO1 */
> +		gpio-hog;
> +		gpios = <11 GPIO_ACTIVE_HIGH>;
> +		output-high;
> +		line-name = "CSI2_CAMERA_GPIO1";
> +	};
> +};
> +
> +&wkup_i2c0 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	ov5640: camera@3c {
> +		compatible = "ovti,ov5640";
> +		reg = <0x3c>;
> +
> +		clocks = <&clk_ov5640_fixed>;
> +		clock-names = "xclk";
> +
> +		port {
> +			csi2_cam0: endpoint {
> +				remote-endpoint = <&csi2rx0_in_sensor>;
> +				clock-lanes = <0>;
> +				data-lanes = <1 2>;
> +			};
> +		};
> +	};
> +};
> +
> +&cdns_csi2rx0 {
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		csi0_port0: port@0 {
> +			reg = <0>;
> +			status = "okay";
> +
> +			csi2rx0_in_sensor: endpoint {
> +				remote-endpoint = <&csi2_cam0>;
> +				bus-type = <4>; /* CSI2 DPHY. */
> +				clock-lanes = <0>;
> +				data-lanes = <1 2>;
> +			};
> +		};
> +	};
> +};
> +
> +&dphy0 {
> +	status = "okay";
> +};
> +
> +&ti_csi2rx0 {
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso
> new file mode 100644
> index 000000000000..5e1cbbc27c8f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso
> @@ -0,0 +1,77 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Technexion TEVI-OV5640-*-RPI - OV5640 camera module
> + * Copyright (C) 2022-2023 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +
> +&{/} {
> +	clk_ov5640_fixed: ov5640-xclk {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +	};
> +};
> +
> +&main_gpio0 {
> +	p11-hog {
> +		/* P11 - CSI2_CAMERA_GPIO1 */
> +		gpio-hog;
> +		gpios = <11 GPIO_ACTIVE_HIGH>;
> +		output-high;
> +		line-name = "CSI2_CAMERA_GPIO1";
> +	};
> +};
> +
> +&wkup_i2c0 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	ov5640: camera@3c {
> +		compatible = "ovti,ov5640";
> +		reg = <0x3c>;
> +
> +		clocks = <&clk_ov5640_fixed>;
> +		clock-names = "xclk";
> +
> +		port {
> +			csi2_cam0: endpoint {
> +				remote-endpoint = <&csi2rx0_in_sensor>;
> +				clock-lanes = <0>;
> +				data-lanes = <1 2>;
> +			};
> +		};
> +	};
> +};
> +
> +&cdns_csi2rx0 {
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		csi0_port0: port@0 {
> +			reg = <0>;
> +			status = "okay";
> +
> +			csi2rx0_in_sensor: endpoint {
> +				remote-endpoint = <&csi2_cam0>;
> +				bus-type = <4>; /* CSI2 DPHY. */
> +				clock-lanes = <0>;
> +				data-lanes = <1 2>;
> +			};
> +		};
> +	};
> +};
> +
> +&dphy0 {
> +	status = "okay";
> +};
> +
> +&ti_csi2rx0 {
> +	status = "okay";
> +};
> 

