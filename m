Return-Path: <devicetree+bounces-239710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEF8C6897C
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:41:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 827254F2391
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03EAF3148B3;
	Tue, 18 Nov 2025 09:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="abpeeBX5"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA932F1FED;
	Tue, 18 Nov 2025 09:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763458562; cv=none; b=F0gHxgBPh5nC1ImJdVU57xVIpai0A36l347gKkMGERB/J2r2twP6sD3CrbzYTCbU8+s5VWJvsy4oMKXUi4kD4NWNR8Js7bbAntUrpKQfcS3ZI6tU3jFMF3I2ARl7B65sZ26XqHS8k/qUYMTrkW9w+WLLkTMHyKoQRzREelpaw78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763458562; c=relaxed/simple;
	bh=lc+F7Hvm4Wkoib4H4TPx44xrDSu+c+Or4u0b8i2ExqY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LK7hF2Qy56PHR6rXwsHI5+2uBRzej5ULXlHZlPeCzh6uVRs1p6rTKvrq6mz91YivdTyxbWbLJtYFdxExH8ljhwvVziIIxFuXmY6TUXCwZ6bIfYCDJTayDMRHKK1fWY0x/uINgBKUOIZCq6tdlVEY4mM+SiCKAeU69aUYzZMA0Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=abpeeBX5; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763458558;
	bh=lc+F7Hvm4Wkoib4H4TPx44xrDSu+c+Or4u0b8i2ExqY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=abpeeBX5ma5aNdtFhHGu9AzS493vi0e4XM1spxySUlsVe5nwe7+WbNX+Xq8nqD0Yj
	 3vdT0FZO4PXWxujnPC6odJqzo0W4USP2128oSUSk8aWBzUYWv1AxEtdWSZbx+v/avP
	 aP3OK8P1Y1dsOZVVPhxe6rnUnx8pmx1wA3kLxWRN4Bdyj439aYuHgcSQTBgYfa7EX/
	 ORLqelFB0L+EQ4phMkq4SWaymKrQ/YXeUXRmBmU27a0vZDSpsJMlawtuCkO5180kHj
	 c1zFaATVr8gX+SvzLqbnR6D8tE0KX1G700rnr+jzJRzweQeTtWVFFKMcJP25MH8TuF
	 pLxfmEqp5LhLw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B361F17E0342;
	Tue, 18 Nov 2025 10:35:57 +0100 (CET)
Message-ID: <679c1f30-7c62-484e-b4e5-7351a23f15e5@collabora.com>
Date: Tue, 18 Nov 2025 10:35:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: Apply all DT overlays at build time
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
References: <20251117211306.725678-1-robh@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251117211306.725678-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 17/11/25 22:13, Rob Herring (Arm) ha scritto:
> It's a requirement that DT overlays be applied at build time in order to
> validate them as overlays are not validated on their own.
> 
> Add targets for all the Mediatek overlays.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> This will soon be a warning[1].
> 
> Note that if it is desired that the combined .dtb is not installed, then
> the combined .dtb should be added to 'dtb-' variable instead.
> 

Uhm, sorry, can't we do something such that we don't generate a DTB with a
preapplied overlay?

Even something like generating those and deleting before build finalization
could work, I guess, though that'd be hacky maybe.

I don't know if this is the case, but I'm worried that various people have
scripts to copy DTBs somewhere (in some partition) or embed those in images,
and if they get the preapplied overlay dtbs in the same place, havoc could
happen as the bootloaders might be selecting wrong dtbs (as a plus, there is
no dtbo that varies machine compatible strings, rightfully).

Cheers,
Angelo

> [1] https://lore.kernel.org/all/20251114222759.4181152-1-robh@kernel.org/
> ---
>   arch/arm64/boot/dts/mediatek/Makefile | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
> index a4df4c21399e..4e92bd9f0e53 100644
> --- a/arch/arm64/boot/dts/mediatek/Makefile
> +++ b/arch/arm64/boot/dts/mediatek/Makefile
> @@ -15,16 +15,30 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-acelink-ew-7886cax.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-mini.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc.dtbo
> +mt7986a-bananapi-bpi-r3-emmc-dtbs := mt7986a-bananapi-bpi-r3.dtb mt7986a-bananapi-bpi-r3-emmc.dtbo
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nand.dtbo
> +mt7986a-bananapi-bpi-r3-nand-dtbs := mt7986a-bananapi-bpi-r3.dtb mt7986a-bananapi-bpi-r3-nand.dtbo
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nand.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nor.dtbo
> +mt7986a-bananapi-bpi-r3-nor-dtbs := mt7986a-bananapi-bpi-r3.dtb mt7986a-bananapi-bpi-r3-nor.dtbo
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nor.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sata.dtbo
> +mt7986a-bananapi-bpi-r3-sata-dtbs := mt7986a-bananapi-bpi-r3.dtb mt7986a-bananapi-bpi-r3-sata.dtbo
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sata.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sd.dtbo
> +mt7986a-bananapi-bpi-r3-sd-dtbs := mt7986a-bananapi-bpi-r3.dtb mt7986a-bananapi-bpi-r3-sd.dtbo
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sd.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-rfb.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986b-rfb.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-2g5.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-emmc.dtbo
> +mt7988a-bananapi-bpi-r4-emmc-dtbs := mt7988a-bananapi-bpi-r4.dtb mt7988a-bananapi-bpi-r4-emmc.dtbo
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-emmc.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-sd.dtbo
> +mt7988a-bananapi-bpi-r4-sd-dtbs := mt7988a-bananapi-bpi-r4.dtb mt7988a-bananapi-bpi-r4-sd.dtbo
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt7988a-bananapi-bpi-r4-sd.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8167-pumpkin.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana.dtb
> @@ -104,6 +118,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8390-genio-700-evk.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-kontron-3-5-sbc-i1200.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l-8-hd-panel.dtbo
> +mt8395-radxa-nio-12l-8-hd-panel-dtbs := mt8395-radxa-nio-12l.dtb mt8395-radxa-nio-12l-8-hd-panel.dtbo
> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l-8-hd-panel.dtb
>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
>   
>   # Device tree overlays support



