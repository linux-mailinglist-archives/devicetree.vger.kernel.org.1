Return-Path: <devicetree+bounces-243872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 62275C9DFB1
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 07:55:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E40D34E4677
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 06:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D14129A300;
	Wed,  3 Dec 2025 06:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="KEcg9PoZ"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90761299957;
	Wed,  3 Dec 2025 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764744895; cv=none; b=O7jlSQTepkgF9oWpIOYuSgeGdLXivEtRANfNXYezZ/dNk83uneh4TjhBhlPwJjU/YDTY8JEjkrk7r0CRkdDb6mf4oHmtc46K3wLOoYoruX5XnRygHWgIwEXwbvH65ufI4y/5XVP3JNwg+gXqfvi1mUYxf9bcKQRqm9PVsGbMaWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764744895; c=relaxed/simple;
	bh=+mouYnjXndDUTYks44sCmhlZvGkCia3knwRQVZGSJYw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TtTPXP/wTqYO690Tb3GoROc02rfs3Mm2ZoVVECxzWj0/dFXOBBzsINHJFCcwdUp8Mx68rk9ODHgTo7Hp25oE6gzf+Tos3hOaPI1mk89dDoj8GtP930yqVUkROZ0WxYW4XgV3ddFdjVPXwvnh19XT5+3DLAkwKD1JXWRwBQvjokA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=KEcg9PoZ; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1764744891;
	bh=+mouYnjXndDUTYks44sCmhlZvGkCia3knwRQVZGSJYw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KEcg9PoZ0HDpqkejHdDP0kopyOliYmbEtizHcEdt+0CEP48ueZjW2M9YHXVZIxwsU
	 kzt1ManaZv/ZHqyPIMvelFMWnC8lgXhmrqQDmpFX5cjOyl9PvIbM1RAMC0FiTo3wnr
	 Zaqt7eJoU4S4f+mdfmhPs/IVu0t8ELh7cdrkRJ1nHNPwRynFRZgmLynsmXZ/pFSvT0
	 IR+4WlP0kAOCVF34KY0PmpiD3MFUJ7uGKANMDGvl8z8481dlpAT7oPdQxDSrDthxls
	 owdwJCxDmq+2Z/q7n+rptFBuIwzJsn1jt+6V9tv9btnolt3D/cDX1RMKJ/2+feFUUq
	 QlBC71+kVFnNg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7C78A17E0610;
	Wed,  3 Dec 2025 07:54:51 +0100 (CET)
Message-ID: <f50544e4-1038-418a-a2bb-555865642984@collabora.com>
Date: Wed, 3 Dec 2025 07:54:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: mediatek: add device tree for Tungsten
 700 board
To: Gary Bisson <bisson.gary@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20251202-review-v4-0-93f5cd2a0d4a@gmail.com>
 <20251202-review-v4-4-93f5cd2a0d4a@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251202-review-v4-4-93f5cd2a0d4a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 02/12/25 23:08, Gary Bisson ha scritto:
> Add device tree to support Ezurio Tungsten 700 (MT8390) SMARC SOM [1] +
> Universal SMARC carrier board [2].
> It includes support for the MIPI-DSI BD070LIC3 display which uses the
> Tianma TM070JDHG30 panel + TI SN65DSI84 MIPI-DSI to LVDS bridge [3].
> 
> [1] https://www.ezurio.com/product/tungsten700-smarc
> [2] https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier
> [3] https://www.ezurio.com/product/bd070lic3-7-touchscreen-display
> 
> Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
> 
> ---
> Changes in v2:
> - None
> Changed in v3:
> - None
> Changed in v4:
> - None
> ---
>   arch/arm64/boot/dts/mediatek/Makefile              |  1 +
>   .../boot/dts/mediatek/mt8390-tungsten-smarc.dts    | 22 ++++++++++++++++++++++
>   2 files changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
> index 30d169a31b10..85f338344dd3 100644
> --- a/arch/arm64/boot/dts/mediatek/Makefile
> +++ b/arch/arm64/boot/dts/mediatek/Makefile
> @@ -102,6 +102,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8370-genio-510-evk.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8370-tungsten-smarc.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-genio-1200-evk.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8390-genio-700-evk.dtb
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8390-tungsten-smarc.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-kontron-3-5-sbc-i1200.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l-8-hd-panel.dtbo
> diff --git a/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts b/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
> new file mode 100644
> index 000000000000..f1cf2821107f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (C) 2025 Ezurio LLC
> + * Author: Gary Bisson <bisson.gary@gmail.com>
> + */
> +/dts-v1/;
> +#include "mt8188.dtsi"
> +#include "mt83x0-tungsten-smarc.dtsi"

I just noticed: please, no wildcards in names - this has to be named
mt8390-tungsten-smarc.dtsi instead.

> +
> +/ {
> +	model = "Ezurio Tungsten700 SMARC (MT8390)";
> +	compatible = "ezurio,mt8390-tungsten-smarc", "mediatek,mt8390",
> +		     "mediatek,mt8188";
> +};
> +
> +&cpu4 {
> +	cpu-supply = <&mt6359_vcore_buck_reg>;
> +};
> +
> +&cpu5 {
> +	cpu-supply = <&mt6359_vcore_buck_reg>;
> +};
> 

You could also just put the cpu4 and cpu5 supplies in the common
mt8390-tungsten-smarc.dtsi file instead.

That's based on your own preference, so..

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

