Return-Path: <devicetree+bounces-19069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BA17F9A3B
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 07:52:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5239E280C2F
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 06:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91DC1D297;
	Mon, 27 Nov 2023 06:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NE0xbhJl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 381A7133
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 22:52:05 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a02d12a2444so553914466b.3
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 22:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701067923; x=1701672723; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zEF6ZSrvW/DF7X1nXTILv6t22ru1GRaAO8KYb1A5HuA=;
        b=NE0xbhJlEI9mtS9OpPLXtZ3kAtoEKGbWWpof7pLz0AL/KCNKFL7eSeyzzd+dSgIUKp
         SuRcQrqF0uGCXyfRMeNwIDmTMDrWfMzwfQUICnrW6+K+BlxafUdVyjNvKSkjATmvD6AC
         Tcp/ia5Z+MhpwOjcUxM6DmJag6yTGZhBB8kXiQvQfqrAVkjyeqPpuAy3c78bEiFlgfgn
         71GsyRmmMmZYiUiUvri2rLTgBnW5y4ZYWnf78ZkwXf5onUsi+fRWBdyf3ojsyWA8MsoR
         R942oQIJtYJHoZf5U/vS3+Qc/HL30oLojEAR83F3WyrcVi/YDAgAFJotXl5jE95DhnZk
         DNlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701067924; x=1701672724;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zEF6ZSrvW/DF7X1nXTILv6t22ru1GRaAO8KYb1A5HuA=;
        b=VOO6Bnbohww/xlAYOy7W9b4C6+5Kk2/aXauL0RCACh2kUhEmnSrS6Y74QJTmHEKqG2
         Gt7kYBVQknIc8uTGdOIgk1PWKVCmBJWHIYV2OkvBHlaFmewFJm/Y+U/gN1AozKzGrF71
         8/HGKHharxCrHOZAWfFzvBCUXO79CiDVFaSa+ay7QsR8nkoUKYUxw16Xlo7bocq9JpEG
         fyni6QKkW9LH01vUdiH9dCj2ZX4iv8N6hk/nRskcc2c/yw3Y9KObG8ksuk+Ial05fVgA
         S1zrD2Fsrg7PE/fyZynTxD7EM/3eVklFG5sQbN1nngkkBbuXbDRLeloGZzhiXVNofpp1
         oH8Q==
X-Gm-Message-State: AOJu0Yy+P9RdiyqWk6KJbbaPUGZX9zFf2eQmwvKjE2nXSFAjJikKswX9
	pUHvYIgU8qAp4i2hACoXdxB8Qw==
X-Google-Smtp-Source: AGHT+IFnuDBskaYPCTWf05fophlg6x6CpHErJVZCt3k+I3976UGzPOraus0xv8EC3WNVZ/t9BfkGhA==
X-Received: by 2002:a17:906:2cb:b0:a0f:76dc:febc with SMTP id 11-20020a17090602cb00b00a0f76dcfebcmr1425061ejk.70.1701067923505;
        Sun, 26 Nov 2023 22:52:03 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id c25-20020a170906529900b009ff77c2e1dasm5324386ejm.167.2023.11.26.22.52.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Nov 2023 22:52:02 -0800 (PST)
Message-ID: <b0c637f5-5abf-420b-8b02-839eba68799e@linaro.org>
Date: Mon, 27 Nov 2023 07:52:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-5-tim@feathertop.org>
 <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org> <4762834.KRxA6XjA2N@diego>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <4762834.KRxA6XjA2N@diego>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 27/11/2023 00:06, Heiko Stübner wrote:
> Hi Krzysztof,
> 
> Am Mittwoch, 22. November 2023, 13:29:47 CET schrieb Krzysztof Kozlowski:
>> On 22/11/2023 13:22, Tim Lunn wrote:
>>> Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
>>>
>>> Signed-off-by: Tim Lunn <tim@feathertop.org>
>>> ---
>>>
>>> (no changes since v1)
>>>
>>>  arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
>>>  arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
>>>  2 files changed, 25 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>> index 4f85b7b3fc4c..167a48afa3a4 100644
>>> --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>> +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>> @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
>>>  				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
>>>  		};
>>>  	};
>>> +	i2c2 {
>>> +		/omit-if-no-ref/
>>> +		i2c2_xfer: i2c2-xfer {
>>> +			rockchip,pins =
>>> +				/* i2c2_scl */
>>> +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
>>> +				/* i2c2_sda */
>>> +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
>>> +		};
>>> +	};
>>>  	pwm2 {
>>>  		/omit-if-no-ref/
>>>  		pwm2m0_pins: pwm2m0-pins {
>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>> index 6c5c928f06c7..cf1df75df418 100644
>>> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>> @@ -21,6 +21,7 @@ / {
>>>  
>>>  	aliases {
>>>  		i2c0 = &i2c0;
>>> +		i2c2 = &i2c2;
>>
>> No, this should be per-board to match board labeling/schematics.
> 
> At least for i2c, uarts and i.e. spi ... Rockchip manuals, pin namings
> and also all board schematics I've seen so far are very consistent for
> these ... i2c2 for example is labled i2c2 both in the pins in the socs
> and also in the board-schematics using them.
> 
> So while I can agree that things like mmc-aliases might be board-specific,
> I do think aliases for the core busses should be able to live in the soc dtsi
> as for all Rockchip SoCs so far?

If you do not list here all aliases, it is already board-specific, isn't it?

https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/

Best regards,
Krzysztof


