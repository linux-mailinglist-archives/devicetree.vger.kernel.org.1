Return-Path: <devicetree+bounces-19126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BA27F9C94
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:27:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 769FE281206
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:27:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B3514F97;
	Mon, 27 Nov 2023 09:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wCc+o2Gl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65F61CB
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:27:45 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-548ce39b101so5324351a12.2
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701077264; x=1701682064; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lrmaHyuEvzQlfjveyzKyXYh/y9m2kH1eqL1NoD2v4Oc=;
        b=wCc+o2Gl7bpLYnKTNnKha1EQ5iE86BMAqu4EO2SCQ5gdPkYpwro0+Yd6zDe2Q5wpiA
         EnIAq2IAwB1zOz5rLvVF45ZZPLYst6hHEywZeZ3YIaptYqfc1DdgOtAtu8WyRYKeV88L
         U3qE2O+F4IU6X9DpjcdaUfZIsDph+qQLa3I2G+xC8m7w9yNs9peyHth/k+5nNnoWGXPt
         zw1TCsImH4eKVw6qKFeb4ztpoLWVKt+tS5zeQuuTWA06POyYoTLyoGz9m/C/G09HsYDN
         gRSE4hOazmB7xrubgfiHtBnUwjJBTEOtNlCT8QH7V6uvzZmeuiPIh8SxPPnycIAuTVqG
         D+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701077264; x=1701682064;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lrmaHyuEvzQlfjveyzKyXYh/y9m2kH1eqL1NoD2v4Oc=;
        b=DKuznQZQHwyVss5cKF87RooBEcBAjbb+hvI9LnfxpGl3ABpkdsz+ZDIBp5XrCrRbXr
         XTAmP5qcWTsAnSyy3bj8EdeqefpH1u00H/QrWukR/TSvRg3J+vP/IJfTU37Lzfcx2gDR
         0XhPKjQ/bXArDVqYSJeVoPPHemFyS57Ap2qUj12WrUZJWtquNWLsgT7XDORwSzNXV4oA
         4Ve3HLIhgXLQd6gWKszLXwLujHS3ym3dK4B1Hd/Hbmf/nEVfa0rTOXlZTkeE0vRdLa5g
         i3B15nd3bwm8UhBXZbC+F1u0xVSrDFCnPL+DZwPXi63y35gsz2//yKrRg6BUGQ9jRgvB
         e8Yw==
X-Gm-Message-State: AOJu0YwF3jcyXUyGovqfaiSqgVpATEaeIJ6SnQV8icEZiMPZ9maL6FMT
	B7n2cjSUSh/izsDJrlkU7p3WJFJzmwUVDDO/CmuETA==
X-Google-Smtp-Source: AGHT+IFamcLrDlDTk6+K564OMPM/StUOpJThaMJeZcT9DkKuGh7+NPZH8VubdIBK2SAi9n5PGIjpRw==
X-Received: by 2002:a17:906:5195:b0:a03:9a89:5aaf with SMTP id y21-20020a170906519500b00a039a895aafmr7139056ejk.6.1701077263760;
        Mon, 27 Nov 2023 01:27:43 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id xo25-20020a170907bb9900b00a0b6541b592sm3016866ejc.88.2023.11.27.01.27.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 01:27:43 -0800 (PST)
Message-ID: <7b8a830d-42d0-4220-b9fe-3f5fff43e74d@linaro.org>
Date: Mon, 27 Nov 2023 10:27:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Content-Language: en-US
To: Tim Lunn <tim@feathertop.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-5-tim@feathertop.org>
 <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org> <4762834.KRxA6XjA2N@diego>
 <b0c637f5-5abf-420b-8b02-839eba68799e@linaro.org>
 <d5fef204-a4db-4452-9e22-8928b9db54d5@feathertop.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <d5fef204-a4db-4452-9e22-8928b9db54d5@feathertop.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 27/11/2023 10:23, Tim Lunn wrote:
> Hi
> 
> On 11/27/23 17:52, Krzysztof Kozlowski wrote:
>> On 27/11/2023 00:06, Heiko Stübner wrote:
>>> Hi Krzysztof,
>>>
>>> Am Mittwoch, 22. November 2023, 13:29:47 CET schrieb Krzysztof Kozlowski:
>>>> On 22/11/2023 13:22, Tim Lunn wrote:
>>>>> Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
>>>>>
>>>>> Signed-off-by: Tim Lunn <tim@feathertop.org>
>>>>> ---
>>>>>
>>>>> (no changes since v1)
>>>>>
>>>>>   arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
>>>>>   arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 +++++++++++++++
>>>>>   2 files changed, 25 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>> index 4f85b7b3fc4c..167a48afa3a4 100644
>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
>>>>> @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
>>>>>   				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
>>>>>   		};
>>>>>   	};
>>>>> +	i2c2 {
>>>>> +		/omit-if-no-ref/
>>>>> +		i2c2_xfer: i2c2-xfer {
>>>>> +			rockchip,pins =
>>>>> +				/* i2c2_scl */
>>>>> +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
>>>>> +				/* i2c2_sda */
>>>>> +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
>>>>> +		};
>>>>> +	};
>>>>>   	pwm2 {
>>>>>   		/omit-if-no-ref/
>>>>>   		pwm2m0_pins: pwm2m0-pins {
>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>> index 6c5c928f06c7..cf1df75df418 100644
>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
>>>>> @@ -21,6 +21,7 @@ / {
>>>>>   
>>>>>   	aliases {
>>>>>   		i2c0 = &i2c0;
>>>>> +		i2c2 = &i2c2;
>>>> No, this should be per-board to match board labeling/schematics.
>>> At least for i2c, uarts and i.e. spi ... Rockchip manuals, pin namings
>>> and also all board schematics I've seen so far are very consistent for
>>> these ... i2c2 for example is labled i2c2 both in the pins in the socs
>>> and also in the board-schematics using them.
>>>
>>> So while I can agree that things like mmc-aliases might be board-specific,
>>> I do think aliases for the core busses should be able to live in the soc dtsi
>>> as for all Rockchip SoCs so far?
>> If you do not list here all aliases, it is already board-specific, isn't it?
>>
>> https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/
> I had only added aliases for nodes that are implemented. RV1126 has 6 
> i2c busses but so far not all these exist in the soc.dtsi.
> 

OK, that would explain why you have only two. Anyway, it is just generic
guideline, so up to Heiko what to do with it.

Best regards,
Krzysztof


