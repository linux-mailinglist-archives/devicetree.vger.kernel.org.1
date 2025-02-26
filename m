Return-Path: <devicetree+bounces-151749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCB8A46DD8
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 22:46:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65FAD3AA109
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 21:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5916260A2E;
	Wed, 26 Feb 2025 21:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qQJKFzsB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46D625E47B
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 21:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740606389; cv=none; b=U3nN7n3kehn4rcJRJBxqP9042OFAQ45NHL6f22yYljylP48AGbZZIwzrTQb15QkXCvr8pWPwE2VlQVFUKYKaYiA0AB24xIKiCeei9a9ak6jHU+GbkOc7ww2/402b7dACbCAXH8dX4SuS/4UGKnx4xT8iHlysHV+TJKT7bZDJumA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740606389; c=relaxed/simple;
	bh=ThhmSY4jBoAA9rtbe8PZn8mnnG6PPQqSANknf1zTY5U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=geWs2kqWq7zA/3ttyYP5mfwLN6fgYjeU3KCQJGTJqzBbKe+6J8fRy9BYXQhO5sgvMKZMmZuUp3kipjnRsY9+NT9l3ahUa0QFBScyG49YYy+o1OOtwbe9nrqDM4Zy0J0HbIM/vG5nI1bS4JhnhzbU+W0ktsVF8O3TI1sOwRGicAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qQJKFzsB; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-439a7d9a87bso347505e9.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 13:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740606386; x=1741211186; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=YFbakQilfrCFdJzAsEkSswfsOnqR/LYLZZiUe3xWbCI=;
        b=qQJKFzsBm7rjcJZxCasCpW8J0NTG8JYt+fYUs1y2l0hC+COhFjmXz/FDL+8WNdLQDm
         R4K7sgIAZxzuju7c0Sr7SJJNQ1hl8nWxbNUfcUq0xS+Sw/uXW7rl6GhfLZ4+R7WYDuc/
         xubKzb6R7G2jZVrgoPunwmSDZv2IyEN9uHDkjpqwGGSClC6zBBBTX99pquLhWLaX5vkZ
         F5BSSfGEB8Y3OLsnpJl+mTo2VkHg60mFrevFBPrCwSSDBcH0XeYJVYcT4kJuI0x8O3O+
         Wk3bWJGbWm5M6t0av5hiU7MGOG75KAIylwdmwlSv94WcpqAZVTp6bknGDUrCwKl4AS9j
         cyXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740606386; x=1741211186;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YFbakQilfrCFdJzAsEkSswfsOnqR/LYLZZiUe3xWbCI=;
        b=HX1s9dD2tEuykkCf4EC0XGi9T6hxiiY1AZU5NT63uL4/zXog5+7dIrTsmRWOt37rqi
         5HgywCCW0aIx0QBVxuQSIhiUJkunAaNYxC1k0ny4CBQd83c8kohUicVXK5z4N88zoaKk
         o6o1SJPdPucERv+WuXaHLnM0QXm4v45KFrt/nWAW7N2m4+XzSlDNzHPCBnp9F6bFaPLi
         LJRym8P69EB+kZKsVYDuW9NFLcrhLmXJe9eyQn2aKQC64sseq4ttg7SI6eTpCABn/1zC
         fjVVW2JD9aDJIkjuUG8Vf5lco0wfRt7j4yoCPbY2QWOnDY3ldH4jsnvAtz91s980HWtW
         EyGw==
X-Forwarded-Encrypted: i=1; AJvYcCU8lc7jBEhoEYldpP8/FcYDrM3pZdkz9LUh1DY1QkcmGGE0rs5lWAWO5Bm61nPqIuwovdBWOgpZMzUT@vger.kernel.org
X-Gm-Message-State: AOJu0YxKWaJNWs5yYbKm0soYXfvXFPXuOfKSSKyqPJFmVdpjyjiVd6CJ
	WJUK/P5tU2KydnGBwvR4/e/AQ7+UxF6Fac/AerrEBIPk8nEA8STG8k9LVj4cS9c=
X-Gm-Gg: ASbGncvEYPQJlkP4tomPTPfiLboE4ehg7rGRWUcQoIli9oOE5TCPOLM2b8AMryRbaP0
	1OWkbvg7ZKxkMjHmxnLrwzZv7gK/sUpgBRCYuzjmcyMqHD44u/hSR9SVi/tJ/MV4MlxQbo5I2/c
	cUkEKbSiWCr0SZLoXyJkqhj0C4JAbBKrM7D/IoTGwPoKTm849fE2IooDAWAeLLHuW3AVDTm1BdH
	icG2Ze9tjUtET3qcxtzwnVrvMM7OKeUi2xQneg71YVTkNVg/eYtRoXzplJWfU7gPXsw/sJC7zjt
	O2BIgFueb19GvcZU9XLzDrIA3nn2Whq1Sdq3J543Crf7Yg==
X-Google-Smtp-Source: AGHT+IEtK1mvKfE+Jrb2eiE9/ZRmv/XDdzfXvcs10OfwXomz3dm8J+yPkFC2Jsa9R+dhNmzu86YwxA==
X-Received: by 2002:a05:600c:4f02:b0:439:930a:589b with SMTP id 5b1f17b1804b1-439ae21e0fdmr78223425e9.3.1740606386090;
        Wed, 26 Feb 2025 13:46:26 -0800 (PST)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba5329besm33666575e9.15.2025.02.26.13.46.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 13:46:25 -0800 (PST)
Message-ID: <455e8796-bf53-40d2-b3dc-13f583af0865@linaro.org>
Date: Wed, 26 Feb 2025 22:46:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] docs: process: maintainer-soc-clean-dts: linux-next
 is decisive
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Jonathan Corbet <corbet@lwn.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 soc@lists.linux.dev, workflows@vger.kernel.org, linux-doc@vger.kernel.org
References: <20250225184822.213296-1-krzysztof.kozlowski@linaro.org>
 <20250225184822.213296-2-krzysztof.kozlowski@linaro.org>
 <20250226152910.GA2447540-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250226152910.GA2447540-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/02/2025 16:29, Rob Herring wrote:
> On Tue, Feb 25, 2025 at 07:48:22PM +0100, Krzysztof Kozlowski wrote:
>> Devicetree bindings patches go usually via driver subsystem tree, so
>> obviously testing only SoC branches would result in new dtbs_check
>> warnings.  Mention that linux-next branch is decisice for zero-warnings
>> rule.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  Documentation/process/maintainer-soc-clean-dts.rst | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/process/maintainer-soc-clean-dts.rst b/Documentation/process/maintainer-soc-clean-dts.rst
>> index 1b32430d0cfc..5423fb7d6047 100644
>> --- a/Documentation/process/maintainer-soc-clean-dts.rst
>> +++ b/Documentation/process/maintainer-soc-clean-dts.rst
>> @@ -17,8 +17,9 @@ Strict DTS DT Schema and dtc Compliance
>>  No changes to the SoC platform Devicetree sources (DTS files) should introduce
>>  new ``make dtbs_check W=1`` warnings.  Warnings in a new board DTS, which are
>>  results of issues in an included DTSI file, are considered existing, not new
>> -warnings.  The platform maintainers have automation in place which should point
>> -out any new warnings.
>> +warnings.  For series split between different trees (DT bindings go via driver
>> +subsystem tree), warnings on linux-next are decisive.  The platform maintainers
>> +have automation in place which should point out any new warnings.
> 
> I see a lot of warnings due to dependencies (both bindings and other dts 
> changes) not be applied yet (or applied but not in linux-next). I've 
> been filtering those out, but maybe they're useful? Some are things like 
> missing labels, so dtc fails. I think that gets run enough a failure 
> report on it isn't too useful.
Maintainer-soc-clean-dts is an opt-in and so far only two guys in kernel
opted-in: for Arm/Arm64 one Samsung dude and for other archs only the
Risc-v guy.

Total coincidence is that these two do the DT bindings reviews...

I would say most of such warnings are very useful, just the question is
how much of false positives you have. For example LKP (Kernel test
robot) was sending reports on maintainer branches, but that had too many
false reports due to missing bindings going via different tree, e.g.
driver subsystem tree.

Best regards,
Krzysztof

