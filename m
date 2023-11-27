Return-Path: <devicetree+bounces-19206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D4F7FA049
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 051D21C20A83
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 310FD2C852;
	Mon, 27 Nov 2023 13:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="HFBdQOQ8"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE10619D;
	Mon, 27 Nov 2023 05:05:55 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7B90E66022D7;
	Mon, 27 Nov 2023 13:05:53 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701090354;
	bh=gRXJb/1e7WjIf5g6smVGNZOF/hweFBeqiirSsX+9vuA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HFBdQOQ8iR2h+6iOJCmRFlhoyOkv1mwxAejUAh0R5Lh4hw10hbJImfTPedIjCBCji
	 Z7vZXHmK7nRG8wN2x08Rd44rabSawKJlgPSMLkDGEz6nJB6PWlJUeJ2oVfa6beulpw
	 gLhI9/4PziLdCEVpWSGDOknNZGJytrhkv956IrJDb5q17t/nntaG3sceN74yJv/X9T
	 ioENLrwTjqzaLwyXxp+/ZskGF3PddaO1Y6WVI6rx17QrxjtZ+W/sX4TwVq2Tv2CRN+
	 2DACCT/IomiicClw3FDDk++MXRgpqMF3yFImAvrnJgD2rh5rPsWcF/+ICf1GBDOjRh
	 UYaO0u+xG+znQ==
Message-ID: <4c15c9a4-bf04-492d-9e02-d630092b6caa@collabora.com>
Date: Mon, 27 Nov 2023 14:05:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] arm64: dts: mediatek: Add MT8186 Krabby platform
 based Tentacruel / Tentacool
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Eugen Hristev <eugen.hristev@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231012230237.2676469-1-wenst@chromium.org>
 <20231012230237.2676469-7-wenst@chromium.org>
 <60beb523-292b-4c77-9030-1bfdfd73c140@collabora.com>
 <CAGXv+5GmjZbzLbxADoNXDiF8dTAwnxva29vuM0FG8vY-6wTJcQ@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <CAGXv+5GmjZbzLbxADoNXDiF8dTAwnxva29vuM0FG8vY-6wTJcQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Il 27/11/23 05:00, Chen-Yu Tsai ha scritto:
> On Mon, Oct 23, 2023 at 5:05 PM Eugen Hristev
> <eugen.hristev@collabora.com> wrote:
>>
>> On 10/13/23 02:02, Chen-Yu Tsai wrote:
>>> Tentacruel and Tentacool are MT8186 based Chromebooks based on the
>>> Krabby design.
>>>
>>> Tentacruel, also known as the ASUS Chromebook CM14 Flip CM1402F, is a
>>> convertible device with touchscreen and stylus.
>>>
>>> Tentacool, also known as the ASUS Chromebook CM14 CM1402C, is a laptop
>>> device. It does not have a touchscreen or stylus.
>>>
>>> The two devices both have two variants. The difference is a second
>>> source touchpad controller that shares the same address as the original,
>>> but is incompatible.
>>>
>>> The extra SKU IDs for the Tentacruel devices map to different sensor
>>> components attached to the Embedded Controller. These are not visible
>>> to the main processor.
>>>
>>> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
>>> ---
>>>    arch/arm64/boot/dts/mediatek/Makefile         |    4 +
>>>    .../dts/mediatek/mt8186-corsola-krabby.dtsi   |  130 ++
>>>    .../mt8186-corsola-tentacool-sku327681.dts    |   49 +
>>>    .../mt8186-corsola-tentacool-sku327683.dts    |   26 +
>>>    .../mt8186-corsola-tentacruel-sku262144.dts   |   44 +
>>>    .../mt8186-corsola-tentacruel-sku262148.dts   |   28 +
>>>    .../boot/dts/mediatek/mt8186-corsola.dtsi     | 1704 +++++++++++++++++
>>>    7 files changed, 1985 insertions(+)
>>>    create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-krabby.dtsi
>>>    create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327681.dts
>>>    create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.dts
>>>    create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262144.dts
>>>    create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dts
>>>    create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
>>>
> 
> [...]
> 
>>> diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
>>> new file mode 100644
>>> index 000000000000..42ebab1bafeb
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
>>> @@ -0,0 +1,1704 @@
> 
> [...]
> 
>>
>> Hi Chen-Yu,
>>
>> These two aud_gpio_tdm empty entries cause this message to be printed:
>>
>> [   12.949519] mt8186_mt6366_rt1019_rt5682s sound: there is not valid
>> maps for state aud_gpio_tdm_off
>> [   12.959025] mt8186_mt6366_rt1019_rt5682s sound: there is not valid
>> maps for state aud_gpio_tdm_on
> 
> I guess we need to teach the sound driver to ignore empty pinmux states?

...and we need to teach to the bindings that the aud_gpio_tdm_{off,on} are
optional states and can be omitted.

Cheers,
Angelo

> 
> ChenYu



