Return-Path: <devicetree+bounces-17148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ED87F1583
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44FFF1C217DA
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 14:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C50781C2A5;
	Mon, 20 Nov 2023 14:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="nS+hUdzM"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 180971701
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 06:17:17 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3CAF76601A72;
	Mon, 20 Nov 2023 14:17:14 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700489835;
	bh=HHsp4q6mOViGXdwW5CudcqH3JZzGtrZRkSLKU0T/BwA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nS+hUdzMC0FyLJ2N5IeDbBStEuV3xk4BMyDDUeJj08+0cPxewquizAWvfsfoMZIf3
	 AVKIzS8Xny7lsSFpRABJjDEln4iJ+JaUmdQG0fTP+dy3MwrKQCZXTcvyVzx26evg0S
	 D/eJf+w9WNjMsbXWarUcLGsl7g41Y4mvjvvzo3Aqot2HoFNUC2t+25xpGSlOowgfT7
	 voMDEPDdApwpHEe2dtxmb6v+kKTBtCzJdefgzDp57Yb+Iq8XPyzbMrJrSvl+yfpU8R
	 uKY06n0pgIWgzVeR8AroasTZ97ADbCD7MsL53SP1DdAyPIkWZJXRCNhGV+ZB7Yvh4L
	 exUBJjDQeulHw==
Message-ID: <0c3267e5-5371-4fd8-a0f6-360ff28c9dda@collabora.com>
Date: Mon, 20 Nov 2023 15:17:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: mediatek: Add Acelink EW-7886CAX
Content-Language: en-US
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?=
 <nfraprado@collabora.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang
 <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20231117104315.9718-2-zajec5@gmail.com>
 <20231117104315.9718-3-zajec5@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231117104315.9718-3-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 17/11/23 11:43, Rafał Miłecki ha scritto:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Acelink EW-7886CAX is an MT7986A (AKA Filogic 830) based access point.
> It has 512 MiB of RAM, one 2.5 Gbps PoE (802.3at) Ethernet port and
> on-SoC Wi-Fi.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>   arch/arm64/boot/dts/mediatek/Makefile         |   1 +
>   .../mediatek/mt7986a-acelink-ew-7886cax.dts   | 175 ++++++++++++++++++
>   2 files changed, 176 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
> 
> diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
> index e6e7592a3645..9ff2ab6c5e4d 100644
> --- a/arch/arm64/boot/dts/mediatek/Makefile
> +++ b/arch/arm64/boot/dts/mediatek/Makefile
> @@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-evb.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-acelink-ew-7886cax.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc.dtbo
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nand.dtbo
> diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts b/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
> new file mode 100644
> index 000000000000..18d19281dfdb
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
> @@ -0,0 +1,175 @@
> +// SPDX-License-Identifier: GPL-2.0-only OR MIT
> +
> +/dts-v1/;
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +
> +#include "mt7986a.dtsi"
> +
> +/ {
> +	model = "Acelink EW-7886CAX";
> +	compatible = "acelink,ew-7886cax", "mediatek,mt7986a";
> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	memory@40000000 {
> +		reg = <0 0x40000000 0 0x20000000>;
> +		device_type = "memory";
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +
> +		key-restart {
> +			label = "Reset";
> +			gpios = <&pio 7 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_RESTART>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-0 {

Please, reorder by name

			color =	...
			function = ...
			gpios = ...

> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_RED>;
> +			gpios = <&pio 18 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led-1 {
> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&pio 19 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led-2 {
> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_BLUE>;
> +			gpios = <&pio 20 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +};
> +
> +&watchdog {

Ordering again, watchdog goes before wifi

> +	status = "okay";
> +};
> +
> +&trng {
> +	status = "okay";
> +};
> +
> +&crypto {

crypto goes first.

crypto, eth, pcie_phy, spi0, trng, watchdog, wifi.

> +	status = "okay";
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&spi0 {
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "spi-nand";
> +		reg = <0>;

compatible
reg
#address/size cells
spi-max-frequency
spi-rx-bus-width
spi-tx-bus-width

> +		spi-max-frequency = <52000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
> +
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partitions: partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			partition@0 {
> +				label = "bootloader";
> +				reg = <0x0 0x100000>;

label, reg, read-only

> +				read-only;
> +			};
> +
> +			partition@100000 {
> +				label = "u-boot-env";

reg first, label last

> +				reg = <0x100000 0x80000>;
> +			};
> +
> +			factory: partition@180000 {

Why do you have a phandle here? This has no use, please remove.

> +				label = "factory";
> +				reg = <0x180000 0x200000>;
> +				read-only;
> +				compatible = "nvmem-cells";

compatible
reg
label
read-only;

> +
> +				nvmem-layout {
> +					compatible = "fixed-layout";
> +					#address-cells = <1>;
> +					#size-cells = <1>;
> +
> +					eeprom: eeprom@0 {
> +						reg = <0x0 0x1000>;
> +					};
> +
> +					macaddr: macaddr@4 {
> +						reg = <0x4 0x6>;
> +					};
> +				};
> +			};
> +
> +			partition@380000 {
> +				label = "fip";
> +				reg = <0x380000 0x200000>;

reg first, label last

> +			};
> +
> +			partition@580000 {
> +				label = "ubi";
> +				reg = <0x580000 0x4000000>;
> +			};
> +		};
> +	};
> +};
> +

Regards,
Angelo

