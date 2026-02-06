Return-Path: <devicetree+bounces-263516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oC60MQ5UhmmEMAQAu9opvQ
	(envelope-from <devicetree+bounces-263516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:50:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 673811033E1
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 21:50:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B40913012506
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 20:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 198F830BB9B;
	Fri,  6 Feb 2026 20:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="TjtoYbQg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5420F286D5C
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 20:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770411019; cv=none; b=As8KCOe7UW9gjDtkM/1vtTzQJmF412eDFJnUP+lQUUdsLpmxPoRVokLFg+1hIgJ+GX2R0EpOXcsI0NPVvVHyEu9m0jS3APrKvrCmEgrzV0+ZFVDXvBCYgntmCiz7uQi+oB+g/QNUXcm7aiJ2STdDyulwxmXKtwyV0oXKNKckKd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770411019; c=relaxed/simple;
	bh=tUB2Bgc66nVc0nsOK2ZmrZDjmqDmjP+6evd++P1JHVE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=as66ksJPFU3QbA7OBA6zHMXnYIs1CgOp3rXkzIBjGtyQTL6tq1rN3Z7mVvvC3+I91p9iNr9PDs+uioymPN6Dfwgw9HlnDR8SN8DV94LTqbh4F0wysnwMsb9a5/m5EWxM4o5/aj/Hyr0Ly/eBdET8RerL5/DUdZ8XCEvufID5Sy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=TjtoYbQg; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1770411017;
 bh=KjKy0DEi9PeeKMA6cFOEmoz6i/HCq6Rp2FX4gRpNp7s=;
 b=TjtoYbQgFHG+3sRSJu9bQkEN1DUIzE8GXgajysIC/Wf5K+hyrKr+397yuznZu6ybtcsJjlNUl
 Roe5Aqs4zF+yLqObh/H9Yj4MwRYzk5dKnGLtn7MqEcRmSRt8SotW8v96iiDgg+XpMs79S4gSisV
 k6LZxoBqgGygGtZIeUB0l7sA9Ush+eGOPdif0TG+vY8yd+HLvfBdPBgTSksQIGaNiHqtUmkxTkp
 tELelAWzgOQlUu4LXDZXwXeeBU2U+0uNaWL6sAXlwxkO1QlzZNdBNV/lOWJD+wjreXF/DI2Fs/D
 M2y43cELNJe4WpxuKtaFFOC3oZtM0Hjf74BEIJ55dzfA==
X-Forward-Email-ID: 69865405a0945f6de12eac74
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.6.1
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <36248f00-1ffe-43a1-bdc7-24738389f1ce@kwiboo.se>
Date: Fri, 6 Feb 2026 21:50:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/11] ARM: dts: rockchip: Add Onion RV1103B Omega4
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Fabio Estevam <festevam@nabladev.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-12-festevam@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260206181309.2696095-12-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263516-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kwiboo.se:mid,kwiboo.se:dkim,0.2.34.224:email,0.3.169.128:email,nabladev.com:email,0.0.156.64:email,0.0.0.0:email,a40000:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,plan44.ch:url]
X-Rspamd-Queue-Id: 673811033E1
X-Rspamd-Action: no action

Hi Fabio,

On 2/6/2026 7:13 PM, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Onion Omega4 board is a board based on the RV1103B SoC that has:
> 
> - 256 MB of RAM
> - 256 MB of SPI-NAND
> - Ethernet
> - USB OTG
> - Wifi
> - SD card
> - Camera connector
> 
> Add the initial support for this board so that it can fully boot into
> Linux with the root file system stored in the SPI NAND.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
>  arch/arm/boot/dts/rockchip/Makefile           |  1 +
>  arch/arm/boot/dts/rockchip/rv1103b-omega4.dts | 92 +++++++++++++++++++
>  2 files changed, 93 insertions(+)
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
> index 000000000000..512b063bceb1
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
> @@ -0,0 +1,92 @@
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
> +/ {
> +	model = "Onion RV1103 Omega4 Board";
> +	compatible = "onion,rv1103b-omega4", "rockchip,rv1103b";
> +
> +	chosen {
> +		stdout-path = &uart0;

Please add a serial0 alias and use the following form to match most
other Rockchip boards.

 		stdout-path = "serial0:115200n8";

> +	};
> +
> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0x0 0x10000000>;
> +	};

Memory nodes is typically added by firmware on Rockchip platform.

Size of the DRAM is typically encoded in OS_REG2 by the DRAM init
code and can/should be picked up from there for next boot stages.

> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-0	{
> +			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;

Please add pinctrl props for this pin. Also please add function and
color props.

> +			label = "sys";
> +			default-state = "on";
> +		};
> +	};
> +};
> +
> +&fspi0 {
> +	bootph-all;

This is not really needed in all boot phases, the initial phase only
initialize DRAM and then return to BootROM so does not need to know
about the spi flash.

Also adding it here is not enough, please instead add bootph props to
the flash@0 or possible partitions node.

For optimal boot performance and size consideration you should drop
this and add following bootph props.

> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "spi-nand";
> +		reg = <0>;

		bootph-pre-ram;
		bootph-some-ram;

Adding these here ensure that this and the parent node is included in
the second stage and the pre-relocation boot-phase, the only phases they
are needed.

Regards,
Jonas

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


