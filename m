Return-Path: <devicetree+bounces-13648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA44A7DF88C
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 18:17:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 643F2281BE1
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 17:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0575D1DFCC;
	Thu,  2 Nov 2023 17:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T0iPA5TP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D971C2A3;
	Thu,  2 Nov 2023 17:17:25 +0000 (UTC)
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4FA51AA;
	Thu,  2 Nov 2023 10:17:19 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5872b8323faso606502eaf.1;
        Thu, 02 Nov 2023 10:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698945439; x=1699550239; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Bz6cORpfcaZknt5DQZ6VFAnZ3LhhxkSJyahVAlUv9r8=;
        b=T0iPA5TPi5E1g07zwbBlD5LA6AG8av/PFgQlTs9M+Wv377YRCH4fnRoV4Y6BAxUEjs
         KpCbHipUHI4px/w0XMDudV5BI/aBDUVeRsRwU5t2Y5+VhlchdkJmZeKFqJDia0+OHYvu
         EjYIXViJfjZPxkW9JZ5hDrwng6Du3zL6XKpiQ5JfaB9ndu1Wm8BzYg0O7z79zl8Ec1sh
         ApamNeG2ZzEWbUx4ueKFvP7UPC5MZWq2epGR8alsFed1GGF+BzfWf8eIR0yuvCmcIJN+
         MVi/WbphuPw9gjpNHP5/WoJqV1l4qB7GdTVttqWcyALMnoUMLIr7//Jq7LqcBcWJ6P61
         c5fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698945439; x=1699550239;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bz6cORpfcaZknt5DQZ6VFAnZ3LhhxkSJyahVAlUv9r8=;
        b=sxoiFMo4r2m0agZCvpAmo8bIBQznC7S8EJUOzRnImFtc1emCgPlVCFopkV6LVuflIs
         M9CoDze5pdwolWUKlSkWzYJfjJvx/V/b+Y/xQX00BYhEpVf3/gIvh69JtSgUPnbydq/U
         uEBZEX2QcHlVRNVm72YK41Jhwd22TvI1BCzGmkM/Q79DOqJSwzTcSnssCggmGfRoIAHi
         o+gQhbKymPQoS8G7tBIEsBv+x32klK0VsI0Mj0o+uu3IdLhY0SAPt5RbiNGMiS9cI7/O
         2kOO+pf1mGoOnHFeTBjpOXXIR3wxw8NL7hRk7AQIgboxAKerdvz8x7NfvH0ClQNW/IvT
         xwlQ==
X-Gm-Message-State: AOJu0YyCHFC8bSBG+OjNxzQBiElmAEl1cZfusbw1f9Frnez0KIfqz99K
	kb0+Y7V1dSJB+JvQgAcM9B0=
X-Google-Smtp-Source: AGHT+IEpw9KQgMOGsRC2ld7m1ZsUmHX/LPSBCdB7p7A8jUIdZETnuV4z4GNgAuwZU30xqHhbA6fsJw==
X-Received: by 2002:a4a:b487:0:b0:581:ed12:98c6 with SMTP id b7-20020a4ab487000000b00581ed1298c6mr17861386ooo.4.1698945438789;
        Thu, 02 Nov 2023 10:17:18 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 127-20020a4a1d85000000b00584086d7bdfsm1069815oog.20.2023.11.02.10.17.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 10:17:17 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <e743bcaa-f17c-4a0f-bcb2-b38d02e802cb@roeck-us.net>
Date: Thu, 2 Nov 2023 10:17:15 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] rtc: max31335: add driver support
Content-Language: en-US
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
Cc: Alessandro Zummo <a.zummo@towertech.it>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jean Delvare <jdelvare@suse.com>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>
References: <20231101094835.51031-1-antoniu.miclaus@analog.com>
 <20231101094835.51031-2-antoniu.miclaus@analog.com>
 <202311012223422e3387b3@mail.local>
 <CY4PR03MB3399BAAA3A3F6FC4B9A7A9FB9BA6A@CY4PR03MB3399.namprd03.prod.outlook.com>
 <20231102165713296ca50b@mail.local>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <20231102165713296ca50b@mail.local>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/2/23 09:57, Alexandre Belloni wrote:
[ ... ]
>>>> +static int max31335_read_offset(struct device *dev, long *offset)
>>>> +{
>>>> +	struct max31335_data *max31335 = dev_get_drvdata(dev);
>>>> +	u32 value;
>>>> +	int ret;
>>>> +
>>>> +	ret = regmap_read(max31335->regmap, MAX31335_AGING_OFFSET,
>>> &value);
>>>> +	if (ret)
>>>> +		return ret;
>>>> +
>>>> +	*offset = value;
>>>
>>> This is super dubious, what is the unit of MAX31335_AGING_OFFSET ?
>>>
>>
>> There is not additional information on the AGING_OFFSET register (no
>> other offset registers).
>> I treated it as a raw value that user can write/read. Should I drop the
>> offset implementation?
>>
> 
> The value exposed to userspace is in parts per billion. If you can't do
> the conversion, then you have to drop it.
> 

The max31334 datasheet says "Resolution = 0.477ppm". Again, the datasheet for
max31335 is not public, so it is impossible to say what the resolution is
for that chip, but I would assume that it is documented.

Guenter


