Return-Path: <devicetree+bounces-319949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G090HEN+R2rxZQAAu9opvQ
	(envelope-from <devicetree+bounces-319949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:17:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD64700893
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:17:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KbEiP3JP;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319949-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319949-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 899173023319
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 09:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 372D238D3F7;
	Fri,  3 Jul 2026 09:02:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB834393DE2;
	Fri,  3 Jul 2026 09:02:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783069329; cv=none; b=bYDEW0XXsdOiKqfJliU/WhCp+ErTpCLrjBfNqj+ywJ+WDKn1M70bT+yHFvnQVF6NiET+vVp5dEMd5uRv2vu5RyZEEZE2pdKD/B7fF/WIfVayOeMA0t9A/d6dYec71zaoGI6ZJRYkuoCxXEuU6ePbvTXyPLwpJsPeTjNvGsU9G7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783069329; c=relaxed/simple;
	bh=eJrBuGFZgZF4RMf6yqEsQ9Rx/ltrIOc1uLak+lOCyv0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JcjsaKsqRn5rnUpzko9QFWYdRNPTceN2v4ZE5cqWWtN35ft1kzw9JwWa6/denO5RJtUSV0/euWXmg1s0KOIzT+6nPmTVdrvZOHeQ9+6Zoy+R0qH4nHGtA+rpn/JDoFc7wPBTWOQ+5NmUCajA7DqlqY8yOeILPFdIVgQKAReq5pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbEiP3JP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 329CF1F00A3A;
	Fri,  3 Jul 2026 09:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783069319;
	bh=YlOVBhdreTsAciXP5T3TjsYCUGA/iw3YUOyeUBoEIdQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KbEiP3JPlz5rhL5bdGNkD2uU/KkJVRHjl1b64jaoAjTKWcnadOmoLdqPXZMHB5u8g
	 ztbV5x07P5AVRPM8g1/evjUNzwJ7DlnGlqDtAvcEfTgIF371MNfGUV0Rnv8sIlor/t
	 bZJoEqqvNh2ej2FjQTKEW5/QfdSd6ESE5oP7Nm1iFduWWnrs1yfP5LgZM0BhYs4xRE
	 UDKrvMzUC3ZUzJD/yl44/OV0LWw8mphtI9RqzXIEoHMmgwgCgHQOy0GqNmMdHIRmsf
	 T0UFgLvoheKXxd6i9ZKtWNt2gi7g+KAEOVsrEb7WvIilPa7WJv4pDQRBCWppB04ZYm
	 i3kpD+nxJbcsw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 04/15] arm64: dts: freescale: imx8mn-var-som: Update
 FEC support with MaxLinear PHY
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: imx@lists.linux.dev, Frank.Li@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <bd2a524c39372518dcdf128220f3bb210afa290b.1783067947.git.stefano.r@variscite.com>
References: <cover.1783067947.git.stefano.r@variscite.com>
 <bd2a524c39372518dcdf128220f3bb210afa290b.1783067947.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 09:01:58 +0000
Message-Id: <20260703090159.329CF1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-319949-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,variscite.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1AD64700893

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Modifying the shared SOM `.dtsi` and carrier `.dts` in-place to su=
pport the latest hardware revision breaks backwards compatibility with olde=
r deployed SOMs and carrier boards.
- [Medium] The commit message claims to add a pinctrl sleep state for low-p=
ower operation, but the patch modifies the default active pinctrl state ins=
tead, and the sleep state already existed.
--

commit 5e21026bff4a0a2d4def4c7f976bcf398976eb95
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: freescale: imx8mn-var-som: Update FEC support with MaxLinear PHY

Update the FEC Ethernet controller on the i.MX8MN VAR-SOM to match the
latest SOM hardware revision using the integrated MaxLinear MXL86110 PHY.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts b/=
arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
> index 7308613a48b2b..520aff23e5872 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
[ ... ]
> @@ -74,7 +75,24 @@ reg_per_3v3: regulator-peripheral-3v3 {
>  };
> =20
>  &ethphy {
> -	reset-gpios =3D <&pca9534 5 GPIO_ACTIVE_HIGH>;
> +	leds {
> +		#address-cells =3D <1>;

[Severity: High]
Does removing the carrier board reset GPIO override break backwards
compatibility with older deployed SOMs and carrier boards?

Booting a new kernel on older hardware (using AR8033 or ADIN1300 PHYs) will
use the new MaxLinear PHY configuration and drop the carrier board's pca9534
reset GPIO line.

While later patches in this series add a legacy DTB to restore legacy Wi-Fi
configuration, it includes imx8mn-var-som-symphony.dts without overriding
the Ethernet configuration. Legacy boards might still receive the broken
Ethernet bindings and lose networking.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi b/arch/arm=
64/boot/dts/freescale/imx8mn-var-som.dtsi
> index 71a2f0866822f..09146ab763858 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
[ ... ]
> @@ -96,24 +103,19 @@ &fec1 {
>  	phy-mode =3D "rgmii";
>  	phy-handle =3D <&ethphy>;
>  	phy-supply =3D <&reg_eth_phy>;
> -	fsl,magic-packet;
>  	status =3D "okay";
> =20
>  	mdio {
>  		#address-cells =3D <1>;
>  		#size-cells =3D <0>;
> =20
> -		ethphy: ethernet-phy@4 { /* AR8033 or ADIN1300 */
> +		ethphy: ethernet-phy@4 {
>  			compatible =3D "ethernet-phy-ieee802.3-c22";
>  			reg =3D <4>;
>  			reset-gpios =3D <&gpio1 9 GPIO_ACTIVE_LOW>;
>  			reset-assert-us =3D <10000>;
> -			/*
> -			 * Deassert delay:
> -			 * ADIN1300 requires 5ms.
> -			 * AR8033   requires 1ms.
> -			 */
> -			reset-deassert-us =3D <20000>;
> +			reset-deassert-us =3D <100000>;
> +			vddio-supply =3D <&reg_phy_vddio>;
>  		};
>  	};
>  };

[Severity: High]
Similarly, overwriting the shared SOM description in-place for the new
hardware revision effectively drops Ethernet support for older models.

Will older revisions of the SOM that use the AR8033 or ADIN1300 PHYs fail
to probe the Ethernet PHY after this change?

[ ... ]
> @@ -342,7 +344,7 @@ MX8MN_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
>  			MX8MN_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
>  			MX8MN_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
>  			MX8MN_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
> -			MX8MN_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x159
> +			MX8MN_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x19
>  		>;
>  	};

[Severity: Medium]
The commit message states this patch will "add a pinctrl sleep state for
low-power operation." Is this description accurate?

The patch modifies the default active pinctrl state, rather than adding or
updating a sleep state, which already existed. Could the commit message be
clarified to reflect that the pull-up configuration on the reset pin in the
default state is being altered?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783067947.gi=
t.stefano.r@variscite.com?part=3D4

