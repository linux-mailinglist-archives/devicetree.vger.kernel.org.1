Return-Path: <devicetree+bounces-11899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6FE7D6EAA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:27:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 335A61F22E3C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:27:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E4472943E;
	Wed, 25 Oct 2023 14:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cNshRAxW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C062829427
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:27:24 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D86C6182
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:27:22 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-53dd3f169d8so8645928a12.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698244041; x=1698848841; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W11BoROAQ6O+AQAgJsTMh4mnP5mkkAOTryMggiaMy/Y=;
        b=cNshRAxWpNTmmooh0A5GBsdJ9T15FxCRjZ2yieEGodIHrrQyJRuV4VxnmYQFSGF9Lk
         MHEGbxOLFAWspv4laXbvWG0vFTEeOxNM9lKEXB0QNWeeaZ5pcYYqB43Gpr9jWcIeJ65S
         iZbLJBYUs0hemXmAG+v6e2pCZrQ2wZsvBBf5enakw7aBC5xweurelMViP0Kq8DbfnKEH
         ZQe+USNFE1QGTQhxiyyFBNu5MB2s2A8dEuvo19hTFyW8sUJr4clRZiPK3Zq597scgM3U
         qKrHTkC+g5E4AMMSsCVwh1wJVjT9fZ12R1Y71taS1LknAEJGsU7ZyOcFvE1E8Ppeyzpt
         Xy4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698244041; x=1698848841;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W11BoROAQ6O+AQAgJsTMh4mnP5mkkAOTryMggiaMy/Y=;
        b=uD46/se0eOy/v/YWeQLW+7OQfAuJKJSRKUDmWh9bPJnJ+MyZQAkpJZeC9KRWeDfX6k
         8XzLKVZ6cDHmOjjmLBgiWWcOV5vZtkn3x8EcIGd7iJW1njOS0TEwae4aVFvMZsN3ohRv
         /K+tHZFgf+3ICOP+Fquvd7kCVjAb0rycRSOVC9ULVHdjcluTBlmHCrcnmTD2YBoJMAi0
         3ngi2hqqrK3pH/jDzt7U/lJQmDmVAJbLlHN+0RyYkx+tR8AO3AsxpmYsN8JoEVnPxgHr
         LwMdc732T7K8hXUut3XF60frQ6nym+K4B4zAIblRjIBRitBZDXIYQAXSYCw8P7RmtbMQ
         +2qg==
X-Gm-Message-State: AOJu0Yx8LeYL4dEyp1vJncMYIrDyC3G5hVD6z531gLWz4aSV30kFgQOT
	EikXr7U8Fvan3VI3+uSpJ/fPWQ==
X-Google-Smtp-Source: AGHT+IGNPDcLEHtqkTkTFzPaEMRHgVhsYUa6bz5XZ4UvXRu3+Wctxh2Je6V3orKYXpq6y/reCX5vcg==
X-Received: by 2002:a05:6402:11cf:b0:540:346c:7b2f with SMTP id j15-20020a05640211cf00b00540346c7b2fmr8191641edw.40.1698244041113;
        Wed, 25 Oct 2023 07:27:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id n25-20020a509359000000b00530bc7cf377sm9761788eda.12.2023.10.25.07.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 07:27:20 -0700 (PDT)
Message-ID: <d68f1109-9e99-4a94-98d8-676be4af920f@linaro.org>
Date: Wed, 25 Oct 2023 16:27:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: hwmon: add ti,ina238
Content-Language: en-US
To: Richard Leitner <richard.leitner@linux.dev>
Cc: Conor Dooley <conor@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
References: <20231025-ina237-v1-0-a0196119720c@linux.dev>
 <20231025-ina237-v1-2-a0196119720c@linux.dev>
 <20231025-hut-omnivore-f4b44a7b928d@spud>
 <qoxgyho5twbm4jopfveaf5ee3z4tkyb2z5f2vsyrpglffegmxf@v2z5ckcaa5jc>
 <20231025-eatery-backup-ad85c043cb01@spud>
 <8cd5c34e-f733-445d-bc1e-d4dea1bcb47d@linaro.org>
 <2syaha4sapfpegvdsvef76egcqfebkuapxok6uripdbrgbk2vn@2xq5oi33zz2j>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <2syaha4sapfpegvdsvef76egcqfebkuapxok6uripdbrgbk2vn@2xq5oi33zz2j>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/10/2023 16:23, Richard Leitner wrote:
> On Wed, Oct 25, 2023 at 04:18:31PM +0200, Krzysztof Kozlowski wrote:
>> On 25/10/2023 16:11, Conor Dooley wrote:
>>> On Wed, Oct 25, 2023 at 04:07:31PM +0200, Richard Leitner wrote:
>>>> On Wed, Oct 25, 2023 at 03:00:01PM +0100, Conor Dooley wrote:
>>>>> On Wed, Oct 25, 2023 at 10:34:12AM +0000, Richard Leitner wrote:
>>>>>> The ina238 driver is available since 2021 but lacks a dt-bindings file.
>>>>>> Therefore add the missing file now.
>>>>>
>>>>> Seemingly it is documented in Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
>>>>
>>>> Thanks for the feedback. True. So is it fine if it's left there or
>>>> should it be removed from ti,ina2xxx.yml as this is a separate driver
>>>> with different properties?
>>>
>>> Merging them would seem like the most straightforward thing to do, no?
>>
>> Sorry folks, I don't quite get what do you want to merge or move and
>> why. Drivers are not related to bindings. The point is the compatible is
>> already documented, so is anything wrong with existing documentation?
> 
> ina238 is a separate driver which doesn't evaluate the same properties as
> the ina2xx driver. So I thought it would be reasonable to split those
> bindings and therefore reflect the drivers capabilities.

I do not see different properties in the bindings, so what do you mean
that it evaluates something else?

Anyway, whatever driver does is rarely good argument for change in
bindings, because we focus here on the hardware, not on one, chosen OS
implementation.

> 
> If it's fine if there are additional properties in the dt-bindings which

Where are they? Or rather which additional properties?

> are not evaluated by the driver then it's of course fine with me to just
> add the ina327 compatible in ina2xx.yaml.

Depends. What driver does, might not matter in some cases. What matters
is if these properties are applicable to this hardware.

Best regards,
Krzysztof


