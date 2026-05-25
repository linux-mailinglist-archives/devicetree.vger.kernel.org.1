Return-Path: <devicetree+bounces-302578-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WG5rGeUkFGrfKAcAu9opvQ
	(envelope-from <devicetree+bounces-302578-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:31:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF965C940E
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 12:31:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9D48C3000FC3
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 10:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589AB330B11;
	Mon, 25 May 2026 10:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXxrM1rT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386C6305685
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 10:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779705058; cv=none; b=mhHGMLPKomLXnw33nt8DT75D/M1u5RZ/Pxwlogj3z+2960F9pKZ8poiBC05UmshjaXRKEd3+bxfG5rL2uOfLvRHYKPUB7vziheDGNjXZmyBy+oMoxaJohd14sfzsH5XzOlZV5EO46+NO4DabQC63rawEFw7BV43jkz9rhldP/D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779705058; c=relaxed/simple;
	bh=PX+jWtEMNHNbpIa0u8FEmZaj7Rc4tWJkdoqAa/jzzpw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=psG/8TwkAm/BHyn+251NQcc2tbtGj01LzDMtrADgz8SlMMk64gQylMDYLIlxrE2is3dR8onrEPKZzsARs97gCCnvKGswnHZ9Vauz51JuIm5ZhBN3Jr2ugVpLE2aXI/VQIOdoKW0+kkWhYHJPuvHt6a/eZhzYK/qB6sL86/BylTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXxrM1rT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67C2C1F000E9;
	Mon, 25 May 2026 10:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779705056;
	bh=1zAl0UInbh5u+DhbiChKG4Sc3oBGe/unJUK6VjVRZoA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iXxrM1rTLx0p5qnX0r8rjl5swLXn8W7awK5tEFTi5d3OVOfYQXfxaFyDjnBXBXEJg
	 2FxnU3CW8Wnq0S2unxVnHPtKSY6qncaBNcHZ/xeKJif+cj6bMQ8+LB9FTlHmlUmhNW
	 qchSNZmbSI04w6afvUHfhvi+HFX0TcfBEJ2SO8aZdDqjEcOTP++2mAoF6bF8H4Dnab
	 vrPZ2R52+yyy2QcjY/1wQJRXKaqu/Fcpa6r45BzFCsN6pwgCtWD6jQPxpS1iLN6Nna
	 pBU38+H6K7H59uE3EtXFibECV6gpz0k4d7CIEBscyDbgO+zbJ1wwIwHTkrXg11zoT9
	 TmSsntWxZ4hcw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 4/5] ARM: dts: microchip: add I3C controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "Manikandan Muralidharan" <manikandan.m@microchip.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260525092405.1514213-5-manikandan.m@microchip.com>
References: <20260525092405.1514213-5-manikandan.m@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 10:30:56 +0000
Message-Id: <20260525103056.67C2C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302578-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: EBF965C940E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing '#address-cells' and '#size-cells' in I3C controller DT node
--

commit 6a4a77f4bd5c6126a185a06e30b920a5e43d4eb6
Author: Durai Manickam KR <durai.manickamkr@microchip.com>

ARM: dts: microchip: add I3C controller

This commit adds the I3C controller device tree node for the sama7d65 SoC.

> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dt=
s/microchip/sama7d65.dtsi
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> @@ -1055,5 +1055,13 @@ gic: interrupt-controller@e8c11000 {
[ ... ]
> +		i3c: i3c@e9000000 {
> +			compatible =3D "microchip,sama7d65-i3c-hci";
> +			reg =3D <0xe9000000 0x300>;
> +			interrupts =3D <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&pmc PMC_TYPE_PERIPHERAL 105>, <&pmc PMC_TYPE_GCK 105>;

[Severity: Low]
Are the #address-cells and #size-cells properties missing for this node?
The MIPI I3C HCI schema inherits from the core I3C schema, which typically
requires #address-cells to be 3 and #size-cells to be 0.

Without these properties, dtbs_check validation might fail, and the OF core
could have trouble parsing addresses for any child devices added when this
controller is enabled in a board file.

> +			status =3D "disabled";
> +		};
>  	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525092405.1514=
213-1-manikandan.m@microchip.com?part=3D4

