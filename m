Return-Path: <devicetree+bounces-316559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QGysONuMQWpnsAkAu9opvQ
	(envelope-from <devicetree+bounces-316559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:06:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 524316D4F44
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:06:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="WV5v/vpx";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316559-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316559-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5B02A30094E9
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DCB1364045;
	Sun, 28 Jun 2026 21:06:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F10715746F
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 21:06:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782680792; cv=none; b=bdl5YjpXaqGbnsfqzmm+MXFAStpuQXGjpP9E+TpWiMG4nRwWb8VZbMLCjxlj1FdcbNeCBX9xOzDdVcsVN/KiBcGmjkvXHRat97j/AIEhVA+6xoNqOiXFEVt54zBVoeJVkBkeI9cygAFC2EyS6h+yyk3LpaoZG4g2gRTrjqmD+ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782680792; c=relaxed/simple;
	bh=tY/biOhgzFgjQGrzrMdFTj3+swTc1P/ZvcCm7V0UF7M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PsPhrnIM38cA2kvzJ3Lt7XwopLlyfcLAuKP+MJm0hX7Oj9GP+cr7xSjkhHtm2bVmaGsu28uCe1lidH4HIgqKmWyyrGOYP1pC41sBzldYjGhp/hord3iChGVE7NKMh+X3svMBC71Fxy+gs8yNLEgFXHwWcSefotuafdYZCg3YQtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WV5v/vpx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 881E31F000E9;
	Sun, 28 Jun 2026 21:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782680790;
	bh=N7Evd+FsOpyHxlNZ+DVP2WYzEP/AqMdy1GhPlU/Sqr0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WV5v/vpx5y8Hnj8FC5cHHMhSg8uY/aDi5uNeRQmJTT2tPO0Nzmvzmo8RiIiOprptH
	 jEZj9TJq1O1XBXqGmQsdkKE0ut8xEl6CKyPpdMqhcmeqzBEx1qNh7hk1R5TPPmeAaX
	 RwSieYnwDifE2Z/QFzn1icMOsyILlCTYYRXh+plchefuZcGg1Ms9/ie+gdcjX53u0K
	 VnVK2HK6f97GAcuTtnR6jCdjfQRVpr0uGiJURcbYDY76J/lf/+zhAnlCvRcrPzwMXa
	 CEL+gZ0jexjAFSp/93ypu3ADBNJrlVF+DRpUAnZCyNWI3/U+7ObvkUCX51y+6Aj9ni
	 XML6R2r/ntvLA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/4] arm64: dts: ti: var-som-am62p: fix Ethernet PHY
 configuration
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <4d1ba0d1b9bd4957224213cf17dca93392788e03.1782680023.git.stefano.r@variscite.com>
References: <cover.1782680023.git.stefano.r@variscite.com>
 <4d1ba0d1b9bd4957224213cf17dca93392788e03.1782680023.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 21:06:28 +0000
Message-Id: <20260628210630.881E31F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316559-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,variscite.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 524316D4F44

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Converting the Ethernet PHY reset pin to an unclaimed `vdd-supply`=
 regulator permanently breaks Ethernet.
- [Medium] Removal of hardware reset timing delays causes potential MDIO pr=
obe failures.
- [Medium] The `enet-phy-lane-no-swap` property is added but is not support=
ed by the ADIN1300 PHY driver.
--

commit 3ee90bfeecffa9ab90466e7f1bf6b5a34e3bdc8e
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: ti: var-som-am62p: fix Ethernet PHY configuration

This patch fixes the Ethernet device tree description on the VAR-SOM-AM62P.
It enables the CPSW Ethernet controller and corrects the Ethernet PHY
description by modelling the PHY power supply and adding board-specific
properties.

> diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi b/arch/arm64/b=
oot/dts/ti/k3-am62p5-var-som.dtsi
> index fc5a3942cde00..ca2483a04b9d9 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
> @@ -113,6 +113,15 @@ reg_3v3_phy: regulator-3v3-phy {
>  		regulator-always-on;
>  	};
> =20
> +	reg_eth_phy_vdd: regulator-eth-vdd {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "reg_eth_phy_vdd";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		gpio =3D <&main_gpio0 46 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +

[Severity: Medium]
Will this lack of startup delay cause MDIO probe failures?

The original PHY node explicitly defined reset-assert-us and reset-deassert=
-us
delays to satisfy the PHY's physical startup timing requirements. By shifti=
ng
the reset pin control to the regulator framework, these explicit delays were
lost.=20

The new regulator definition lacks the equivalent startup-delay-us =3D <100=
000>
property, which means the kernel might immediately probe the MDIO bus witho=
ut
waiting for the PHY to initialize.

[ ... ]

> @@ -159,9 +169,9 @@ &cpsw3g_mdio {
>  	cpsw3g_phy0: ethernet-phy@4 {
>  		compatible =3D "ethernet-phy-id0283.bc30";
>  		reg =3D <4>;
> -		reset-gpios =3D <&main_gpio0 46 GPIO_ACTIVE_LOW>;
> -		reset-assert-us =3D <10000>;
> -		reset-deassert-us =3D <100000>;
> +		bootph-all;
> +		enet-phy-lane-no-swap;

[Severity: Medium]
Does the ADIN1300 driver support the enet-phy-lane-no-swap property?

This property is added to the cpsw3g_phy0 node (an ADIN1300 PHY), but it
appears to only be parsed and implemented by specific drivers like the TI
DP83867 PHY driver. The ADIN1300 driver in drivers/net/phy/adin.c does not
seem to parse this property, so the lane-swap configuration might be silent=
ly
ignored.

> +		vdd-supply =3D <&reg_eth_phy_vdd>;

[Severity: High]
Could this permanently break Ethernet by holding the PHY in reset?

The commit moves control of the active-low PHY reset pin to a regulator-fix=
ed
node assigned to vdd-supply. However, neither the Linux generic PHY framewo=
rk
nor the ADIN1300 driver parses or claims vdd-supply.

During late initcall, the regulator framework automatically disables unclai=
med
regulators that lack regulator-always-on. Disabling this active-high regula=
tor
would drive GPIO 46 low, asserting reset on the PHY indefinitely.

>  	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782680023.gi=
t.stefano.r@variscite.com?part=3D1

