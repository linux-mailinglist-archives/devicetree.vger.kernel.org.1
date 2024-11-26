Return-Path: <devicetree+bounces-124782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FD39D9DE7
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 20:14:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5851B24DA1
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 19:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A11A01DE3D9;
	Tue, 26 Nov 2024 19:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FLM5/8Cf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F301DE2AA
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 19:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732648387; cv=none; b=X83ze3Oeaa9s+Aq55nm3FMttVm91XWa6PEbPPgr7xvtEtE3bkWUXmElWbND8gX3VOGHAFzwbMWFeAXLOsm8cWivel4lVrZqr8CaLyYJvgNzufcch5ifkKMmc6dnE/doHF5OWoPnrZI+UUgv/Fuo0STrSUt+k+WsL+SNKlARw5iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732648387; c=relaxed/simple;
	bh=93BTRZse9FM9AQxxaE3QHX9HlG/LTHWLtygtkJIjM+Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HSlS9kitQJCkH6KVmlv58hEOY64Iz8EcZ9SAg1rridt+pTokECaO80VylgVd2fhQVRlmf66E+zN5rrErTg6Y6yaKMVAYpVE2xlph1WqYdhwjm8PvBjftcICh9ofgLkgMmt/QgMhPajDJqTOY39Cogu7gR8XQoLe9+7AkLjl3Gxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FLM5/8Cf; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-29692ad4b42so3449225fac.3
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 11:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732648383; x=1733253183; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hxuYSh97+uoLGUQ/ZGA65IHk5iK3MvMU7/ozJSLtfAA=;
        b=FLM5/8CfTrtCc61W6llOpXPPYhr4WpKMxUh1OzdcPB2uUbVswKz6320gdDvwFhUChR
         X6RRLTDNB/SXJRO4f5Z4JdTNs05eW3KvIEfQLk8Pvdi/yYM1PdEAAsHfA6BXTbpUTt+f
         IXBSa0yYzALPtlYVyOTdJR6izuxzwmwCtikZz7BiXcQZ/YMsdBO8aYYOT+EUHYizJvRY
         8+Kf6EbnKJuAPcbbVzGu0RMKubtGvnsPoI4ojyWYFISrsj6UDwGxn1q5YN4Odbkw4BNN
         WBCPo2mNs2OwXpclE7D7TiXBnCQuw9dY8WZMRTLjvzri1Hs0mf09kd1nv6NyTbVqzbLT
         HLtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732648383; x=1733253183;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hxuYSh97+uoLGUQ/ZGA65IHk5iK3MvMU7/ozJSLtfAA=;
        b=O/+a7Jf4Qjs9Kg80AFVliZBdzqR8EVwPdOsdqU5UCduyD5fqJracVNZjJi+zyE5Vrh
         9iDN3BctEo/+E1oBWAOdK0Hbe6dhLn8LgUn7EVgyvorvYgqF53xAIRL40Yf5+ue3VNGO
         RPuPQ751G2JHYW2szvrP09oBj2+GB9zoWyBBT48nuwxHUmAfgWKrkTFVJL4m7qdBNcQC
         uFA+BDVptwCCr1BOqhsf/n/1TTUvVx6UR9w3N0ztmRExgrIQCh8yYW1GdjSUIjXdaszc
         2DLdsJCk98bPzH7utmlhrZ7ccMEnjLKi+U1mf7ia5F5gTJRWaTyB9ZQ45nVxev+CWBYj
         sjEw==
X-Forwarded-Encrypted: i=1; AJvYcCV93oXKqo9+NrQ/SQINweP+8Re4P2V4i3pTEGVTYZjTFJ8vuVMOBaI+Z2MEWOQAKDoqByEzKU8kkkAj@vger.kernel.org
X-Gm-Message-State: AOJu0YzYJJ2KhT796npvsQJ3uDjBP0WmWBFUjUjpqppXKcdYzaqTFZyX
	wBsK/SyPZpRu5DTmEw9+nedEnhIybn/IGuQpeG8jVhhZfoGoYpSFCvCv2ssXonU=
X-Gm-Gg: ASbGncvLjGGdMtYvJlCjuDD8EhP/X09CY25jxmcqnUMYFH/eB/g1kS4jevxwRIUnw1R
	COYrM9sRBZts7MZD69+taN0myAznmzuOcxGRuIBParxXEEbO4s2AxE/Nd7qpnGGSLwSZ9yPdhlO
	7NbOV/efDJjlc0qkGqWh3VlgDKMXGoeeVp0ImMkal0j2HIN6M7r+lg401zjovL5NLqCdt71IToU
	FK07vLNsyHjlnQSpXm2VvCaJHfHy0/gM/DwC4euncEPE+5IlIqlHpLVyceYglLa9AfM9uagzHqF
	/G8z9e343sM=
X-Google-Smtp-Source: AGHT+IGvvs/3m9Kc79fYwVlDePn9MhTkwzH3DrsnbvsG44IRsBGPsXgVJ52HGlQjA8LWs57NwhZ5HQ==
X-Received: by 2002:a05:6870:1691:b0:296:de84:3ea with SMTP id 586e51a60fabf-29dc4308234mr121728fac.34.1732648383542;
        Tue, 26 Nov 2024 11:13:03 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2972288053bsm4061320fac.3.2024.11.26.11.13.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 11:13:02 -0800 (PST)
Message-ID: <69352c32-56fb-4bfe-aead-4126e144a1e6@baylibre.com>
Date: Tue, 26 Nov 2024 13:13:00 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] iio: adc: ad7606: Add support for writing registers
 when using backend
To: Jonathan Cameron <jic23@kernel.org>, Guillaume Stols <gstols@baylibre.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Nuno Sa <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, jstephan@baylibre.com, aardelean@baylibre.com,
 adureghello@baylibre.com
References: <20241121-ad7606_add_iio_backend_software_mode-v1-0-8a693a5e3fa9@baylibre.com>
 <20241121-ad7606_add_iio_backend_software_mode-v1-9-8a693a5e3fa9@baylibre.com>
 <20241126184851.5d28793e@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241126184851.5d28793e@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/26/24 12:48 PM, Jonathan Cameron wrote:
> On Thu, 21 Nov 2024 10:18:31 +0000
> Guillaume Stols <gstols@baylibre.com> wrote:
> 
>> Adds the logic for effectively enabling the software mode for the
>> iio-backend, i.e enabling the software mode channel configuration and
>> implementing the register writing functions.
>>
>> Signed-off-by: Guillaume Stols <gstols@baylibre.com>
> 
> A few comments inline, but basically looks fine to me.
> 
> Thanks,
> 
> Jonathan
> 
>> diff --git a/drivers/iio/adc/ad7606_par.c b/drivers/iio/adc/ad7606_par.c
>> index a25182a3daa7..0c1177f436f3 100644
>> --- a/drivers/iio/adc/ad7606_par.c
>> +++ b/drivers/iio/adc/ad7606_par.c
> 
>>  static int ad7606_bi_update_scan_mode(struct iio_dev *indio_dev, const unsigned long *scan_mask)
>>  {
>>  	struct ad7606_state *st = iio_priv(indio_dev);
>> @@ -70,7 +83,7 @@ static int ad7606_bi_setup_iio_backend(struct device *dev, struct iio_dev *indio
>>  	if (ret)
>>  		return ret;
>>  
>> -	ret = devm_iio_backend_enable(dev, st->back);
>> +	ret = devm_iio_backend_enable(st->dev, st->back);
> 
> Is that a different dev? That's not obvious...
> 
>>  	if (ret)
>>  		return ret;
>>  
>> @@ -86,9 +99,52 @@ static int ad7606_bi_setup_iio_backend(struct device *dev, struct iio_dev *indio
>>  	return 0;
>>  }
>>  
>> +static int ad7606_bi_reg_read(struct iio_dev *indio_dev, unsigned int addr)
>> +{
>> +	struct ad7606_state *st = iio_priv(indio_dev);
>> +	int val, ret;
>> +	struct ad7606_platform_data *pdata =  st->dev->platform_data;
>> +
>> +	iio_device_claim_direct_scoped(return -EBUSY, indio_dev) {
>> +		ret = pdata->bus_reg_read(st->back,
>> +					addr,
>> +					&val);
> 
> As below.
> 
>> +	}
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	return val;
>> +}
>> +
>> +static int ad7606_bi_reg_write(struct iio_dev *indio_dev,
>> +			       unsigned int addr,
>> +			       unsigned int val)
>> +{
>> +	struct ad7606_state *st = iio_priv(indio_dev);
>> +	struct ad7606_platform_data *pdata =  st->dev->platform_data;
>> +	int ret;
>> +
>> +	iio_device_claim_direct_scoped(return -EBUSY, indio_dev) {
> 
> Given David's if_not_cond_guard() should land shortly I'd prefer
> to use that going forwards for cases like this.

Well, Torvalds wasn't happy with the patch and suggested we should
give up on trying to do conditional guards altogether in cleanup.h.

[1]: https://lore.kernel.org/all/CAHk-=whn07tnDosPfn+UcAtWHBcLg=KqA16SHVv0GV4t8P1fHw@mail.gmail.com/

So I'm tempted to just revert the if_not_cond_guard() patch rather
than trying to fix it.

> 
>> +	ret = pdata->bus_reg_write(st->back,
>> +					addr,
>> +					val);
> Put parameters all on one line.
> + return here (which needs the new if_not_cond_guard() to avoid
> confusing the compiler).
> 
>> +	}
>> +	return ret;
>> +}


