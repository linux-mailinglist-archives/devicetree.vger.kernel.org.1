Return-Path: <devicetree+bounces-322827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Uip8JVpNTmrSKQIAu9opvQ
	(envelope-from <devicetree+bounces-322827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 15:15:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE75726B19
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 15:15:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CaqN0B7q;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322827-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322827-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 883053010B81
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 13:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B276D23EAAF;
	Wed,  8 Jul 2026 13:08:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC5E21ABB1
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 13:08:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783516129; cv=none; b=BkF9dps5agxUsks8+FPQ7coTUqHzclFaeKeZigODRjguKdqIV2XwIyK7gMU+TRh7rdaEOSTkatATjFNI07xJjxHMYJtqsJEbMU0+22GxnruUIRVlQ5R4MGeaWi29owACCQtWw+X2sjXD7sTC4cZ9QoEiMCXm1cEkkq4jTkBkH/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783516129; c=relaxed/simple;
	bh=iL/Df4BlicZs9gAnf8+JN79hb/3d4cLM4BTD7ciRUpQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ONWfOu6ytiuIz+Dy/0GN/f+93sVBwwM8VGEswsdjZ4TG5wbuNl4Bw9ygYt9Q/DN1GOgSpOzvdY4FLYhlandeFsRswoTWx8orwEY9uI5zKHYA6fuuMQViezjjDQr2YGMuxXcuO7JCLnMPx0qEXyBvV9QJJyqhDJCKJNwzOSmZpq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaqN0B7q; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F34321F000E9;
	Wed,  8 Jul 2026 13:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783516128;
	bh=IvKwzBqWKAH97HLs0fWSL/Tk/hv5a3n7vd3AKriVrPE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CaqN0B7qE87NBGOnrcnjiHIGUqGxCylHNgUQf7ctCBY3P0v0DBVBID4prIiF3xlwT
	 ppo94Dr6TL3GLsmJ7I0hAGsfKpukT1xgXaz1n/4+ODIurRSUD09KLoxmw8q50m1D4K
	 IpGwrSzF7Zd4DT77IDFpX69KFiS5F71EdHFzoN/3CTqqjvhjMzqlR//nOLfsc6R5lm
	 /1wpd3OT1A0JVpvYsI0KruC6rpfHVTQguSOfA8KlaBCB+UH7OVHvmtharXFha8haTN
	 zmJWt/3VYYqJG5Fr255gZDHr22IEBiS5FwZvNg5pFjlOT2MjuOG3aX4MrJlszx/p7t
	 5d04fbiI5ot6w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 4/4] arm64: dts: nuvoton: npcm845-evb: Add peripheral
 nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomer Maimon" <tmaimon77@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708125352.1915040-5-tmaimon77@gmail.com>
References: <20260708125352.1915040-1-tmaimon77@gmail.com>
 <20260708125352.1915040-5-tmaimon77@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 13:08:47 +0000
Message-Id: <20260708130847.F34321F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322827-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:tmaimon77@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CAE75726B19

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree aliases for fiu1 and fiu3 are swapped, causing m=
ismatched physical interfaces and partition labels.
--

--- Patch [4]: [PATCH v7 4/4] arm64: dts: nuvoton: npcm845-evb: Add periphe=
ral nodes ---
commit addb487f93312d5fc6f3c9be5cafae0cfda32949
Author: Tomer Maimon <tmaimon77@gmail.com>

arm64: dts: nuvoton: npcm845-evb: Add peripheral nodes

This commit enables peripheral support for the NPCM845 evaluation board by
wiring up the SoC controller nodes to the board design. It adds board alias=
es,
MDIO buses, reserved memory, flash partitions, and enables various controll=
ers.

> diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts b/arch/a=
rm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> index 5edf5d13342da..7717c3a8f76d2 100644
> --- a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> +++ b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
> @@ -10,6 +10,42 @@ / {
> =20
>  	aliases {
>  		serial0 =3D &serial0;
> +		ethernet1 =3D &gmac1;
> +		ethernet2 =3D &gmac2;
> +		ethernet3 =3D &gmac3;
> +		mdio-gpio0 =3D &mdio0;
> +		mdio-gpio1 =3D &mdio1;
> +		fiu0 =3D &fiu0;
> +		fiu1 =3D &fiu3;
> +		fiu2 =3D &fiux;
> +		fiu3 =3D &fiu1;

[Severity: Medium]
Are the aliases for fiu1 and fiu3 swapped here?

The underlying node for &fiu1 is labeled "spi1-system1" and &fiu3 is labeled
"spi3-system1" later in the device tree. Could this cross-wiring cause
userspace scripts or tools that rely on fixed controller IDs to write to or
read from the wrong SPI flash partition?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708125352.1915=
040-1-tmaimon77@gmail.com?part=3D4

