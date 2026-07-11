Return-Path: <devicetree+bounces-324811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Qw7TByZPUmprOQMAu9opvQ
	(envelope-from <devicetree+bounces-324811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 16:11:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75414741C55
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 16:11:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VMuEnViw;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324811-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324811-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7B8EC301384D
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 14:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E34FA24336D;
	Sat, 11 Jul 2026 14:11:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADAB823EA84;
	Sat, 11 Jul 2026 14:11:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783779105; cv=none; b=Jo3zK55vILOSDhnIzxko+MnSs7XbwsUMM9nG8DU6YUs3jjnODqTIm0/OFdWOei1JowE2W9yuOc01OCXIKggwZaVrnNxMkwcYRMz22vsRhtlmHOV7mYgBidZd4Zj5/VIdrdcGYLCMdPzkaybnWvucMNJat2DZw41d2j+1idj1T4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783779105; c=relaxed/simple;
	bh=Li+14bve5wg1IGokJx7pF83bCsrq00gaJSAmErYxzmk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CNFPEPEJchC4LLHBducKHePTx2/ErELFP0NlLOwbRflKWo6/j8zVUyGqNIPdxarZ6Q+R1apN4i66xElqyarjYzXJgWxI2pqkfDnrpYDmi7H0q50S/twD1ICcOIhl59KZFGcTQgcg97lJD4oFPoXpoPLmM7/WZzhIXWlGYL/VZkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMuEnViw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D9E71F000E9;
	Sat, 11 Jul 2026 14:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783779104;
	bh=1mT/RHH4X1n8qDvj8f+yPFz+vL6eMmOxZwLcuXSkcbA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VMuEnViwEpCC5k6JsrL9csyAVvrRKaX7MtV5c8A+z51UoPs5rxdnZEcDC8U7Vj0Ji
	 7Rvnfew7HT4V1zsEjwLjpG4OfqTwc4dNpElw2J5OE9BDn4JkiINbHNLeLj64/7N71+
	 0xGbM/GtSvIxZ1g9HzKw284DYPu6+ixUVeVJqUxfJekrnErKGBIl0TA8eDAwdfkt8F
	 zO8IKLO3SgYQrHjLJVG4/c7vbLlRVIaBTSkz/CRUn9kZznUqorNz3xAao8FHU626xN
	 6//dQcMLywPA5NrxWYHIAp2pyzsUGT/y9kn36SqeGkE/vYistTrBj2k/oGJb1uHkUh
	 nlqV7R7xMKOSw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: sun50i-h616: Add video
 engine
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wens@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <20260711135959.3616919-8-wens@kernel.org>
References: <20260711135959.3616919-1-wens@kernel.org>
 <20260711135959.3616919-8-wens@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Jul 2026 14:11:43 +0000
Message-Id: <20260711141144.3D9E71F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-324811-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wens@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-sunxi@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 75414741C55

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The video-codec node references a non-existent label 've_sram', cau=
sing a Device Tree Compiler (DTC) build failure.
- [Low] The `allwinner,sram` property incorrectly references the generic `m=
mio-sram` parent controller node (`&sram_c`) instead of an `sram-section` c=
hild node.
--

--- Patch [7]: [PATCH v2 7/7] arm64: dts: allwinner: sun50i-h616: Add video=
 engine ---
commit f351af2797d5cc85ad73122a961f9b9e63f82153
Author: Jernej Skrabec <jernej.skrabec@gmail.com>

arm64: dts: allwinner: sun50i-h616: Add video engine

This commit adds the video engine node to the sun50i-h616 device tree file.
It defines the required memory regions, clocks, resets, interrupts, and
SRAM nodes needed by the engine.

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/=
boot/dts/allwinner/sun50i-h616.dtsi
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
[ ... ]
> @@ -175,6 +175,18 @@ crypto: crypto@1904000 {
>  			resets =3D <&ccu RST_BUS_CE>;
>  		};
> =20
> +		video-codec@1c0e000 {
> +			compatible =3D "allwinner,sun50i-h616-video-engine";
> +			reg =3D <0x01c0e000 0x2000>;
> +			clocks =3D <&ccu CLK_BUS_VE>, <&ccu CLK_VE>,
> +				 <&ccu CLK_MBUS_VE>;
> +			clock-names =3D "ahb", "mod", "ram";
> +			resets =3D <&ccu RST_BUS_VE>;
> +			interrupts =3D <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
> +			iommus =3D <&iommu 3>, <&iommu 2>;
> +			allwinner,sram =3D <&ve_sram 1>, <&sram_c 1>;

[Severity: Low]
Is the ve_sram label defined elsewhere? The Device Tree Compiler (DTC) will
fail to build because of this unresolved reference. It appears the sram_c1
node and its ve_sram child section might be missing.

[Severity: Low]
Does the second phandle correctly reference an sram-section child node?
Referencing &sram_c here points to the generic mmio-sram parent controller
node, which lacks #sram-cells. This violates the bindings and triggers a
dt-validate schema failure.

> +		};
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260711135959.3616=
919-1-wens@kernel.org?part=3D7

