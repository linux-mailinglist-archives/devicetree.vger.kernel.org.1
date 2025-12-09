Return-Path: <devicetree+bounces-245375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 883DBCAFCCF
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 12:42:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D90AD300EBF1
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 11:42:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FF482D77E9;
	Tue,  9 Dec 2025 11:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="EH+4I56C"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5F52E0406;
	Tue,  9 Dec 2025 11:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765280524; cv=none; b=cHHlE7caWsVgDV/hdHdKSOrp31J5LWIxM+BiK6kJE3WBxfShbg+0DnMWD4m95x7iYM3hSARbox7mNyy2RVLfZy/BD8ioh+xDLu7KVLYLsVoTQlpb2jxOhTY9T++EdX9f0uux2GClVSlwwdTPvXGdY8clT1rWktVGLafuWEn36jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765280524; c=relaxed/simple;
	bh=ep5IfAaQVSnxSjOjbmiAB1Wa6uj/sQhIhJIlgN8V8lI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YrGWOOBL7f6ZrQ5/yBO22Aug9Yt2CVEMWovCosVpGX6H/zWU0Vn+U+3b4cUfa2fr9LWd5qklCozbgc4nWg2DAVv99A7+mM6IE6Kp498PtL48r0TZkiWPxjq03XblSJ0idOQwWMfi/aUejTNyBBg0xgkbF85XKkLrkROga5GS9OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=EH+4I56C; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765280520;
	bh=ep5IfAaQVSnxSjOjbmiAB1Wa6uj/sQhIhJIlgN8V8lI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EH+4I56C5F+j5hNVNyetkQm8BeAOytmZozTHsF7ne2YFXLr0uJNmiD4+jEHHw1qFG
	 qHqj2ArpfQX/+nWqYqE+shroqNBtWk3Bq/8uX9uijOurEEcrpjypqE3V09tv+EcxWM
	 2B69DqrSP2c+xSJ75sr3EFpDrw+4JeYjjMdEoH+7Zeq10msGfue+KR/hb27saQsBOe
	 ngqvWD0qyJIUKSPapoQzqbzMJCRMqRXQznWVRcpaoWfhWIgOvM5G7hREAMAHHBJ3XH
	 QdwibqamzqFeCOvk+s/dqMkmwcfFTDijNn/rmUClHTJ+Yd3H6L+e7JsqwCUfpWNKMr
	 YE3fFQw3i6mqQ==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A7DC217E06C3;
	Tue,  9 Dec 2025 12:41:59 +0100 (CET)
Message-ID: <0d03ed27-418b-4564-bf8d-739b253b2213@collabora.com>
Date: Tue, 9 Dec 2025 12:41:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: Apply mt8395-radxa DT overlay at
 build time
To: Frank Wunderlich <linux@fw-web.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>
References: <20251205215940.19287-1-linux@fw-web.de>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251205215940.19287-1-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 05/12/25 22:59, Frank Wunderlich ha scritto:
> From: "Rob Herring (Arm)" <robh@kernel.org>
> 
> It's a requirement that DT overlays be applied at build time in order to
> validate them as overlays are not validated on their own.
> 
> Add missing target for mt8395-radxa hd panel overlay.
> 
> Fixes: 4c8ff61199a7 ("arm64: dts: mediatek: mt8395-radxa-nio-12l: Add Radxa 8 HD panel")
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

Acked-by: AngeloGioacchino Del Regno <angelogiaocchino.delregno@collabora.com>

> ---
> This will show a warning [1] in upcoming 6.19.
> 
> Note that if it is desired that the combined .dtb is not installed, then
> the combined .dtb should be added to 'dtb-' variable instead.
> ---
> extracted missing part from [2] with updated commit title/description
> after my bananapi series [3] to solve all warnings. Added Fixes-tag to
> make sure it lands in 6.19.
> 
> [1] https://lore.kernel.org/all/20251114222759.4181152-1-robh@kernel.org/
> [2] https://patchwork.kernel.org/project/linux-mediatek/patch/20251117211306.725678-1-robh@kernel.org/
> [3] https://patchwork.kernel.org/project/linux-mediatek/cover/20251119175124.48947-1-linux@fw-web.de/
> ---
>   arch/arm64/boot/dts/mediatek/Makefile | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
> index cac8f4c6d76f..3f76d9ce9879 100644
> --- a/arch/arm64/boot/dts/mediatek/Makefile
> +++ b/arch/arm64/boot/dts/mediatek/Makefile
> @@ -166,6 +166,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8390-grinn-genio-700-sbc.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-kontron-3-5-sbc-i1200.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l-8-hd-panel.dtbo
> +mt8395-radxa-nio-12l-8-hd-panel-dtbs := mt8395-radxa-nio-12l.dtb mt8395-radxa-nio-12l-8-hd-panel.dtbo
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l-8-hd-panel.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
>   
>   # Device tree overlays support


