Return-Path: <devicetree+bounces-256267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E80D8D388C8
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 961BD307BE78
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC31D3A7F79;
	Fri, 16 Jan 2026 21:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1A7oC/hF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C713A640D
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768598962; cv=none; b=F/e2zlKovU9+1mJ1ei5iH/013GGYJezZesYydYyXwqfzDTpJp+r/fUxC231pniCXbEiszTlNcDGojp35zDFmQvEqyCsgSvP2Q+PtqlvT9rmHttkjNe9ORcZu8aSPopGZtW3U7YAPMbAL91w/iWgGPXdnWf7eBGpEjFeChNQeP4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768598962; c=relaxed/simple;
	bh=pIYzblobIHapSvb/NnyaVouHNn+UOiOWInO5rGzP820=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HFMMRSr/mDjxP+d9fTF0qEpgKWu9PXkTn+QVSTvJY/MaikrtNowf1b/yRFLxhMEy/cL5cw4rB3JAKYNxBbZIV64Z8830g666IUWc1ugYOjIdyMHP22HZXSLCtKwz5QZNkSpsjeMP9XwUdMCatv3GnYvyB9oFx3+4FacvOikJocI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1A7oC/hF; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7cfd10887d5so1054134a34.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768598959; x=1769203759; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uzksdNKE6zFNjKkRtgxoYFjKiQIY4jM1ByvFS9VthaE=;
        b=1A7oC/hFiBauG2ZdejgBO6K2RIANWFz5CMF4CUXuw94yMyrBGSNGS9KJnz9YwDBOSf
         ZyRU8e9oN5GbnpLqFGuADx8jSMauVucL0/S6D9Oo1ehqw+2i4nHUmvQ4tM23n9FUh6SS
         hE3T/pWNLSo/8cIdS1ItLhVJw5PyO9/dSx1bXtfARJMhSB25OAysn8XzcNOamKHNfhLT
         LHD8aYyfvmTfOYdeeovD2wxmAJqIExcdpS8Z5ZKrWPS6knOJ/kRvqewvYl8T6n2Q02D9
         7kMXMgSuSAe4Y9G3JvP8rzUAJagSDhhjQHoOxH0VbO+f861STNgSd9plLB0PYvn6KmZC
         CcLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768598959; x=1769203759;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uzksdNKE6zFNjKkRtgxoYFjKiQIY4jM1ByvFS9VthaE=;
        b=sT/GOK3SDu7c6SCn4ZlpyZ3MuuhfRBlej74REf2SQG2jHaJ5FFSsIt/eWE1TlWBW3m
         pRxJUEXvWjd4+MmdyhXsqqHkWcj6QSjikvQUqxeb/zB5JZ56pFxcA3Kf/MajffW1S2eq
         /vJe5MOmMuSfrMVwJQUKgGsd67pNBqEqBf3FEsa/jxfd5tVg1Sv5iB9pXPyhRVWorelV
         AHWAQ+wZJXKDePemqWz61QUo4+uqqgvThX5cIqhvGlKnfHH6/pYiuG3qOOOCpBJ2WbQn
         An6va6c13bpZ0y54CfkpXvSItnNBI6bC4nomTkzgMK3WPzrfZHaSQSFEvkkTQF50MKWR
         Q7bg==
X-Forwarded-Encrypted: i=1; AJvYcCXp+Bo0cblMcy1lT6j0DScg40rcQsxyBVosUVjaJDZrZZg51ymL4TWr/4En+AUco+0W3f2xHDe1WxRZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyYe2DBOITpxg4x6BSS1Yauc4WbptINjDhbWqGxG8x9wCN6iWtr
	swYaAkeDKucXCLDvFC5dxbqm5OmYdv6cGibI1yD/UuNE75DSBT88ZNs4EqXI1Y0axGw=
X-Gm-Gg: AY/fxX6F+eZlSNj1SKAzK0hu8Jco1aF9tLMmLlf/7cl6/SgG6QSW2RQMuOOm6ZIzh4B
	tW1m1FrZk8QlWsfQ9I0khHXn6siJeG7DbM18rz50lM7bsaPR6YWRnPtbForTpb9VCPKsUaPCL6K
	D2WP5ZeSmbQjQfp1xgHpIEm9BVQRCOsHy7Z/48siXslF9x6vD551t5UI+Ys5+8V6AKv/L8X/kV3
	b2+D9Te8AoBCxO47PcLOWBZUqmNQC01agX998vOa1YrYttYvD9IUaIPC42NH8Q1hzVKdDqdyIJk
	P05M/xABxFF5/G31SvtaWOE2iH46xDWJ/hq6shPBbjQUW2MXYCdfjyb/g26lYagxaqWzYg00Ls3
	m/Ah50D7BOkwqF+sSqQ3EQI/fUlsVfn97s0Vx9L++Nrvl6KFpHeluaC8LfB2zmvcI+zWarySez9
	wJFvXF0fBg0lpgA6xG8ABFubxvdccbJic9fixQsmjoXe6rIDkks/wF7qCO31sL
X-Received: by 2002:a05:6830:67d4:b0:7c7:827f:872e with SMTP id 46e09a7af769-7cfe028fa47mr2364292a34.38.1768598958732;
        Fri, 16 Jan 2026 13:29:18 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:bd39:740e:f70f:5f7d? ([2600:8803:e7e4:500:bd39:740e:f70f:5f7d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cfdf2b593csm2229799a34.26.2026.01.16.13.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 13:29:18 -0800 (PST)
Message-ID: <108c951c-6124-48f2-9d8b-cac113b24402@baylibre.com>
Date: Fri, 16 Jan 2026 15:29:17 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] arm: dts: mediatek: fix pinctl node names
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20260106-mtk-fix-mt7623-pinctl-name-v1-0-33817c7f78ee@baylibre.com>
 <176772122105.2350532.2584006959358435109.robh@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <176772122105.2350532.2584006959358435109.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/6/26 11:43 AM, Rob Herring wrote:
> 
> On Tue, 06 Jan 2026 09:20:54 -0600, David Lechner wrote:
>> While passing by, I noticed that the pinctrl nodes in a couple of dtsi
>> files did not match the addresses in their reg properties. Here are some
>> patches to fix that.
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---
>> David Lechner (2):
>>       arm: dts: mediatek: mt7623: fix pinctrl node name
>>       arm: dts: mediatek: mt8135: fix pinctrl node name
>>
>>  arch/arm/boot/dts/mediatek/mt7623.dtsi | 2 +-
>>  arch/arm/boot/dts/mediatek/mt8135.dtsi | 2 +-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>> ---
>> base-commit: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe
>> change-id: 20260106-mtk-fix-mt7623-pinctl-name-f8593953bed7
>>
>> Best regards,
>> --
>> David Lechner <dlechner@baylibre.com>
>>
>>
>>
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> This patch series was applied (using b4) to base:
>  Base: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe (use --merge-base to override)
> 
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
> 
> New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/mediatek/' for 20260106-mtk-fix-mt7623-pinctl-name-v1-0-33817c7f78ee@baylibre.com:
> 
> arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: pinctrl@1000b000 (mediatek,mt7623-pinctrl): 'cir-default', 'i2c0-default', 'i2c1-alt', 'i2c1-default', 'i2c2-alt', 'i2c2-default', 'i2s0-default', 'i2s1-default', 'keys-alt', 'leds-alt', 'mmc0', 'mmc0default', 'mmc1', 'mmc1default', 'nanddefault', 'pcie_pin_default', 'pwm-default', 'spi0-default', 'spi1-default', 'spi2-default', 'uart0-default', 'uart1-default', 'uart2-alt', 'uart2-default' do not match any of the regexes: '^pinctrl-[0-9]+$', 'pins$'
> 	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt65xx-pinctrl.yaml
> arch/arm/boot/dts/mediatek/mt7623a-rfb-nand.dtb: pinctrl@1000b000 (mediatek,mt7623-pinctrl): 'cir-default', 'i2c0-default', 'i2c1-alt', 'i2c1-default', 'i2c2-alt', 'i2c2-default', 'i2s0-default', 'i2s1-default', 'keys-alt', 'leds-alt', 'mmc0', 'mmc0default', 'mmc1', 'mmc1default', 'nanddefault', 'pcie_pin_default', 'pwm-default', 'spi0-default', 'spi1-default', 'spi2-default', 'uart0-default', 'uart1-default', 'uart2-alt', 'uart2-default' do not match any of the regexes: '^pinctrl-[0-9]+$', 'pins$'
> 	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt65xx-pinctrl.yaml
> arch/arm/boot/dts/mediatek/mt7623n-rfb-emmc.dtb: pinctrl@1000b000 (mediatek,mt7623-pinctrl): 'cir-default', 'hdmi-default', 'hdmi_ddc-default', 'i2c0-default', 'i2c1-alt', 'i2c1-default', 'i2c2-alt', 'i2c2-default', 'i2s0-default', 'i2s1-default', 'keys-alt', 'leds-alt', 'mmc0', 'mmc0default', 'mmc1', 'mmc1default', 'nanddefault', 'pcie_pin_default', 'pwm-default', 'spi0-default', 'spi1-default', 'spi2-default', 'uart0-default', 'uart1-default', 'uart2-alt', 'uart2-default' do not match any of the regexes: '^pinctrl-[0-9]+$', 'pins$'
> 	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt65xx-pinctrl.yaml
> arch/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dtb: pinctrl@1000b000 (mediatek,mt7623-pinctrl): 'cir-default', 'hdmi-default', 'hdmi_ddc-default', 'i2c0-default', 'i2c1-alt', 'i2c1-default', 'i2c2-alt', 'i2c2-default', 'i2s0-default', 'i2s1-default', 'keys-alt', 'leds-alt', 'mmc0', 'mmc0default', 'mmc1', 'mmc1default', 'musb', 'nanddefault', 'pcie_pin_default', 'pwm-default', 'spi0-default', 'spi1-default', 'spi2-default', 'uart0-default', 'uart1-default', 'uart2-alt', 'uart2-default' do not match any of the regexes: '^pinctrl-[0-9]+$', 'pins$'
> 	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt65xx-pinctrl.yaml
> 
> 
> 
> 
> 

It's a bit late for me to be replying but this came up on IRC...

I thought it was obvious that these were unrelated existing warnings, so
I didn't reply initially. But to save anyone else the trouble of figuring
it out, it should not block this series. I can send a separate patch later
to fix the existing warnings if we want to clean that up too.


