Return-Path: <devicetree+bounces-273136-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OD96J5g7r2kPQQIAu9opvQ
	(envelope-from <devicetree+bounces-273136-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:28:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F13FC241AD2
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 22:28:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF68530C5807
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 21:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D61C346AE5;
	Mon,  9 Mar 2026 21:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="m65ga86f"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9548186E2E;
	Mon,  9 Mar 2026 21:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773091518; cv=none; b=H99PlmR9UaupVw1rm5Z98lZxRULRi8pMZqG4NvQYfjkgdl4RAlXRPAyUtk8UaRzEgEa1NMP1hlx5rQvj1rufp/pCIiIruVo2OmbVFbLm0sRpGaKBqBmGDz1YrcMjWhaH2Nu0Sa8uSuj6RYOy1qX/WuagRu9tJMLu0aHaIy0Y5Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773091518; c=relaxed/simple;
	bh=ujQK643kLxI8ypozZ6kgFDr24kkA0/c25uQkwkV05tE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Kw9R+HruHdtxnoDnDz3OXUPNiYqJMsw4hyjxEEmFLwkRk8aDPWV/JOYNtoVYdWwuhWm64t9e8ShB33qTq1mCdp1eBAIN+eEJQ4d0nMchKbXTllXSSsz8mCVW5BEz1CVzglGRiSNUT8XEMsvzxtGojQqmjl4XiDzL1v6p1JLI9Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=m65ga86f; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=oVHmmg5PbGhBJcH1DiEgCgltbKf4t8SXuZF/r8goSLw=; b=m65ga86fwWwLPFyKsNOsIcX0n5
	t+hFSKHitbRnnM6HTltcGkOw/tM+icOJ6Po2iUWNNoMiJy7a7u9GvU+ZLT4CbtQ+QmzRISrhVkYzh
	cQUak1ZcIUurAZjCLi4UO0smzo1imi2Ysvh7okKiSYqWTtGPpv+8yHWpsPWHuuieDuCO75OyKuHvz
	DjrRpGK2Pp1QNKhrQVJeKkstBhNDvU/Rw0wPiS/sDuXiraKj1nOI0eE+ovUGNXPsnWjN7qtXi8EdK
	/oH4O1VDXio5inTRlf0oHSGLGY+jUWpVOtYVGr0BGnBIW1yQQKz1UMNJeiXOCIUocG6Kmbv/tNul7
	KHMXW2IQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: jonas@kwiboo.se, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH v5 2/4] ARM: dts: rockchip: Add support for RV1103B
Date: Mon, 09 Mar 2026 22:24:52 +0100
Message-ID: <47923648.fMDQidcC6G@phil>
In-Reply-To: <20260216010219.2131484-2-festevam@gmail.com>
References:
 <20260216010219.2131484-1-festevam@gmail.com>
 <20260216010219.2131484-2-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: F13FC241AD2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273136-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[1.62.115.112:email,0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1.57.28.64:email,1.49.45.0:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,1.61.254.64:email]
X-Rspamd-Action: no action

Am Montag, 16. Februar 2026, 02:02:17 Mitteleurop=C3=A4ische Normalzeit sch=
rieb Fabio Estevam:
> From: Fabio Estevam <festevam@nabladev.com>
>=20
> Add the initial RV1103B devicetree.
>=20
> Based on the 5.10 Rockchip vendor kernel.
>=20
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> The <dt-bindings/clock/rockchip,rv1103b-cru.h> header comes from another
> series:
>=20
> https://lore.kernel.org/linux-devicetree/20260210022620.172570-1-festevam=
@gmail.com/
>=20
> Maybe Heiko could apply the clock series as well?
>=20
> Changes since v4:
> - None.
>=20
>  .../boot/dts/rockchip/rv1103b-pinctrl.dtsi    | 816 ++++++++++++++++++
>  arch/arm/boot/dts/rockchip/rv1103b.dtsi       | 257 ++++++
>  2 files changed, 1073 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
>  create mode 100644 arch/arm/boot/dts/rockchip/rv1103b.dtsi


> diff --git a/arch/arm/boot/dts/rockchip/rv1103b.dtsi b/arch/arm/boot/dts/=
rockchip/rv1103b.dtsi
> new file mode 100644
> index 000000000000..5955b249d4ce
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1103b.dtsi
> @@ -0,0 +1,257 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
> + */
> +
> +#include <dt-bindings/clock/rockchip,rv1103b-cru.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,boot-mode.h>
> +
> +/ {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
> +	compatible =3D "rockchip,rv1103b";
> +
> +	interrupt-parent =3D <&gic>;
> +
> +	arm-pmu {
> +		compatible =3D "arm,cortex-a7-pmu";
> +		interrupts =3D <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-affinity =3D <&cpu0>;
> +	};
> +
> +	xin32k: oscillator-32k {
> +		compatible =3D "fixed-clock";
> +		clock-frequency =3D <32768>;
> +		clock-output-names =3D "xin32k";
> +		#clock-cells =3D <0>;
> +	};

Please double-check where that xin32k is coming from in device-schematics.
Yes the xin24m is normally a dedicated oscillator, but the xin32k in
most cases is generated from the system-pmic.

So please check and most likely move that to the board dts.

Also, please sort node-names alphabetically (if there is no address)


> +	xin24m: oscillator-24m {
> +		compatible =3D "fixed-clock";
> +		clock-frequency =3D <24000000>;
> +		clock-output-names =3D "xin24m";
> +		#clock-cells =3D <0>;
> +	};
> +
> +	cpus {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		cpu0: cpu@0 {
> +			device_type =3D "cpu";
> +			compatible =3D "arm,cortex-a7";
> +			reg =3D <0x0>;
> +			clocks =3D <&cru ARMCLK>;
> +		};
> +	};
> +
> +	timer {
> +		compatible =3D "arm,armv7-timer";
> +		interrupts =3D <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HI=
GH)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
> +		clock-frequency =3D <24000000>;
> +	};
> +
> +	pinctrl: pinctrl {
> +		compatible =3D "rockchip,rv1103b-pinctrl";
> +		rockchip,grf =3D <&ioc>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		ranges;
> +
> +		gpio0: gpio@20520000 {
> +			compatible =3D "rockchip,gpio-bank";
> +			reg =3D <0x20520000 0x200>;
> +			interrupts =3D <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&cru PCLK_PMU_GPIO0>, <&cru DBCLK_PMU_GPIO0>;
> +			gpio-controller;
> +			#gpio-cells =3D <2>;
> +			interrupt-controller;
> +			#interrupt-cells =3D <2>;
> +		};
> +
> +		gpio1: gpio@20d80000 {
> +			compatible =3D "rockchip,gpio-bank";
> +			reg =3D <0x20d80000 0x200>;
> +			interrupts =3D <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
> +			gpio-controller;
> +			#gpio-cells =3D <2>;
> +			interrupt-controller;
> +			#interrupt-cells =3D <2>;
> +		};
> +
> +		gpio2: gpio@20840000 {
> +			compatible =3D "rockchip,gpio-bank";
> +			reg =3D <0x20840000 0x200>;
> +			interrupts =3D <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
> +			gpio-controller;
> +			#gpio-cells =3D <2>;
> +			interrupt-controller;
> +			#interrupt-cells =3D <2>;
> +		};
> +	};
> +
> +	soc {
> +		compatible =3D "simple-bus";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		ranges;
> +
> +		cru: clock-controller@20000000 {
> +			compatible =3D "rockchip,rv1103b-cru";
> +			reg =3D <0x20000000 0x81000>;
> +			#clock-cells =3D <1>;
> +			#reset-cells =3D <1>;
> +			bootph-all;

I don't think we want u-boot-specific properties in mainline.
They are normally kept in separate -u-boot.dtsi files

> +		};

[...]

> +		uart1: serial@20870000 {
> +			compatible =3D "rockchip,rv1103b-uart", "snps,dw-apb-uart";

uart compatible, does not seem to have landed in the uart tree

> +			reg =3D <0x20870000 0x100>;
> +			interrupts =3D <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
> +			reg-shift =3D <2>;
> +			reg-io-width =3D <4>;
> +			clocks =3D <&cru SCLK_UART1>, <&cru PCLK_UART1>;
> +			clock-names =3D "baudclk", "apb_pclk";
> +			pinctrl-names =3D "default";
> +			pinctrl-0 =3D <&uart1m0_xfer>;
> +			status =3D "disabled";
> +		};

[...]

> +		wdt: watchdog@208d0000 {
> +			compatible =3D "snps,dw-wdt";

please add a new compatible to the dw-wdt watchdog binding

> +			reg =3D <0x208d0000 0x100>;
> +			clocks =3D <&cru TCLK_WDT_NS>, <&cru PCLK_WDT_NS>;
> +			clock-names =3D "tclk", "pclk";
> +			interrupts =3D <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +			status =3D "disabled";
> +		};
> +


Heiko



