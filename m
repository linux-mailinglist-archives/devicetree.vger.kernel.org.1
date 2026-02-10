Return-Path: <devicetree+bounces-264472-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKA4JbZii2nDUAAAu9opvQ
	(envelope-from <devicetree+bounces-264472-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:54:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4A711D744
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:54:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C3E3E300E48C
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0758D3242D8;
	Tue, 10 Feb 2026 16:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="vzzlugcj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EF731D375
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 16:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770742442; cv=none; b=rHcXTDhOit5NTtyODhbybMki+bqaIL4rAGzEcIlnsqos9NPLe/21cNIJwCx4H2c8zkRGDaodkaraDDgsyVr9UTC2X7ULfMcY1jppXoAMTMsY4EilTIfUbPXzBYOSwZAqIi/Ech2qcBkgicGzX9NJgBY91Upyud4WibwBNAu2D3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770742442; c=relaxed/simple;
	bh=dGtnqMXQNUqYPMWPhS3LmezyJhHR3ffVP1gcWqA6kQc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dIVbeK6x941b5AY5NsFLn8jlgqtb98G4qQAV5LF7akJGv0xDBOie0oCraoPOlCmHH3Myt75nyx4VvjMKi+QMzVYoM6KogqxOKeu/JAEzk0smgrn2SbtSVRyMC+O3h+Y4q7axaQw6JppUIv1q+Ry1wOhZUvJ/94R9+Qh9PP9hJEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=vzzlugcj; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1770742433;
 bh=OQXwaNe4psr2XNmq2suhAylWK2H2KTRKcPx7MaB8l+g=;
 b=vzzlugcjWj8rnvAWv1Znkl0e6KW6+SdpOpGz0PQSRN8KNZ1dBQ+XCgRvjvRr+vNtLqepcqgta
 56b+0jHJKOboDw4KqZ1kEUw+r0gvkGyJyuWkthPtg2rWBmTkl1YtUQ+knC2jbhTPTWyAbMqAYa3
 07X80Afrir6krNWmRbTKIQiubVtwnArCTBu9SEWBfagYNJOSK3uqNStx96+4h2KRwGpHgbkJYqI
 nq+rey+F6yyuqqcaeQ3UVY+wayRouCmgLXnDfO36Awf+eESb2T4fgZfFasF1Hq+/qvFHbOWoQGj
 M1B+MC6H1ARKGlXZRfIhtlr5QMDLKCSaCo2Q3j5jn8Aw==
X-Forward-Email-ID: 698b629fe8cd0604c09e7484
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.6.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <a8c1bac7-9f67-4476-81ad-5271ff239b91@kwiboo.se>
Date: Tue, 10 Feb 2026 17:53:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation
 Board
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>
References: <20260210144845.317048-1-festevam@gmail.com>
 <20260210144845.317048-4-festevam@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260210144845.317048-4-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264472-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.3.169.128:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[a40000:email,0.0.0.0:email,onioniot.com:url,0.2.34.224:email,0.0.156.64:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,plan44.ch:url]
X-Rspamd-Queue-Id: DE4A711D744
X-Rspamd-Action: no action

Hi Fabio,

On 2/10/2026 3:48 PM, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> The Onion Omega4 Evaluation Board is based on the RV1103B SoC and has:
> 
>  - 256 MB of RAM
>  - 256 MB of SPI-NAND
>  - Ethernet
>  - USB OTG
>  - Wifi
>  - SD card
>  - Camera connector
> 
> The details can be found at:
> https://documentation.onioniot.com/omega4/getting-started/
> 
> Add the initial support for this board so that it can fully boot into
> Linux with the root file system stored in the SPI NAND.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> Changes since v3:
> - Split it in the EVB and SoM dtsi.
> 
>  arch/arm/boot/dts/rockchip/Makefile           |  1 +
>  .../boot/dts/rockchip/rv1103b-omega4-evb.dts  | 94 +++++++++++++++++++
>  .../arm/boot/dts/rockchip/rv1103b-omega4.dtsi | 21 +++++
>  3 files changed, 116 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
>  create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
> 
> diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
> index 716f5540e438..d0154fd7ff24 100644
> --- a/arch/arm/boot/dts/rockchip/Makefile
> +++ b/arch/arm/boot/dts/rockchip/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += \
> +	rv1103b-omega4-evb.dtb \
>  	rv1108-elgin-r1.dtb \
>  	rv1108-evb.dtb \
>  	rv1109-relfor-saib.dtb \
> diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts b/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
> new file mode 100644
> index 000000000000..686f2dd28eab
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
> @@ -0,0 +1,94 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2025 plan44.ch/luz
> + * Copyright (c) 2025 Onion Corporation
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include "rv1103b-omega4.dtsi"
> +
> +/ {
> +	model = "Onion Omega4 Evaluation Board";
> +	compatible = "onion,rv1103b-omega4-evb", "onion,rv1103b-omega4", "rockchip,rv1103b";

nit: Is rv1103b needed in all three compatible strings? The last one is
already pointing out that this is the rv1103b soc, also the other Onion
Omega boards in-tree use onion,omega and onion,omega2+.

> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-0	{
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&led>;
> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> +			function = LED_FUNCTION_STATUS;
> +			color = <LED_COLOR_ID_BLUE>;
> +			label = "sys";
> +			default-state = "on";
> +		};
> +	};
> +};
> +
> +&fspi0 {
> +	status = "okay";
> +
> +	spi_nand: flash@0 {
> +		compatible = "spi-nand";
> +		reg = <0>;
> +		bootph-pre-ram;
> +		bootph-some-ram;
> +		spi-max-frequency = <75000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <1>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			partition@0 {
> +				label = "env";
> +				reg = <0x00000000 0x00040000>;
> +			};
> +
> +			partition@40000 {
> +				label = "idblock";
> +				reg = <0x00040000 0x00100000>;
> +				read-only;
> +			};
> +
> +			partition@140000 {
> +				label = "uboot";
> +				reg = <0x00140000 0x00100000>;
> +				read-only;
> +			};
> +
> +			partition@240000 {
> +				label = "boot";
> +				reg = <0x00240000 0x00800000>;
> +			};
> +
> +			partition@a40000 {
> +				label = "ubi";
> +				reg = <0x00a40000 0x0f5c0000>;
> +			};
> +		};
> +	};
> +};

The getting started guide [1] list the NAND Flash as part of SOM, should
probably be moved to som dtsi.

[1] https://documentation.onioniot.com/omega4/getting-started/

> +&pinctrl {
> +	leds {
> +		led: led {
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
> new file mode 100644
> index 000000000000..bf245b547ea2
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
> @@ -0,0 +1,21 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2025 plan44.ch/luz
> + * Copyright (c) 2025 Onion Corporation
> + */
> +
> +/dts-v1/;
> +
> +#include "rv1103b.dtsi"
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0m0_xfer>;
> +	bootph-all;

nit: Please sort bootph before pinctrl.

Regards,
Jonas

> +	status = "okay";
> +};
> +
> +&wdt {
> +	status = "okay";
> +};


