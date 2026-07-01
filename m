Return-Path: <devicetree+bounces-318601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UUgZMcwTRWo86goAu9opvQ
	(envelope-from <devicetree+bounces-318601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:19:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF0F6EDFD1
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:19:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Zs6NrQu+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318601-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318601-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0933E30BE26C
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29D7048A2DD;
	Wed,  1 Jul 2026 12:57:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED17481AA0
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 12:57:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782910643; cv=none; b=oxK3flCJAu5zwxHSqHKuf2TsW5ss61OZWOSE3bObgYcbK/DMAY6etefOmyLnHQIzpZB5lv2TGi4RiYPIl4rixoCktC89piIS5FqC4ObkzUitOMcsE1NGAavZaaNECFirKcB4ZCHJ768UB5YF3/uisbRba/TDd5BBKz4Ljju3S18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782910643; c=relaxed/simple;
	bh=3Jn8Ed94RWbe0AUf5k5nE4v6KJoNjNJR60jrCJr9btU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cWOgnl4BcW6NyKPdk/Binz4atlnGWkAt3574Uy7TDmA2ZNP2WPOTNAFkPwxmFwLEXULgWITL4fpLEuUUT+QrFwKaPpLaIEygsaoZvmZHZvc5Xno8//jNp1qZqLHt7vNhw6X+pw8lxFDMdyA+93lrMzvVtNI/b16n7XZpTrlgCGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zs6NrQu+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 734DA1F00A3A;
	Wed,  1 Jul 2026 12:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782910641;
	bh=gazRUy4HGPt5KoErkyQUB/LDfEuNgJSSN8L0Vu0YSzQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Zs6NrQu+rYcw2/7Fm4HNFX9kiI8AxFtfPjgNA704hmrU6tabMPliAte1ilFvtWgIr
	 6k6u+W16Knf6ci6NWJ8+KYA3bVKf2PCBSkb6+ymZ0HCb7x61U2QKZ/TeTZ3V+YQJsH
	 PQzQBEJi07Hg8aWHQNiXbElFNYvHWcMahCFvSqEqUAu1/n3osjLMhmJoAmPqOqDMtp
	 Nq0GgyMnS/PVSzRz0GbZCMfYq0ZvtSFLb/PgozSuBDT/tsCUpxOVb0WZXCHAKruK8j
	 lvePtWbdsgrfSoRuYjywOQUcdBvlBI947vRqPB3zZhUNFFb9FQgBd2wl+XYWTB+um0
	 4SOjZ+KY9RWjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/7] arm64: dts: mediatek: mt8188: Add and use UART
 AP_DMA controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260701121929.19374-6-angelogioacchino.delregno@collabora.com>
References: <20260701121929.19374-1-angelogioacchino.delregno@collabora.com>
 <20260701121929.19374-6-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 12:57:21 +0000
Message-Id: <20260701125721.734DA1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318601-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2CF0F6EDFD1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The apdma device node is placed out of order based on its unit-addr=
ess.
--

commit abad4b5e77dac5657d316ab360e0ca880d69701b
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

arm64: dts: mediatek: mt8188: Add and use UART AP_DMA controller

This commit adds the UART DMA controller (AP_DMA) to the MT8188 SoC.
It also assigns the respective DMA channels to the four UART controllers
to improve data transmission and reception efficiency.

> diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8188.dtsi
> index 75133794cec38..8f01d95e6d7d9 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> @@ -1338,6 +1338,31 @@ systimer: timer@10017000 {
>  			clocks =3D <&clk13m>;
>  		};
> =20
> +		apdma: dma-controller@10220880 {

[Severity: Low]
This isn't a bug, but should this node be placed further down in the file
to maintain ascending unit-address order?

The unit-address 10220880 is placed here after timer@10017000 but before
pwrap@10024000 (shown below), which breaks the numerical sorting convention
for Device Tree nodes.

> +			compatible =3D "mediatek,mt8188-uart-dma", "mediatek,mt6835-uart-dma";

[ ... ]

> +			#dma-cells =3D <1>;
> +			dma-requests =3D <12>;
> +		};
> +
>  		pwrap: pwrap@10024000 {
>  			compatible =3D "mediatek,mt8188-pwrap", "mediatek,mt8195-pwrap", "sys=
con";

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701121929.1937=
4-1-angelogioacchino.delregno@collabora.com?part=3D5

