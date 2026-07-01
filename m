Return-Path: <devicetree+bounces-318576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0hhEC+kVRWro6goAu9opvQ
	(envelope-from <devicetree+bounces-318576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:28:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFA76EE1A0
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:28:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bnxwXQNd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318576-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318576-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C4F2304D73C
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B1CC481241;
	Wed,  1 Jul 2026 12:49:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E13480DC4
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 12:49:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782910148; cv=none; b=Ng2Wcj4eaXnbA9FtxFp0t9xnn7cn5pXAlfGkNUyYnGqhtRPZ6HpGv5axhMWgmfyAhZEvZ7TfhlXIPqTqKQf1Zcs4U0kMo+axTQ1CWneaOh4NjO94oIzhbKD6vlpCC1Nz/QDO5r27sBIL9JrVQbP29mSaJMnaLIXKA1rjTJWxTL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782910148; c=relaxed/simple;
	bh=xn8BDGrAnW5RYzwBj5s6hB0RX6F9r3lZDpwDtecgBiA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mgB7qGx1JF/skzYCBT69vkoxG6HUg2QA75PsaH56cBFmv5/3IGD3x7kd2LqziqPQxSwPYEdjsHOTbZtwf+Qm7q8luntRxHgVRHYIrKdA13hrR1YUnAGljENYoQGM4rRODs8xWwh3D+LOTrZYF45gDqZOyp4447CuX9ozN0yg530=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnxwXQNd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 660D71F000E9;
	Wed,  1 Jul 2026 12:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782910147;
	bh=Jwfm+UhTq9jCPDMKqKbXqx99X35tpfzn+66Oi/yfEVk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bnxwXQNdjjTOvNn/4We374HmxWwOJPyPyjTmTuykU9AEdwhlEwUdPEcjYHVxs8LKM
	 EECM94fDSZHCPK82QbHHHnEs9f876iZgq7K75uobakydvSQck24dz8X8+DOCIWVTWt
	 C9k1Xzyx2EGr7VCNn7CEf0DgQbk1j4kgQqh8EZ8WbCInGpCfNbLjb9YmdzZmZgE6jw
	 lauwVFvijmhJ9EmdP9bhG2hueu6pa7/CUrpALP4aeTjgxtv5obdIsvztI4BZVohmEP
	 RTK7btdhow+lswoRQjbTcaIGAq7cfXryWy8bDDfhGqZ46DIOTo8NmiWKkPsEFw7JEw
	 58oKpi5z4fuxA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/7] arm64: dts: mediatek: mt8186: Add and use UART
 AP_DMA controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701121929.19374-5-angelogioacchino.delregno@collabora.com>
References: <20260701121929.19374-1-angelogioacchino.delregno@collabora.com>
 <20260701121929.19374-5-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 12:49:06 +0000
Message-Id: <20260701124907.660D71F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318576-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,collabora.com:email,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CFA76EE1A0

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The `apdma` node provides an incorrect number of cells in its `int=
errupts` property (3 instead of 4) and likely incorrect polarity, breaking =
DT parsing and interrupt registration.
- [Medium] Incorrect fallback compatible string `mediatek,mt6577-uart-dma` =
violates the DT binding schema and silently restricts DMA capabilities to 3=
2 bits.
--

commit 9cc7e542a995507ace5b082f09a644dd3e616c00
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

arm64: dts: mediatek: mt8186: Add and use UART AP_DMA controller

This SoC has a DMA controller (AP_DMA) that provides one channel for each d=
ata
direction (transmit and receive) for all of the UART controllers in the SoC.
This commit adds the UART DMA controller and assigns the right channels to =
each
of the three UART controllers to increase data TX/RX efficiency.

> diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8186.dtsi
> index b91f88ffae0e8..7b25c51b1b457 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
> @@ -1142,6 +1142,22 @@ systimer: timer@10017000 {
>  			clocks =3D <&clk13m>;
>  		};
> =20
> +		apdma: dma-controller@10200d80 {
> +			compatible =3D "mediatek,mt8186-uart-dma", "mediatek,mt6577-uart-dma";

[Severity: Medium]
Does this fallback compatible string restrict the DMA bitmask?

According to the mediatek,uart-dma.yaml binding, mediatek,mt8186-uart-dma
should fall back to mediatek,mt6835-uart-dma.

Because the mtk-uart-apdma driver uses the matched compatible string to
configure the DMA mask, falling back to mt6577 restricts the controller
to 32 bits instead of the 34 bits provided by mt6835.

Could using mt6577-uart-dma here force hardware with more than 4GB of RAM
to use SWIOTLB bounce buffering for UART DMA transfers?

> +			reg =3D <0 0x10200d80 0 0x80>, <0 0x10200e00 0 0x80>,
> +			      <0 0x10200e80 0 0x80>, <0 0x10200f00 0 0x80>,
> +			      <0 0x10200f80 0 0x80>, <0 0x10201000 0 0x80>;
> +			interrupts =3D <GIC_SPI 376 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 377 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 378 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 379 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 380 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 381 IRQ_TYPE_LEVEL_LOW>;

[Severity: High]
Are these interrupts missing the 4th cell?

The root interrupt controller (&gic) requires 4 cells (#interrupt-cells =3D=
 <4>),
but only 3 cells are provided here for each interrupt.

The missing 4th cell will cause parsing to consume parts of the next
interrupt as the 4th cell of the current one, corrupting the entire
interrupt mapping for this device.

Additionally, GIC SPIs on MT8186 are almost exclusively active-high
(IRQ_TYPE_LEVEL_HIGH). Is IRQ_TYPE_LEVEL_LOW functionally correct for
this controller?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701121929.1937=
4-1-angelogioacchino.delregno@collabora.com?part=3D4

