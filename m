Return-Path: <devicetree+bounces-25151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 652B3812904
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 08:22:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B2261F21087
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 07:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828E2DDD9;
	Thu, 14 Dec 2023 07:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OThP0Vgs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64065F5
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 23:22:17 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3333b46f26aso6919747f8f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 23:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702538535; x=1703143335; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0FA4+Bra6qzbxvc8QcOzkY8gHsE1y79st3EyRLb9wWw=;
        b=OThP0VgsXBx6W4yAV3n5J5vjQUv7icMVpm5OL6qxsMNpGfALOQw2LxknOBeXIt6qQb
         lccEbRKl8PVaO+XYQC8h2bNRwSAkWKMK9M3OB/sRwYfpR90pxK5mN49oBqbmLTmoeAuL
         F+dB66krODo56bL30+H4/wm8SlffcC/QNuEgdm1WHl2A5DgiVa9Cik3U3hnUg6YAuuD2
         ATQfJ45XxT0SOY8Dil2NYIF/H8GPvjIxNlJ5vkakQPYBrdN8n5Un0aa8lyxfT8+ZlxMt
         ci6QFrh4TQyUpZH3LieHuq9jxQ9YI4PD5fQaXGwbF0frral8NmACrkOGgIIuB04J7yNF
         vM5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702538535; x=1703143335;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0FA4+Bra6qzbxvc8QcOzkY8gHsE1y79st3EyRLb9wWw=;
        b=HMVgeYvg1p6TA0cTGPS1gihGOUitPAYBU3o/JULvz7DtqFXBvXN2qg2WKx8eIRWtHC
         EqOavE64CszotRoyZazv/MJD0Kz1F6dWAOCk3T3tnOLvgeGLelffrU/CudBXn8VdJghk
         qZGgkG9YlpDkaUI6RmpLKGbJX4ODsjehVtM6BM5mG0UZovIpiMUq2Gu9X3Z9BICLPNmn
         OiXGpY3gBK9wkWzXcGyK3YjVKKLI9xsVtZ6kOi5Nlum3OeweQF12nDSCUrCvod7UWJdB
         OLZq9k9eGSbS46U0eenFoM3u7PveeyrcwQOe3FAeEmQMtG51gyNR2LQPooPVaoSVGW9i
         WMsA==
X-Gm-Message-State: AOJu0YxUHAwDp2Vyl2iUheF6BZQBf9P1GVLFiJbejRjF3LXE/mk2ZmBm
	evaaDfESCikuZCDSE4/rypt9Gw==
X-Google-Smtp-Source: AGHT+IG6QhyNnTy8fV6b21aerqd948PaptnFrTa1pgYPurEq96B4AkS2xiJgGdngFRS/WDx5Kj3X5g==
X-Received: by 2002:adf:eacf:0:b0:336:2ebc:1827 with SMTP id o15-20020adfeacf000000b003362ebc1827mr2055774wrn.42.1702538535518;
        Wed, 13 Dec 2023 23:22:15 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m1-20020adfa3c1000000b003364ad1c20esm74776wrb.0.2023.12.13.23.22.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 23:22:15 -0800 (PST)
Message-ID: <38d171ee-b94b-4d1c-8702-60735a005596@linaro.org>
Date: Thu, 14 Dec 2023 08:22:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: cadence-torrent: Add optional
 input reference clock for PLL1
To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "kishon@kernel.org"
 <kishon@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc: Milind Parab <mparab@cadence.com>, "rogerq@kernel.org"
 <rogerq@kernel.org>, "s-vadapalli@ti.com" <s-vadapalli@ti.com>
References: <20231212114840.1468903-1-sjakhade@cadence.com>
 <20231212114840.1468903-2-sjakhade@cadence.com>
 <e09e4df8-ec36-4953-9bb0-75a3ce0b535d@linaro.org>
 <DM6PR07MB61548DC520B4BA66D6FC625AC58CA@DM6PR07MB6154.namprd07.prod.outlook.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <DM6PR07MB61548DC520B4BA66D6FC625AC58CA@DM6PR07MB6154.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/12/2023 08:02, Swapnil Kashinath Jakhade wrote:
> Hi Krzysztof,
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Wednesday, December 13, 2023 12:19 PM
>> To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>; vkoul@kernel.org;
>> kishon@kernel.org; robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
>> conor+dt@kernel.org; linux-phy@lists.infradead.org; linux-
>> kernel@vger.kernel.org; devicetree@vger.kernel.org
>> Cc: Milind Parab <mparab@cadence.com>; rogerq@kernel.org; s-
>> vadapalli@ti.com
>> Subject: Re: [PATCH v2 1/5] dt-bindings: phy: cadence-torrent: Add optional
>> input reference clock for PLL1
>>
>> EXTERNAL MAIL
>>
>>
>> On 12/12/2023 12:48, Swapnil Jakhade wrote:
>>> Torrent PHY can have two input reference clocks. Update bindings
>>
>> It already supports two.
>>
> 
> Thanks for your comments.
> refclk and pll1_refclk are the two input reference clocks for the PLLs.
> phy_en_refclk is used to enable output reference clock in some cases.

Why input clock is used to enable output reference clock?

> 
>>> to support dual reference clock multilink configurations.
>>>
>>> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
>>> ---
>>>  .../devicetree/bindings/phy/phy-cadence-torrent.yaml        | 6 +++---
>>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-
>> torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-
>> torrent.yaml
>>> index dfb31314face..98946f549895 100644
>>> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>>> @@ -35,14 +35,14 @@ properties:
>>>      minItems: 1
>>>      maxItems: 2
>>>      description:
>>> -      PHY reference clock for 1 item. Must contain an entry in clock-names.
>>> -      Optional Parent to enable output reference clock.
>>> +      PHY input reference clocks - refclk & pll1_refclk (optional).
>>> +      Optional Parent to enable output reference clock (phy_en_refclk).
>>
>> So third clock? But you allow only two? Confusing.
>>
> 
> Yes, if both refclk and pll1_refclk are present, phy_en_refclk can't be used.
> 
>>>
>>>    clock-names:
>>>      minItems: 1
>>>      items:
>>>        - const: refclk
>>> -      - const: phy_en_refclk
>>> +      - enum: [ pll1_refclk, phy_en_refclk ]
>>
>> This does not match your commit msg. You already had two clocks there.
>>
> Yes, but refclk was the single input reference clock used for PLLs earlier.
> As stated in commit message, a new input reference clock (pll1_refclk) is added here.

existing phy_en_refclk is also input reference clock, isn't it?

> 

Best regards,
Krzysztof


