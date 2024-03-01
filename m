Return-Path: <devicetree+bounces-47627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5579486DF0B
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 11:14:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FACB1C214E9
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 10:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9BF76AF88;
	Fri,  1 Mar 2024 10:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gRLkuSIR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D316A8A4
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 10:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709288039; cv=none; b=rLZgiOlsJYQGPkht56MZmYkpJL92rd4fCieDx3cy3ITYYWRKyrlVIbtDfDMBKZK/FuGeUEcOH3sFjz+Q3Mgtj4k+CZjDuKxZAaETKT/m4NFlUlKI4GWwvr5yJO5p90dFj7VriKSiJg1wW8diSbb9LKRHxX+Yxwws+VIgIsulvZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709288039; c=relaxed/simple;
	bh=F3tVHDQ4yCFl+nmy9ofTwMigtZD2wn3lVGrcIEaO8FE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X5pMIave+5rlDSoKTARcDuY8P2/waKpdAiOEoYhOaz+pwyR1tSZhJ8eGEcn22YM453nQzVEKlhUCg4mdA6HlmObTKnqPvteHbeF5VVihErmg5As5VSYvjjomCtUSafte8I4wuXqpn+uepIV6MAM3N3uaQnz3PhaLVl3j2UNZXhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gRLkuSIR; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-565b434f90aso2965145a12.3
        for <devicetree@vger.kernel.org>; Fri, 01 Mar 2024 02:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709288036; x=1709892836; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ykXza2pzmOZHpzudtWcagjuhFwlGGt23s/8vuFNnCss=;
        b=gRLkuSIRQq00LqXBMCJ1BJ63AtV0SKnjnVSP9BQGI75qvvcoYuagMQMY4DQ1MBo2bv
         Ch+8XUx7igz3sLrFjRmhHWfRRozURii2E2FynbKlCnPApVuEHUXv9tDOxi1yKRdbe3JR
         9yhJONqdmwEdXT7ewM5d8yLLewAKmEpdReDLeI86MugB/Mpkw4jcUUT6pfM8oYaDbVFN
         NNJrWQ+jz9FWGocsx1qi/Z7hrx9HGDW8gHR8BY05kechOIyHDE5yaChBRyf5nNtBEtw6
         cJMyhy1Zrd8FkqtXlNHjcqhbe2R/2iwo/5hShD3y4X6wvB02XDLGh+EZq6LC7SLEe7pr
         ciDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709288036; x=1709892836;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ykXza2pzmOZHpzudtWcagjuhFwlGGt23s/8vuFNnCss=;
        b=uk3cw0KvD8r2qP4c3rBSknt/FsOb6PnsKXW1oEf5vVL3ULKkvzE0I93GkG0xsu+FAR
         EWm6ehOd0JBoLSIfTBqHSK3QhC/aqOmADrl6s+hCPZe0ODQZnN8Xx2IpLURocCVDaw8O
         VgreWHSml5kOFuStONdYuebRxAO54Gn+UVeRpwtaY/zU3oMNP8+klLH1pHQsKjiZmqBg
         UWGMcXAkstNWXLMrRe7rqqFkO7yfzavWQMj8X8gaPNtUOjmzZkkHSdnjwlnNq7EjUK/x
         2MHlAIBdqI/by8dLyPaPL8XNgQt2e5e4uxb5BNbcQ5DiAmO5yjzW1EDqPiIWRv/B9i+D
         20yA==
X-Forwarded-Encrypted: i=1; AJvYcCWEDtSBWPc4vvq3Q0Yon271Z2vYiv1Zn2Twx2QZPL6riRWHHiwaw1skKnUquU2xElXlFeqIkg0X+aU/U6ONSTxFPRt/eTGmE/B6fw==
X-Gm-Message-State: AOJu0YzlXKgDXflMqmbzaeixtdrgvaVLSQn1IXFhYKMZ3EWW9QTRyQ0i
	HJ0puA7JeWhs69ooQ+hllgyDEBOGy3ep1/8/WIfmPbG/12mQoBVzvo17tWEYoqQ=
X-Google-Smtp-Source: AGHT+IHVoZwr3ydbKwgzzPJHfpo8PG76Mo8+L0PZLPMTnudzW3e3Ex7FZduNXCPw/uNmEEK4MJ1f0w==
X-Received: by 2002:a05:6402:1053:b0:564:d715:1d67 with SMTP id e19-20020a056402105300b00564d7151d67mr915559edu.17.1709288036091;
        Fri, 01 Mar 2024 02:13:56 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id er8-20020a056402448800b00566d7e27dccsm307948edb.0.2024.03.01.02.13.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Mar 2024 02:13:55 -0800 (PST)
Message-ID: <f802a1e0-cedd-488a-a6fb-df793718d94b@linaro.org>
Date: Fri, 1 Mar 2024 11:13:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/11] dt-bindings: hwmon: lm75: use common hwmon
 schema
Content-Language: en-US
To: =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Guenter Roeck <linux@roeck-us.net>, Linus Walleij
 <linus.walleij@linaro.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, Jean Delvare
 <jdelvare@suse.com>, linux-hwmon@vger.kernel.org
References: <20240229-mbly-i2c-v2-0-b32ed18c098c@bootlin.com>
 <20240229-mbly-i2c-v2-2-b32ed18c098c@bootlin.com>
 <6749c8df-c545-4aca-bc18-4dfe9c9f15b0@linaro.org>
 <d78fd3ca-ed0b-40e5-8f8f-21db152a7402@roeck-us.net>
 <CZIBCBQ2IB0E.2N3HAVO0P2SHT@bootlin.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CZIBCBQ2IB0E.2N3HAVO0P2SHT@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 01/03/2024 10:41, Théo Lebrun wrote:
> Hello,
> 
> On Fri Mar 1, 2024 at 7:53 AM CET, Guenter Roeck wrote:
>> On 2/29/24 22:37, Krzysztof Kozlowski wrote:
>>> On 29/02/2024 19:10, Théo Lebrun wrote:
>>>> Reference common hwmon schema which has the generic "label" property,
>>>> parsed by Linux hwmon subsystem.
>>>>
>>>
>>> Please do not mix independent patchsets. You create unneeded
>>> dependencies blocking this patch. This patch depends on hwmon work, so
>>> it cannot go through different tree.
> 
> I had to pick between this or dtbs_check failing on my DTS that uses a
> label on temperature-sensor@48.

I don't see how is that relevant. You can organize your branches as you
wish, e.g. base one b4 branch on another and you will not have any warnings.

> 
>>> If you insist to combine independent patches, then at least clearly
>>> express merging strategy or dependency in patch changelog --- .
> 
> I do not know how such indirect conflicts are usually resolved. Hwmon
> can take it but MIPS might want to also take it to have valid DTS.
> 
> Any advice?

I don't see any conflict.


> 
>> For my part I have to say that I don't know what to do with it.
>> Rob's robot reported errors, so I won't apply it, and I don't
>> feel comfortable giving it an ack either because of those errors.
> 
> Can reproduce the error when patch "dt-bindings: hwmon: add common
> properties" is not applied. Cannot reproduce when patch is applied.
> Commit d590900b62f0 on hwmon-next. Cannot reproduce with hwmon-next as
> parent.

Yeah, but we see the error reported and it means something is missing.

Best regards,
Krzysztof


