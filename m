Return-Path: <devicetree+bounces-53229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 313DC88BA7A
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 07:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D3E51F38586
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 06:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC6E73504;
	Tue, 26 Mar 2024 06:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oFZS9aUG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F9A8F66
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 06:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711434730; cv=none; b=RmHoBDoCpFjBH2d3E41NVLqWLg0xEcSr3qdbHMJX4ugbznawlwq3a9RihvEl054yiFOSBRMlVN0zAr9g68hUvpJ1fL5L7+CIhhx54yXNaXrPJa7/UFpoNd09nZuYmotvzfA6JhHQbYM8tDT7fCW6Mapz+wky1O/2ARRfVaquj3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711434730; c=relaxed/simple;
	bh=lUIAgy0rufA9zfI1/pKMKqKPwZ8Uq7LasK6dd1NQxbE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j8C5TkP10a1+JmnDaFitVHXmObWKAELAOIhiX824v/8DslwJlGW3salCwdtyai7JGsjLUTLHumXPhOY1ht9Ogxu8EmmE1zEnefDoVUxop82cR7IcQF0Y1/G4HWhkL+MKWsjnkAMnsQ1JnGO84yWleU+5E+7N3mtpXhc6LmLF6Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oFZS9aUG; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51381021af1so7763913e87.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 23:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711434727; x=1712039527; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NveLiMrbFvePfALmt6XX47/2qw2u9YrpgAMC6RHpHGg=;
        b=oFZS9aUGz0JKixkHwKGFKXSnrb8CJ8zRelhjfUqVM+7j45e2KzYlm5DjMT9Pkf9ydU
         QgZdYFv8VQjSX4P+aiBWoQxFv3AhxGoG55nELsvzzAlHMsiIQCoMQxvwx4+LyqxA9O20
         Vi1muP9rWjFTBWuYwi4zJENK0x1o9NvzBtrOKCkAtGr8TdWmMfxi1pVClgAvIqwDa0yu
         4M51+DW0Log97NfdwpwpJtzWP5s+W7srspq0SU1pfSYwGDgTJz0KrJpG/m4C3Dv1ZF72
         8Qg5BALUXcMJySVvQh6ub18/TirXemGInXyGRx8JsrPWrAZy0aieGAbbPEfTLB43VTe3
         PolA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711434727; x=1712039527;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NveLiMrbFvePfALmt6XX47/2qw2u9YrpgAMC6RHpHGg=;
        b=uB4Z3+DuZpvG+GlOLk/6QlPUh21cGriu0J5wxrqYKSzr9yd66bQzKoVU/QkLpEec8+
         Hy/IbtY4WgVIeOseiaQGT0VCNSqbhUlaBinrBuDYAUlTMztVLU99cEhZpoIRgLSJMA81
         PnXi17jd8FhregqE8pa+KRXYdq4k9QNyoLtlcEthtSj02OIFUDi111XLgoKF9RaPpGXf
         QJB5mjInbAsoA3wde1yb1b9RnL7YveK6iOPlZPCqv2Y9aknvSezucif6jDLLrewIt7Ek
         zxzHKOu3RpfPV7NKaToi4ieJqjUlkK386xyTptILtHJPcB6n/UeX7ehvh8mrnZ/aS5Bb
         eD8A==
X-Forwarded-Encrypted: i=1; AJvYcCXf8cI+TI8q1cdC0lwMXxOKhpE5A7PptB62l0H92ZgYUxY5UYLZErOGRC7e9MkmRLxJ4ogGRU1gEibbY4SEzbYqS7eVucEb+OTHdw==
X-Gm-Message-State: AOJu0Yz29R1XHrGjXoL+Raay8JWKu5/ZB8DHqZhF/QxjbnL57MmPmjBF
	9gCqs8VBGSew86dTskQ3PqaONKeMnqgo2uZT4NiNhhZVtZItcu3Z3Vd2/P8uCdg=
X-Google-Smtp-Source: AGHT+IHMNWnS3RxD6LvaJzwKOnobI52GiT24J1lIy/+ZVc10zCNLHDa7GejM4EHBIEo5OTxccvUxlw==
X-Received: by 2002:ac2:4d07:0:b0:513:db29:8905 with SMTP id r7-20020ac24d07000000b00513db298905mr6318463lfi.69.1711434727252;
        Mon, 25 Mar 2024 23:32:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id la2-20020a170907780200b00a4503a78dd5sm3879491ejc.17.2024.03.25.23.32.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 23:32:06 -0700 (PDT)
Message-ID: <5e310358-44b5-413a-a6c0-47dea4944362@linaro.org>
Date: Tue, 26 Mar 2024 07:32:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/2] mfd: rohm-bd71828: Add power off functionality
To: Andreas Kemnade <andreas@kemnade.info>
Cc: lee@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mazziesaccount@gmail.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev
References: <20240324201210.232301-1-andreas@kemnade.info>
 <20240324201210.232301-3-andreas@kemnade.info>
 <b5cc609a-b3c5-4994-bcd5-e25a43d33cff@linaro.org>
 <20240325212127.7583c845@aktux>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240325212127.7583c845@aktux>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/03/2024 21:21, Andreas Kemnade wrote:
> On Mon, 25 Mar 2024 13:13:13 +0100
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>> On 24/03/2024 21:12, Andreas Kemnade wrote:
>>>  	struct regmap_irq_chip_data *irq_data;
>>> @@ -542,7 +560,18 @@ static int bd71828_i2c_probe(struct i2c_client *i2c)
>>>  	ret = devm_mfd_add_devices(&i2c->dev, PLATFORM_DEVID_AUTO, mfd, cells,
>>>  				   NULL, 0, regmap_irq_get_domain(irq_data));
>>>  	if (ret)
>>> -		dev_err_probe(&i2c->dev, ret, "Failed to create subdevices\n");
>>> +		return	dev_err_probe(&i2c->dev, ret, "Failed to create subdevices\n");
>>> +
>>> +	if (of_device_is_system_power_controller(i2c->dev.of_node)) {
>>> +		if (!pm_power_off) {
>>> +			bd71828_dev = i2c;
>>> +			pm_power_off = bd71828_power_off;
>>> +			ret = devm_add_action_or_reset(&i2c->dev,
>>> +						       bd71828_remove_poweroff,
>>> +						       NULL);
>>> +		} else
>>> +			dev_warn(&i2c->dev, "Poweroff callback already assigned\n");  
>>
>> Missing {}
>>
>> Please run scripts/checkpatch.pl and fix reported warnings. Some
>> warnings can be ignored, but the code here looks like it needs a fix.
>> Feel free to get in touch if the warning is not clear.
>>
> No, it does not complain about the {}. I was a bit unsure whether it is
> required or not, but I was sure that checkpatch.pl does catch such things.
> Yes, documentation clearly says that braces are required in those cases.

"CHECK: braces {} should be used on all arms of this statement"

I will update my template-response to use --strict.


Best regards,
Krzysztof


