Return-Path: <devicetree+bounces-188190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E4DAE30B6
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 18:14:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A1EBB7A55C2
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 16:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A50AC1F2C34;
	Sun, 22 Jun 2025 16:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2Cek2Rca"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1431EBA09
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 16:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750608867; cv=none; b=QumoxwGo3CSFaNeROOW90qPN62NrdaI/e2mB2vqdjdJxk8fCyQYJdiph+k6xYsXWvs6CYJhprOhCfiDHbD6QfU13Te5Z+oOziD7I8Nge6uLqkJuGKSEBo/xriHVzVelyHfKQ6T5HmdZBC4TKm+aFHBQXT2150cI+SmBpndKBvgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750608867; c=relaxed/simple;
	bh=E4rFypkPIrk7vg0K520K6GmgIY8PC6BjosDROkARYXk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dnHucos4/BvBYEPC5j/6FWFtFiBAmpYxVqwnhwTfN+99rvIvGm7sd/wc5y3nSdJooklErETUeOKjjLhzf/X+3Y3qbEYAGS5tzyLFrli0514Wh6cEBb0wMixinD56yc7DUvZQSe2eDptW+tVb9B3EtR0AbJj96dsR8P8d1HOYgbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2Cek2Rca; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-4066a0d0256so2239657b6e.3
        for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 09:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750608863; x=1751213663; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RT55BdTQMsSqQTGnDjBdNFy42bnLM9kJKWOx56hzQ1A=;
        b=2Cek2RcabWnqywSSBWimNtiF2CrvFqWJTQc1N8NFIlnfqjFoWRcrgZJQ3BlXwrIKeA
         4prNiMII4GBcXkyGdWiQ6vSd0GzFL5RbZuTJNkXuWa8VHVEzI7DO1e0v23+XN5YiBUNW
         VRezCx0d1fAJ2P0Dk9FSUDSeVbmcCFwqpRa5+zcrWTXR896C/hfxwxtQg1VFx7gIVbXA
         kXyIsEdyrA0G8N/cMrmschusgo+e8xs0hyYoRY3MmO1Y5uinSt4gyFlTkGZtmj0SGzp4
         gE8ONpq3cVXKsF4fCBKPNMMFOBTZr01+3hZR2DFtU7+ApgjcSmGeVbrNepSDzuIc6nNG
         +mdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750608863; x=1751213663;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RT55BdTQMsSqQTGnDjBdNFy42bnLM9kJKWOx56hzQ1A=;
        b=YVNzbAnoV6oyu9KxsCm+zUvNeJiOrjqq7WnmQyn/ANf1KftxhFiK0YhvEowuRz8gaq
         DkVsC5PUnCPsDnzGRpAAloEATy/1ZEZi7r+OI8vn7hrKjeVXRveWiyYtG9yKdEsreyc3
         7Lp82kWZnisuoERDBbaPzuTya3KaM+sapc2ZNBLSWVHF5VBKAyw61NhSff1YJIDwgDeU
         cVY6JCG092y+VZzPVKfcuCYeeOJJev1JaInuZ4/IQkisDhKBEnlGuuw2Sbmss3KyXBg4
         lp+N/ZdjTjE8xfsVFGYTwQ20KD4oV5Z6yBxjZQmndVDi9PAMbkmOXvVshV722laQNM3w
         6OKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIMe3PTHlZjn+k5VJFCp6+dXqWEU5t97owDiakm3Kk6UvbehZTkjHM/7sdpZV2zLs+qynmIlNGhovd@vger.kernel.org
X-Gm-Message-State: AOJu0YzSLpl/UpiXYzEbMcO1F8RHzv9rxaYPDRdf7PAHApx8qmgKoeGB
	6s8g5+IJ/nI9JNwfdGnHwFzQTjZoZdXtjLM/pwChQ5Go9Csopmsq3j49osaFGP2KY2o=
X-Gm-Gg: ASbGncuq6zKppl1/MkiTr+Ac/J7nHbnVUycdBegJPh/KNO4oUipTjMwFqUJuCzzshD7
	YDfE2yY7461F7YkTmGZ3g4YO1kn4EErXMr5WI2qzawvZ7jJFIYXYQogjK++Y+Lk7rNnvs4BzKgB
	WTfAn5IwYX+MLU9HNh8C+0szQwlqrrAlOjEzFU7cp8Lokj7o5fZPJrllBjMnuMC3Ix9uucIDfJC
	DG3uF/twonh0VvBbUtMMXPHHyBvrdzLC4XgdaztQ3EbIHWIgFNe8ujGGpOFR1DNgcJhqPhD/dDe
	/w9z5qMHiE9Qs/ZxfNBKxDBYhpjKmLloH1TzCLRI21bzfTmlLFGaCCb1hC3zF9FtbXFki2rBgut
	f78r+6xVG5+eM9852DSHxhg+hxTuB9GgBtE7y/FY=
X-Google-Smtp-Source: AGHT+IGsvJy3BWTWHSAyPkEPTBTxxziw2HN/QGBf2hFT6oQ7sBwQLlzrgTMkODdA9iou2mDpphfKRg==
X-Received: by 2002:a05:6808:1207:b0:406:6e31:18a1 with SMTP id 5614622812f47-40ac6eea095mr7296063b6e.2.1750608863396;
        Sun, 22 Jun 2025 09:14:23 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:a78a:24a9:21db:1532? ([2600:8803:e7e4:1d00:a78a:24a9:21db:1532])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40adc0842b6sm417298b6e.8.2025.06.22.09.14.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jun 2025 09:14:22 -0700 (PDT)
Message-ID: <fb7c3825-89d5-4ae2-a19f-c527b0b000b4@baylibre.com>
Date: Sun, 22 Jun 2025 11:14:20 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] iio: adc: ad_sigma_delta: add SPI offload support
To: Jonathan Cameron <jic23@kernel.org>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org
References: <20250620-iio-adc-ad7173-add-spi-offload-support-v1-0-0766f6297430@baylibre.com>
 <20250620-iio-adc-ad7173-add-spi-offload-support-v1-8-0766f6297430@baylibre.com>
 <20250622160054.31cc5103@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250622160054.31cc5103@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/22/25 10:00 AM, Jonathan Cameron wrote:
> On Fri, 20 Jun 2025 17:20:14 -0500
> David Lechner <dlechner@baylibre.com> wrote:
> 
>> Add SPI offload support to the ad_sigma_delta module.
>>

...

>> @@ -670,7 +700,8 @@ static irqreturn_t ad_sd_data_rdy_trig_poll(int irq, void *private)
>>  	if ((!sigma_delta->rdy_gpiod || gpiod_get_value(sigma_delta->rdy_gpiod)) &&
>>  	    ad_sd_disable_irq(sigma_delta)) {
>>  		complete(&sigma_delta->completion);
>> -		iio_trigger_poll(sigma_delta->trig);
>> +		if (sigma_delta->trig)
> 
> Is this defensive or can we actually get here with out a trigger?
> I would have thought in the offload case (so no trigger here) we'd not call this
> function at all.  Mind you, can't we get here with no trigger when doing
> a calibration or simple read normally?  

The difference is that with SPI offload, sigma_delta->trig is NULL
but without SPI offload, it is never NULL. iio_trigger_poll() doesn't
check for NULL and would crash with NULL pointer dereference.

During calibration and single conversion the poll function isn't
attached to the trigger, so I guess that is why it didn't really
hurt to call iio_trigger_poll() in that case.

> 
>> +			iio_trigger_poll(sigma_delta->trig);
>>  
>>  		return IRQ_HANDLED;
>>  	}
> 
> 


