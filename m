Return-Path: <devicetree+bounces-2977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A487AD0D5
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:57:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CEDDF2814BC
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 06:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15F8A1078A;
	Mon, 25 Sep 2023 06:57:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A611A5686
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:57:54 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D08C6
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 23:57:52 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso705401766b.2
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 23:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695625071; x=1696229871; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VG+6Xq/ASFsGoWBTTYjiIoHFQswBUUcv0GAt9Hgd6pE=;
        b=YlCz2c5BKy7HeQ5lfdB8VkEUi+1c166Yl8wpdkz9Aa0jBQ84d3sZmBhHmf3lGsB2qd
         ZhNkwFXl8BDeHBUpF41+XlsvpkKjOua7grltXymdhP0+/nVY7zEroHWEE88wFC0Krlf/
         KvWOgwfTIXFoBg6ydiYlwAOotrXIaLw1bfk6Mvc4k+gYegzG2Tx7kfOjELpqkxK0ftiP
         6/8hzlVf+l8DsfyPaJd8W9nkcNrPWAj7Os50u0qjEXFU/5LYfaF2bBfvY/PxqRhwpGfB
         gEU4jC9GFLs266jG0DwSGyuJTG0W//ssOiGBhvFvt5hXJyj/oN+r4N6v3XazuBCt/ZSL
         I3Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695625071; x=1696229871;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VG+6Xq/ASFsGoWBTTYjiIoHFQswBUUcv0GAt9Hgd6pE=;
        b=AZ+bBpVJEI06x+2y5Whqna77/S5xPBEOlrtAz15P5BWOzpYWXm4+nC5bIaPc9FiUyt
         gRfDVptYEQlGakVcUu5sZZvTqiEHgmxTMatRvwGITcFdD/OB4SFk+/P8zEh3Fiq+4nen
         4p7GVG+4S9EVWDRIqX0yklvxAaRzgUy/xkb8cqROqS66/lXk1WyxM65L3s3idkDl+yEe
         Mmgg5vODx4dgDcfh0VxUNQxr07E0fL3joyuQX59bMIhUhkOF0dFHp9f7412RRI9hYaIP
         +GznHadyHcxgQQg9q8YkzQV5ngcG4elYx8noIk57J/49NcxIYVFYZD6OC/lCX3cao9lj
         OTrQ==
X-Gm-Message-State: AOJu0Yz0grsJfHkpYlPX74AgjiJEv8DcpbMiIo0q7Nwr3bdOfxyb60DJ
	REiDDh1vc8+Z5410U5v6Ppuw1A==
X-Google-Smtp-Source: AGHT+IFxCVTNHJvlQP8y3JcQW8lBT4gWQjafPrW/whl5M7iEpho5GlXkCsnAKu6tfKMlbtbSjcmaEQ==
X-Received: by 2002:a17:907:7d90:b0:9ae:68d6:48f5 with SMTP id oz16-20020a1709077d9000b009ae68d648f5mr6051822ejc.41.1695625071258;
        Sun, 24 Sep 2023 23:57:51 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id g27-20020a170906349b00b0099bc0daf3d7sm5843290ejb.182.2023.09.24.23.57.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Sep 2023 23:57:50 -0700 (PDT)
Message-ID: <d08f6f17-f90c-4d71-a203-1d5365b5598a@linaro.org>
Date: Mon, 25 Sep 2023 08:57:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] ARM: dts: st: stih407: drop max-duty-cycle
Content-Language: en-US
To: Patrice CHOTARD <patrice.chotard@foss.st.com>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20230730174954.5293-1-krzysztof.kozlowski@linaro.org>
 <20230730174954.5293-4-krzysztof.kozlowski@linaro.org>
 <e6afc5bb-7477-36d6-b05b-2afdd1107f03@foss.st.com>
 <a004afcd-08a0-4da4-9e3c-3b12445c7b43@linaro.org>
 <b02d3983-c238-f79f-0edc-dd0db305b697@foss.st.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <b02d3983-c238-f79f-0edc-dd0db305b697@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 25/09/2023 08:50, Patrice CHOTARD wrote:
> 
> 
> On 9/24/23 20:53, Krzysztof Kozlowski wrote:
>> On 16/08/2023 08:54, Patrice CHOTARD wrote:
>>>
>>>
>>> On 7/30/23 19:49, Krzysztof Kozlowski wrote:
>>>> "max-duty-cycle" property was removed in the commit f747a1fe7848
>>>> ("regulator: pwm-regulator: Remove obsoleted property"):
>>>>
>>>>   stih418-b2199.dtb: pwm-regulator: Unevaluated properties are not allowed ('max-duty-cycle' was unexpected)
>>>>
>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>
>>>> ---
>>>>
>>>> Changes in v2:
>>>> 1. Correct subject prefix: AMR->ARM
>>>> ---
>>>>  arch/arm/boot/dts/st/stih407-family.dtsi | 1 -
>>>>  1 file changed, 1 deletion(-)
>>>>
>>>> diff --git a/arch/arm/boot/dts/st/stih407-family.dtsi b/arch/arm/boot/dts/st/stih407-family.dtsi
>>>> index 3f58383a7b59..29302e74aa1d 100644
>>>> --- a/arch/arm/boot/dts/st/stih407-family.dtsi
>>>> +++ b/arch/arm/boot/dts/st/stih407-family.dtsi
>>>> @@ -111,7 +111,6 @@ pwm_regulator: pwm-regulator {
>>>>  		regulator-min-microvolt = <784000>;
>>>>  		regulator-max-microvolt = <1299000>;
>>>>  		regulator-always-on;
>>>> -		max-duty-cycle = <255>;
>>>>  		status = "okay";
>>>>  	};
>>>>  
>>>
>>>
>>> Applied on sti-next
>>
>> This is still not in linux-next (one month later!).
> 
> Hi Krzysztof
> 
> Yes i saw that, i submitted my pull request to ML but it hasn't be merged.
> I just notice i forgot to add soc@kernel.org in the sender list, my bad :-(
> I expect to resubmit it for v6.7.

So if you have them in your tree, why they are not in linux-next? Soc
has nothing to do with it.

Best regards,
Krzysztof


