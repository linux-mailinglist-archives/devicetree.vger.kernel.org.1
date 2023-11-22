Return-Path: <devicetree+bounces-17774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCDE7F407F
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 09:46:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E435B20F0D
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 08:46:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8550124A00;
	Wed, 22 Nov 2023 08:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Slw/9PjT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A61F8109
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 00:46:01 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9ff26d7c0a6so397878366b.2
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 00:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700642760; x=1701247560; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Li8Gof1FI34qC7bNHnS9PUtdt5Y/oEUrIZViDpclL20=;
        b=Slw/9PjT6UovWJ67cgODlET1BeuOutR3MLpm5KZY4+dHx2iiLRiz6veOVbEZNNqGeY
         YbI3kiQBw9DVVxepyHPOR84kunqVt3OBi31/RqcSBsTq9kkig5v0XdIXpNDd1f9/ePHv
         DGASlNMHY3Q1UpKfZ9fparQcZmf89TFFSiOge9luTjpXS7+ifWcbSf7eN2potpK33EHc
         26FGTjuFoPkVamFtq3i1gwAUgNbSjWGZWwm9RxTdwg+m9wyia0FGAdThXrT/nrfkyTot
         N1nG0Qe3qMQVczBarw6IC7kX8eQUi4S8p0DqzZNeOEvfjYqyLadCC1e+mIUlij3DBtRR
         Yyrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700642760; x=1701247560;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Li8Gof1FI34qC7bNHnS9PUtdt5Y/oEUrIZViDpclL20=;
        b=lxvYnzZ0zYfApvHTU8RW4wUQwnaLYPfoX5GxZt1DnhxQ1Ji7n+uo8lSdpbuRpVDOyD
         ITBIlZfM54iDDapUj3CcioZloPAuD9qeV0+P7HXq46jyPYKCCMV1OitVYfcQjgOae+0C
         0nBiuBaUuzYBVNI+ST0FzE2EG9yDKHFJJ90w2XrAS5CopCK6ULcDaz67wVFnuvsx+bZ8
         ++Ikwqj52Bwo5XQc/OXjMkFln10KBamyQ3cSNFzLaOoA8UOxT5cy7oKWitjoNqKN124D
         iNuo6RhD+mqQbpcw6X/uBWpFknCf6MiR8fIZuxw5QrsAw2w68iKV8DNj2S+R3+dEyTKC
         hcXw==
X-Gm-Message-State: AOJu0YwvArYkdAD+S2wboMNrm4oDZznjQGNPnPXfN5Lax1bAHlI0qFOa
	HU8qPAVxWvWNDGEdxUjVt5pgHw==
X-Google-Smtp-Source: AGHT+IERYLJg/l3mWnYEDzRdrqyEtpGfV4yqY/7WWF8+Uxh9N7EQR71kE/+I7pbBtJPq8T80tbtG6w==
X-Received: by 2002:a17:906:c4a:b0:9fc:1eaa:6d5f with SMTP id t10-20020a1709060c4a00b009fc1eaa6d5fmr964748ejf.73.1700642760000;
        Wed, 22 Nov 2023 00:46:00 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id cm41-20020a170906f5a900b009e505954becsm5084071ejd.107.2023.11.22.00.45.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 00:45:59 -0800 (PST)
Message-ID: <c560371f-91ca-4c23-bc91-d965c31cc988@linaro.org>
Date: Wed, 22 Nov 2023 09:45:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7][4/4] dt-bindings: mmc: Add dt-bindings for realtek mmc
 driver
Content-Language: en-US
To: =?UTF-8?B?SnlhbiBDaG91IFvlkajoirflrold?= <jyanchou@realtek.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "jh80.chung@samsung.com" <jh80.chung@samsung.com>,
 "riteshh@codeaurora.org" <riteshh@codeaurora.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
Cc: "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "briannorris@chromium.org" <briannorris@chromium.org>,
 "doug@schmorgal.com" <doug@schmorgal.com>,
 "tonyhuang.sunplus@gmail.com" <tonyhuang.sunplus@gmail.com>,
 "abel.vesa@linaro.org" <abel.vesa@linaro.org>,
 "william.qiu@starfivetech.com" <william.qiu@starfivetech.com>
References: <20231121091101.5540-1-jyanchou@realtek.com>
 <20231121091101.5540-5-jyanchou@realtek.com>
 <dde59498-440d-4faf-b878-2090342b52da@linaro.org>
 <4551fbf03e3349eb8eaa336d505a5384@realtek.com>
 <31927a2b-4b14-406b-8db0-511ec4779d4f@linaro.org>
 <b870d026151345ce870284373df6d32b@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <b870d026151345ce870284373df6d32b@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 22/11/2023 09:33, Jyan Chou [周芷安] wrote:
>>>> +      clocks = <&cc 22>, <&cc 26>, <&cc 121>, <&cc 122>;
>>>> +      clock-names = "biu", "ciu", "vp0", "vp1";
>>>
>>> Where is the DTS implementing this binding?
>>>
>>>> I said it once:
>>>
>>>>> I asked you to test the bindings. This also means that you must test 
>>>>> your DTS against bindings. Your bindings, DTS and driver do not 
>>>>> match, therefore let's be a bit more clear:
>>>>>
>>>>> NAK, till you upstream your DTS.
>>>
>>>> I still do not see DTS anywhere. Please link it.
>>>
>>> Sorry for asking. Which dts do we need to link it? The device tree we use for our SOC?
>>>
>>> or realtek,rtd-dw-cqe-emmc.example.dts?  Thanks.
> 
>> The patch adding this device node to any upstream DTS. I am not speaking about example, but about upstream DTS using this MMC.
> 
>> As I wrote last time, I don't believe you test bindings and DTS and I had proofs of that. Therefore I expect you to upstream DTS of your product.
> 
> Sorry for explaining, since our DTS is still trying to upstream, but not accepted by upstream yet,

Please wrap your replies to match mailing list etiquette.

> 
> https://lore.kernel.org/linux-arm-kernel/4a462b2e-380a-9fd1-2e84-783cc457e8c2@linaro.org/T/

Last submission was half a year ago. That submission was not tested
either, so neither are your bindings nor DTS tested.

> 
> could I provide the dts we local used now for you first to compare with bindings? I am sorry for making this request.

I don't believe you are testing these, so the answer is not. Please send
your SoC for upstreaming with MMC nodes included or as follow up.

Best regards,
Krzysztof


