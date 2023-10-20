Return-Path: <devicetree+bounces-10286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7E17D0A70
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:19:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CABEFB21318
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19C6910956;
	Fri, 20 Oct 2023 08:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="FkWacOyt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69042B67E
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 08:19:17 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13F60D68
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 01:19:15 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2BC5D6607353;
	Fri, 20 Oct 2023 09:19:13 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697789953;
	bh=reG4MjH5xFdaTMIIG/uyX7Y0plXz9o904hSimQazjaI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FkWacOyth/5sP7/plr9AhOaRsqcUmTwP78l0iw0RoSqAsXXe2YMiNddhzUiq3J4BT
	 oKXODDYX+PDVKEB8lKnYMf/+XPiUVQkDO6Vp3bUr9cnzLcVu4T30b4AmR8PMyJjrvU
	 nNrc75P4efPTAJNIKW8F+ju8ODRCc9HJcPdM4sOW0gnvrZNxNoVLtSN50m7498MaEE
	 B5XXdtPP332cXVcn6NdoQuH/JCh0HMP40WCWYGepA2XX1WRks0+LbwngFu/dDXSbow
	 rz2jP0OPQMHnn6nWAstVez9UObf8tJiGyXauD2ZC7BqCMhuVHwS6yCWAPrjdOKkIGx
	 /ni9bGtzg3pIA==
Message-ID: <e920e722-2e14-47c1-a1d3-f7f398d5cdda@collabora.com>
Date: Fri, 20 Oct 2023 10:19:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] arm64: dts: mediatek: Add device tree for
 MT8365-based Pumpkin i350
Content-Language: en-US
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-mediatek@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Paul Elder <paul.elder@ideasonboard.com>,
 Fabien Parent <fabien.parent@linaro.org>,
 Julien Stephan <jstephan@baylibre.com>,
 Suhrid Subramaniam <suhrid.subramaniam@mediatek.com>,
 Ted Larson <ted@ologicinc.com>
References: <20231016215123.30343-1-laurent.pinchart@ideasonboard.com>
 <20231016215123.30343-4-laurent.pinchart@ideasonboard.com>
 <c4161d95-cc4c-4801-b436-31bb82263635@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <c4161d95-cc4c-4801-b436-31bb82263635@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 19/10/23 14:45, Alexandre Mergnat ha scritto:
> 
> 
> On 16/10/2023 23:51, Laurent Pinchart wrote:
>> Add a minimal device tree for the Genio i350 Pumpkin development board,
>> which is based on a MediaTek MT8365.
>>
>> The device tree is based on an initial version by Fabien Parent Based
>> written against the MediaTek BSP kernel ([1]). It has been cleaned up,
>> some features have been added (GPIO LEDs, ethernet), and some features
>> removed (audio, camera, display and dual-role USB). Those features will
>> be added back once the corresponding DT bindings and/or drivers become
>> available in the upstream kernel.
>>
>> [1] 
>> https://gitlab.com/mediatek/aiot/bsp/linux/-/blob/mtk-v5.15-dev/arch/arm64/boot/dts/mediatek/mt8365-pumpkin.dts
>>
>> Co-developed-by: Fabien Parent <fparent@baylibre.com>
>> Signed-off-by: Fabien Parent <fparent@baylibre.com>
>> Co-developed-by: Paul Elder <paul.elder@ideasonboard.com>
>> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>> ---
>> Changes compared to the BSP version:
>>
>> - Add ethernet controller
>> - Add GPIO LEDs
>> - Add reserved memory region for BL31
>> - Update board model and compatible
>> - Rename enable-sdio-wakeup to wakeup-source
>> - Drop audio support
>> - Drop display support
>> - Drop dual role USB support
>> - Don't use underscores in node names
>> - Normalize pinmux node names
>> - Remove unneeded labels
>> - Drop unneeded always-on
>> - Drop unused pinmux nodes
>> - Drop camera GPIO hog
>> - Update copyright
>> - Fix formatting
>> - Sort alphabetically
>> ---
>>   arch/arm64/boot/dts/mediatek/Makefile         |   1 +
>>   .../boot/dts/mediatek/mt8365-pumpkin.dts      | 542 ++++++++++++++++++
>>   2 files changed, 543 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/mediatek/mt8365-pumpkin.dts
>>
>> diff --git a/arch/arm64/boot/dts/mediatek/Makefile 
>> b/arch/arm64/boot/dts/mediatek/Makefile
>> index c99c3372a4b5..bbc232bdadc4 100644
>> --- a/arch/arm64/boot/dts/mediatek/Makefile
>> +++ b/arch/arm64/boot/dts/mediatek/Makefile
>> @@ -53,4 +53,5 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-cherry-tomato-r3.dtb
>>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-demo.dtb
>>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-evb.dtb
>>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8365-evk.dtb
>> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt8365-pumpkin.dtb
>>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
>> diff --git a/arch/arm64/boot/dts/mediatek/mt8365-pumpkin.dts 
>> b/arch/arm64/boot/dts/mediatek/mt8365-pumpkin.dts
>> new file mode 100644
>> index 000000000000..88fa5d19c627
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/mediatek/mt8365-pumpkin.dts
>> @@ -0,0 +1,542 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (c) 2021 BayLibre, SAS.
>> + * Copyright (c) 2023 Ideas on Board Oy
>> + *
>> + * Author: Fabien Parent <fparent@baylibre.com>
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +#include <dt-bindings/leds/common.h>
>> +#include <dt-bindings/pinctrl/mt8365-pinfunc.h>
>> +
>> +#include "mt8365.dtsi"
>> +#include "mt6357.dtsi"
>> +
>> +/ {
>> +    model = "OLogic Pumpkin i350 EVK";
>> +    compatible = "ologic,pumpkin-i350", "mediatek,mt8365";
>> +
>> +    aliases {
>> +        ethernet0 = &ethernet_usb;
>> +        mmc0 = &mmc0;
>> +        mmc1 = &mmc1;
>> +        mmc2 = &mmc2;
> 
> Are mmc aliases needed ?
> 

This makes sure that, for example, the eMMC is always mmcblk0, and
that a (micro)SD card always has mmcblk1.

So yes, they are.

Cheers,
Angelo

