Return-Path: <devicetree+bounces-322250-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CVzMDFsvTWogwQEAu9opvQ
	(envelope-from <devicetree+bounces-322250-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:54:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD5371E071
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:54:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WHduRPzQ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322250-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322250-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D30A4300DEFD
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 16:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D84B22A1D4;
	Tue,  7 Jul 2026 16:54:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803113EB81E
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 16:54:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783443288; cv=none; b=Z7bdQRf4wGEe3I3YZ1agnGZIhEoAdTxTY/MxLstbWyXanV+vT+Q4xb9MOu30QNOahMeq7xFglWrd7M7JCbevFp1VJotwtsSxgOkVhEFU71jMCE/OPFoUYbYOB5r4V23WeiNiXqDtHaoePv9QCuq0lAL1a5aJJJHQTKUq7xtzHlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783443288; c=relaxed/simple;
	bh=Y/CiuCVjqGmQyKj80ZWzJwu8tdi44mucP23U+RuuoFY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Qp0F/jetbMm8bt2SS42T6hamchAmDbsvgoPaMZkLEUnNIdsunbhNtkmsCuMqqfm0h3Zz4U4twGdP0KJazJaBP8SMeTBFvloWe1qnNXWomzmIBM/G+iOxdRfuV3rGOUyJuo253iZMcHCxOHJ4u2q4J5tSfwTNechkIyAzoV6GkZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHduRPzQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D46121F000E9;
	Tue,  7 Jul 2026 16:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783443287;
	bh=m1xlQXfvVKRGjvfVRrWtzNBTeq8t67E9CPqokts+iho=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WHduRPzQ9Uj10FJjL1q7cXNbhAOJTn0SOyl14KiZZwUCrXma+ck+/3N6Hd9X4YSnA
	 5RJ5M9Fc3bvgb0+pqF6dX01T2sHG6Dgmx20Wpub7QF8Q7f64FUEHPSMCDzQmfo8e4+
	 ZL2soOYuMaI+e17loU9SCdKQpsztMSNKe9k/tJmGOplgog/Zr35MdmHMemkR/2aijf
	 tgGFtz+GSOgnFsTGu8rAe4HbZFhKWYKK1OXBM0E6cefCrg7z78ZlW5k7llcVXHFmwG
	 vJgx5CbraMD5D5/n7VERiA+gsBeO+cVgA+Dhal7MvqVwRgKeAlcMOWQ7rkRT3frgn+
	 F+FTZuVkDg1Eg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 7/7] arm64: dts: mediatek: mt8195: Add and use UART
 AP_DMA controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260707154841.198870-8-angelogioacchino.delregno@collabora.com>
References: <20260707154841.198870-1-angelogioacchino.delregno@collabora.com>
 <20260707154841.198870-8-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 16:54:46 +0000
Message-Id: <20260707165446.D46121F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322250-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8DD5371E071

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `apdma` node is placed out of order in the device tree file, vi=
olating the standard DT convention to sort nodes by their unit-address.
--

--- Patch [7]: [PATCH v2 7/7] arm64: dts: mediatek: mt8195: Add and use UAR=
T AP_DMA controller ---
commit a44a999701bce2338fffbb489d98050bb65e6842
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

arm64: dts: mediatek: mt8195: Add and use UART AP_DMA controller

This commit adds the AP_DMA controller to the MT8195 device tree to provide
transmit and receive DMA channels for the SoC's UART controllers. The UART
nodes are updated to use these DMA channels for increased efficiency.

> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8195.dtsi
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -877,6 +877,31 @@ systimer: timer@10017000 {
>  			clocks =3D <&clk13m>;
>  		};
> =20
> +		apdma: dma-controller@10220880 {
> +			compatible =3D "mediatek,mt8195-uart-dma", "mediatek,mt6835-uart-dma";
> +			reg =3D <0 0x10220880 0 0x80>, <0 0x10220900 0 0x80>,

[ ... ]

> +			#dma-cells =3D <1>;
> +			dma-requests =3D <12>;
> +		};
> +
>  		pwrap: pwrap@10024000 {

[Severity: Low]
This isn't a bug, but should the apdma node be placed further down the file
to maintain standard Device Tree unit-address sorting? The node is at unit
address 10220880, but it is inserted here before pwrap at 10024000.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707154841.1988=
70-1-angelogioacchino.delregno@collabora.com?part=3D7

