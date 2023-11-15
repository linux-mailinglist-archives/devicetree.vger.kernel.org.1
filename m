Return-Path: <devicetree+bounces-15989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8670D7EC671
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:56:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40C2C281439
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FB762FC40;
	Wed, 15 Nov 2023 14:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="F/Ku/FMz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97352EB05
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:56:11 +0000 (UTC)
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99CCFA9
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:56:09 -0800 (PST)
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-778a20df8c3so446290885a.3
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1700060169; x=1700664969; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LYw3fruZIKBrugWEfHGbBIIgQ3aQxIxn476R1I+MuSA=;
        b=F/Ku/FMzvXH05CX/SDINVFhQIQE8NsfK8ZoZ8QXhL1pRrqj54JaR3oRn8+kOrSrwpy
         yzTuB/awT3qg0C6nGz7swJE13pw8I22MyTDfQzRx6zLT5MI4XKlpbUxpXbOt6uIvDKs9
         GtNi8sq9DSrGo+yDmb9u5K968TFuP49JZ99ONI3z4bgbm6fCtu0uTZ9Adqs9p1JDn96y
         IK00NYtbgEudmKSLlWuLvvDEQ8eXUaGC6+vgKBamjvZBJQYch9JHuHZWSSk8yv86qzYA
         VOm/+vkews8wPOur+Ry3cmvcD/SEz2UxXb4P3XSfw4J9jvt+B5Cm8PtFllAFy4SgXq3o
         9vFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700060169; x=1700664969;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LYw3fruZIKBrugWEfHGbBIIgQ3aQxIxn476R1I+MuSA=;
        b=Gppz7EhhZd/wSRF9hu0M7qmDWWhIIgg2YT2O0slfZTS4nD4R/ZpZtPuw9+vy15a7up
         NxI8obzDlt/r9JQUpHbYtg8GSHn1mSS4z0RzbBY04MwrKURGpdJ0JEvTnKLjj6gsB9cm
         SlssXg2BpYQ+iGZMlOIW3vYbWHh5PjTUepsXFV/FUXMRDfPHAU5hA32NBbv9RJOfSj/+
         KVp5F++yU/VX+2VjSZ4q530NPgMfYp0yd/pJPZ8R1DaGCoFQoIdFrjEjO53bw4E+CLyw
         hkQ9SHcwAn1JI4shJ2iG4x2SWk5FaQAy47D/KHtB2t1xu6gFxihuJYqAG1qDKPt0yBHI
         YmIw==
X-Gm-Message-State: AOJu0YwETD7zDJFTRUxq6OOfQbT38cLMk1GWUF7BlE6k41VcxWweIUK4
	j3QWtnlQn2t1DCNmR0mXkPm+VL5SGW76Zloo9dc=
X-Google-Smtp-Source: AGHT+IEFDVpHtVlgAbPgy73wLGlEXNTNl5nwmSpyi2HRg/iYoL6oC5CTqnlesfwOxLkjsjcnzYKbBQ==
X-Received: by 2002:a05:620a:6185:b0:77a:2c0:eb27 with SMTP id or5-20020a05620a618500b0077a02c0eb27mr5878498qkn.74.1700060168693;
        Wed, 15 Nov 2023 06:56:08 -0800 (PST)
Received: from [172.25.81.170] ([12.186.190.1])
        by smtp.gmail.com with ESMTPSA id z10-20020a05620a260a00b0076f21383b6csm3509671qko.112.2023.11.15.06.56.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 06:56:08 -0800 (PST)
Message-ID: <80e28d77-4a0e-4827-91c0-951094176bbd@sifive.com>
Date: Wed, 15 Nov 2023 09:56:07 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: reset: Add binding for Sophgo CV1800B
 reset controller
Content-Language: en-US
To: Jisheng Zhang <jszhang@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Chao Wei <chao.wei@sophgo.com>,
 Chen Wang <unicorn_wang@outlook.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20231113005503.2423-1-jszhang@kernel.org>
 <20231113005503.2423-2-jszhang@kernel.org>
 <44f21244-5bf1-4e0f-80a9-6ec76d65eea4@linaro.org> <ZVTHMsXaPdHiuUOF@xhacker>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <ZVTHMsXaPdHiuUOF@xhacker>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2023-11-15 7:27 AM, Jisheng Zhang wrote:
> On Tue, Nov 14, 2023 at 10:12:35PM +0100, Krzysztof Kozlowski wrote:
>> On 13/11/2023 01:55, Jisheng Zhang wrote:
>> ...
>>
>>> diff --git a/include/dt-bindings/reset/sophgo,cv1800b-reset.h b/include/dt-bindings/reset/sophgo,cv1800b-reset.h
>>> new file mode 100644
>>> index 000000000000..28dda71369b4
>>> --- /dev/null
>>> +++ b/include/dt-bindings/reset/sophgo,cv1800b-reset.h
>>> @@ -0,0 +1,96 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 OR MIT */
>>> +/*
>>> + * Copyright (C) 2023 Sophgo Technology Inc. All rights reserved.
>>> + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
>>> + */
>>> +
>>> +#ifndef _DT_BINDINGS_CV1800B_RESET_H
>>> +#define _DT_BINDINGS_CV1800B_RESET_H
>>> +
>>> +/*				0-1	*/
>>> +#define RST_DDR			2
>>> +#define RST_H264C		3
>>> +#define RST_JPEG		4
>>> +#define RST_H265C		5
>>> +#define RST_VIPSYS		6
>>> +#define RST_TDMA		7
>>> +#define RST_TPU			8
>>> +#define RST_TPUSYS		9
>>> +/*				10	*/
>>
>> Why do you have empty IDs? IDs start at 0 and are incremented by 1.
> 
> there's 1:1 mapping between the ID and bit. Some bits are reserved, I.E
> no actions at all. Is "ID start at 0 and increment by 1" documented
> in some docs? From another side, I also notice some SoCs especially
> those which make use of reset-simple driver don't strictly follow
> this rule, for example, amlogic,meson-a1-reset.h and so on. What
> happened?
> 
> And I'd like to ask a question here before cooking 2nd version:
> if the HW programming logic is the same as reset-simple, but some
> or many bits are reserved, what's the can-be-accepted way to support
> the reset controller? Use reset-simple? Obviously if we want the
> "ID start at 0 and increment by 1" rule, then we have to write
> a custom driver which almost use the reset-simple but with a
> customized mapping.

There are two possible situations. Either the reset specifier maps directly to
something in the hardware, or you are inventing some brand new enumeration to
use as a specifier.

In the first situation, you do not need a header. We assume the user will look
to the SoC documentation if they want to know what the numbers mean. (You aren't
_creating_ an ABI, since the ABI is already defined by the hardware.)

In the second situation, since we are inventing something new, the numbers
should be contiguous. This is what Krzysztof's comment was about.

For this reset device, the numbers are hardware bit offsets, so you are in the
first situation. So I think the recommended solution here is to remove the
header entirely and use the bit numbers directly in the SoC devicetree.

It's still appropriate to use reset-simple. Adding some new mapping would make
things more complicated for no benefit.

Regards,
Samuel


