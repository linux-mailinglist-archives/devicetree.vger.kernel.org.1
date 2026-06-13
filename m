Return-Path: <devicetree+bounces-311353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZOocDDV6LWo3gwQAu9opvQ
	(envelope-from <devicetree+bounces-311353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 17:41:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD1367EFDF
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 17:41:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=L77OZ0g+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311353-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311353-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2F8603001D72
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 15:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37945303CAB;
	Sat, 13 Jun 2026 15:41:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F01431E83D;
	Sat, 13 Jun 2026 15:41:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781365294; cv=none; b=m0p2/NI2f/bdw7ye0P+zbFvHD7jSV4WrlX6Ttfels3MsPrpfjBIqAfzeHn9NuXaoCpKk46PbiKZWi752wW9rXHtWhysXjtcsKo4QeekSglBdFKty0mW6BI26Tiy+FP5w1zCLQJLzYkzToEbSihIvtNjpxowUs1vnIu6KReSiOAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781365294; c=relaxed/simple;
	bh=egg85pk2oWocvuGcdIqI+/uEwLdKtcAb7e/DimYOkYg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HJPl5gxFUiw6vf6hz+7GBkSV/P2dmNr02L1xqxobTgEV2nzVkEiQU3q+5o+CHFBGr9slNo1pym1GnYSQLx1sZJaBxedHiUVf91Zp2MkO7DCpiTgWvDc07biGSLI+pLJeGJA4778XPYOQsvo5J33OqlgqIz+/ZT8y4ddB12r1i5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L77OZ0g+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A62201F000E9;
	Sat, 13 Jun 2026 15:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781365291;
	bh=nbHTrTtQpGa47qL3upIFzytTEoEpqsXR5C+NqVW4fbI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=L77OZ0g+QVX2YZA8L73/VFBc1oQHB83ZBVMy6GQAW47v19LTLtCU06D093ym0ChnF
	 wZBxLTEpkIBQqonmT8KnQfe6DDilUgdrIMj2vt6kYVyytKNlHRCylt2xECIkfGWqjG
	 s7FghLdX/ZTjhylTA+l0mn1aZNtvMxz8og/n2pv53Uix3u/yhfDzXsvXsMii17P3LE
	 KTL8EmEwmEJ+QGypyG16ahSN/DNTkhCZyK+astXy/chLtswjBxg+jaj1PkFjMYsoiV
	 3fYmsV6JrpEFBg6xRMN4S/IY844v5NqQWeO0REX36+88qBBgRwMU7jJTpnqelFk9RL
	 Sk95uqv5uQqlg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 5/6] ARM: dts: sun8i: v3s: Add nodes for MIPI CSI-2
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Paul Kocialkowski" <paulk@sys-base.io>
Cc: robh@kernel.org, linux-sunxi@lists.linux.dev, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260613152655.212490-6-paulk@sys-base.io>
References: <20260613152655.212490-6-paulk@sys-base.io>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 15:41:31 +0000
Message-Id: <20260613154131.A62201F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-311353-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,bootlin.com:email,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:paulk@sys-base.io,m:robh@kernel.org,m:linux-sunxi@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BDD1367EFDF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `csi0` node introduces the `interconnects` and `interconnect-na=
mes` properties, but these are not defined in the corresponding dt-binding =
schema `allwinner,sun6i-a31-csi.yaml`.
--

commit 6348731e0b0149fecdb9ccb7d05f8577710a1724
Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

ARM: dts: sun8i: v3s: Add nodes for MIPI CSI-2 support

This commit adds MIPI CSI-2 support for the V3s SoC by introducing nodes
for CSI0, the MIPI CSI-2 bridge, and the D-PHY. The CSI0 node includes
interconnect properties to inherit the proper DMA offsets.

> diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/d=
ts/allwinner/sun8i-v3s.dtsi
> index 02d6c62b3874e..03a1739683b16 100644
> --- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
[ ... ]
> @@ -671,6 +671,79 @@ gic: interrupt-controller@1c81000 {
>  			interrupts =3D <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HI=
GH)>;
>  		};
> =20
> +		csi0: camera@1cb0000 {
> +			compatible =3D "allwinner,sun8i-v3s-csi";
> +			reg =3D <0x01cb0000 0x1000>;
> +			interrupts =3D <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&ccu CLK_BUS_CSI>,
> +				 <&ccu CLK_CSI_SCLK>,
> +				 <&ccu CLK_DRAM_CSI>;
> +			clock-names =3D "bus", "mod", "ram";
> +			resets =3D <&ccu RST_BUS_CSI>;
> +			interconnects =3D <&mbus 5>;
> +			interconnect-names =3D "dma-mem";

[Severity: Low]
Will adding these properties cause a dtbs_check validation warning?

The interconnects and interconnect-names properties do not appear to be
defined in the corresponding dt-binding schema at
Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml.

Because that schema enforces additionalProperties: false, introducing
undocumented properties here might result in a validation failure. Should
the schema be updated alongside this patch to allow these interconnect
properties?

> +			status =3D "disabled";
> +
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613152655.2124=
90-1-paulk@sys-base.io?part=3D5

