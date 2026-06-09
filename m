Return-Path: <devicetree+bounces-308906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5B4aEernJ2rX4QIAu9opvQ
	(envelope-from <devicetree+bounces-308906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:16:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4418B65EC93
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:16:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JtTfYwAv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308906-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308906-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7154230CD319
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 10:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD0633F23BD;
	Tue,  9 Jun 2026 10:07:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207543EF673;
	Tue,  9 Jun 2026 10:07:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780999654; cv=none; b=qCwUZ7nde3x76zZzL9EwI5EhZoy877Vv6MOLQetrbbNWWEiJLyiUMaOwmsJ1/iaUdTJp4KkzPH9amcFFw2CVlU4nXOhdpv8iXCpVtag2juLp49NEzg3aedtZiZ1MMu5PAQ1muCPaz/lm7Y6lAmS3e+eU/lAuiTX4155PYTsmheI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780999654; c=relaxed/simple;
	bh=0DIRkSoy+syJgbtCPUn33L/mpJx9UvWLTKBOPe9fq74=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ESLpB4fCNR3YhZVgGrvW+ncMelH3un9CeJysM+I34oe7B/ZxxkvEj1o1wh5EbYpPaGTRpGA2HJ0O+MMo5BX+OfkqM5/ymtXTzfE5NI5fswlrkF3Rv+tv/3PlU2rKIGMLibyuKprU7cpK7Tb5eOhrPaJCzMhmdL2RXvoVsHklhGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtTfYwAv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9FF21F00893;
	Tue,  9 Jun 2026 10:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780999650;
	bh=aYD8Vz8PfaKUCWPtV3ih0yTGN7+fpQJMomuZA4VTKRI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JtTfYwAvht1dmKmdBFIR8TL6k5eQx0OBBir2OfsSZdKcTtFE8yAhWTXRp0mq3Fv2e
	 VfICX3ch6l8FlxxN133+YwvYn2ycD6TCRw/CR8yDvHIh0+c3nn+YRBPWSa+BiMvQMq
	 jFEOTz7gu/Btt2M1JQSELwt1RPFqUpPR6oE7RW7teyhwyuaiUHXfBhBtawoVrvTSP5
	 ajucTnZGK84s78gLC9qJ84sMXGm3SBGhqC0LRzpYq3BgEwCpIFSi0WV4xr72zzdrmZ
	 AM85hSvzh/FXKB9cbFSf3MW5pbIdY2poP+24vVWfXV8BQDP3QhFm0FlS8xChw0bWXR
	 3tWaBy1dmA2Wg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/3] arm64: dts: freescale: Add support for Variscite
 DART-MX8M-PLUS
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: imx@lists.linux.dev, Frank.Li@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <85af11e85dbb7cf5097d7c0ee567272ff6e87ec5.1780998600.git.stefano.r@variscite.com>
References: <85af11e85dbb7cf5097d7c0ee567272ff6e87ec5.1780998600.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 10:07:29 +0000
Message-Id: <20260609100729.C9FF21F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308906-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:url,variscite.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4418B65EC93

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The eqos pinctrl group claims GPIO2_IO20 but no driver or regula=
tor uses it, potentially breaking Ethernet or SD2.
- [Medium] Bluetooth control GPIOs are muxed but not assigned to the blueto=
oth node, leaving the chip in an uncontrolled state.
--

commit 7c8394d85e349e14bbf3796b542f8e133683dff3
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: freescale: Add support for Variscite DART-MX8M-PLUS

Add device tree support for the Variscite DART-MX8MP system on module.
This SOM is designed to be used with various carrier boards.

Link: https://variscite.com/system-on-module-som/i-mx-8/i-mx-8m-plus/dart-m=
x8m-plus/

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-dart.dtsi b/arch/ar=
m64/boot/dts/freescale/imx8mp-var-dart.dtsi
> new file mode 100644
> index 0000000000000..a647a2e0ab94b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-var-dart.dtsi

[ ... ]

> +/* BT module */
> +&uart4 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pinctrl_uart4>, <&pinctrl_bt>;
> +	assigned-clocks =3D <&clk IMX8MP_CLK_UART4>;
> +	assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL1_80M>;
> +	uart-has-rtscts;
> +	status =3D "okay";
> +
> +	bluetooth_iw61x: bluetooth {
> +		compatible =3D "nxp,88w8987-bt";
> +	};

[Severity: Medium]
The pinctrl_bt group configures GPIO2_IO06 and GPIO2_IO09 as GPIOs and atta=
ches
them to uart4, but this bluetooth_iw61x node does not map these pins to any
properties like device-wakeup-gpios or reset-gpios.

Will the kernel driver fail to toggle these pins, leaving the chip in an
uncontrolled state? Is it relying on bootloader defaults or userspace sysfs
toggling for these pins?

> +};

[ ... ]

> +	pinctrl_eqos: eqosgrp {
> +		fsl,pins =3D <
> +			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x2
> +			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO				0x2
> +			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x90
> +			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x90
> +			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x90
> +			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x90
> +			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x90
> +			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL			0x90
> +			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x16
> +			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x16
> +			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x16
> +			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x16
> +			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL			0x16
> +			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x16
> +			MX8MP_IOMUXC_SD2_WP__GPIO2_IO20					0x10

[Severity: Medium]
The pinctrl_eqos node configures MX8MP_IOMUXC_SD2_WP__GPIO2_IO20 as a GPIO,=
 but
there is no corresponding regulator or driver property that requests this G=
PIO.

Could this unnecessarily block GPIO2_IO20 and cause a pin conflict for any
carrier board that attempts to use it (for example, for usdhc2 write protec=
t)?
Was this possibly a copy-paste error from imx8mp-var-som.dtsi?

> +			MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11				0x150
> +		>;
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780998600.gi=
t.stefano.r@variscite.com?part=3D2

