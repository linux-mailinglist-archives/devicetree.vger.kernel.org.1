Return-Path: <devicetree+bounces-324965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AfkzHSUFU2pdWAMAu9opvQ
	(envelope-from <devicetree+bounces-324965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 05:08:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D71BA743A63
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 05:08:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AsXAgkCj;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324965-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324965-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 857EA301919C
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 03:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B182D8DD6;
	Sun, 12 Jul 2026 03:08:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B3C2773DE;
	Sun, 12 Jul 2026 03:08:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783825696; cv=none; b=Oxll2KqEgAaoErsDyvQGuVSrQw7pmpYO8pZo22BHrxDWjrRvQgwv8tEb723jo3aAz1BHr5Gm90JOQ/t5uAoisEpqA2943zM7TMXFYHMClYgzWrWO8cXnLp7Mih9J/RsV//VCFZw71/Sfro3uFp/nkBeRE+jJ0w7e3ivki1LtBRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783825696; c=relaxed/simple;
	bh=dpG4IzAD8BWTWM6wJgR6bnBBcj0tBPX9LA+9pBC/Ugk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=k5ogsZk/1uGQ8gF6tZcnuo1kjvcA0tfY1v9XqnZPBL+AZR8xwu5SF2QEgnRsRR86O90bayXR5nLXyZSZ88WMp1HIbqFrH0kLSmFGrT93X1c/lQ+6MsqOxhDr0gcYoLceP4DvZsc3/VGxOBxQcdWSE/8C0EsKkYBlO02m6ukE5TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsXAgkCj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56E901F00A3A;
	Sun, 12 Jul 2026 03:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783825695;
	bh=zzmauq3DFU3KChzh7d1vi3GWWXkS7j7toY46D549oAo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AsXAgkCjMVw2/Bplb2/3buWVnrgDoZ8WO0rzrMb7spvR50BDc9cdvkZD3/2inDV1A
	 bI/ZZodwor3LE/9EjrkaoR8s0ajQU6YMNNlwqXs7j9Ds7w+bTLbZihcX+FC4ruOtA5
	 IxgdtrdCqnmtmRSggOTmgTT2k+DMXvE9kAy5Ff3AAW0yC0NjOyHpgQrKB/DrMYK/6z
	 sQPLAXedJWX/NanqKWGfCMPqDxoGllcRkwJGsXd9nXt28iBz7zjmGGtEOjGaFIRIlU
	 uYlQtwdov0KuBFmkAoyRPFXC93SwKLtPzlD+B2fWU/NgwNP8WpxQ2P6YbmmUUdGR92
	 N8ThscERewxOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/7] dt-bindings: media: sun4i-a10-video-engine: Fix
 SRAM count for H6
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wens@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260712030011.3778169-3-wens@kernel.org>
References: <20260712030011.3778169-1-wens@kernel.org>
 <20260712030011.3778169-3-wens@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 03:08:14 +0000
Message-Id: <20260712030815.56E901F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-324965-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wens@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-sunxi@lists.linux.dev,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D71BA743A63

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Medium] The binding enforces a second SRAM item for the H6 SoC, but the =
in-tree device tree is not updated, causing validation failures.

Pre-existing issues:
- [High] The device tree binding requires claiming a second SRAM alias for =
the H6 video engine, but the SRAM driver hardcodes parsing only the first r=
egion.
--

--- Patch [2]: [PATCH v3 2/7] dt-bindings: media: sun4i-a10-video-engine: F=
ix SRAM count for H6 ---
commit b3f1ab3ef227838179ad2332d41536525f39d18a
Author: Chen-Yu Tsai <wens@kernel.org>

dt-bindings: media: sun4i-a10-video-engine: Fix SRAM count for H6

On the H6, the SRAM C region includes an alias of part of the VE SRAM
used by the video engine. This commit adds a second SRAM region phandle
requirement to the video engine for the H6 to claim this alias window.

> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-=
video-engine.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i=
-a10-video-engine.yaml
> index b4c0fabb38211..e01588a02628d 100644
> --- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-e=
ngine.yaml
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-e=
ngine.yaml
[ ... ]
> @@ -91,6 +95,21 @@ allOf:
>          iommus:
>            maxItems: 1
> =20
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - allwinner,sun50i-h6-video-engine
> +    then:
> +      properties:
> +        allwinner,sram:
> +          minItems: 2

[Severity: High]
This is a pre-existing issue, but does adding the DT binding property solve=
 the
hardware aliasing issue without implementing the necessary driver parser ch=
anges?

Looking at sunxi_sram_of_parse() in drivers/soc/sunxi/sunxi_sram.c, it
hardcodes index 0 when parsing the 'allwinner,sram' property:

drivers/soc/sunxi/sunxi_sram.c:sunxi_sram_of_parse() {
    ...
    ret =3D of_parse_phandle_with_fixed_args(node, "allwinner,sram", 1, 0,
    ...
}

When the Cedrus driver probes, it calls sunxi_sram_claim(), which relies on
sunxi_sram_of_parse() and only claims the single region returned, leaving t=
he
alias window unprotected.=20

Without claiming the alias window, could another subsystem claim and use the
overlapping SRAM region concurrently, leading to silent memory corruption?

[Severity: Medium]
Will this new constraint cause validation failures (make dtbs_check) for the
existing in-tree device tree?

It appears the H6 device tree node video-codec@1c0e000 in
arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi currently only provides a sing=
le
SRAM item:

arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi:video-codec@1c0e000 {
    ...
    allwinner,sram =3D <&ve_sram 1>;
    ...
}

Should the in-tree device tree be updated alongside this binding change to
satisfy the new minItems constraint?

> +    else:
> +      properties:
> +        allwinner,sram:
> +          maxItems: 1

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260712030011.3778=
169-1-wens@kernel.org?part=3D2

