Return-Path: <devicetree+bounces-324925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mLiFEUGzUmrVSQMAu9opvQ
	(envelope-from <devicetree+bounces-324925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 23:18:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 29250742ECE
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 23:18:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YCYCCKMd;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324925-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-324925-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3A87A3004D9E
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 21:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FC3A3128D7;
	Sat, 11 Jul 2026 21:18:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB6F2773E5
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 21:18:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783804731; cv=none; b=NjipU5plmEmWAf2fa/jiF3IThMPZJ06izjtvxo54sPwt0lJtkRCGw67FJfy1xgcQUPybPQ/JP6hzTwtUWvNnIPS5fDSEZU7GjwayAYGNm9Z+N3Ys7KH8V4sr7OHb67ZNVLEgO7yx3xFKhPbEXHEWWBGzOOQOz6aoy1+LILDBZuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783804731; c=relaxed/simple;
	bh=PPXxnfnVZeN3kjKs/DEvJXTVdEdNRlYgi0sLQ164mIM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QNPPDo1bJUX6StD6NzlHBP7xLziImjhtAStb4GSOFV3dXlwKuqi7tiLe435vdshUx9ojJoBZaR3rjiS8impF5K3SjHjaALDehp1Pr+QoKKiDEKBo7ukaoTy8gQzjAqus2zgfCB2J07JGc5P51Cy+HHf4pzCuUDIbiRGwyWx9U6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCYCCKMd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B03571F000E9;
	Sat, 11 Jul 2026 21:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783804729;
	bh=qMxy7XmOFwetPcRijfI4OzBcmke++sF6HjWtH0eu2hg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YCYCCKMd33gwG5m9nPpfJd5cA6f4Jp/AS5ZPqEp/b0qProydXL9cNArr25/4khcgg
	 VeF0Rf0eJ3DX4ccLc/SdboxBJxv7KPO7GLryyk0zsh2SJ2mUo/8Qlw2QQBdBaRUcEI
	 N3SyXSot5vzsni1qacXpYy0tlaDhrB9vUbEIwKa9psDGsIaYtXEdmVyEDxBt7TII5l
	 8iHcf4rYXwGcTcvFvgEzdztEaHuEKEHurwRqim+e5YWlm0n7k3GMuf5PImMKqJgpxO
	 YxrKapeyQIa1w60i0oYkm1Gh5ZrOdq9h/fMJ8o6wHGxDI2Nh92DAGSCz9kF5chKpFL
	 zVa4EGUpCJATQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 09/10] arm64: dts: st: Add support for DH electronics
 STM32MP23xx/STM32MP25xx DHCOS SoM and Breakout Board and DHSBC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Marek Vasut" <marex@nabladev.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260711210131.236025-10-marex@nabladev.com>
References: <20260711210131.236025-1-marex@nabladev.com>
 <20260711210131.236025-10-marex@nabladev.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 21:18:49 +0000
Message-Id: <20260711211849.B03571F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324925-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:marex@nabladev.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 29250742ECE

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] SoC hardware mismatch between included DTSI and root compatible st=
ring
- [High] Incorrect SPI chip select polarity (GPIO_ACTIVE_HIGH) breaks SPI c=
ommunication
- [Low] Dangling uart8 alias in common DTSI file
--

--- Patch [9]: [PATCH 09/10] arm64: dts: st: Add support for DH electronics=
 STM32MP23xx/STM32MP25xx DHCOS SoM and Breakout Board and DHSBC ---
commit 703b623c315fcfbe4a6aecf3454ed4e9fa856d0e
Author: Marek Vasut <marex@nabladev.com>

arm64: dts: st: Add support for DH electronics STM32MP23xx/STM32MP25xx DHCO=
S SoM and Breakout Board and DHSBC

This commit adds device tree definitions for the DH electronics DHCOS=20
system-on-module based on STM32MP25xx and STM32MP23xx SoCs. It also include=
s=20
support for the corresponding Breakout Board and DHSBC carrier boards.

> diff --git a/arch/arm64/boot/dts/st/stm32mp23xx-dhcos-bb.dts b/arch/arm64=
/boot/dts/st/stm32mp23xx-dhcos-bb.dts
> new file mode 100644
> index 0000000000000..125c76fe3e7be
> --- /dev/null
> +++ b/arch/arm64/boot/dts/st/stm32mp23xx-dhcos-bb.dts
> @@ -0,0 +1,15 @@
[ ... ]
> +#include "stm32mp235.dtsi"
> +#include "stm32mp23xc.dtsi"
> +#include "stm32mp23xx-dhcos-som.dtsi"
> +
> +/ {
> +	model =3D "DH electronics STM32MP23xx DHCOS Breakout Board";
> +	compatible =3D "dh,stm32mp231a-dhcos-bb", "dh,stm32mp231a-dhcos-som", "=
st,stm32mp231";

[Severity: High]
Does this compatible string mismatch the included DTSI?

This file includes stm32mp235.dtsi, which usually defines additional hardwa=
re=20
capabilities like secondary CPUs, but sets the root compatible to st,stm32m=
p231.=20
If the board physically has a single-core SoC, could the kernel attempt to=
=20
initialize non-existent hardware and fail?

> +};

> diff --git a/arch/arm64/boot/dts/st/stm32mp255c-dhcos-dhsbc.dts b/arch/ar=
m64/boot/dts/st/stm32mp255c-dhcos-dhsbc.dts
> new file mode 100644
> index 0000000000000..1d750d2787d6f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/st/stm32mp255c-dhcos-dhsbc.dts
[ ... ]
> +&spi1 {
> +	pinctrl-names =3D "default", "sleep";
> +	pinctrl-0 =3D <&spi1_pins_a>;
> +	pinctrl-1 =3D <&spi1_sleep_pins_a>;
> +	cs-gpios =3D <&gpioh 3 0>;

[Severity: High]
Does this cs-gpios definition use the correct polarity?

The value 0 (GPIO_ACTIVE_HIGH) is specified, but standard SPI devices,=20
including the st33htpm-spi TPM attached below, typically require an active-=
low=20
chip select. Could this active-high polarity break communication with the T=
PM?

> +	status =3D "okay";
> +
> +	st33htph: tpm@0 {
> +		compatible =3D "st,st33htpm-spi", "tcg,tpm_tis-spi";
> +		reg =3D <0>;
[ ... ]
> +&spi8 {
> +	pinctrl-names =3D "default", "sleep";
> +	pinctrl-0 =3D <&spi8_pins_b>;
> +	pinctrl-1 =3D <&spi8_sleep_pins_b>;
> +	cs-gpios =3D <&gpioz 6 0>;

[Severity: High]
Is the chip select polarity correct here as well?

This also specifies 0 (GPIO_ACTIVE_HIGH) for the SPI8 chip select.

> +};

> diff --git a/arch/arm64/boot/dts/st/stm32mp25xx-dhcos-bb.dts b/arch/arm64=
/boot/dts/st/stm32mp25xx-dhcos-bb.dts
> new file mode 100644
> index 0000000000000..cf66e8e48c99a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/st/stm32mp25xx-dhcos-bb.dts
> @@ -0,0 +1,15 @@
[ ... ]
> +#include "stm32mp255.dtsi"
> +#include "stm32mp25xc.dtsi"
> +#include "stm32mp25xx-dhcos-som.dtsi"
> +
> +/ {
> +	model =3D "DH electronics STM32MP25xx DHCOS Breakout Board";
> +	compatible =3D "dh,stm32mp251a-dhcos-bb", "dh,stm32mp251a-dhcos-som", "=
st,stm32mp251";

[Severity: High]
Does this compatible string mismatch the included DTSI?

Similar to the mp23xx board, this includes stm32mp255.dtsi but declares the
compatible string as st,stm32mp251.

> +};

> diff --git a/arch/arm64/boot/dts/st/stm32mp2xxx-dhcos-som.dtsi b/arch/arm=
64/boot/dts/st/stm32mp2xxx-dhcos-som.dtsi
> new file mode 100644
> index 0000000000000..330c7c6768b6c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/st/stm32mp2xxx-dhcos-som.dtsi
> @@ -0,0 +1,442 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-3-Clause)
> +/*
> + * Copyright (C) 2025-2026 Marek Vasut <marex@nabladev.com>
> + */
> +
> +/ {
> +	aliases {
> +		mmc0 =3D &sdmmc2;
> +		mmc1 =3D &sdmmc3;
> +		serial0 =3D &usart6;
> +		serial1 =3D &uart8;

[Severity: Low]
Does this create a dangling alias on STM32MP23xx platforms?

Since this is a common DTSI file included by stm32mp23xx-dhcos-som.dtsi,=20
assigning serial1 to uart8 might be problematic if uart8 does not exist on=
=20
STM32MP23xx SoCs.

> +		eeprom0 =3D &eeprom0;
> +		eeprom0wl =3D &eeprom0wl;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260711210131.2360=
25-1-marex@nabladev.com?part=3D9

