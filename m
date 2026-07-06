Return-Path: <devicetree+bounces-320919-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SeboFB9pS2rnQwEAu9opvQ
	(envelope-from <devicetree+bounces-320919-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:36:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC1270E2DA
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:36:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZwzcuQIG;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320919-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320919-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B71632A6A20
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 08:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C9C13BE633;
	Mon,  6 Jul 2026 08:23:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559E63BD659
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 08:23:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783326231; cv=none; b=DnKEO2z11F96+bU6ba1x85dOxVPgAwhZPXPPigiZsFxxKvd5JWlL95aTSrvFjsvrqMxAcCfE2XABCZQUeWayMBtIw0bijHw3P7bqvS4knB1+4W8lI+5hwfcD3KjqecKSuftJ5Q404lQJFJf0xSL5b6QP2V2GTUR8x9gX5NrQU4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783326231; c=relaxed/simple;
	bh=LP5aeHnFATJ9jVdO2KpnDTUE5NrouQG6YAE/SUlQb9o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=B4JPpOa4CR/40zIxeaSAyWEfeXeK0kPHJaJv9ec7gll6MidD+/42SIP94rUq6Hg4/7GHdaQ/GNNu9GgIPKOc95cjZ2vLxDuvYgnDXH3gVlKAuKilG8qVCJ2eleilZMRnXjvtHM0DUYgoOXRDQ4KffmotBct8XQ7j11ZG8ZhD9aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwzcuQIG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D74B1F00A3A;
	Mon,  6 Jul 2026 08:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783326221;
	bh=juUSfPHaCvAqWDXNZEBTfZ4wcxSpqVebu419tlEi9/8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZwzcuQIGvVg9RKSnnrqjPQP8M5Ui6GFlObwcbAyB7U7FT7wMTRM4/3spbCwoKApqd
	 bAZ0LwSdYBVSzodajPgx+Tqzzd4uBWjbyYqMRBIfLVJheR8WF2wDXYWoPvB/PEgAN4
	 WYkXot+kI4b8eYkA5jRBC5k+wWFvaj+vGC3BSbZ0xcAQc9s0aNP0d2RzSE2pzc/URC
	 ZeGw4wIL4NgFcAU07mYg5kQMFIhYVU8PikAGJcEV4zq8Bk4F4jOA1bQRFZxSVghVw5
	 dzFevuuBzY0saKH6DxtborodqGN0r346pp6WdVrbvo6oj7S3pI4U383QfpC025MTr3
	 CnYoYHFKaSiIw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/8] riscv: dts: eswin: eic7700: add pinctrl support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pinkesh Vaghela" <pinkesh.vaghela@einfochips.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260706081055.1126275-4-pinkesh.vaghela@einfochips.com>
References: <20260706081055.1126275-1-pinkesh.vaghela@einfochips.com>
 <20260706081055.1126275-4-pinkesh.vaghela@einfochips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 08:23:40 +0000
Message-Id: <20260706082341.1D74B1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320919-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pinkesh.vaghela@einfochips.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,eswincomputing.com:email,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8BC1270E2DA

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [Medium] Board-specific GPIO pin configurations are defined but never ref=
erenced via `pinctrl-0`, rendering them inert.
- [Medium] Peripheral nodes do not reference their newly added pinctrl conf=
igurations.

Pre-existing issues:
- [High] The SoC device tree lacks `gpio-ranges` properties linking the DW =
APB GPIO controllers to the newly introduced pinctrl controller, bypassing =
GPIO muxing logic.
--

commit 92abe836b11b6b811731ac872e0c01dccbccefd0
Author: Yulin Lu <luyulin@eswincomputing.com>

riscv: dts: eswin: eic7700: add pinctrl support

This commit adds pinctrl nodes and related pin configurations for the EIC77=
00
SoC. It also provides the specific pin states for the HiFive Premier P550
board.

> diff --git a/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts b/=
arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
> index 1266762dfcd8c..743dedbdb081a 100644
> --- a/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
> +++ b/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
[ ... ]
> @@ -25,6 +35,105 @@ &clock_24m {
>  	clock-output-names =3D "clock_24m";
>  };
> =20
> +&gpio0_pins {
> +	bias-disable;
> +	input-enable;
> +};
> +
> +&gpio5_pins {
> +	bias-disable;
> +	input-enable;
> +};

[Severity: Medium]
Will these board-specific GPIO pin configurations ever be applied?

The board DTS overrides properties like bias-pull-up for various GPIO nodes=
=20
(&gpio0_pins, &gpio14_pins, etc.), but these pin configurations are never=20
referenced by any pinctrl-0 property in a consumer device or as a pinctrl h=
og.

Without being referenced via pinctrl-names =3D "default"; and pinctrl-0 =3D=
 <...>;
within the &pinctrl node, the pinctrl subsystem will parse them as templates
but never commit the hardware configurations.

This could leave the hardware lacking required electrical configurations.

[ ... ]
> +&pinctrl {
> +	vrgmii-supply =3D <&vcc_1v8>;
> +};
> +
>  &uart0 {
>  	status =3D "okay";
>  };

[Severity: Medium]
Should this peripheral node reference its newly added pinctrl configuration=
s?

The eic7700-pinctrl.dtsi file defines extensive pinmux configurations, such=
 as
uart0_pins and i2c0_pins, and the board DTS enables these peripherals here.=
=20

However, the board DTS fails to assign these pinmux configurations to the=20
peripherals using pinctrl-names =3D "default"; and pinctrl-0 =3D <&uart0_pi=
ns>;.

As a result, peripheral pin multiplexing is not applied by the kernel, rely=
ing=20
entirely on the bootloader's initial state.

> diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/dts=
/eswin/eic7700.dtsi
> index af9e40d8739ad..a0fb82f4adca9 100644
> --- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
> +++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
[ ... ]
> @@ -349,6 +349,11 @@ gpioD: gpio-port@3 {
>  			};
>  		};
> =20
> +		pinctrl: pinctrl@51600080 {
> +			compatible =3D "eswin,eic7700-pinctrl";
> +			reg =3D <0x0 0x51600080 0x0 0x1fff80>;
> +		};
> +

[Severity: High]
This isn't a bug introduced by this patch, but does the SoC device tree lack
gpio-ranges properties linking the DW APB GPIO controllers to the newly
introduced pinctrl controller?

The eic7700.dtsi defines GPIO controllers using the snps,dw-apb-gpio driver:

			gpioA: gpio-port@0 {
				compatible =3D "snps,dw-apb-gpio-port";

This driver unconditionally sets .request =3D gpiochip_generic_request.=20

When a GPIO is requested, gpiochip_generic_request checks if the
gc->gpiodev->pin_ranges list is empty.=20

Because eic7700.dtsi fails to define gpio-ranges mapping the gpio-port subn=
odes
to the pinctrl controller, the pin_ranges list is empty. As a result,
gpiochip_generic_request() returns 0 early and never calls
pinctrl_gpio_request().=20

This bypasses the pinctrl driver's hardware muxing logic entirely, meaning
GPIO hardware muxing will not occur when a GPIO is requested, leaving the p=
ins
in their default or peripheral state.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706081055.1126=
275-1-pinkesh.vaghela@einfochips.com?part=3D3

