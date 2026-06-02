Return-Path: <devicetree+bounces-305530-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNknLM2XHmoAlQkAu9opvQ
	(envelope-from <devicetree+bounces-305530-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 10:43:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1574F62AC85
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 10:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA8DA3027B51
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 08:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D454F3C2BAA;
	Tue,  2 Jun 2026 08:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnNjOFpf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62482F1FEC;
	Tue,  2 Jun 2026 08:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780389502; cv=none; b=bb+0EVF3RHc5DiU2bKdXY/nqmgCPcWKCiZ/0QB1BQDTXLGHYI1shA9qcNHTvR+yPerJ1tB9/vGKmUtNnqAEpbxfdGecjJ2cDbilQVuZ1/1Hyb9Wxl39NNwqTyn6KnfCzyyHZ6wPj4rbzoFFarYRi0hjOBfsP9c2KPpANexn0X/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780389502; c=relaxed/simple;
	bh=846NDpAI0xh0c/Yi55L5J1Is0TwLXkumKTyZgMFzLtQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fufkKQAQe3ESOu50X8uRAQQ7uPZ8JaiuCm7aD3mnF4bM2gPdcP0wel8XgY4F6HxTlPnDGN+jRpjfmPakyx9XUbj7J1FnipaoMfHC81hj9FSLALssYDJmVGjIfD7cX4aIbrxD6HXBQt6CHAA5zEuUcu1huIqHWBURxlnM9sq4yeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnNjOFpf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 210941F00898;
	Tue,  2 Jun 2026 08:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780389501;
	bh=p1ALv1igfUIdk3De+xsSQMgEiYrh8DWrHzDo1RXxVFE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YnNjOFpfYGmU1vUGqUMWlUYz0Vz1AKAe+i8nXFg/79XcNlPFiNtI/zyb32bIlgqOX
	 3BZZdh8Bv2O+yRbGqzZUrMq77hqw5vybH4tQTS3wJF5QZqO96853vkzvcT86VrvS3j
	 /98ZYeOQ2ksh7Onta2yrAv1SXl5FeMxeyPQZkVHUi0Rrhq0SoRx2Saj9CbJLVdEfgd
	 AplzE23eNLtlzSkJ78kRDVsYYW9r/jXc/nNxK11219VIg9aMiSXyCYxMNf3wQxtrrV
	 9aeu+5DLeLdoAUuvdaji3W8DwV+zTUscppHvI81hVh9womtcgAsc+IKshw/j39YNo0
	 Af/aHgICc257Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 6/6] arm64: dts: s32g: describe GPIO and EIRQ
 resources in SIUL2 pinctrl node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Khristine Andreea Barbulescu" <khristineandreea.barbulescu@oss.nxp.com>
Cc: robh@kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260602080132.3256239-7-khristineandreea.barbulescu@oss.nxp.com>
References: <20260602080132.3256239-7-khristineandreea.barbulescu@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 08:38:20 +0000
Message-Id: <20260602083821.210941F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305530-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,nxp.com:email];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[2.105.251.32:email];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 1574F62AC85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The `reg` property for the `swt8` watchdog device is missing the `=
0x` prefix for its base address.
--

commit 1403ffa829f6f3074ef410621ae401b08c310e0a
Author: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.c=
om>

arm64: dts: s32g: describe GPIO and EIRQ resources in SIUL2 pinctrl node

This commit updates the SIUL2 pinctrl nodes in the s32g2 and s32g3 device
trees to describe GPIO and EIRQ registers. It adds the PGPDO, PGPDI, and
EIRQ register windows along with the corresponding controller properties.

> diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/d=
ts/freescale/s32g3.dtsi
> --- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi

[ ... ]

> 		swt8: watchdog@40500000 {
> 			compatible =3D "nxp,s32g3-swt", "nxp,s32g2-swt";
> 			reg =3D <40500000 0x1000>;

[Severity: High]
This isn't a bug introduced by this patch, but while reviewing the s32g3
device tree changes, I noticed this pre-existing issue in the swt8 node.

Is it intentional that the reg property uses a decimal base address instead
of a hexadecimal one?

Since there is no 0x prefix, 40500000 is evaluated as decimal, which is
0x269FEC0 in hexadecimal. This does not match the intended hardware
address of 0x40500000 specified in the unit address.

If a board enables this watchdog device, could the driver attempt to
ioremap the wrong physical memory address and trigger a synchronous
external abort?

> 			clocks =3D <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
> 			clock-names =3D "counter", "module", "register";
> 			status =3D "disabled";
> 		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602080132.3256=
239-1-khristineandreea.barbulescu@oss.nxp.com?part=3D6

