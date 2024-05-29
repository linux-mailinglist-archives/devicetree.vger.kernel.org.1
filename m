Return-Path: <devicetree+bounces-70287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE958D3085
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:15:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C32A9B28EF6
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 669CB179970;
	Wed, 29 May 2024 08:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jyqzYE5g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2509A171E69
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716970000; cv=none; b=pumjoYO8yijNuyEOhgsM1WDCt8mNGdq9T5W7pB2NmDmFCEksC1gDd4WF7NnZkCmOSK/WgLr6eavk6ty6MxEwMdexwtq9qcCQeHHhV/fJPZ/zhiqPL00LnPZqOA8Wy9gUp7t9RTqf+I36zlDIIbbO103bAvKDwfho91HyqFAPMwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716970000; c=relaxed/simple;
	bh=KMlPyALNcmol9ih45kPl4G8oK06PC8+I1ZcxbqQgksk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZGRxuP8mVzcDzSlQn/eb+Nul/iJzR02OcOlm+sLbRZ26qm1z59fQRN/6zH1QuMVl+62gOCkwDhtRJbyIyFatElpycELYAfEwiNcTzQPjIGR4dePEL/1g0PGD6Mw3OyIAwXZXBolF1syMFfwlIFasRrj+S8/LmL9xjuWIeB4pKE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jyqzYE5g; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52b4fcbf078so166021e87.0
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 01:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716969996; x=1717574796; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RTSiUFlqkmvNoNz/S7kke8O9CZuW/PMI0ZvnUNNmSrw=;
        b=jyqzYE5gww42Yz4DxhZPJGl9ge2GiCEkrWohgCYApBgnPglM7282o2xeQsQ3ETTgiP
         RxNSfBIRNZg9kZfuUqNYtV02NMYHgSX0J4gmIn9ig9nx3Z3kbdYZ6deSQvzzTVj48fr1
         Vl2XqmmBdOed1i5PlgHZX4/JUWIvKd7RTuObUgSgv+4e1ekCgChWMKptOcpQSF98ufeI
         8DYYAzAj7vBBkr5WEqTtMK/f64NYz+eaU8wIHXQhr1CLmzW3UxfKjue2YtbAZYIxen70
         wUfGjMZrqa1FVY/9myHsapCFM2SILae/VV/ly38QspFmZjX0y6VAY0f37oheortT1SFd
         kXWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716969996; x=1717574796;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RTSiUFlqkmvNoNz/S7kke8O9CZuW/PMI0ZvnUNNmSrw=;
        b=V3NN1QgP6kvEL5LZvBOZheo5K84GugJEG+ho5hXJLWSgb/bmGNewEacG1ONU/kIqlO
         7LRn9VvuHfbCyQh446BAYvOaqkOIgxAWmccCWFswxYZshfu49kT/6dxhgSvkDS5o8uMu
         HQB1g1Z9IV5gB0l9XHbABxoU2u3RXdPBGHPEstnB4UFneYUtFb1u+5Iqbn868FdA4sGx
         U/zQud8qh2JoXrvJnElloC8Qnu28GhssKkTrOScMW26sbqeqqYcRZqfCwmWZMFn9i7PG
         L3zTlYricG7A1aj1aopSPX1GoTzWTY1Sa3mpb10y6p8UgrkZJojIAT+u0Nwbc6fKF80z
         pG+A==
X-Forwarded-Encrypted: i=1; AJvYcCVHBXc1Atv8YY2trF2I+TupnXr6efzIe26vqVKaBUOZySMH458N9jjokflBshvRv55lQZAPdMRbBzGqOj3+PWxPbb1CcVyQXkIw3g==
X-Gm-Message-State: AOJu0YxxHsB8eSz7/9nSAnP4VG5/12ldKWIrRCYBHP4NPPcOoaNHuLZw
	LC3A5kFiw1v5hkhQSJzFLGbaTFRaJFX1uYIaiBC7ncn8qjjfUGH79GOSS7H7214q2mznz0zzIA8
	CB0k=
X-Google-Smtp-Source: AGHT+IH/SwMX52gxKBB8D0lQdRpnYx4BvSNc36lN8ZNxmso71kU/Y0Tqv6DyKinhb/feekEPcZl6QQ==
X-Received: by 2002:ac2:4206:0:b0:528:5301:bae4 with SMTP id 2adb3069b0e04-52964ca7358mr9020474e87.35.1716969996000;
        Wed, 29 May 2024 01:06:36 -0700 (PDT)
Received: from [10.1.5.19] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f163a8sm201920345e9.13.2024.05.29.01.06.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 May 2024 01:06:35 -0700 (PDT)
Message-ID: <0b737c86-25bd-4bc6-b1c1-1011e15bccfa@baylibre.com>
Date: Wed, 29 May 2024 10:06:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] dt-bindings: thermal: Add a property to select the
 aggregation type
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, rafael@kernel.org,
 daniel.lezcano@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: rui.zhang@intel.com, lukasz.luba@arm.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240524143150.610949-1-abailon@baylibre.com>
 <20240524143150.610949-5-abailon@baylibre.com>
 <824a9871-1fd4-4b92-a3b5-e57a126dac53@linaro.org>
Content-Language: en-US
From: Alexandre Bailon <abailon@baylibre.com>
In-Reply-To: <824a9871-1fd4-4b92-a3b5-e57a126dac53@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/27/24 08:55, Krzysztof Kozlowski wrote:
> On 24/05/2024 16:31, Alexandre Bailon wrote:
>> This adds a new property named "aggregation" that could be used to
>> select the aggregation type when there are multiple sensors assigned
>> to a thermal zone.
>>
>> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
>> ---
>>   .../devicetree/bindings/thermal/thermal-zones.yaml        | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
>> index fa7a72e2ba44..e6e4b46773e3 100644
>> --- a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
>> +++ b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
>> @@ -111,6 +111,14 @@ patternProperties:
>>             coefficients are ordered and are matched with sensors by means of the
>>             sensor ID. Additional coefficients are interpreted as constant offset.
>>   
>> +      aggregation:
>> +        $ref: /schemas/types.yaml#/definitions/string
>> +        enum:
>> +          - avg
>> +          - max
>> +        description:
>> +          Aggregation type to use compute a temperature from multiple sensors.
> 
> Hm, why exactly this is a property of hardware? Why on one board you
> would like to average and on other use max? I can only think of a case
> that some sensors give inaccurate data. Otherwise it is OS policyIn the case of Mediatek SoC, we only need max temperature.
I am not really sure if there is really an use case for the average.
Maybe I should drop average if no-one has a use case for it.

Best Regards,
Alexandre
> 
> Best regards,
> Krzysztof
> 

