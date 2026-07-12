Return-Path: <devicetree+bounces-324976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ad4KHuETU2r2WgMAu9opvQ
	(envelope-from <devicetree+bounces-324976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 06:11:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 764A7743C64
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 06:11:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="M/zAelrb";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324976-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324976-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9AC023017CCC
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 04:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4964636D9F8;
	Sun, 12 Jul 2026 04:09:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2F336D9EC
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 04:09:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783829345; cv=none; b=hjeM3owkJSZ6S1NYj8M2MxBbGDXSpldDAE+zy7mAiWUFdk4SKzppkoAiMUbgNP590FTVpHf9yq2FsyCks7wIHX4IAmpknyL7d/1ytI5fvWsiaGircPthglADNa5sQqobtxcwRYhXWt5Z/eqFt9B0hXwE5IzVvFJFvny1lRyrs74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783829345; c=relaxed/simple;
	bh=gszjc3uUmXLgc6l5C1XKWkb+1NQqp98fqfH28w9jLLE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=W4RouIXvYJqCqayLcFz5Wrg8ZHxx12EBDdMGqIWliL34KmFcMpw4zU78aalklCcslb4sU/hlXd7ow6NHlcLDFOZ0hEjPjsgJ2oPHAdKLg6C/TqQfZhvf2wH9z/8QQyXTWM048VB4UxBDwJgnU2Vj+luWQtvTiNZwT1VG2OefIFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/zAelrb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA7411F000E9;
	Sun, 12 Jul 2026 04:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783829343;
	bh=sduC4Fq5P51fth7XVV8ymXizkvyzzZkroYj/10qjpOo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=M/zAelrbTnL1vMgyVe3yEf24tSiqIgNFdOemI0Dbl+1OT4fIcLrBt7NIgPd1yPtOd
	 bKWAMGKnhGCX8uofvdgmJDFiHb1Rp+m5JSGSfLS9FCpv9Rcv1XC0DBGf8gSNo8GpS5
	 3b+4N+BGL8DPkGMTHibnW/WC3laqr1O3SIvoEdratBP93ijX4DQXsJORwBGKcJXQ4/
	 QaYO/xLwDmaSmzpFe0K3ajea/eJoO4WCN97mEMqg8dhNRoUgCOHFS6oj7+OplsR+x5
	 RR5+IS7up1f2QuOROOZ7c4sgDPVkyWwQPJPGqcTyOpRc4WsTIhI35Wgn3X2a5ndSL7
	 Y+73N+aIaK5IA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] riscv: dts: spacemit: k1: Split gmac_clk_ref
 into independent pinctrl groups
Reply-To: sashiko-reviews@lists.linux.dev
To: "Junhui Liu" <junhui.liu@pigmoral.tech>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260712-bpi-cm6-v3-2-8d1e2045179d@pigmoral.tech>
References: <20260712-bpi-cm6-v3-0-8d1e2045179d@pigmoral.tech>
 <20260712-bpi-cm6-v3-2-8d1e2045179d@pigmoral.tech>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 04:09:02 +0000
Message-Id: <20260712040902.CA7411F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324976-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:junhui.liu@pigmoral.tech,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,pigmoral.tech:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 764A7743C64

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch splits the `gmacX_clk_ref` pins into independent pinct=
rl groups but fails to update `k1-orangepi-rv2.dts`, silently breaking its =
Ethernet pinmux configuration.
--

--- Patch [2]: [PATCH v3 2/3] riscv: dts: spacemit: k1: Split gmac_clk_ref =
into independent pinctrl groups ---
commit 093c0ef49e1b8bcf37cbcb0a97a5e5bcd2242b3c
Author: Junhui Liu <junhui.liu@pigmoral.tech>

riscv: dts: spacemit: k1: Split gmac_clk_ref into independent pinctrl groups
   =20
The gmac_clk_ref signal is optional for the GMAC controller and is not
strictly required for all hardware designs. Split the refclk pins into
independent pinctrl groups so boards can request them only when needed.

> diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv=
/boot/dts/spacemit/k1-bananapi-f3.dts
> index 72f77e9edd63d..e6ab43be301a3 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
> @@ -101,7 +101,7 @@ &eth0 {
>  	phy-handle =3D <&rgmii0>;
>  	phy-mode =3D "rgmii-id";
>  	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&gmac0_cfg>;
> +	pinctrl-0 =3D <&gmac0_cfg>, <&gmac0_clk_ref_cfg>;
>  	rx-internal-delay-ps =3D <0>;
>  	tx-internal-delay-ps =3D <0>;
>  	status =3D "okay";

[ ... ]

> diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/bo=
ot/dts/spacemit/k1-pinctrl.dtsi
> index 4e9a62d0e85b5..8c57ca05dabdb 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
> +++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
> @@ -27,8 +27,16 @@ gmac0-pins {
>  				 <K1_PADCONF(11, 1)>,	/* gmac0_tx_en */
>  				 <K1_PADCONF(12, 1)>,	/* gmac0_mdc */
>  				 <K1_PADCONF(13, 1)>,	/* gmac0_mdio */
> -				 <K1_PADCONF(14, 1)>,	/* gmac0_int_n */
> -				 <K1_PADCONF(45, 1)>;	/* gmac0_clk_ref */
> +				 <K1_PADCONF(14, 1)>;	/* gmac0_int_n */

[Severity: Medium]
Will this change break networking on the OrangePi RV2 board?

The eth0 and eth1 nodes in arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts
request gmac0_cfg and gmac1_cfg respectively, but this file was not updated
to include the newly separated refclk pinmux configuration:

arch/riscv/boot/dts/spacemit/k1-orangepi-rv2.dts:&eth0 {
    ...
	phy-mode =3D "rgmii-id";
	pinctrl-names =3D "default";
	pinctrl-0 =3D <&gmac0_cfg>;
    ...
}

If the OrangePi RV2 hardware relies on these external clock reference pins
for its physical Ethernet interfaces, removing them from the default group
might leave the pinmux incomplete. Should k1-orangepi-rv2.dts also be
updated to include gmac0_clk_ref_cfg and gmac1_clk_ref_cfg?

> +
> +			bias-pull-up =3D <0>;
> +			drive-strength =3D <21>;
> +		};
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260712-bpi-cm6-v3=
-0-8d1e2045179d@pigmoral.tech?part=3D2

