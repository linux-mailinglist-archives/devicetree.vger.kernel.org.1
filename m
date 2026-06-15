Return-Path: <devicetree+bounces-311780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MdZCNt+7L2pDFQUAu9opvQ
	(envelope-from <devicetree+bounces-311780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:46:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB921684B20
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:46:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gTExwcHq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311780-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311780-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 57912300620B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C15E3D1717;
	Mon, 15 Jun 2026 08:46:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E293D1714
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 08:46:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781513166; cv=none; b=K+sazjBZEQaDDvSWCcwcxwr9FOfCOKoil6qoYIiNC/XJ7WnmiBsaK0NmWYYQGxauvtW17L11bqpRUJztwPfnVtOoqhxS1d1+CtowY616zBB6l1VggV4XmD8UJqe7zzTkoifYBYjwHBHNImaYjoHE863RJN57aq3K5P1cjjRDbfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781513166; c=relaxed/simple;
	bh=SMWl/P0BpLz1WvUDZpehWWsO20Ewf4Q8fqgk0x7X250=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DuLBGPXKkif34S48+ewHhB7wh1Crs6P/vgTERj++4XkVr8xN3os/4BWNkiLmmDI83JG1Zmuh12zYmOM5lfCeTA2Wb4MvdXDN46EnLMGTRoMmTyRspR6ZRst1Cqj5pE7YcJS57iKjGoLN9AU5pXWuHNukVaUDgSviHLWBU0zJqOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTExwcHq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33A9B1F000E9;
	Mon, 15 Jun 2026 08:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781513165;
	bh=I9l6puVv03VeTGIKfcz9vcIwLwj8Gac2NM6qdaxJXrY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gTExwcHqb811/L78Q5oAaDqGt2oPynj5t1Fmj3P86BScskc1wZdmsQ+O9PdB+rcav
	 sL00+ppgz37/hdOb6OB3kJbcUIe9JOxtnf+I1z1cd9Vciwqk2zi/JhUNfx+JqNXTke
	 3JQIIlleB7Qbhjh2xZ34GFNuZd9y8m0gxh9X6UGYbAkHB2HPt2fNK1C4jOnurh+PPo
	 IYuRnDa01q3lL4ModCyAGehHZFsGO0jGByvEm33I+HY2ey3GmuvRxHawzm/V/GHDjc
	 FuQhn4gmhzPbZ1ez1OBFU56s23NLCe/s70S1EIdTth/y6HrvCT3ijhddMZScp1qM7j
	 Ajilh7Vk1aihw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/5] arm64: dts: exynos: add initial support for
 Samsung Exynos8855 smdk
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alim Akhtar" <alim.akhtar@samsung.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260615085252.1964423-5-alim.akhtar@samsung.com>
References: <20260615085252.1964423-5-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 08:46:04 +0000
Message-Id: <20260615084605.33A9B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311780-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:alim.akhtar@samsung.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,samsung.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB921684B20

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Missing `interrupts` property for multiplexed pinctrl blocks break=
s GPIO interrupts.
- [Low] The timer node incorrectly uses the legacy GIC_CPU_MASK_SIMPLE macr=
o for its GICv3 PPI interrupts.
- [Low] Usage of magic numbers instead of standard macros for pinctrl confi=
gurations.
- [Low] Board device tree header comment references the wrong SoC and hardw=
are.
--

commit 8b3b2980b627113d8b255b5b20a2fd0b03fe40a0
Author: Alim Akhtar <alim.akhtar@samsung.com>

arm64: dts: exynos: add initial support for Samsung Exynos8855 smdk

Add initial devicetree support for Samsung smdk board using
Exynos8855 SoC.

> diff --git a/arch/arm64/boot/dts/exynos/exynos8855-pinctrl.dtsi b/arch/ar=
m64/boot/dts/exynos/exynos8855-pinctrl.dtsi
> new file mode 100644
> index 0000000000000..df69b2b3e96ad
> --- /dev/null
> +++ b/arch/arm64/boot/dts/exynos/exynos8855-pinctrl.dtsi
[ ... ]
> +	uart0_pins: uart0-pins {
> +		samsung,pins =3D "gpq0-0", "gpq0-1";
> +		samsung,pin-function =3D <2>;
> +		samsung,pin-pud =3D <3>;

[Severity: Low]
This isn't a bug, but could we use standard device tree binding macros like
EXYNOS_PIN_FUNC_2 and EXYNOS_PIN_PULL_UP from <dt-bindings/pinctrl/samsung.=
h>
here instead of magic numbers?

> +	};
> +
> +};
[ ... ]
> diff --git a/arch/arm64/boot/dts/exynos/exynos8855-smdk.dts b/arch/arm64/=
boot/dts/exynos/exynos8855-smdk.dts
> new file mode 100644
> index 0000000000000..f5132bcaa47c8
> --- /dev/null
> +++ b/arch/arm64/boot/dts/exynos/exynos8855-smdk.dts
> @@ -0,0 +1,32 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Samsung Exynos8855 SMDK board device tree source
> + *
> + * Copyright (C) 2026 Samsung Electronics Co., Ltd.
> + *
> + * Device tree source file for WinLink's E850-96 board which is based on
> + * Samsung Exynos8855 SoC.

[Severity: Low]
This isn't a bug, but does this comment refer to the wrong board? The text
mentions the WinLink E850-96 board instead of the Exynos 8855 SMDK board.

> + */
> +
> +/dts-v1/;
[ ... ]
> diff --git a/arch/arm64/boot/dts/exynos/exynos8855.dtsi b/arch/arm64/boot=
/dts/exynos/exynos8855.dtsi
> new file mode 100644
> index 0000000000000..d403f41bbecb5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/exynos/exynos8855.dtsi
[ ... ]
> +		pinctrl_peric: pinctrl@15440000 {
> +			compatible =3D "samsung,exynos8855-pinctrl";
> +			reg =3D <0x15440000 0x1000>;
> +		};

[Severity: High]
Is an interrupts property missing for this node and the other non-alive
pinctrl nodes (like pinctrl_usi, pinctrl_pericmmc, and pinctrl_hsi_ufs)?

These blocks contain child GPIO banks that are marked as interrupt
controllers, but the exynos pinctrl driver relies on the parent's interrupts
property to initialize the IRQ domain.

Without it, exynos_eint_gpio_init() will return -EINVAL, breaking GPIO
interrupt functionality for these pins.

> +
> +		pinctrl_pericmmc: pinctrl@154f0000 {
> +			compatible =3D "samsung,exynos8855-pinctrl";
> +			reg =3D <0x154f0000 0x1000>;
> +		};
> +
> +		pinctrl_hsi_ufs: pinctrl@17040000 {
> +			compatible =3D "samsung,exynos8855-pinctrl";
> +			reg =3D <0x17040000 0x1000>;
> +		};
> +	};
> +
> +	timer {
> +		compatible =3D "arm,armv8-timer";
> +		/* Hypervisor Virtual Timer interrupt is not wired to GIC */
> +		interrupts =3D
> +		     <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +		     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +		     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +		     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;

[Severity: Low]
Is it correct to use the GIC_CPU_MASK_SIMPLE macro here?

The interrupt controller is arm,gic-v3. GIC_CPU_MASK_SIMPLE sets bits [15:8=
],
which violates the GICv3 DT binding that strictly expects trigger type and
level flags in bits [3:0] for the third cell.

While the upper bits are masked during parsing, this will trigger dtbs_check
validation errors.

> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615085252.1964=
423-1-alim.akhtar@samsung.com?part=3D4

