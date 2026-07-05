Return-Path: <devicetree+bounces-320751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tL4NK3y8SmrMGwEAu9opvQ
	(envelope-from <devicetree+bounces-320751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 22:20:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A96370B50A
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 22:20:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jfa4ltsk;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320751-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320751-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2783B300565F
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 20:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA8FD30E0F2;
	Sun,  5 Jul 2026 20:20:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7AFB2F7F0D;
	Sun,  5 Jul 2026 20:20:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783282808; cv=none; b=RqhHXoXkUZBxKLjxBIe7TE71a6ho8de+Xx14R/hlMTVdSmKdyZoN4Rup1YXBIsrGLqK9TTWVwmd04tL0FhKjoS7DvoYeQFiRkpFc22KCLX86wu/rttXExpDio70c3M8W5halS3toqK0gRxOKtGZ9OiJzl5SDFA7+Sv1X1d724p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783282808; c=relaxed/simple;
	bh=OaEZaMtq4G4odncaNUhJFPtVu6XPtqpzjBRSLgjOZHc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=j2JjFZg3QcjJBMG9xDWXaqXjzSgpevSyvFJheVjjuQetfftxYbmAEIchq3Z2gtddUEXTSaIJx6E2ObdaXX9KzHlUUqwLh/Ivoqw5FZbW+Q3Ty0GZgm/cMqLfTB0mwHjtTC8eG8Go4+NPrAFV1u7J7NhEG8US38wME0q9y6fM4Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfa4ltsk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43AF01F000E9;
	Sun,  5 Jul 2026 20:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783282807;
	bh=TmWI8EiJGS/P23xAJ4kju+fbso66aTyfHiRYxjr1ffs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jfa4ltskIf7zHhWj+F5q/NacwGeumBd5QqMcfFxxo9Noi1fPxYhmtrlTPVUb2tA/j
	 0xwgzO7WiVERmLwdq2qmlKJzRGaE42Y6mFTd0vTycNjNFgUC9yH3h9tx7CJlmNFczf
	 7GyWUb9liq/11LRdm7LFqleaW8+XSyQDnMwlsEhjeuxv/OVnirkDrf6t3G/Aket+uv
	 QY9KPx4Xnz0TS6m72KW1WK+z26HzcIv0BtZFvg5rJi7jWBh4Xpm/G8HLMCWly//67o
	 XLnmh+BIUT5HoY5I+AwAqjzTg/M2iBiIvgoPrix0dggAZUIinnDfcidNqnWdJg4YBV
	 1OZ2vUpYO9ECA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/6] arm64: dts: imx8mm: imx8mp: Add FIO1 DTOs for
 Data Modul i.MX8M Mini and Plus eDM SBC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Marek Vasut" <marex@nabladev.com>
Cc: imx@lists.linux.dev, conor+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, robh@kernel.org
In-Reply-To: <20260705200534.151803-5-marex@nabladev.com>
References: <20260705200534.151803-1-marex@nabladev.com>
 <20260705200534.151803-5-marex@nabladev.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 20:20:06 +0000
Message-Id: <20260705202007.43AF01F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-320751-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nabladev.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marex@nabladev.com,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A96370B50A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] I2C node address collision corrupts LVDS configuration.
--

commit 24245aa090bd2ca7fbe263d45e29abf9a13de9cf
Author: Marek Vasut <marex@nabladev.com>

arm64: dts: imx8mm: imx8mp: Add FIO1 DTOs for Data Modul i.MX8M Mini and Pl=
us eDM SBC
   =20
Add DT overlay for feature connector expansion module eDM-MOD-iMX8Mm-FIO1
providing additional UARTs, CAN, PWM Beeper, I2C, SPI and GPIO breakout.
This adapter can be optionally populated onto the eDM SBC.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc-over=
lay-edm-mod-imx8mm-fio1.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-data-mo=
dul-edm-sbc-overlay-edm-mod-imx8mm-fio1.dtsi
> new file mode 100644
> index 0000000000000..7851ca73ccd8e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc-overlay-edm=
-mod-imx8mm-fio1.dtsi
> @@ -0,0 +1,69 @@
[ ... ]
> +&i2c_feature {	/* Feature connector I2C */
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +
> +	gpio_feature: io-expander@20 {
> +		compatible =3D "nxp,pca9554";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_gpio_expander>;
> +		reg =3D <0x20>;

[Severity: High]
Does this node create an address collision on the i.MX8MP base board?

The i.MX8MP base board (imx8mp-data-modul-edm-sbc.dts) already defines an L=
VDS
PCA9554 GPIO expander at 0x20 on i2c2 (which is aliased to i2c_feature):

arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts:
i2c_feature: &i2c2 {
	...
	gpiolvds: io-expander@20 {
		compatible =3D "nxp,pca9554";
		reg =3D <0x20>;
	...
}

Loading the imx8mp-data-modul-edm-sbc-overlay-edm-mod-imx8mm-fio1.dtso over=
lay
would merge this io-expander@20 node into the existing gpiolvds node. Will
this overwrite the gpio-line-names and interrupts of the base board's LVDS
expander, and cause a physical I2C address conflict on the bus when the FIO1
module is populated?

> +		#gpio-cells =3D <2>;
> +		gpio-controller;
> +		#interrupt-cells =3D <2>;
> +		interrupt-controller;
> +		interrupt-parent =3D <&gpio4>;
> +		interrupts =3D <27 IRQ_TYPE_LEVEL_LOW>;
> +		gpio-line-names =3D
> +			"GPIO1_output", "GPIO1_input",
> +			"GPIO2_output", "GPIO2_input",
> +			"GPIO3_output", "GPIO3_input",
> +			"PCA9511A_READY", "";
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705200534.1518=
03-1-marex@nabladev.com?part=3D5

