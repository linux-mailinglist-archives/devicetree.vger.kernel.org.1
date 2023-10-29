Return-Path: <devicetree+bounces-12681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 014457DAE0D
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 20:49:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4FB2281466
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 19:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F279C10A25;
	Sun, 29 Oct 2023 19:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Y63lmEgU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9681078D
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 19:49:40 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8910EBA
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 12:49:35 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5a7c011e113so35171107b3.1
        for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 12:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698608974; x=1699213774; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iIRJr814e3OR0nk2N9sH0dhApvH5pHF8ARDZlJk6Fwc=;
        b=Y63lmEgUku1e+y+0XFlC/3kcg47lt4oNdDv9Psnsjyb0+qpsyC67lpAXDQi/mF9z2W
         qUdecT++B2/imW0MQbkQPbvRrkq2BqePmUzvTlMRFK50XkbkKuZnfU4LXLooReO+dqei
         JUuWr0kqcD9IKNZjJ74XpuaftugzAo86WIiRK5eG+h8CvLIx9hnjOi8gyrLEpxUb02xE
         T4/w1Li5zS9fwHYbfPhvDPJK6tDyLC2h2iZ6SDM8qb2R9dWziAz8IKXKrHXZBvgEyOCQ
         PRkr3p+LanPPtIU41k6EgQy+AQv0/WlI9gVnwC06OU8dNWref/We/36w4+G+hpVLH6WT
         mFfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698608974; x=1699213774;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iIRJr814e3OR0nk2N9sH0dhApvH5pHF8ARDZlJk6Fwc=;
        b=ZA10ietrtlAsqe9Q6Wi9ahMlBumP23CtPonBmO331QxVfstYdxgE/8nDSI7oAsTZ31
         zJ0QTcaisT0XkgD8kiMF4jWUWmnpGn5LWXmiCqBqdgPKy714vQSNbHyzWX3LuDHddyQe
         soe+ZzFNLrRYKxQdGYIOqAwEfc4IoQ1QCiFlhaBPCGa6iqC8jsFyllva+hyxPk6oiuD6
         sKNRM4YC3PDhAs/Qr0WlPgyIw/p/wQJTamwGdZIodIXPA+QULK/Uvse7yQzvqwNFcnNY
         5Sk1S5khxGjbW7gPC1sXaTP8jDRMC4gg3kyCorh5BYcxGLbPiaL9mtuAvcYwgZqln33/
         u1ZA==
X-Gm-Message-State: AOJu0YzAqUFVlZAMW6md4LWnS+TDS5Up5C57OvT70R67cilNSfmy0ew3
	LaUPsFmSpUZA/A71LG7F/pQZaA==
X-Google-Smtp-Source: AGHT+IHhD0PPL40FE81BkfFJFGve9oVM2SM2kBkV+rwufWKdIlC26+qwcvLV/wrBtmblXUWlrVTe+Q==
X-Received: by 2002:a81:cf09:0:b0:5a7:b036:360c with SMTP id u9-20020a81cf09000000b005a7b036360cmr8054980ywi.23.1698608974637;
        Sun, 29 Oct 2023 12:49:34 -0700 (PDT)
Received: from [192.168.68.107] ([191.255.2.33])
        by smtp.gmail.com with ESMTPSA id g8-20020a815208000000b005a23ab90366sm3384979ywb.11.2023.10.29.12.49.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Oct 2023 12:49:34 -0700 (PDT)
Message-ID: <680a2f25-59e7-4757-ba93-1de7fe1279e3@ventanamicro.com>
Date: Sun, 29 Oct 2023 16:49:30 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: riscv: Document cbop-block-size
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, apatel@ventanamicro.com,
 palmer@dabbelt.com, devicetree@vger.kernel.org, ajones@ventanamicro.com,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor.dooley@microchip.com>
References: <20231029123500.739409-1-dbarboza@ventanamicro.com>
 <20231029-kitten-provider-1602fa805c35@spud>
Content-Language: en-US
From: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
In-Reply-To: <20231029-kitten-provider-1602fa805c35@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/29/23 11:53, Conor Dooley wrote:
> Yo,
> 
> On Sun, Oct 29, 2023 at 09:35:00AM -0300, Daniel Henrique Barboza wrote:
>> Following the examples of cbom-block-size and cboz-block-size,
>> cbop-block-size is the cache size of Zicbop (cbo.prefetch) operations.
>> The most common case is to have all cache block sizes to be the same
>> size (e.g. profiles such as rva22u64 mandates a 64 bytes size for all
>> cache operations), but there's no specification requirement for that,
>> and an implementation can have different cache sizes for each operation.
>>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
> 
> Firstly, odd CC list. Please CC the output of get_maintainer.pl in the
> future.

Ops, my bad

> 
> IIRC, I mentioned defining this to Drew when he was add zicboz, but he
> didn't want to add it - although he seems to have asked you to document
> this. Drew, change of heart or am I not remembering correctly?
> I think he cited some interpretation of the spec from Andrei W that
> implied the Zicbop size would be the same as one of the other ones, but
> I cannot find that on lore atm.

The reason why I'm here is because I want to add Zicbop in QEMU riscv,isa.
I'm pushing a rva22u64 profile implementation there and Zicbop is mandatory
for it. In the process I added a riscv,cbop-block-size DT because, well,
if both Zicboz and Zicbom have their respective block-size DTs, then it's
expected that Zicbop also has one. Or so I thought.

Drew then replied in the QEMU ML [1] that riscv,cbop-block-size isn't
documented and we can't add it as it is. So here we are.

If riscv,cbop-block-size isn't needed because Zicbop will use the cache
block size of Zicboz or Zicbom, that works for me too - I'll add a note
in QEMU explaining why there's no riscv,cbop-block-size and everything
is fine. What we can't do is add stuff in the QEMU DT that's neither
documented nor acked in the DT bindings.


Thanks,


Daniel

[1] https://lore.kernel.org/qemu-riscv/20231028-2d6bf00dddc7bc4a25b32663@orel/

> 
> If Drew's okay with it, then I am too, so a conditional
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> Cheers,
> Conor.
> 
>> ---
>>   Documentation/devicetree/bindings/riscv/cpus.yaml | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
>> index 97e8441eda1c..1660b296f7de 100644
>> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
>> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
>> @@ -78,6 +78,11 @@ properties:
>>       description:
>>         The blocksize in bytes for the Zicbom cache operations.
>>   
>> +  riscv,cbop-block-size:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description:
>> +      The blocksize in bytes for the Zicbop cache operations.
>> +
>>     riscv,cboz-block-size:
>>       $ref: /schemas/types.yaml#/definitions/uint32
>>       description:
>> -- 
>> 2.41.0
>>
>>

