Return-Path: <devicetree+bounces-61352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC238AC5D4
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:45:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B1DF8B21E3F
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 07:45:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCDA64DA08;
	Mon, 22 Apr 2024 07:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OVI11jDG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15724D9E8
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 07:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713771825; cv=none; b=aaH4gKPCCvmqpxS5zqlxMCU7VjFNueaBh0uD3gZ/bNgWS/z70QD5eQDU6oGpGZauwhsgXtFLqAz2tv1tDZO3JGnjGx3iVTIF2Xch8yoLzbct7lJSy2WWCxoM8Z6aBzQvYC0QdiWuGKLycZU31Af2cfC8e6++pjjYntslI3znKTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713771825; c=relaxed/simple;
	bh=7kkqIZ6+kDOaluWz0SwsJkePbfX9lpUhpnpmBPyGnAg=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=pKVJ8NKgMr0SBXyobPc44CotcCpVMdCUDG/UtrDNt5A113GGs+Yko3DJB9LXi18nfiSOZdoKbWo4/0FV4CEyA4i5UTGogwR7oSZcWOtSMwU8eCUiwv7qYiRyj/zrEM1PFU3miBVp/BpcWO5ersJ50GAz2Ymi+JC8g9i0Mu66w8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OVI11jDG; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-34a4772d5easo3200175f8f.0
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 00:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713771822; x=1714376622; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=kfvBFZLfcCNDYszUkEjQ11vl0msgHceKXcUSI0a//gM=;
        b=OVI11jDGJShzLc7kKwCL+eGYv4s8OUp1lqCi93jw72MnTs2TXBVuZp4POLlubBLtN/
         r79oXtyIdbOIZ5xL5H0xY+3kY5UgvyA/BlXlGLcvNnC3JCfqfmgr5F0J0u3lt8r8mYP3
         9MTkTNNGFilkPDt5fwF159bKSGQJpWbw9WFCN9WGXhiYzaCGRmxEGSU78npDmJHkAEuh
         jy9o1eM42ITdZ0iP2roO9zzRHVH4KdFpsG0pXF80M7XknBBviJre4kDuoEc6jmkomOwf
         gy2b/b2B+fTjffdQd4nT97D4QXhKnFBkdojMxhOi5G/8dsgBqtOzw3QQCml0KJ4nmOJW
         i7jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713771822; x=1714376622;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kfvBFZLfcCNDYszUkEjQ11vl0msgHceKXcUSI0a//gM=;
        b=Pu/2wnxYd8d1OvUv6BtLV3SmCJqP6qYiUWPZ8FOLFsHdm5cgVSumixgGYFaWM+btUx
         ulWPzYlNhedeX+3jbXl0X/d55/m+31k1b3OkwimsbIjTmqfKdFXdsYMVDiR3xmlYoXNR
         wu6r8kNLMrWgGXEI214DuI+AxWlgTS7BQ3s757dBs/QIRuAlaq3MJ2+RSbkPkXf22SDb
         sEVwD4yBMv0yQchG4TATc7y1wbiCvLi53/TNvgxP/HNIFaKEGdp2ETd6sESWe5egp52H
         eEECLIzCvppjc8WaHWDs7K+OkNgV2+Kslx81dPYn9tElVC6U8YLr7GNiO9hLRa+3NUBR
         6MDw==
X-Forwarded-Encrypted: i=1; AJvYcCURJu8ne/8HBXBJo41NXzwfkb+geqJMvoppJ2doSPcB0Ek4A7DAjvwMbY6zklWTxb1lI0NaHmaGrhKVEfYX3VdJ9ufaOVNbpLxblQ==
X-Gm-Message-State: AOJu0Yz2BGXUPaCmtE5njn9xiUKxrWu6SHctOoXSKqVqRk+spWLK92up
	5cMDYPqjwe37n2ZHBeTOwf2lM9uXkBthT1IvEGywo/caw8KNSctzk9KB31mjPNo=
X-Google-Smtp-Source: AGHT+IGXz4ihquQ0AAf0yOpe2B/eFN6P67bXlP8OvnX6InizQwyfBUNlf/di3apDLwgepPVHK16i5A==
X-Received: by 2002:a5d:440c:0:b0:34a:a836:b940 with SMTP id z12-20020a5d440c000000b0034aa836b940mr3387304wrq.18.1713771822295;
        Mon, 22 Apr 2024 00:43:42 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:a619:ccb0:5f40:262c])
        by smtp.gmail.com with ESMTPSA id y18-20020a5d4ad2000000b0034a0d3c0715sm11036715wrs.50.2024.04.22.00.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 00:43:42 -0700 (PDT)
References: <20240419125812.983409-1-jan.dakinevich@salutedevices.com>
 <20240419125812.983409-5-jan.dakinevich@salutedevices.com>
 <07b1ca57-49a0-4151-99bf-caac053eaa01@kernel.org>
 <0194ddb8-6e93-4a77-9fdd-93fc79a4e03e@salutedevices.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jan Dakinevich <jan.dakinevich@salutedevices.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Jerome Brunet <jbrunet@baylibre.com>, Michael
  Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob
  Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor  Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Martin  Blumenstingl <martin.blumenstingl@googlemail.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Jiucheng Xu <jiucheng.xu@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH v3 4/6] dt-bindings: clock: meson: document A1 SoC
 audio clock controller driver
Date: Mon, 22 Apr 2024 09:43:08 +0200
In-reply-to: <0194ddb8-6e93-4a77-9fdd-93fc79a4e03e@salutedevices.com>
Message-ID: <1jcyqhc05u.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Sat 20 Apr 2024 at 17:48, Jan Dakinevich <jan.dakinevich@salutedevices.com> wrote:

> On 4/19/24 17:06, Krzysztof Kozlowski wrote:
>> On 19/04/2024 14:58, Jan Dakinevich wrote:
>>> Add device tree bindings for A1 SoC audio clock and reset controllers.
>>>
>>> Signed-off-by: Jan Dakinevich <jan.dakinevich@salutedevices.com>
>> 
>> This is still RFC, so not ready.
>> 
>> Limited, incomplete review follows. Full review will be provided when
>> the work is ready.
>> 
>> Drop "driver" references, e.g. from subject. Bindings are about hardware.
>> 
>> 
>> ....
>> 
>>> +
>>> +  clocks:
>>> +    maxItems: 26
>>> +    items:
>>> +      - description: input main peripheral bus clock
>>> +      - description: input dds_in
>>> +      - description: input fixed pll div2
>>> +      - description: input fixed pll div3
>>> +      - description: input hifi_pll
>>> +      - description: input oscillator (usually at 24MHz)
>>> +    additionalItems:
>>> +      oneOf:
>>> +        - description: slv_sclk[0-9] - slave bit clocks provided by external components
>>> +        - description: slv_lrclk[0-9]- slave sample clocks provided by external components
>> 
>> What does it mean the clocks are optional? Pins could be not routed?
>
> Yes exactly. Pins could be routed in any combination or could be not
> routed at all. It is determined by schematics and that how external
> codecs are configured.
>
>> It's really rare case that clocks within the SoC are optional, so every
>> such case is questionable.
>> 
>> 
>>> +
>>> +  clock-names:
>>> +    maxItems: 26
>>> +    items:
>>> +      - const: pclk
>>> +      - const: dds_in
>>> +      - const: fclk_div2
>>> +      - const: fclk_div3
>>> +      - const: hifi_pll
>>> +      - const: xtal
>>> +    additionalItems:
>>> +      oneOf:
>>> +        - pattern: "^slv_sclk[0-9]$"
>>> +        - pattern: "^slv_lrclk[0-9]$"
>>> +
>>> +required:
>>> +  - compatible
>>> +  - '#clock-cells'
>>> +  - reg
>>> +  - clocks
>>> +  - clock-names
>>> +
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: amlogic,a1-audio-clkc
>>> +    then:
>>> +      required:
>>> +        - '#reset-cells'
>>> +    else:
>>> +      properties:
>>> +        '#reset-cells': false
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/clock/amlogic,a1-pll-clkc.h>
>>> +    #include <dt-bindings/clock/amlogic,a1-peripherals-clkc.h>
>>> +    #include <dt-bindings/clock/amlogic,a1-audio-clkc.h>
>>> +    audio {
>>> +        #address-cells = <2>;
>>> +        #size-cells = <2>;
>>> +
>>> +        clkc_audio: clock-controller@fe050000 {
>>> +                compatible = "amlogic,a1-audio-clkc";
>>> +                reg = <0x0 0xfe050000 0x0 0xb0>;
>>> +                #clock-cells = <1>;
>>> +                #reset-cells = <1>;
>>> +                clocks = <&clkc_audio_vad AUD_CLKID_VAD_AUDIOTOP>,
>>> +                         <&clkc_periphs CLKID_DDS_IN>,
>>> +                         <&clkc_pll CLKID_FCLK_DIV2>,
>>> +                         <&clkc_pll CLKID_FCLK_DIV3>,
>>> +                         <&clkc_pll CLKID_HIFI_PLL>,
>>> +                         <&xtal>;
>>> +                clock-names = "pclk",
>>> +                              "dds_in",
>>> +                              "fclk_div2",
>>> +                              "fclk_div3",
>>> +                              "hifi_pll",
>>> +                              "xtal";
>> 
>> Make it complete - list all clocks.
>> 
>
> You mean, all optional clocks should be mentioned here. Right?
>
>>> +        };
>>> +
>>> +        clkc_audio_vad: clock-controller@fe054800 {
>> 
>> Just keep one example. It's basically almost the same.
>> 
>
> The worth of this duplication is to show how a clock from second
> controller (<&clkc_audio_vad AUD_CLKID_VAD_AUDIOTOP>) is used by first
> one. May be it would be better to keep it... What do you think?

If you think that is worth mentioning, make it part of the
documentation, not the example.

>
>> 
>> 
>> Best regards,
>> Krzysztof
>> 


-- 
Jerome

