Return-Path: <devicetree+bounces-318543-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1DF1GioTRWoO6goAu9opvQ
	(envelope-from <devicetree+bounces-318543-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:16:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4286EDF3C
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:16:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AbW19r7n;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318543-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318543-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F212931AAA05
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D6F3481659;
	Wed,  1 Jul 2026 12:35:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671D1480DC0
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 12:35:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782909344; cv=none; b=exrp6cRIkzDYFPJKcQierie72ptVRscNS8OF+Xm9keBSV8yuez5aBQDE8Ho+Qc2z3nRectbUK7wO44SDyKpCrqEI6K6cDowTMoFejXv6lKxZHbD4Np1O8AOFo86b/zy9o9DyuUkjuIPlZaRQbJ0PH04LradXUN6E16wRaetpITk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782909344; c=relaxed/simple;
	bh=XiGJpioeX/FXcfQfsSc+O8kBmCS9ikfYNtOYW8vm+ts=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iaP6B6r8/TAsa3KEVvQm/dZ12dmJNUzNZ7r9xuQ6DxnqwNQl8xfXDjk9hkL7tL4D9n+23OQ63DalRsF0FAU15XHHJUTTHb3Swg107g5RWi/ehKEYDdiUmuO4tO6Z5jJgVyUKHq9JEhvp19E+Hc75GVnFqzrxXbTiYkRSz9Pnnf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbW19r7n; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A45DB1F000E9;
	Wed,  1 Jul 2026 12:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782909342;
	bh=htKuE3oPE33YqvkfTuTlu34HOPzBmE8oCW2LP7RQdRg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AbW19r7nVgI7z6gAKyKTJ6uY16Iy1U7MPASyHiw9/WysJyoHSkU7NK9uLE3SjzVzm
	 G2d0PjLPrSLW+OknR83W37rYv/ljgeGhFJ53coRr56UvK26nY/t/aF82KN8g88W7Pi
	 mkDfvbI1Yg6k5fI2/fjEr2D1gIrdFTvwykZlunHqsWa6QZGuR4DGWoSA9i+9ONKGiZ
	 ILcXr96w9qAL2jSALYXW/39aUA4AydzI7UMkDk91S4wY/F9kRpRxHvdrxUC1f4ezOC
	 CwShCdaQe1KmHejmInUPAIf1OFcwzFhBENMLXUiysoW1wllheY7mk8evi3a/ktPxle
	 sfsR5NNgL34qQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/7] arm64: dts: mediatek: mt8173: Add and use UART
 AP_DMA controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701121929.19374-3-angelogioacchino.delregno@collabora.com>
References: <20260701121929.19374-1-angelogioacchino.delregno@collabora.com>
 <20260701121929.19374-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 12:35:42 +0000
Message-Id: <20260701123542.A45DB1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318543-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,collabora.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF4286EDF3C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Duplicate interrupt assignment (GIC_SPI 100) in the `apdma` node=
 breaks UART3 RX DMA channel allocation.
--

commit bbd069e5de2e64963276afa1f5a62fd9508627a3
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

arm64: dts: mediatek: mt8173: Add and use UART AP_DMA controller

This commit adds the AP_DMA controller to the devicetree for mt8173 and
assigns the correct transmit and receive DMA channels to each of the four
UART controllers.

> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8173.dtsi
> index 78c2ccd5be132..345098359aa58 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
[ ... ]
> @@ -673,6 +673,25 @@ gic: interrupt-controller@10221000 {
>  				(GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
>  		};
> =20
> +		apdma: dma-controller@11000300 {
> +			compatible =3D "mediatek,mt8173-uart-dma", "mediatek,mt6577-uart-dma";
> +			reg =3D <0 0x11000300 0 0x80>, <0 0x11000380 0 0x80>,
> +			      <0 0x11000400 0 0x80>, <0 0x11000480 0 0x80>,
> +			      <0 0x11000500 0 0x80>, <0 0x11000580 0 0x80>,
> +			      <0 0x11000600 0 0x80>, <0 0x11000680 0 0x80>;
> +			interrupts =3D <GIC_SPI 95 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 96 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 97 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 98 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 99 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 100 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 101 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 100 IRQ_TYPE_LEVEL_LOW>;
[Severity: Medium]
Is this intentional to reuse GIC_SPI 100 here? The 8th interrupt in this li=
st
(for UART3 RX, channel 7) duplicates the 6th interrupt (UART2 RX, channel 5=
).

If the driver requests these IRQs without IRQF_SHARED, requesting the same
IRQ again for UART3 RX could fail with -EBUSY and prevent DMA initialization
for that channel. Should this be GIC_SPI 102 instead?

> +			clocks =3D <&pericfg CLK_PERI_AP_DMA>;
> +			#dma-cells =3D <1>;
> +			dma-requests =3D <8>;
> +		};
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701121929.1937=
4-1-angelogioacchino.delregno@collabora.com?part=3D2

