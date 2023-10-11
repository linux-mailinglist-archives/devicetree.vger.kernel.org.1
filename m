Return-Path: <devicetree+bounces-7605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C86507C4D93
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:49:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83F68282088
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 049AA199C5;
	Wed, 11 Oct 2023 08:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wmpspTAx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7729D19BAC
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 08:49:15 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28A599E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 01:49:13 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9b95622c620so1197939566b.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 01:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697014151; x=1697618951; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=goU66zG1Z8ZGxlkEzc0eoZzJ+tEswmSUbrbJMfgUSLU=;
        b=wmpspTAx8MANuNj6yvDA8hLV0wx7a29XhzMm55bx8Ihi8jY1CGvY82w/NTl3IGYPsM
         GFwdLpNwRTTf0xQwsyFOv2sGDgaKatu5Nka5G97Ai6I45EolVhijgI53mHuer3sw3vnI
         BHDqOnb0NuwmhXdPbUfFsWhQ4A6kK5fsL7SdSaFfMd8hIz5lUBVE/SRpUd0AN6V7kvaJ
         KHixLzqYM5v9Y2J+GE0Blz5deEdsJwbL1ht3gQVbWMt3Qh7P+Kpwya6WVivnKg9dn3sY
         rZfy+bUn9A6OVXtwQuNyNoPxSXm5ciyWiDRpHEAeSTyfiNdqH5mvBmlMqk5WsmdIRmFh
         iSgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697014151; x=1697618951;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=goU66zG1Z8ZGxlkEzc0eoZzJ+tEswmSUbrbJMfgUSLU=;
        b=e3lzKFmATyobb2pdyLcQ87TAPmYME6Se2wI/d8aIqAzy1Z1bVP+7/YOwTG5lSZmdxe
         67J36yOZHn7eGRlnbgD/3rL2Z6QUPiElSY2kuXYuitxP+nbwyAPgqWnh033LXEqElDV0
         buBt1GxM9K8LiDA34LmPOCDXiueqb1zubQ9ItOF7f6mE/0P52Qeztdb8yZbSY83/ynxG
         3zgML+Ger5yV/k1/gag4V/bAJgGRkwBG5PlSHwFZMdehlgN69arUGNgoXCvr1SzOgcuw
         QUl0C6swA9jSNGrdllPKuSH7QIiXUNpDBTeTN+QIchVcCczwWyRaxGT+ZlRETgFCXMGk
         K7ng==
X-Gm-Message-State: AOJu0YwbDGs3WJGhLy1/Arfl/54beTC4ePgjU0PHg/28vFyTsnMu0WuP
	UvxbeLehzt8X+pXNg11NpvWg8g==
X-Google-Smtp-Source: AGHT+IExnFJCom6CH9oUPktlA1Qk1vtPOJTjoCod0Pf9vHRdBJj4j6vUQMY9Dt2O6Rng+8xy+rHUpA==
X-Received: by 2002:a17:906:844a:b0:9ae:73ca:bbae with SMTP id e10-20020a170906844a00b009ae73cabbaemr15809476ejy.62.1697014151564;
        Wed, 11 Oct 2023 01:49:11 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.123])
        by smtp.gmail.com with ESMTPSA id dc4-20020a170906c7c400b0098e34446464sm9555049ejb.25.2023.10.11.01.49.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 01:49:10 -0700 (PDT)
Message-ID: <a6c57156-d3a5-4524-8ef8-6f27cf0a2c97@linaro.org>
Date: Wed, 11 Oct 2023 09:49:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/20] dt-bindings: serial: samsung: Add
 google-gs101-uart compatible
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>,
 Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org,
 tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org,
 wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com,
 will@kernel.org, arnd@arndb.de, olof@lixom.net, cw00.choi@samsung.com,
 andre.draszik@linaro.org, semen.protsenko@linaro.org, saravanak@google.com,
 willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-watchdog@vger.kernel.org, kernel-team@android.com,
 linux-serial@vger.kernel.org
References: <20231010224928.2296997-1-peter.griffin@linaro.org>
 <20231010224928.2296997-9-peter.griffin@linaro.org>
 <2023101111-banknote-satin-1f77@gregkh>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <2023101111-banknote-satin-1f77@gregkh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Greg,

On 10/11/23 08:48, Greg KH wrote:
> On Tue, Oct 10, 2023 at 11:49:16PM +0100, Peter Griffin wrote:
>> Add dedicated google-gs101-uart compatible to the dt-schema for
>> representing uart of the Google Tensor gs101 SoC.
>>
>> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
>> ---
>>  Documentation/devicetree/bindings/serial/samsung_uart.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
>> index 8bd88d5cbb11..72471ebe5734 100644
>> --- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
>> +++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
>> @@ -19,11 +19,13 @@ properties:
>>    compatible:
>>      oneOf:
>>        - items:
>> +          - const: google,gs101-uart
>>            - const: samsung,exynosautov9-uart
>>            - const: samsung,exynos850-uart
>>        - enum:
>>            - apple,s5l-uart
>>            - axis,artpec8-uart
>> +          - google,gs101-uart
> 
> These shouldn't be needed, just declare the device as the same as what

We should have SoC specific compatibles so that any further quirks or
incompatibilities can be easily addressed. It's not only the IP itself
that can differ, it's also the integration of the IP into the final
product that could have an influence on the behavior.

Cheers,
ta

> the chip really is (i.e. a samsung uart), that way no .yaml or kernel
> driver changes are needed at all.
> 

