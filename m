Return-Path: <devicetree+bounces-326946-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iqN1DLh6V2rKOwEAu9opvQ
	(envelope-from <devicetree+bounces-326946-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:19:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C01E75E03C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:19:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DyE6rBTz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326946-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326946-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3EA1305D35C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8869448D00;
	Wed, 15 Jul 2026 12:15:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8470044B663
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:15:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784117754; cv=none; b=UnCdiJRT2BBMyLIEQPb3Ld9F82TPxImteP4xIWBGl+p36wrBVgCd00FsiY1nzUgDUnnJwTnQVfSAw7ExtIcRoF0yaLY+1rbuu3f//YRhG0q0aRZyKvZ0NQ6Wyj6XFEF9fFyNv/FIzXnvz+nGyoBzJ/GoEPb0aBpqnDzUth0EHF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784117754; c=relaxed/simple;
	bh=rs9CAX7ZXlm+O4dUgY5LCuB9aNqTJN80rVNXz7MyBfw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uiD+gQAw0LR7kqX57OgZYYh/r/54fqvBKlrFB/fg+JKPMeBaVCPgJ8hQU5FD9jP1zT7k37smZXb/bYq7dH7iqxqeQkYHWNQhtxincsIdjcg1HoMq95u8k4CxyH8UV/Z5GD8BLEA7kQYqJBEE3Z/falWPwoxqjfUsAlyeqqOYL/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyE6rBTz; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 103AE1F000E9;
	Wed, 15 Jul 2026 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784117753;
	bh=W6xl1HFy97nB07pNNhO40/DXz/pokBvQDkFWNqUQ5wA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DyE6rBTzF+riTV7T0NSwSHtGbatOo8D1mBm4ihYfoXzSCQTIEGMe0D/va1JDKNNWa
	 JI5Rk1+WSs+Oln0g3tICJy/GwmGDWHmEF2YXBIBctMhWyT4+A//AJiFZXQ1WQ1/H3a
	 HfovahLqYwCudB53WNCFlmS3RbQm7WuzO4iyKxbsqThL5ALplOUNRobjpaPakBCWtZ
	 XqTuf+t0Wak+GEfatNVZ7i5LUI1vjIy3yEIWNLtTH9+rUml1Ay6ouYFt2iGYIS0BOo
	 y9n7UDj0p6alrgcgdU2nr3bsP2ePcUwEdMHqecXR/2xWWxuz+fCfHTONHJf3Nm8p0/
	 dAYWvz0qTACFw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 10/11] dt-bindings: display: mediatek: wdma: Add
 compatibles for more SoCs
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260715114916.19690-11-angelogioacchino.delregno@collabora.com>
References: <20260715114916.19690-1-angelogioacchino.delregno@collabora.com>
 <20260715114916.19690-11-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 12:15:52 +0000
Message-Id: <20260715121553.103AE1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326946-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C01E75E03C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Inconsistent compatibility fallback for 64-bit SoCs (MT8192/MT81=
95) violating hardware constraints described in the commit.
--

--- Patch [10]: [PATCH v5 10/11] dt-bindings: display: mediatek: wdma: Add =
compatibles for more SoCs ---
commit ffb6d1b73de2ee2d9fba381dca064a6d8fef7acf
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

dt-bindings: display: mediatek: wdma: Add compatibles for more SoCs

This commit adds missing compatibles for the Write DMA hardware in the
Display Controller for Dimensity 1200 (MT6893) and Kompanio
500/520/820/1200 (MT8183/MT8186/MT8192/MT8195).

> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdm=
a.yaml
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.ya=
ml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.ya=
ml
> @@ -22,11 +22,16 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> +          - mediatek,mt6893-disp-wdma
>            - mediatek,mt8173-disp-wdma
>        - items:
>            - enum:
>                - mediatek,mt6795-disp-wdma
>                - mediatek,mt8167-disp-wdma
> +              - mediatek,mt8183-disp-wdma
> +              - mediatek,mt8186-disp-wdma
> +              - mediatek,mt8192-disp-wdma
> +              - mediatek,mt8195-disp-wdma
>            - const: mediatek,mt8173-disp-wdma

[Severity: Medium]
The commit message explicitly excludes MT6893 from falling back to
MT8173 because it introduces support for destination addresses larger
than 32 bits. Should this same rule apply to MT8192 and MT8195?

Since MT8195 (Kompanio 1200) and MT6893 (Dimensity 1200) are the same
generation of SoCs sharing the same IP, grouping MT8192 and MT8195 here
implies they can safely fall back to the legacy 32-bit driver.=20

If an OS binds a legacy 32-bit driver to the MT8195 WDMA using this
fallback, won't it misprogram the DMA addresses by truncating them to 32
bits when attempting a DMA operation above 4GB?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715114916.1969=
0-1-angelogioacchino.delregno@collabora.com?part=3D10

