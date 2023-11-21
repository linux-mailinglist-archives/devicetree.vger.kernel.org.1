Return-Path: <devicetree+bounces-17489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E2D7F2A6F
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:31:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79D131C20CAD
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 10:31:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7BB24A16;
	Tue, 21 Nov 2023 10:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="mQ20Oz03"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3489123
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 02:31:42 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3E6EF66072F6;
	Tue, 21 Nov 2023 10:31:40 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700562701;
	bh=eAVo/wl10HB6quoWDWzqBLbaFO4CsVTt1yPV5+TaoDY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mQ20Oz031InsVrpqHi0kgA/AXyHLX5d9bTw4qTZDREQDWHB3Yj3/gLrQxy29fiGme
	 FcFGvgwa6ZT4ufBtA6iOGsPjZa9fRPQ5+V1oM6o8mcRRm8olQ1ksZ4lph6ob9vw2aK
	 bnK1WkUggHazaT+R0AL4i65IGNtGkoBfgsSMe2gKYLMiO8VBnOtp/TgGsaIBH+RJ1J
	 VwNoNlJzFdR13miP1atJTG06P+ckTykG4fzMTrkdXZjoedJ70xc5opI+cyclGdFXAR
	 ZifobcwJMY658DeSDprZOI40CY4kDSKY1j520zia4xp9WJoBHRbZpKFk9p9KUq+sez
	 OtWhDO4UINipQ==
Message-ID: <94165a35-4ce9-4624-938f-00545562fee4@collabora.com>
Date: Tue, 21 Nov 2023 11:31:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: mediatek: Add Acelink EW-7886CAX
Content-Language: en-US
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?=
 <nfraprado@collabora.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang
 <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20231117104315.9718-2-zajec5@gmail.com>
 <20231117104315.9718-3-zajec5@gmail.com>
 <0c3267e5-5371-4fd8-a0f6-360ff28c9dda@collabora.com>
 <b13b6ad3-2ef9-482a-bec4-8f23de6c951f@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <b13b6ad3-2ef9-482a-bec4-8f23de6c951f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 20/11/23 18:27, Rafał Miłecki ha scritto:
> On 20.11.2023 15:17, AngeloGioacchino Del Regno wrote:
>> Il 17/11/23 11:43, Rafał Miłecki ha scritto:
>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> Acelink EW-7886CAX is an MT7986A (AKA Filogic 830) based access point.
>>> It has 512 MiB of RAM, one 2.5 Gbps PoE (802.3at) Ethernet port and
>>> on-SoC Wi-Fi.
>>>
>>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>>> ---
>>>   arch/arm64/boot/dts/mediatek/Makefile         |   1 +
>>>   .../mediatek/mt7986a-acelink-ew-7886cax.dts   | 175 ++++++++++++++++++
>>>   2 files changed, 176 insertions(+)
>>>   create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
>>>
>>> diff --git a/arch/arm64/boot/dts/mediatek/Makefile 
>>> b/arch/arm64/boot/dts/mediatek/Makefile
>>> index e6e7592a3645..9ff2ab6c5e4d 100644
>>> --- a/arch/arm64/boot/dts/mediatek/Makefile
>>> +++ b/arch/arm64/boot/dts/mediatek/Makefile
>>> @@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-evb.dtb
>>>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
>>>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
>>>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
>>> +dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-acelink-ew-7886cax.dtb
>>>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3.dtb
>>>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc.dtbo
>>>   dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-nand.dtbo
>>> diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts 
>>> b/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
>>> new file mode 100644
>>> index 000000000000..18d19281dfdb
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/mediatek/mt7986a-acelink-ew-7886cax.dts
>>> @@ -0,0 +1,175 @@
>>> +// SPDX-License-Identifier: GPL-2.0-only OR MIT
>>> +
>>> +/dts-v1/;
>>> +#include <dt-bindings/input/input.h>
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/leds/common.h>
>>> +
>>> +#include "mt7986a.dtsi"
>>> +
>>> +/ {
>>> +    model = "Acelink EW-7886CAX";
>>> +    compatible = "acelink,ew-7886cax", "mediatek,mt7986a";
>>> +
>>> +    aliases {
>>> +        serial0 = &uart0;
>>> +    };
>>> +
>>> +    chosen {
>>> +        stdout-path = "serial0:115200n8";
>>> +    };
>>> +
>>> +    memory@40000000 {
>>> +        reg = <0 0x40000000 0 0x20000000>;
>>> +        device_type = "memory";
>>> +    };
>>> +
>>> +    keys {
>>> +        compatible = "gpio-keys";
>>> +
>>> +        key-restart {
>>> +            label = "Reset";
>>> +            gpios = <&pio 7 GPIO_ACTIVE_LOW>;
>>> +            linux,code = <KEY_RESTART>;
>>> +        };
>>> +    };
>>> +
>>> +    leds {
>>> +        compatible = "gpio-leds";
>>> +
>>> +        led-0 {
>>
>> Please, reorder by name
>>
>>              color =    ...
>>              function = ...
>>              gpios = ...
> 
> Can you explain why and if there is a place I can find rules to follow
> regarding such aspects? I really would like to just be aware of all
> rules and don't waste anyone's time for such details.
> 
> FWIW I checked Documentation/devicetree/bindings/*.rst (after few years
> I admit) but I couldn't find anything there about properties order.
> 
> If we currently don't have rules I don't really think we should enforce
> following per-maintainer preferences. I really don't object your
> suggestions but there is simply no way to remember each maintainer's
> rules. We simply have too many subsystems and architectures boards.
> 
> 

What I said is not a maintainer preference but more of a general rule, which is
in the process of being documented.

Check the patch there, at the time of writing, v2:
https://lore.kernel.org/all/20231120084044.23838-1-krzysztof.kozlowski@linaro.org/

Regards,
Angelo


