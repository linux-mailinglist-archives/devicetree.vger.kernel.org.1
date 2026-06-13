Return-Path: <devicetree+bounces-311285-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nR9yNoMnLWpfdAQAu9opvQ
	(envelope-from <devicetree+bounces-311285-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:48:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D67AC67E493
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:48:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bXm0O7zi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311285-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311285-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E30A5300461D
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC48635F191;
	Sat, 13 Jun 2026 09:48:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E82131DDBB
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 09:48:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781344126; cv=none; b=Ye0UwN9IZFoEB4lKTSC3h3ko8dIezCEn6xPjvxINNR69EQpKnCK+ixogSHDptYhSEVIr5S4w8DVqK2fb5WK+XbD+kWjH5tXGBTtn11ztJaEUOk11c8HK4svHf3GGaByewl3GIuXnWhTLNDES8PmZpw6uSeMbto9NG7vQKmhk2uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781344126; c=relaxed/simple;
	bh=Le2TluI4QhioSProWh/T+ChT6gMlyKD/CDA5Y/Z4G2Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UViGzseMwrUpmNaVnacKehDEhwYmdnxPM/qj2fPvCv6WVJiH5HC89FQirrN/As7B6bqmpbKDmZOyrQ0UJvizmaCWf++rTyT0EvyQ7gfghtYOMFTohJt/vtjMkcipVII41Z+Tin4MBdU4Sj3vQ/opAyIJMLjz72r18TXAgE5y25M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXm0O7zi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEA7D1F000E9;
	Sat, 13 Jun 2026 09:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781344125;
	bh=H0vp+trOASQuyJmUUNeuT7uAJO9F68Wif0rAf01Dmbs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bXm0O7zi7j4K84kkiWJyCEvL0Vyn2p9LdJIq+FshdLqRQ5twCcgF0hk2jLN7yRCO8
	 zoxx6xe2VEQf/9ODokIMC9ovsMzPrmMqhH8hIDuA7XL/xLM0kcN2Mt7/LPfXOeMx/W
	 Je+QcsmBN0IXkXR99xp0UASWF2pkA7hTZslonTjHV7WU7Ko8Coh51oDjGDy+908yy/
	 l3YMCdKWKK6XOus92sb9yHOvueujnONAYLKDfO6mBht4SkvgjRCKexaLrMh6sFj91j
	 4qs7c68b2Wq2llO+9e7CpIqizYsNJ6x6uLnutgBH/NtpP34I7hw67Fazr0s5zVcDAG
	 VMWaa7nDnYRAw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] arm: dts: st: align node patterns with
 established convention
Reply-To: sashiko-reviews@lists.linux.dev
To: "Charan Pedumuru" <charan.pedumuru@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260613-st-mmc-v4-1-b3c385617c16@gmail.com>
References: <20260613-st-mmc-v4-1-b3c385617c16@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 09:48:44 +0000
Message-Id: <20260613094844.EEA7D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311285-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:charan.pedumuru@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:charanpedumuru@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D67AC67E493

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Renaming 'sdhci@...' nodes to 'mmc@...' in the base dtsi file leav=
es overrides in derived dtsi and dts files orphaned, causing node duplicati=
on and completely breaking MMC functionality.
--

commit 40b6fa41749cf01adbee4227ca47061d9fbb6688
Author: Charan Pedumuru <charan.pedumuru@gmail.com>

arm: dts: st: align node patterns with established convention

This commit updates ST MMC DTS node patterns to match established convention
by renaming the base sdhci nodes to mmc.

> diff --git a/arch/arm/boot/dts/st/stih407-family.dtsi b/arch/arm/boot/dts=
/st/stih407-family.dtsi
> index 3e6a0542e3aea..08acba209c564 100644
> --- a/arch/arm/boot/dts/st/stih407-family.dtsi
> +++ b/arch/arm/boot/dts/st/stih407-family.dtsi
> @@ -596,7 +596,7 @@ spi@9542000 {
>  			status =3D "disabled";
>  		};
> =20
> -		mmc0: sdhci@9060000 {
> +		mmc0: mmc@9060000 {

[Severity: High]
Does renaming these base nodes to mmc@... leave downstream overrides
orphaned?

Looking at board files like arch/arm/boot/dts/st/stih410-b2260.dts and
arch/arm/boot/dts/st/stih418-b2199.dts, there are still overrides using
the old names:

mmc0: sdhci@9060000 {
        pinctrl-0 =3D <&pinctrl_sd0>;
        bus-width =3D <4>;
        status =3D "okay";
};

Because the base node is renamed here without updating the downstream files,
will the DTC compiler treat the downstream overrides as new node declaratio=
ns
rather than property merges?

This would leave the base mmc@9060000 node disabled, while the new
sdhci@9060000 node would lack essential properties like compatible and reg,
preventing the kernel from binding the MMC driver to the hardware.

>  			compatible =3D "st,sdhci-stih407", "st,sdhci";
>  			status =3D "disabled";
>  			reg =3D <0x09060000 0x7ff>, <0x9061008 0x20>;

[ ... ]

> -		mmc1: sdhci@9080000 {
> +		mmc1: mmc@9080000 {

[Severity: High]
Are there similar orphaned overrides for this node?

Checking arch/arm/boot/dts/st/stih418-b2199.dts, it appears this node is
also overridden using the old name:

mmc1: sdhci@9080000 {
        status =3D "okay";
};

Would this result in the same missing compatible properties and disabled
base node?

>  			compatible =3D "st,sdhci-stih407", "st,sdhci";
>  			status =3D "disabled";
>  			reg =3D <0x09080000 0x7ff>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613-st-mmc-v4-=
0-b3c385617c16@gmail.com?part=3D1

