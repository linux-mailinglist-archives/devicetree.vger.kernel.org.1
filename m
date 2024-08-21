Return-Path: <devicetree+bounces-95497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7889959977
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 13:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99CF11F22405
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 11:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B998220ABF6;
	Wed, 21 Aug 2024 10:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JBep5QgK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3476D20ABE3
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 10:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724234415; cv=none; b=Azs/vZLZgqSSO9e7MLk7bA9dNW8PtQXsjQOKPIVBzAF9dWuW0visasB2nyl08oQBJouZ+vKERuA1ZDN1L96FWR87W/H3WAJWS8Nq5AcH+WmvvOe6Uwuh10XOv9WxKOof9LAPyhOrPMht/OQyIEgaK69Wib25HV11TgkKtxRW/F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724234415; c=relaxed/simple;
	bh=Ut4a4LJ6L9Qw6OqIXDADphCaoAOviJrYMlmLoagYFFo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eujPqWM8Pk3IcAxo6D5H06+LS7Am914D1Qek/szHDbLB0xc2HBiWQ0NDdiJMs07M2CWTmVz8oX21j7vWfDfLszRZt7ptquiSpkpQX85QbQq1RAEJmoiqlGs7FET6981/aoPJULNKBbDpmfy1WCgLIwPn+O47SD62ZJikmaPATss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JBep5QgK; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5da6865312eso4372175eaf.3
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 03:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724234413; x=1724839213; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H2vX0cAcL6u6kB8S2gDC6BZ0GpOYUqLhhMzp6ZJx/1c=;
        b=JBep5QgKW8UlEDkZj0mSBr30GHHb0qO0cUGj4DXL+SEE1rbbfZs8t+0mZHymKfcGTQ
         OSAlYfqrKpwgcdUWFtvZvJUa41nZ3SR1cvmKGfBjRuzH/viOR7B7rLT15mfdS02RIuJm
         anmivwOad3awtCyy4rXcMrSI/znvfxuLwCQtk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724234413; x=1724839213;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H2vX0cAcL6u6kB8S2gDC6BZ0GpOYUqLhhMzp6ZJx/1c=;
        b=HbsW0ZZCvzu8kOqzDsVsXmFTfVn7IoB3LotF2mQngnd1pYT9MFn4fIAVHwjA5stJSd
         7swdWNAfba5fZqbu8bIsp8oBFllGlFASu86/PjjtCgVyHbsWJb/XbLJgcz7q3TznuLsA
         tTJebG+anMBFEcM/7hv5ct9pK5QI9m5va3EXZwTQ+Wa47iFNiUPLXAEpqAhwRJodI9ZX
         ORnY/5foIFnLbgVeB1+iKHIl8Jk6wUvDD2uOQ1AGJEITrJrRk/9TBUNcfe/saPNj2VS2
         MPooF9BBf7cNSfy3vdKjsgOi1SQEdhmiQ71liyO4lFMR/Nc6FOmF8rLQupVgnxKnLbbG
         6sBw==
X-Forwarded-Encrypted: i=1; AJvYcCXl3zQdrXVFNxXY6mjBuBaL/v9nBLd0R5cnzjoWftdA28aKKjlf3m/EOw1lhBTY9oHGIxT8WVcFUoB6@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs8/SiPopgvJXQHX6k5+S6DaIkozMWJTT1eExIvcykCXkgs6Rp
	h1QJXRN3ESYEpwGPzDuAC07JLx4lJ68jmOYh+/2BIvYa6RCLHFF+CaPkqHXMHw==
X-Google-Smtp-Source: AGHT+IEX3F+CPJJNzHCWZtEffTW2KurhONpiKwuAK9S/tJd6nVZvVtWPiQDzzrQnSsCU/tnc7BEIEQ==
X-Received: by 2002:a05:6870:910e:b0:270:14cc:656c with SMTP id 586e51a60fabf-2737eed86aemr2031331fac.6.1724234413128;
        Wed, 21 Aug 2024 03:00:13 -0700 (PDT)
Received: from [192.168.0.106] ([103.163.98.66])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7127ae07e41sm9617199b3a.65.2024.08.21.03.00.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 03:00:12 -0700 (PDT)
Message-ID: <abc3330a-58a2-4527-a101-81e2e6168abd@chromium.org>
Date: Wed, 21 Aug 2024 15:30:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: display: mediatek: dpi: Add power
 domains
To: Krzysztof Kozlowski <krzk@kernel.org>, chunkuang.hu@kernel.org,
 p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
 ck.hu@mediatek.com, jitao.shi@mediatek.com
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240821092659.1226250-1-rohiagar@chromium.org>
 <20240821092659.1226250-2-rohiagar@chromium.org>
 <415a27c7-dfdf-4cc5-9aaa-1681dd32ddcb@kernel.org>
Content-Language: en-US
From: Rohit Agarwal <rohiagar@chromium.org>
In-Reply-To: <415a27c7-dfdf-4cc5-9aaa-1681dd32ddcb@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 21/08/24 2:59 PM, Krzysztof Kozlowski wrote:
> On 21/08/2024 11:26, Rohit Agarwal wrote:
>> Add power domain binding to the mediatek DPI controller
>> for MT8186.
>> Also, add power domain binding for other SoCs like
>> MT6795 and MT8173 that already had power domain property.
>>
>> Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
>> ---
>>   .../display/mediatek/mediatek,dpi.yaml        | 19 +++++++++++++++++++
>>   1 file changed, 19 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> index 5ca7679d5427..864b781fdcea 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>> @@ -62,6 +62,8 @@ properties:
>>         - const: default
>>         - const: sleep
>>   
>> +  power-domains: true
> Missing maxItems. I don't get why did you change this...
>
>> +
>>     port:
>>       $ref: /schemas/graph.yaml#/properties/port
>>       description:
>> @@ -76,6 +78,23 @@ required:
>>     - clock-names
>>     - port
>>   
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - mediatek,mt6795-dpi
>> +              - mediatek,mt8173-dpi
>> +              - mediatek,mt8186-dpi
>> +    then:
>> +      properties:
>> +        power-domains:
>> +          maxItems: 1
> This part can be dropped. Just disallow it for other devices.
I was a bit confused here.

Can we add something like this?
if:
   not:
        (mt6795, mt8173, mt8186)
then:
     properties:
         power-domains: false

Thanks,
Rohit.
>
> Best regards,
> Krzysztof
>

