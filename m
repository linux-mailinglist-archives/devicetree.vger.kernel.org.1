Return-Path: <devicetree+bounces-306788-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YQBDGFRjIWpPFgEAu9opvQ
	(envelope-from <devicetree+bounces-306788-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 13:36:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A3863F7A4
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 13:36:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YH8GtOtc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306788-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306788-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A050B30B7301
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 11:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34519407590;
	Thu,  4 Jun 2026 11:33:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC553E317D
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 11:33:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780572800; cv=none; b=KdQ4XbwcpQtFRKvJy4XjQlK4KR3vGaj3jS8+bqdB2awKo6Rrc3+mjqnYWFcGgsn1RgI03oEUBhyqX8YvEW/uatbEuX/qnIZgvVCUPiiM4wpInZqSvbiv3ae1M4EZcMvQJSd36pcnHikmQFjA0r/o4KGxTwYzmYDJsQcpPm4CIxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780572800; c=relaxed/simple;
	bh=iT76DhWLGsOOK3J9lrULbIykHmWdDubY6lEPG/iNr58=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PhsWi1Yafn4KW+hf2TpNdaDsXmLk300RsG77ra7qJIaEvp93CX1xADAqyHDK6YkQuInAzQxrRL8vyWwZKunll/7JNkW7vZL77PGD87e2i1lFezNgWsI2Jlii5iyoyMnuBPA1nZtf6Q2AyMtSyhxiHA6fNCIwp/jkPQViEsMSprQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH8GtOtc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C9591F00893;
	Thu,  4 Jun 2026 11:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780572798;
	bh=VfUII3Qn/tFNHn4/F/87ZGjeXwYPjXFY9GOLJ7DyHEc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YH8GtOtcKPSDsdv+fmc2y+hy+BjbW/qNqn9QRC/uzjLPSci5N9gP9HCehbxf6svbv
	 cfcr2aEFNefOiWCyvThuMWVL28doNCVhwAe0spztQtvtfkknKF6hsv4FSV7XKl9Y1b
	 Vh8Uw0ar4imLR3lgNU+yT0yUh3T6tyyEAv7lhTFYocoIsbIzUo1t8eq6IUHWtbIP4H
	 dZg80kJvMBeySAXNrrqpWF1pKK+kQzhUbhODYQ2muxwRoIx363SCsZoZbY2WW9LEe8
	 Yils+M50ocXwxbgwcHdpu6lxRxsiDaIsxlR6WdHfiaWRUZmvB1QgPQiFi2AoGX2NXP
	 N2HUBm4zWIhzQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: realtek: Add I/O level detector
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yu-Chun Lin" <eleanor.lin@realtek.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260604111821.975624-4-eleanor.lin@realtek.com>
References: <20260604111821.975624-4-eleanor.lin@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 11:33:18 +0000
Message-Id: <20260604113318.7C9591F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306788-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:eleanor.lin@realtek.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,realtek.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E9A3863F7A4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Device tree compilation fails due to undefined labels `iso_pinctrl`=
 and `main2_pinctrl`.
--

commit 3280d12b516149efbcad054728b0302fe3fcc602
Author: Yu-Chun Lin <eleanor.lin@realtek.com>

arm64: dts: realtek: Add I/O level detector

Add io-level-detector node with pinctrl configurations for 1.8V/3.3V
voltage selection on RGMII, SDIO, CSI, SD, UART1, AIO, and eMMC.

> diff --git a/arch/arm64/boot/dts/realtek/kent-pinctrl.dtsi b/arch/arm64/b=
oot/dts/realtek/kent-pinctrl.dtsi
> new file mode 100644
> index 0000000000000..ec7e33034b967
> --- /dev/null
> +++ b/arch/arm64/boot/dts/realtek/kent-pinctrl.dtsi
> @@ -0,0 +1,108 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> +/*
> + * Copyright (c) 2022-2026 Realtek Semiconductor Corp.
> + */
> +
> +&iso_pinctrl {

[Severity: Low]
Are the labels iso_pinctrl and main2_pinctrl defined anywhere in the device
tree sources?

It appears this causes a DTC compilation error due to using an undefined
label as an overlay target.

> +	aio_vsel_1v8_pins: aio-vsel-1v8-pins {

[ ... ]

> +	uart1_vsel_3v3_pins: uart1-vsel-3v3-pins {
> +		pins =3D "gpio_8", "gpio_9", "gpio_10", "gpio_11";
> +		power-source =3D <1>;
> +		input-threshold-voltage-microvolt =3D <3300000>;
> +	};
> +};
> +
> +&main2_pinctrl {

[Severity: Low]
Does this node also cause a DTC compilation error due to main2_pinctrl being
undefined?

> +	emmc_vsel_1v8_pins: emmc-vsel-1v8-pins {

[ ... ]

> diff --git a/arch/arm64/boot/dts/realtek/kent.dtsi b/arch/arm64/boot/dts/=
realtek/kent.dtsi
> index ae006ce244205..54e7e2e1cb53d 100644
> --- a/arch/arm64/boot/dts/realtek/kent.dtsi
> +++ b/arch/arm64/boot/dts/realtek/kent.dtsi

[ ... ]

> @@ -125,6 +125,32 @@ psci: psci {
>  		method =3D "smc";
>  	};
> =20
> +	io_level_detector: io-level-detector {
> +		compatible =3D "realtek,rtd1625-io-detect";

[ ... ]

> +		pinctrl-12 =3D <&emmc_vsel_1v8_pins>;
> +		pinctrl-13 =3D <&emmc_vsel_3v3_pins>;
> +		realtek,iso-pinctrl =3D <&iso_pinctrl>;

[Severity: Low]
Will this phandle reference cause a compilation failure since iso_pinctrl
appears to be undefined?

> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604111821.9756=
24-1-eleanor.lin@realtek.com?part=3D3

