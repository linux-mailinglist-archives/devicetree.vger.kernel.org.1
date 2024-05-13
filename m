Return-Path: <devicetree+bounces-66611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA418C3E3D
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 11:38:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B64B1F21A9D
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 09:38:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22581487F1;
	Mon, 13 May 2024 09:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Dafv9X1a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A832F875
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 09:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715593088; cv=none; b=AXSMH55Zj2GiTj5kfxYxMTyfMH7wrN+rMUxxz8MzNtTzfsU/UIjUOoLA021FQ6KEJka8ByF+guMMsM7kMC2mccmYSxJReG/+ihKYEuIVRvFQF9+/skRzkCHVNkPzGae08aJ+bVIFUQcCdn9EXjy8R9v5z1yV7oUzgvz6jtpJEHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715593088; c=relaxed/simple;
	bh=mrA0umzVICvjTtbycixAZja2rmAUfL0irwoycYxuegs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e4U2JQREHGHgzoJaGHnc40s+s76RExlyb8YyXHXC78f2eFSxxzyM5uzZIgyMtieipB9uGMVQtwvMOO6NyssDDg9zXbVTeTd40EmEDBcAWzBhQX3o96t4PMIiCRsZKAIMDDeRmWwa7b8QLhJMdSAlkoOpOUcnlIoPmhqd1luFClM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Dafv9X1a; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-34e0d47bd98so2807717f8f.0
        for <devicetree@vger.kernel.org>; Mon, 13 May 2024 02:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715593085; x=1716197885; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZakEEfF/gL0Nf5L87QnDy2p/w280G1B+M/YPIdJS+74=;
        b=Dafv9X1arJklk2kGGgPueJJjDVLhyeISPcrWNPWbucpJeNJGues6BHLQK6nTI4SuZP
         llmYX0q8fE3qHh1LJLHg01UThrEt6xMROTY1sp9G4MD8KxXtjdbdTf5Dufz9sFswu9qj
         MjmkvLPLe/lte6e6BrkdC9CA36GcrXiJhw58cW4GyXIyiaLXwlJN3C8d+04qd1xX/o5w
         3txmwykNZgnWMwBCJfWRBagGoLgnGPf6lcyGjnbSPnBDwxO1c07y6oDS2HRVTjdbUgVX
         dAETSHYjU0Bq6iULeL4Ht027HmfKtX/yH6zFVQ8jNEVXfv3qXwwrCxsYiWjVBE4edD9x
         NNqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715593085; x=1716197885;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZakEEfF/gL0Nf5L87QnDy2p/w280G1B+M/YPIdJS+74=;
        b=Y4JF4gBBCh3MYMP/ZpCH6kzO+f6ub+BaljhwJhNJZnBCN46R3hnd7wlJhKom4sw09i
         TKOlKfqlknGwLLhFzZELXT8D80hKVptQdxwb7gcD/K8G4contNO2ygXWKDcCGqJRirrJ
         Th0fCypN17GQn1kJ4XtCiHBPMC1lqnv16kFg1F8oFfLGynV5oBkagJLwS8ddet+8OkXu
         lTCadCl/d9JUlRz13dd6HDHO44X0CyKqdRo1UHgfzMW07Jhqd8FxK5bX++WIw81VCvlq
         nxbrIpz1ctU77QCA+ro4xUaHnI36Tew688Fz7wyGnhD/OoZ4WtGnXK1hks6880HT1ZV6
         8gBQ==
X-Forwarded-Encrypted: i=1; AJvYcCULiqItMDEfx09Hgj/QRaNEZeFYHQ93Wie4ADKNay3XqzdmUuVWSqeXrvwGi/ySEq+PhlcI0cHsiiPkBujDfULXiPZKvZBdCdTgPA==
X-Gm-Message-State: AOJu0YzvJhLYWiPhSDd1T5sr9iOevMa507QwNKpKTdaX1ULCpQlJDWfw
	nUBS5DhiXFc9RYfjRv4BxL+uakYzuJHyWRgRYMla4FJILQOb2t1r6dQrDFdQLGI=
X-Google-Smtp-Source: AGHT+IHfSgTeyVhBTWmBtZLIzJ4luTsv9/3g5Suea7200Xibi4Bu5PMKa/R7TxwhXXne07D7DK9d9A==
X-Received: by 2002:adf:ff8c:0:b0:34c:e0d6:bea6 with SMTP id ffacd0b85a97d-35049bbf670mr8493146f8f.29.1715593085254;
        Mon, 13 May 2024 02:38:05 -0700 (PDT)
Received: from [10.91.0.75] ([149.14.240.163])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b79bc3bsm10638940f8f.13.2024.05.13.02.38.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 May 2024 02:38:04 -0700 (PDT)
Message-ID: <9caaa63d-cf5a-46f8-93db-9fbc00850d8f@linaro.org>
Date: Mon, 13 May 2024 11:38:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: panel-simple-dsi: Add generic panel-dsi
To: Johan Adolfsson <Johan.Adolfsson@axis.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel <kernel@axis.com>
References: <20240418-foo-fix-v1-0-461bcc8f5976@axis.com>
 <20240418-foo-fix-v1-2-461bcc8f5976@axis.com>
 <c739a512-9a75-4f48-b5ef-801191c298f5@linaro.org>
 <PAWPR02MB928111F5EEB4A46B56A89B239B122@PAWPR02MB9281.eurprd02.prod.outlook.com>
 <29352160-4943-4271-97f5-34afd6f35df9@linaro.org>
 <PAWPR02MB9281B32E144205CCEEF0C53D9BE22@PAWPR02MB9281.eurprd02.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <PAWPR02MB9281B32E144205CCEEF0C53D9BE22@PAWPR02MB9281.eurprd02.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/05/2024 11:34, Johan Adolfsson wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> 
>> Sent: den 22 april 2024 22:57
>> To: Johan Adolfsson <Johan.Adolfsson@axis.com>; Neil Armstrong <neil.armstrong@linaro.org>; Jessica Zhang <quic_jesszhan@quicinc.com>; Sam Ravnborg <sam@ravnborg.org>; Maarten Lankhorst <maarten.lankhorst@linux.intel.com>; Maxime Ripard <mripard@kernel.org>; Thomas Zimmermann <tzimmermann@suse.de>; David Airlie <airlied@gmail.com>; Daniel Vetter <daniel@ffwll.ch>; Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>; Thierry Reding <thierry.reding@gmail.com>
>> Cc: dri-devel@lists.freedesktop.org; linux-kernel@vger.kernel.org; devicetree@vger.kernel.org; kernel <kernel@axis.com>
>> Subject: Re: [PATCH 2/2] dt-bindings: panel-simple-dsi: Add generic panel-dsi>
>>
>> On 22/04/2024 16:34, Johan Adolfsson wrote:
>>>
>>>
>>> -----Original Message-----
>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Sent: den 19 april 2024 01:05
>>> To: Johan Adolfsson <Johan.Adolfsson@axis.com>; Neil Armstrong 
> ..
>>> Subject: Re: [PATCH 2/2] dt-bindings: panel-simple-dsi: Add generic 
>>> panel-dsi
>>>
>>>> On 18/04/2024 16:01, Johan Adolfsson wrote:
>>>>> panel-dsi is similar to panel-dpi with overridable timings
>>>>
>>>> ???
>>>
>>> I guess a more correct description would be "panel-dsi is a fallback 
>>> in a similar way that panel-dpi is in panel-dpi.yaml .."?
>>
>> I meant how does it explain the hardware.
> 
> In our case it's actually an FPGA that takes MIPI DSI input and can support multiple different kind of displays, and what I want to achieve
> is to avoid specifying a lot of different panel timings in the driver and have that in devicetree instead. 
> I appreciate any suggestions on how to phrase that in an acceptable manner.
> 
>>> ...
>>>>> a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.y
>>>>> am
>>>>> l
>>>>> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple-d
>>>>> +++ si
>>>>> +++ .yaml
>>>>> @@ -56,6 +56,8 @@ properties:
>>>>>        - samsung,sofef00
>>>>>          # Shangai Top Display Optoelectronics 7" TL070WSH30 1024x600 TFT LCD panel
>>>>>        - tdo,tl070wsh30
>>>>> +        # Generic dsi panel with timing overridable
>>>>> +      - panel-dsi
>>>>
>>>> ? Devices are not generic. This is very confusing and commit msg does not help me. Compatibles *must* be specific, see writing-bindings.
>>>
>>> I guess I see this a generic fallback, that handles any dsi panel as 
>>> long as the correct timing etc is specified in devictree, similar to what panel-dpi is in panel-dpi.yaml Maybe phrasing it similar to panel-dpi.yaml is better?
>>
>> But panel-dpi is quite different. You always have two compatibles. I don't see two compatibles here.
> 
> It doesn't really need two compatibles (in practice at least), the new generic panel-dsi could be enough - I do believe that devices can be generic,
> but I admit that I'm not really "fluent" in devicetree and binding descriptions.

I guess the first comment brought here a bit of naming issue... The
bindings are not "generic".

Best regards,
Krzysztof


