Return-Path: <devicetree+bounces-300742-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGCXHoHeDWqh4QUAu9opvQ
	(envelope-from <devicetree+bounces-300742-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 18:17:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F3C591B12
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 18:17:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 037C6310BEF9
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 15:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A70B03EFFB8;
	Wed, 20 May 2026 15:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxR3YzYv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6924F3E7BCB;
	Wed, 20 May 2026 15:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779290836; cv=none; b=nfwaDtM4NriUau2j+ulN9a4CI7U4//5VYUO3MLPi9PmZFDMqYoQIsSImLYpdGAcnXV5NaYj2uV2R052EIoAnV72QF5MfKtI3aI9VWKSwb25IfFPmt62uxqPoA/oTJnLOseQuh3InJpeHRUpGOpp/GaDSL6vJUK7eNHg2EKjSoV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779290836; c=relaxed/simple;
	bh=v2iSyS7nAOre7ZtvOsS1ICkcXKCuoGiunqxliWz1DrE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=esgikllsyWkvouTJfJMGJ1J22rwIoZwIcy94H6S6NyqA+89KG+pQ6IAwqD89ioc1Es1Xt9SFGNoKAa3K+tYEEhsCm8zRuMnTPOy8j6OspYw5Gfhmdj3pTFvzUn5Px2a50GQR4Ek/cpFiHIXkmv9iJAFDm8k9b0IR5T0tdR24nVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxR3YzYv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8B291F000E9;
	Wed, 20 May 2026 15:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779290835;
	bh=SGBCUHoBa7DioxBrFGAwi7w39cq7YGqbS0ookipV8J0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HxR3YzYvUjnZBW5FQFtZSflctXJ28lOcNb5Putnu38nY+YBDS1/7ixEjrMPupD5Cw
	 L5SF/kz5b+twGtlVioy7+LFKMgMDTd1s/ppFO2lzHrEU890jfnOj34A7nHnVktw2/f
	 NKXdDolpdyfSBSPiWbjlVkBmmYQxWOpQqBZXz8R9aJA3HrHXC8m7qsf+KcWBWaO7ZV
	 Xl+/1MIJvHI0WXdoDamJ3Ll7yFAxCO0hbuBBweS2osPXmTY8DWTqFhjpLPHusIz/VQ
	 J8kBPT0m15ZpZUZrKd4auAimZMSdd7pPcscjJcJfurUjhRaD+SUZgCa5Tcu4KDoQ/6
	 2P/E1vwBNxPKw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/1] arm64: dts: Add usbphynop and usbotg pinctrl for
 S32G platforms
Reply-To: sashiko-reviews@lists.linux.dev
To: "Khristine Andreea Barbulescu" <khristineandreea.barbulescu@oss.nxp.com>
Cc: imx@lists.linux.dev, devicetree@vger.kernel.org, robh@kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260520151007.4193688-2-khristineandreea.barbulescu@oss.nxp.com>
References: <20260520151007.4193688-2-khristineandreea.barbulescu@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 15:27:14 +0000
Message-Id: <20260520152714.B8B291F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300742-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 75F3C591B12
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The USB PHY node uses a non-generic name 'usbphynop' which violates=
 Devicetree naming conventions.
- [Low] Explicitly setting 'status =3D "okay";' for the 'usbmisc' node in t=
he board files is redundant.
--

commit 9f52e7dedd0f8d5b7d9ec5b0f3215fe2bb1c921b
Author: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.c=
om>

arm64: dts: Add usbphynop and usbotg pinctrl for S32G platforms

This commit adds the generic USB PHY node and USB OTG pinmux configurations
for the S32G2 and S32G3 SoCs. It enables the USB controller to reference the
generic PHY and use the required pins for USB OTG operations.

> diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/d=
ts/freescale/s32g2.dtsi
> index 51d00dac12deb..a35bb284270ed 100644
> --- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
[ ... ]
> @@ -108,6 +108,11 @@ psci {
>  		};
>  	};
> =20
> +	usbphynop: usbphynop {

[Severity: Low]
This isn't a bug, but does this node name align with the Devicetree
Specification?

The Devicetree Specification (Section 2.2.2 'Generic Names Recommendation')
states that a node's name should be generic and reflect the function of the
device, rather than its precise programming model or driver name.

Could this be named something more generic like 'phy' or 'usb-phy'
instead of 'usbphynop'?

> +		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
> +	};
> +
>  	soc@0 {
[ ... ]
> diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/d=
ts/freescale/s32g3.dtsi
> index e314f3c7d61d0..b980e5f2b059c 100644
> --- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
[ ... ]
> @@ -165,6 +165,11 @@ scmi_shmem: shm@d0000000 {
>  		};
>  	};
> =20
> +	usbphynop: usbphynop {

[Severity: Low]
This isn't a bug, but does this node name align with the Devicetree
Specification?

The Devicetree Specification (Section 2.2.2 'Generic Names Recommendation')
states that a node's name should be generic and reflect the function of the
device, rather than its precise programming model or driver name.

Could this be named something more generic like 'phy' or 'usb-phy'
instead of 'usbphynop'?

> +		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
> +	};
> +
>  	soc@0 {
[ ... ]
> diff --git a/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi b/arch/arm64=
/boot/dts/freescale/s32gxxxa-evb.dtsi
> index 803ff45310771..26009c1e90dcf 100644
> --- a/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi
[ ... ]
> @@ -304,3 +337,14 @@ &spi5 {
>  	pinctrl-names =3D "default";
>  	status =3D "okay";
>  };
> +
> +&usbmisc {
> +	status =3D "okay";
> +};

[Severity: Low]
This isn't a bug, but is it necessary to explicitly set the status for the
usbmisc node here?

In the base SoC devicetrees (s32g2.dtsi and s32g3.dtsi), the usbmisc node
is defined without a 'status =3D "disabled";' property.

Since nodes default to an 'okay' status when the status property is omitted,
could this assignment be redundant?

> +
> +&usbotg {
[ ... ]
> diff --git a/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi b/arch/arm64=
/boot/dts/freescale/s32gxxxa-rdb.dtsi
> index 979868f6d2c5c..a8abb10b0e7ae 100644
> --- a/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32gxxxa-rdb.dtsi
[ ... ]
> @@ -257,3 +290,14 @@ &i2c4 {
>  	pinctrl-1 =3D <&i2c4_gpio_pins>;
>  	status =3D "okay";
>  };
> +
> +&usbmisc {
> +	status =3D "okay";
> +};

[Severity: Low]
This isn't a bug, but is it necessary to explicitly set the status for the
usbmisc node here?

In the base SoC devicetrees (s32g2.dtsi and s32g3.dtsi), the usbmisc node
is defined without a 'status =3D "disabled";' property.

Since nodes default to an 'okay' status when the status property is omitted,
could this assignment be redundant?

> +
> +&usbotg {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&usbotg_pins>;
> +	phys =3D <&usbphynop>;
> +	status =3D "okay";
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520151007.4193=
688-2-khristineandreea.barbulescu@oss.nxp.com?part=3D1

