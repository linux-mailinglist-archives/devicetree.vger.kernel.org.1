Return-Path: <devicetree+bounces-13542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA32F7DED1E
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 08:12:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E70F61C20DF0
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 07:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E923553B9;
	Thu,  2 Nov 2023 07:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h/8USqGE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21F05396
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 07:12:01 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 072DE184
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 00:11:56 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9a6190af24aso88347666b.0
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 00:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698909114; x=1699513914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=XLLO2ZSj14ek5f9/G5cjQHYdHWJXlHxtegw6xtGQB1Q=;
        b=h/8USqGETnfqV9O+2GuVzAJGlLcJ+QHGlzat+4iRoCFbAw2uL2dqizOBRdHOWLbHCb
         uoBvOdOZqi86uNAeF9OR/Xuv0I2HjgVZs6QqZX6fxUFZgJcWTsj73pbDZO38ZTHnTSSZ
         HjEHs7J8f1CZWFDavOuH1KF+QuI9gt32M5U8fLxMPIYv0rbl6TLk2JwMGFGbVLOwoT/w
         sKzJGif2q53DlG4c9ZgtWzONeLRM64OtYJRMWNBg05l0thtsYjEMIsgif1TJ27IsuxaD
         luKO9ovhirAyVvpeck+PQ8blVTZmWeNMYKm03co5tRu/+cNv3FzYUhVH5eMVV+/a7hxa
         ZTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698909114; x=1699513914;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XLLO2ZSj14ek5f9/G5cjQHYdHWJXlHxtegw6xtGQB1Q=;
        b=u3ZS3tv47i7+Vm7leBj+tkNLuwmTAjB66YVOt9+C+cD4eie5w9VJhQvDotEhmDB9Eg
         SNG4cO/gUYnnjK/fHfdHNHIf19Ygto5fA56HKBSibgihNcfvjxvm3LBJL4OuoCDOK+aQ
         8YhRjPIguwW1vOSAEjGPoYwPJRm4EhL2hauH29+Dxyob/rtyvGefYx50qdg6jFMiQbtS
         JjhzvSBj/h9+Ik3bUjTsmsaN/GoqkPw4V4eI7+TtK9i0TZItyIJ8XPjM1+6SNvuOhd1a
         HDprUrWv55aLqISU01zfEmiQwzQ1mvNoSZ+HEeDEO+O1pAR6zVxzKaSiAbhh0GFfDRn7
         TN2A==
X-Gm-Message-State: AOJu0YwJRB1cuNZWKYvnkmP5bQoHRigutURRpybLgiJkT4j8S0KN7C/5
	Nj1tR9MQhChprAPHIgP2IQ9F/w==
X-Google-Smtp-Source: AGHT+IFz3lqUCJbyM8gNJLVuu/e8iat9+bi5NZqTUB9AyPOtTnX6IbvZh5qzTZ1imC2JPhfNcs3Uzw==
X-Received: by 2002:a17:906:6a15:b0:9c7:69d4:b264 with SMTP id qw21-20020a1709066a1500b009c769d4b264mr2938876ejc.77.1698909114191;
        Thu, 02 Nov 2023 00:11:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id la22-20020a170906ad9600b009b8a4f9f20esm768710ejb.102.2023.11.02.00.11.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 00:11:53 -0700 (PDT)
Message-ID: <4fc3fafa-6c9b-440a-99fe-1332cd3d5b1d@linaro.org>
Date: Thu, 2 Nov 2023 08:11:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] gpio: realtek: Add GPIO support for RTD SoC variants
To: =?UTF-8?B?VFlfQ2hhbmdb5by15a2Q6YC4XQ==?= <tychang@realtek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20231101025802.3744-1-tychang@realtek.com>
 <20231101025802.3744-2-tychang@realtek.com>
 <e18a7ee0-a5e3-4180-9f8a-99b21d1303e6@linaro.org>
 <8e4c8676acaf4ba6bf3f57451b2eab40@realtek.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <8e4c8676acaf4ba6bf3f57451b2eab40@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 02/11/2023 04:30, TY_Chang[張子逸] wrote:
> Hi Krzysztof,
> 
>> On 01/11/2023 03:58, Tzuyi Chang wrote:
>>> This commit adds GPIO support for Realtek DHC RTD SoCs.
>>
>> Please do not use "This commit/patch", but imperative mood. See longer
>> explanation here:
>> https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-
>> patches.rst#L95
>>
> 
> I will remove these words.
> 
>>> +static int rtd_gpio_probe(struct platform_device *pdev) {
>>> +     struct rtd_gpio *data;
>>> +     const struct of_device_id *match;
>>> +     struct device_node *node;
>>> +     int ret;
>>> +     int i;
>>> +
>>> +     node = pdev->dev.of_node;
>>> +     match = of_match_node(rtd_gpio_of_matches, pdev->dev.of_node);
>>> +     if (!match || !match->data)
>>> +             return -EINVAL;
>>> +
>>> +     data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
>>> +     if (!data)
>>> +             return -ENOMEM;
>>> +
>>> +     data->assert_irq = irq_of_parse_and_map(node, 0);
>>> +     if (!data->assert_irq)
>>> +             goto deferred;
>>> +
>>> +     data->deassert_irq = irq_of_parse_and_map(node, 1);
>>> +     if (!data->deassert_irq)
>>> +             goto deferred;
>>
>> So this goes to cleanup path...
>>
> 
> Since there is no need to do devm_free, I will directly return -EPROBE_DEFER here.

That's not a correct return value. You do not return DEFER on missing
IRQ. This should anyway be different call: platform_get_irq().


Best regards,
Krzysztof


