Return-Path: <devicetree+bounces-225492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EA7BCE6B3
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 21:46:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED0984081D4
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 19:46:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 268DF2FD1C2;
	Fri, 10 Oct 2025 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EtsOKhaF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D20207A20
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 19:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760125594; cv=none; b=SAevpZ8uig4LIQZNe6GQyzKBSyzxApvt1cP7gNENq1+Q11HiI2gbe5laLL38/J3Kbsg7Sw91lNUMHlAubiITvp8h7wOV0QMOaG5EAsrafYuF0vairI2MbqXIhlXX0XQNQLMX/XOyVNQlmFVXSIxfUCW5YUS7ArzFuqoiIeOmQOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760125594; c=relaxed/simple;
	bh=8B0TxVKymUNconocVqaGeavIGwY7T0t3daf3VX2qAXk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l7oKbHRavGKU+2d3/ElMixBNrlrGvSsffg/hjPdDf21WBxl3GAUXFA8BsAd7CIQQqVoatcjOX529gJlUeyJejBV484OcMsrtsQXH60zw9rh2CgR0wbkI0gY6C0lLZhVkqhvW5ZpTPCLrNNExfSjv9wgFqiaW37q8jl5gFfsQAM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EtsOKhaF; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-33082c95fd0so3104692a91.1
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760125592; x=1760730392; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J2hlRuh4XWPBhw9XhKqVrIvF45UiA/YFigu+0H9k6fc=;
        b=EtsOKhaF/VZhqf/Xt+MOS0/65DKEVJ9zYyZQFL1pq0/lfqw1SQbZqVxxoDoCOY1Kd/
         wqtl48L4xkumSgAd6R6nn4E6xv/XjlPvzM0rNFlXGj9GXL+Ar+bmGQrtGUWw8Vhck5XT
         dQfYTwWYrgWRKMyG3GoBl6habgp/HqPqdHxcTh1zzoXzZn7xaMXAgytSTVF0+aEsqdm3
         JMUHDJJaJLIpScAUJNGOfXmrT7iWeJfvKCgG8CuT1DniJMrdPkX/Gqa1yyuxaIz4D4tq
         CAdap3LA8YObH9ugImFLxxbSczDTcwZ47EsBfqIUS0Jx+cgrexdnj5E/y4o6nox/nqeo
         pNHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760125592; x=1760730392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J2hlRuh4XWPBhw9XhKqVrIvF45UiA/YFigu+0H9k6fc=;
        b=dlQGMDQYMQNRzKwNI9edrjO6DuowAk0NZzwnOQIkVqpJJ8gKRNC4B5Qcr3hJKBP0g+
         Ra6v7lfczdSHBvXe+xhFc6sGubAr0TYpzyo8K852ppXeusThS/factqqsgXeXWCBGgtI
         DrkyjF9GZAleGBDyx+33ZcPdf8Cqsh2fix1BBrlTMTnu/5F/RQCaXbHtDVLlnWE2VeYf
         Rqrp8wevWOHICQykDEnPd3vS6yYeYpjtXrYLepAGqAkm74xUVRWTo19F+zD1f0XJ4vD6
         ZgHPjpAOX1Sx/c6wxpphfZBD5MeMQNoMYzKwpKQeR5xv0GTIk8ZtCg3Y6s95qSj8uft8
         sc9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUkkyUUzLe+ACh6ZIIhgr/KNZxk2dyAvO7bUv6z3bbq65LwjDjNvPUJGL2ygxDyhwdFyjISD58QUm9m@vger.kernel.org
X-Gm-Message-State: AOJu0YwYMNS7ngTT2thWHasQsJhpPxEi4K8Etc/Er5/huYqNU/twUaXV
	HoyqVI75ti7f1IyW37UNCFmpRgRRFmAL87iXL8/mK27vu1GzmyqBDUYK
X-Gm-Gg: ASbGncvPK/iLeup/UonMdFbn+0Dh9uEOebJE/ilHCJ2DlKGeEs4MGGQte+jw5P1C3B3
	Sqb+uBq0W8MXhsigYMvvgsR7WGyiadsnVsAsPUJ7Zv5u7FJ4LKJd3rr2WrXkNMISO2lNQ3Xx3ED
	WhitP3OOtyVVddoDodwPOZ7kfNNhLN5BSRTJ3zU2AOlXoH/mc4L3NYaQxbehkS4YgdSGsNdHzdC
	BYMicDor2CaU9l8diX5cyimDSMAFb9J7g1YvbwQDApUR8jV5K2yl+3PFsDp7bBEMxDm/BJfiCM7
	mXm9nt6E8yaaG2z8T90H43KhPiUIWdcyhnAhukyj48sVeBugFsc8psI0nlOJeFSbpk1j+CzeN84
	K6vIkaluO1kHih7xlB9PbBaIf5GcWO8mjjIIttZwep6P/KwDxUUUMYyllwZ26bg/Ej+4s6/OlAP
	aGez8/Y6B6O/DNkzHdqzOzvry5P9yFa5Q=
X-Google-Smtp-Source: AGHT+IED75ZRA8aUNNWtEN0desHQoL9OpLop/JAYe/9l97lED+LZpw3Uwd0bVgno+BX9gPJUsMrjIA==
X-Received: by 2002:a17:90b:384c:b0:335:2823:3689 with SMTP id 98e67ed59e1d1-33b5114b63dmr17972054a91.4.1760125591793;
        Fri, 10 Oct 2025 12:46:31 -0700 (PDT)
Received: from ?IPV6:2804:14d:4c64:860f:5abf:20b2:7217:3f90? ([2804:14d:4c64:860f:5abf:20b2:7217:3f90])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b62645851sm3734705a91.9.2025.10.10.12.46.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 12:46:31 -0700 (PDT)
Message-ID: <935dbd93-2b20-45fb-a5b1-04f6ac67615e@gmail.com>
Date: Fri, 10 Oct 2025 16:46:26 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: usb: add yaml file for maxim,max3421
To: Krzysztof Kozlowski <krzk@kernel.org>, gregkh@linuxfoundation.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, davidm@egauge.net
Cc: ~lkcamp/patches@lists.sr.ht, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251009182046.185520-1-rodrigo.gobbi.7@gmail.com>
 <c65f8b8d-9ee9-4aea-8f27-66c9fe12401a@kernel.org>
Content-Language: en-US
From: Rodrigo Gobbi <rodrigo.gobbi.7@gmail.com>
In-Reply-To: <c65f8b8d-9ee9-4aea-8f27-66c9fe12401a@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/9/25 22:34, Krzysztof Kozlowski wrote:
> On 09/10/2025 03:15, Rodrigo Gobbi wrote:
>> Convert maxim,max3421.txt to yaml format with a few extra properties like
> 
> 
> Here and in subject, please do not use yaml at all. Look at other
> commits, this is supposed to be:
> 
> dt-bindings: usb: maxim,max3421: convert to DT schema
> 
> (and all other things like "file for" are redundant")
> 
>> maxim,vbus-en-pin, maxim,gpx-pin, reset pin and supplies. Also add a
> 
> Why new properties? You must explain not only the difference but WHY you
> are doing this.
> 
> WHY is the most important question/answer.

The reason was that the device (the IC) supports that. Is it
enough to justify? I mean, is a plausible answer in this case? If yes,
I agree that my commit msg was not right since I didn`t mention that.

> 
>> maxim,max3421e compatible with a fallback, since the actually PN is with
>> the 'e' suffix.
> 
> We don't add PNs usually, unless there is a need. So again, why?
> 

The PN of this is Maxim3421e, Maxim3421 without `e` doesn`t exists as far as I`ve
searched it. If it exists, it`s a different thing. In this case, I would expect that
the compatible string should be something that "matches" the device, but in this
case, the compatible string is without the 'e'. In that way, I was suggesting in this patch to
allow a more precisely compatible string to no break anyone using the original one. But if 
it was a bad idea here, I can drop that for sure.

>> +  spi-max-frequency:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
> 
> No, drop $ref. Do you see any binding like that? No, there is none.

I`ve a previous patch recently at [1], that added a "similar" thing of frequency:

+  sampling-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 2500000
+    maximum: 20000000
+    description:
+      Default sampling frequency of the ADC in Hz.

In that case, $ref and description were added. Why that case is different from this one here?
[1] https://lore.kernel.org/all/20250522204130.21604-1-rodrigo.gobbi.7@gmail.com/

> 
>> +
>> +  maxim,vbus-en-pin:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    description:
>> +      One of eight GPOUT pins to control external VBUS power and the polarity
>> +      of the active level. It's an array of GPIO number and the active level of it.
>> +    minItems: 2
>> +    maxItems: 2
>> +
>> +  maxim,gpx-pin:
> 
> I don't understand. There is no need for this property. Drop.

During my other reviews of new bindings, my final premise was that we should add every "capability" of
a device (the IC) regardless of the driver support. In this case, the maxim,gpx-pin, is an example of that,
the device supports that despite the driver support. I`m wondering here why we cannot add that here.

Tks and best regards.
Rodrigo.



