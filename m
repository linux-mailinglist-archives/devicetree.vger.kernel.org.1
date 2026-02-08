Return-Path: <devicetree+bounces-263751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5SkdG+4KiWmw1gQAu9opvQ
	(envelope-from <devicetree+bounces-263751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:15:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CBD10A699
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:15:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 32F8330053A0
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 22:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E41E35CBA3;
	Sun,  8 Feb 2026 22:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="uZuyO9qM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F68C2F8BD3
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 22:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770588907; cv=none; b=tFOC80ti3HOhvWSorjFGUxetnCyyMv6dfZBja0FGLQTEM9EbHeS01P71UCcEtgjKGlgTW2jFWrMvqgjJ+bavjr8inBU19xyuMOHmtBuqnOgdISUHbhKhM94n5X3n56Y9cgS1URp8WI+dbPn1r8DLtsRAVL534e5H+6NVMXrHnfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770588907; c=relaxed/simple;
	bh=lYUq1TpipuXLGJI0G8segUPMNOFg3gEzdrxDmQ0SkcI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=As57wjK4rlWAQ/EPOnm4WSkKG5M2in3T1OcHJdvFfUIab2G6EKtFsASavoZRDHP03w0bFmQfAKUKvIPpJu2rTARi7JcXA6EsUTC/K38vNf1BRUKkRf91j7IElUcM1ZgDLxmMaLn/Y3Li2BxXjDPFYlFZbFI1A7tfwrGY2EosYLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=uZuyO9qM; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1770588905;
 bh=7dSjZHT2Dl4grmYJRUZgGDEO0U0HL5eO/bColsBuxcA=;
 b=uZuyO9qMpc/Bg+d1n2vOX6HYkpJr7BTCchUYQZ1Qdw9NP8VNsMgiw0ZJO+cNdLxRR6V6CzxO0
 a3gJdTdeuAOmJYIyUcTvOgWRuFrCyD54PpHxe5WzM8gS5aK8O7IxRfDfmRlUq+dynmkZCLP5p1O
 BIzlacad1GkA+4NWFW8nF1oEELY91ZCzPV7505JCUF47BP+P44XUzcCwLhGoaGgQ1eY97n8osmo
 jg+ylifcNvOmbps9sDefSme3SBqgLJeyLGb8Do3SJImm+ug4VaRcglBPJA65CWtOkG8xVgw0bqq
 iJcgD08UJ6C2tbuKxf/CCuPwDnWwNEA8MqPyEI984R8w==
X-Forward-Email-ID: 69890ae4a6487c2810b18fa7
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.6.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d41492a9-bb59-4999-8497-e28d03d3a13f@kwiboo.se>
Date: Sun, 8 Feb 2026 23:14:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] ARM: dts: rockchip: Add Onion RV1103B Omega4
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Fabio Estevam <festevam@nabladev.com>
References: <20260207131803.2834749-1-festevam@gmail.com>
 <20260207131803.2834749-4-festevam@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260207131803.2834749-4-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[tor.lore.kernel.org:server fail];
	TAGGED_FROM(0.00)[bounces-263751-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.2.34.224:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	NEURAL_HAM(-0.00)[-0.987];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.156.64:email,0.3.169.128:email]
X-Rspamd-Queue-Id: 72CBD10A699
X-Rspamd-Action: no action

Hi Fabio,

On 2/7/2026 2:18 PM, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Onion Omega4 board is a board based on the RV1103B SoC that has:
> 
>  - 256 MB of RAM
>  - 256 MB of SPI-NAND
>  - Ethernet
>  - USB OTG
>  - Wifi
>  - SD card
>  - Camera connector
> 
> Add the initial support for this board so that it can fully boot into
> Linux with the root file system stored in the SPI NAND.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> Changes since v1:
> - Removed memory node.
> - Added serial0 alias and used stdout-path = "serial0:115200n8";
> - Added color, function and pinctrl entries to the LED node.
> - Used bootph-pre-ram and bootph-some-ram.
> 
>  arch/arm/boot/dts/rockchip/Makefile           |   1 +
>  arch/arm/boot/dts/rockchip/rv1103b-omega4.dts | 106 ++++++++++++++++++
>  2 files changed, 107 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
> 
> diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
> index 716f5540e438..d8cd5df138cc 100644
> --- a/arch/arm/boot/dts/rockchip/Makefile
> +++ b/arch/arm/boot/dts/rockchip/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += \
> +	rv1103b-omega4.dtb \
>  	rv1108-elgin-r1.dtb \
>  	rv1108-evb.dtb \
>  	rv1109-relfor-saib.dtb \
> diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
> new file mode 100644
> index 000000000000..bcfc9b321dd6
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
> @@ -0,0 +1,106 @@
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
> +#include "rv1103b.dtsi"
> +
> +/ {
> +	model = "Onion RV1103 Omega4 Board";
> +	compatible = "onion,rv1103b-omega4", "rockchip,rv1103b";

Am I correct in that this is the Omega-4 Evaluation Board (EVB) [1] and
that the Omega-4 is a System-on-Module?

The model should probably not mention the RV1103, as this is a RV1103B
board. I also think this probably should be split up into a SOM dtsi and
a board dts similar to how other Rockchip SOM boards are handled, e.g.

	model = "Onion Omega-4 Evaluation Board";
	compatible = "onion,omega4-evb", "onion,omega4", "rockchip,rv1103b";

and split into rv1103b-omega4.dtsi and rv1103b-omega4-evb.dts or similar?

[1] https://documentation.onioniot.com/omega4/getting-started/

Regards,
Jonas

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
> +			pinctrl-0 = <&led_pin>;
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
> +	flash@0 {
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
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0m0_xfer_pins>;
> +	bootph-all;
> +	status = "okay";
> +};
> +
> +&wdt {
> +	bootph-all;
> +	status = "okay";
> +};
> +
> +&pinctrl {
> +	leds {
> +		led_pin: led-pin {
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};


