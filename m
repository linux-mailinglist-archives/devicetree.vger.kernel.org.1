Return-Path: <devicetree+bounces-51003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E67C987DF0D
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 18:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 764111F217F2
	for <lists+devicetree@lfdr.de>; Sun, 17 Mar 2024 17:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7AA01CF8A;
	Sun, 17 Mar 2024 17:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i14mRWku"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BF21C6A4
	for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 17:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710697799; cv=none; b=rpQkRKQQ0f86sUV/jC0BEsVU9qas8qXknJ9el/9Y66+RTupeeBEarPOYk8Z6t3IUFKGsfimoT86+13J24UUIYdZkh1FI6ZFS3sH5W4kfBRyIUa4Z1d2OAlYiIq+TzSG/SoDoabuY7afCiZFVLjtA/QwHADEsXrNPJdYOkKAaR/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710697799; c=relaxed/simple;
	bh=9Tsw1Mv4cEfYjxis8MgqOF7tSUaY2zYbnE0okhaQWUA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gQkvWsHnoRZEHKwooEuTHQjjYWZ4qL/5Tmq1Y9dcqIeoiW1afxhr8hNPOv1uStqkhmn79YLhO68OMjyMRDjOAgflkLez2qmNzAniPRhH86zvHDRxGdWPUQ+xuNX2NlljnWmloEcrD77HWHXCsY/umS474FRNe6SWxB8dgpfIWDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i14mRWku; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a45f257b81fso467068566b.0
        for <devicetree@vger.kernel.org>; Sun, 17 Mar 2024 10:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710697796; x=1711302596; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=GqHGTFGtxrVLcCB7jK+IAAjPKnRgr6GzaJOMAprK42I=;
        b=i14mRWku008aTpi0q9tXyiQmz0+ifiAHl5XK4qqywOsem/z8nwGzOftmkAHzbf+fhk
         t/QjB7CRjyLl9A9GRcSSDwZImZ42EZ2jXTT70CDdjd3iXoynPvaH+fJp/3fW+kPItww2
         yJ0gwKC/3w+4ws1IvJveG9fCF0xDjE1L/N8rfeO1I4W3NPqHjwW5EALz5NhzXZndtALE
         MVvuB0QMLaZMj3akOo6tnF5Mc+aVb/K5UudoNjR5OBodwYznLfwf0ltFhd/LjYXAsGA4
         5DMjLOfzvj9kWKzMcjyV1/bkYCIHsr/EFTpdhoC0QWfh6fyVOve7n28ZGeJ2WqmnJZoK
         2DWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710697796; x=1711302596;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GqHGTFGtxrVLcCB7jK+IAAjPKnRgr6GzaJOMAprK42I=;
        b=QO29XxjagpN3m5gePMv6rPFF74nh1SJageo9nLHqjEfWTTVnSVtaL22rrvw/GiBjJT
         UJtOvFgigbtXSf2WMCiL+qXU8TL7kkDeEYLA/3cBHtKZrUv0N5rxqzvNh2Xl4J26R9ZC
         V/Kv+409znYitrUkKeUEoykAW7sE4HHFWR+z8DYHg43QekCIVcuRyb4wQZiN14eiDaU+
         +HRWXv1rSrRXT6YnLpyNP0OSn5NMiOTy0SSU0H3RmBEuAdRc3J1TGrotakwIclbqSpNV
         lXXJ04D84qRNlAA0Fcu8O5JKBHfDgGM1hq7rRxZCsLPdv7fF7UNz0v7/gj3GJwRmlzgM
         1mWw==
X-Gm-Message-State: AOJu0Ywg3diwfyHUskdhgEGS4AAmzIKbatj+8el4AxhVYreyZ+s/MFVv
	9DaS06NLvcAbPchr9hSYsgPhPmmPghJ9SvYtdGy3Lw4aN8biEF/3dgRzc9go+KY=
X-Google-Smtp-Source: AGHT+IFdMymfh8x2GDd1mnGfMp3CCDpnCf4x4KlyAJO2HOR41FP0saxzX1lcz5yAMCCfaCgrRbzQ/Q==
X-Received: by 2002:a17:907:72c3:b0:a46:a92a:ed6 with SMTP id du3-20020a17090772c300b00a46a92a0ed6mr3015752ejc.20.1710697796329;
        Sun, 17 Mar 2024 10:49:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id k23-20020a1709063e1700b00a4636d9d28dsm3956696eji.69.2024.03.17.10.49.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Mar 2024 10:49:55 -0700 (PDT)
Message-ID: <f369871a-1cd5-4dd8-8b5f-2c6492e72b8b@linaro.org>
Date: Sun, 17 Mar 2024 18:49:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: allwinner: h616: add support for T95
 tv boxes
To: Kamil Kasperski <ressetkk@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20240317-add-t95-axp313-support-v2-0-e38032811758@gmail.com>
 <20240317-add-t95-axp313-support-v2-3-e38032811758@gmail.com>
 <1860c559-5a5c-4673-9d08-253f0945762b@linaro.org>
 <f4f02cb2-6263-4bd4-a798-c92c31f7b363@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <f4f02cb2-6263-4bd4-a798-c92c31f7b363@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 17/03/2024 16:36, Kamil Kasperski wrote:
> W dniu 17.03.2024 o 15:57, Krzysztof Kozlowski pisze:
>> On 17/03/2024 02:34, Kamil Kasperski wrote:
>>> Add dtsi file for T95 tv boxes and add initial
>>> support for T95 5G AXP313A variant with a board name
>>> H616-T95MAX-AXP313A-v3.0
>>>
>>> internal NAND chip is connected to NAND controller
>>> I can't see any nand in sun50i-h616.dtsi, so access to
>>> internal memory is not implemented.
>> Please wrap commit message according to Linux coding style / submission
>> process (neither too early nor over the limit):
>> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
>>
>>> Signed-off-by: Kamil Kasperski <ressetkk@gmail.com>
>>> ---
>>>  arch/arm64/boot/dts/allwinner/Makefile             |   1 +
>>>  arch/arm64/boot/dts/allwinner/sun50i-h616-t95.dtsi | 109 +++++++++++++++++++++
>>>  .../dts/allwinner/sun50i-h616-t95max-axp313.dts    |  85 ++++++++++++++++
>>>  3 files changed, 195 insertions(+)
>>>
>>> +
>>> +	reg_vcc3v3: vcc3v3 {
>>> +		/* discrete 3.3V regulator */
>>> +		compatible = "regulator-fixed";
>>> +		regulator-name = "vcc-3v3";
>>> +		regulator-min-microvolt = <3300000>;
>>> +		regulator-max-microvolt = <3300000>;
>>> +		regulator-always-on;
>>> +	};
>>> +
>>> +	wifi_pwrseq: wifi_pwrseq {
>> No underscores in node names. From where did you copy this code?
> 
> arch/arm64/boot/dts/allwinner/sun50i-h618-transpeed-8k618-t.dts#L44
> Seems this one needs a fixup.
> 

I see sunxi has a lot of this... I thought we fixed all mainstream
platforms, but apparently not. I'll send a patch.

Best regards,
Krzysztof


