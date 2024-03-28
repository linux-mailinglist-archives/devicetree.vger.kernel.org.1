Return-Path: <devicetree+bounces-53822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4457A88DAF9
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 11:10:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6336298541
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 10:10:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A78174879B;
	Wed, 27 Mar 2024 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wZFXgKt5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7DE232C9C
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 10:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711534234; cv=none; b=ULcEuwtbBTOCNtun9OUeDv0LIhqL2Qq9Q6wto/elCcjJo0GUhPue3rVaZR+U1qhtQNknVWX1clG5HFNfATtwLs5AS6zTHPlhfJKTX2CY6v/vnv8hQaw3heuz/d5/IcWzC4JpxxdIvnvcn3hXPQaoiFLI2oAi6dqxSsPrCTYVPrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711534234; c=relaxed/simple;
	bh=fbwSYT7ZEOvG9KjWklrX99nJIgTmwHassI7eOAUa6dQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L0IVLfbvBGAaKPARwZABmVSSx+mkjsmXMteYfHLdMmg28fvW7c+T9fZwkTxKDZ0KVm5K0gd28p0CcHrnCrd2ZLx816mnMZ9or3frKEbzGh9GnPck3ICHmhe4eVh3j/ldMB019m2xQaa6WKYTxDvMEKnCybu9TMPH91mDCDYyK5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wZFXgKt5; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a468226e135so779658166b.0
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 03:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711534230; x=1712139030; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=FhQ9HD7CHMMgyCBCsFB59rsHA3mlpnsH3nF/ASvIemg=;
        b=wZFXgKt5WV+jaNLakzzvpsn0btKVugsVWHoEjPAb5EzRVm4Yho0ycxqnpB5wFpdgHY
         N405RMVyzwywC0li76a+jhPNF4S3aBsQ3yx5ppjyNbOr9fMw3Jmqxva3RXGF09wQl+Xv
         EW4UQVz77sS2LUf9R8XmGPaJ46nr4JmAT1tZ3+pxs/ttZ7FID+6zfxXKIoS8yeY71Glu
         7WOMtpabuF61XY/MVm2J6b7fbkyswLGZFFnLNkzYmZinpaM0LoGTjyZufHNM4zniuvWP
         F8r3sr0OkzRW5X06aBK9oudQU8Xb71b9nX/av5etjzeynGm0zcNWiFWndEe+Q2KfD068
         On6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711534230; x=1712139030;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FhQ9HD7CHMMgyCBCsFB59rsHA3mlpnsH3nF/ASvIemg=;
        b=al8z59pqO95Jgy/sZAzqUrynEnvRf2Kq5QJ02HNOxUN63XVR8axyPS7liUOGMglEr1
         WETOoZIhzMjwucdkRaMPtBVWHgHaZ9owNfiqohI/r0dDqy5dg6Q6nE53WoVTb3ca2ucv
         9v5DFcPLlZCTn3uIcU1p5kG3tWZidjiCh0S4gLOys1Jj3ik4c16vxFUgkk2lVlWrQGsg
         ISGCZHtH93vTTOZ5QN1Qfn+t4gSRyip/b51Lyzp67bfkhgbRR0csx0ln+hwaVEF6fhkC
         l7eGk3XNndnpH1cRyMJqwiCqjXE3NnMJp2mkdjE9Rl2p5HZx5ZnPjE8wlVNrmyRpEEV1
         /Vqw==
X-Forwarded-Encrypted: i=1; AJvYcCWqOBGCsTSZ6bG6vyqVqq+h6OSVRq27MSgKDKyWeb73Bt8CpL/d19D8QLqgGkGwnrDjdHbtsY0lHnWaLpYtGG6INsjzFD8laJ7x6g==
X-Gm-Message-State: AOJu0Ywc0B+vvK7AOobq+UzEvFO/nG4E+08Q+KZe6hl+iAdQnrJkTK2w
	f16mX8B2DOmjKkYw8yLmy94eoSqPGXpS9Ag2zmLW8VjURUnBec8x16e9LAQeI34=
X-Google-Smtp-Source: AGHT+IGyYWgSi83PMwUdN2ZBu4//s1bSwYh+8Wy7h9Nn6YKWw+5InswMCp8CiP8LxHoG/vg8HhvMag==
X-Received: by 2002:a17:906:a085:b0:a4d:8481:5ea8 with SMTP id q5-20020a170906a08500b00a4d84815ea8mr3033473ejy.73.1711534229982;
        Wed, 27 Mar 2024 03:10:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.205])
        by smtp.gmail.com with ESMTPSA id b4-20020a170906708400b00a46da83f7fdsm5264403ejk.145.2024.03.27.03.10.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Mar 2024 03:10:29 -0700 (PDT)
Message-ID: <1e21524d-318e-4ba0-8142-719c249aa2dd@linaro.org>
Date: Wed, 27 Mar 2024 11:10:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: power: Add mediatek larb definition
To: =?UTF-8?B?WXUtY2hhbmcgTGVlICjmnY7nprnnkosp?= <Yu-chang.Lee@mediatek.com>,
 =?UTF-8?B?TWFuZHlKSCBMaXUgKOWKieS6uuWDlik=?= <MandyJH.Liu@mediatek.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "angelogioacchino.delregno@collabora.com"
 <angelogioacchino.delregno@collabora.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Project_Global_Chrome_Upstream_Group
 <Project_Global_Chrome_Upstream_Group@mediatek.com>,
 =?UTF-8?B?WGl1ZmVuZyBMaSAo5p2O56eA5bOwKQ==?= <Xiufeng.Li@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, =?UTF-8?B?RmFuIENoZW4gKOmZs+WHoSk=?=
 <fan.chen@mediatek.com>
References: <20240327055732.28198-1-yu-chang.lee@mediatek.com>
 <20240327055732.28198-3-yu-chang.lee@mediatek.com>
 <6dd9959e-f741-47af-b10a-1894f72ae78f@linaro.org>
 <f25b4d913a584d753888e7a3c32502eae1f7fbf0.camel@mediatek.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <f25b4d913a584d753888e7a3c32502eae1f7fbf0.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 27/03/2024 11:01, Yu-chang Lee (李禹璋) wrote:
> On Wed, 2024-03-27 at 09:39 +0100, Krzysztof Kozlowski wrote:
>>  	 
>> External email : Please do not click links or open attachments until
>> you have verified the sender or the content.
>>  On 27/03/2024 06:57, yu-chang.lee wrote:
>>> Add Smart Multimedia Interface Local Arbiter to mediatek
>>> power domain.
>>>
>>> Signed-off-by: yu-chang.lee <yu-chang.lee@mediatek.com>
>>> ---
>>>  .../devicetree/bindings/power/mediatek,power-controller.yaml  | 4
>> ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git
>> a/Documentation/devicetree/bindings/power/mediatek,power-
>> controller.yaml
>> b/Documentation/devicetree/bindings/power/mediatek,power-
>> controller.yaml
>>> index 8985e2df8a56..228c0dec5253 100644
>>> --- a/Documentation/devicetree/bindings/power/mediatek,power-
>> controller.yaml
>>> +++ b/Documentation/devicetree/bindings/power/mediatek,power-
>> controller.yaml
>>> @@ -125,6 +125,10 @@ $defs:
>>>          $ref: /schemas/types.yaml#/definitions/phandle
>>>          description: phandle to the device containing the SMI
>> register range.
>>>  
>>> +     mediatek,larb:
>>> +        $ref: /schemas/types.yaml#/definitions/phandle
>>> +        description: phandle to the device containing the LARB
>> register range.
>>
>> Why do you need it?
>>
>> Plus I also see mediatek,larbs and mediatek,larb-id... so now we have
>> third one similar.
>>
> MM driver used "mediatek,larbs" for it larb node.
> Power domain driver used "mediatek,larb".
> "mediatek,larb-id" is for larb in dts.
> 
> The naming is no related to each other.

Then it is just confusing.

Best regards,
Krzysztof


