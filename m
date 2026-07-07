Return-Path: <devicetree+bounces-322245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D/hwCDwsTWqBwAEAu9opvQ
	(envelope-from <devicetree+bounces-322245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:41:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 807EE71DF23
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:41:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AN7FDAR+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322245-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322245-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 18CFD3009033
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 16:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E91853F4DD9;
	Tue,  7 Jul 2026 16:37:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81821B4223
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 16:37:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783442264; cv=none; b=fD+43be20p0c96PpDxs3e/0VXDHEIdXQPzzLnNk0m306Qo5+D45MR6KQNWASTuF1eagnqgwuxWgHmVz4dPF2pWMVZYEPqgjgklkYvB/vQ+vPayb4PD0wnpynp1UYMeFFn1FkuLdVcfkUi9mrXAq3RTGqLDQ01as+aTnlg/5Vuz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783442264; c=relaxed/simple;
	bh=c3yElDgOHma5xjWOTx6CI/VXqD80OKMKvDyTnDRdL/k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=L977ctik0B2ixTaLCUUVhIoKxU2PW7E3u/g4WiqKcJnUyS/OT+uDcycvkQyeyCXh9fw/Wgn/m9Ahq1+D5NYAb3Pr2k5Tvjz1smqPdqMxAnVgWO05UnwaNHaTUFtnIcR8zEejh6gG0M3VA9hW8ZzCL1s9e+PV76jQH8S/Oy5t5pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AN7FDAR+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 359E31F000E9;
	Tue,  7 Jul 2026 16:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783442263;
	bh=0avokkAmgVSqXVSKLngoQH2geAZS1xCnCN8xZ2kH9Oo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AN7FDAR+TPq8rBnssddZgDwjqqxhKX+LkpHQjzJkGjPsC/iZZ8YDdaTMOundbfHdA
	 gOkAaZY6wIg+y914s/ac13ezS2ZNhrod0v1hnJ7y6TKtEAc7K1JaeCwOnurSI+PRR9
	 3OY2Fql2VJTtxSvfW3ECw89g+g+9NwDbYTEGECGOPttzqB6/9vly1ovD2w9PEAOtjU
	 piuzUT2dPFiAItH/eCdGvQR2YL7aLpPpKuvhrtxwSH/Odh2OvOGsAzKMSZvBHSZIua
	 iZ3iMif+1aCCkgVd11OmKrkOQMCb665AKL9gfheNFjeHZo4mmpTruV9OJOwYwFUn0q
	 rOTjH13EQcERw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/7] arm64: dts: mediatek: mt8186: Add and use UART
 AP_DMA controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260707154841.198870-5-angelogioacchino.delregno@collabora.com>
References: <20260707154841.198870-1-angelogioacchino.delregno@collabora.com>
 <20260707154841.198870-5-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 16:37:42 +0000
Message-Id: <20260707163743.359E31F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322245-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 807EE71DF23

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] GICv3 SPI interrupt trigger type misconfigured as IRQ_TYPE_LEVEL_L=
OW.
--

--- Patch [4]: [PATCH v2 4/7] arm64: dts: mediatek: mt8186: Add and use UAR=
T AP_DMA controller ---
commit b99bac1b2094c2b77703f91408de574bf47c0652
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
arm64: dts: mediatek: mt8186: Add and use UART AP_DMA controller

This commit adds the AP_DMA controller node to the MT8186 device tree. It a=
lso
assigns the appropriate transmit and receive DMA channels to the three UART
controllers to increase data transfer efficiency.

> diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8186.dtsi
> --- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
[ ... ]
> @@ -1142,6 +1142,22 @@ systimer: timer@10017000 {
>  			clocks =3D <&clk13m>;
>  		};
> =20
> +		apdma: dma-controller@10200d80 {
> +			compatible =3D "mediatek,mt8186-uart-dma", "mediatek,mt6835-uart-dma";
> +			reg =3D <0 0x10200d80 0 0x80>, <0 0x10200e00 0 0x80>,
> +			      <0 0x10200e80 0 0x80>, <0 0x10200f00 0 0x80>,
> +			      <0 0x10200f80 0 0x80>, <0 0x10201000 0 0x80>;
> +			interrupts =3D <GIC_SPI 376 IRQ_TYPE_LEVEL_LOW 0>,
> +				     <GIC_SPI 377 IRQ_TYPE_LEVEL_LOW 0>,
> +				     <GIC_SPI 378 IRQ_TYPE_LEVEL_LOW 0>,
> +				     <GIC_SPI 379 IRQ_TYPE_LEVEL_LOW 0>,
> +				     <GIC_SPI 380 IRQ_TYPE_LEVEL_LOW 0>,
> +				     <GIC_SPI 381 IRQ_TYPE_LEVEL_LOW 0>;
                                                      ^^^^^^^^^^^^^^^^^^

[Severity: High]
Are active-low interrupts supported by the parent controller on this system?

These interrupts are configured as IRQ_TYPE_LEVEL_LOW, but the parent GICv3
controller natively rejects active-low SPIs.

Unlike older MediaTek systems that featured an intermediate sysirq polarity
inverter, won't the GICv3 driver return -EINVAL during request_irq() and fa=
il
to configure the UART DMA channels?

> +			clocks =3D <&infracfg_ao CLK_INFRA_AO_AP_DMA>;
> +			#dma-cells =3D <1>;
> +			dma-requests =3D <6>;
> +		};
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707154841.1988=
70-1-angelogioacchino.delregno@collabora.com?part=3D4

