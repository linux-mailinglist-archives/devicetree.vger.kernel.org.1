Return-Path: <devicetree+bounces-116053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6E19B1B6F
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 02:05:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C48FB282315
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 00:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C8D1ECC;
	Sun, 27 Oct 2024 00:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LgHAYP1i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0877B383
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 00:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729987548; cv=none; b=Ios+/m2rH6CLzBRmGmBcZPg4yAinTrrTkF5tZxl4FN6ShXsE9ktgGfPptJX4vbfulLJ9Bmo6sIvW443+K19YG8eZ8L6TncIi25U3HK4IFq/l1sYqK8xV4AeY7FUvqtjSqnJ7Y7NLTNvg/mp3l6qEx2hOFOenhTT1XrG+jlHDdKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729987548; c=relaxed/simple;
	bh=rhNqL6LpWEWixs6iOXUkMmfhp2PA67MLc6HniPmlhP0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tSFrCXXK5LMqyBHhwEoSQ80S8mUjVAYaEr0c7Q8tlRtrvaxnybdXU0O9yzc7RDTkRmdh+y5cXlSgMY5jflzqnsRgSaQVn33iVZw1I5XMXt/0Ek8SI8hD7yAamekxnTzwelDHnS9W0yh+4lqaP8xOmcMEVOisp7/srWp+ybIG8hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LgHAYP1i; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-71808e95ae2so1725023a34.0
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 17:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729987546; x=1730592346; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vBo+UfmYoZrzMsNQGjuBCfg8tOJuRj5Gpe5nBXU7kng=;
        b=LgHAYP1iX/+TLP10vWgNzWpuo7XrxPAfODUgLn8QiLBWRqZfQyoV40qa7ooAe3+baG
         Ra9KDIMDJ90CPPDE2YCSULSucFiqjkk0owOm2C+1JIMIqZhvT1eqMKwS6Y7MFWmnaKeS
         diSKGzjV0gS8hjGsJB79V41YfE+FuS4Y2AW6536RuC2LeCf7Pbpi8m+iu6bdML8JImmm
         bZ0CqRgbcg1xiD3EasV8txklgseT+1SROiq13ckFza+U7iy2eAf5/s4uQXf+XZ4vUloL
         ZfPPX+q30izU9pfC9IiRf/9sphUXIyx25IiTbuhQUDb/0rprxBOGjcRcWWrZk/xI3M7w
         I9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729987546; x=1730592346;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vBo+UfmYoZrzMsNQGjuBCfg8tOJuRj5Gpe5nBXU7kng=;
        b=oUC7j3XVPCVv4V2qNxxdE7oGoOEvUSnt7Wk0vkZqCBz7p2SaJea51BYikIG2iiL4Ts
         Mw08vnj4C/vo+3YK5CkH9c5xlvR2A27H0KzcKCV+Uk874gBmU+9cfU/ez3+bRciM0FR0
         94pmfahJJGIyCCfYYgVmpYEtuMa0wRdIBlG85QKHEHGjSlapJq78/4T2U9K8tyAjlb76
         ChwSbHqZutz+JKcYMafwwuvLIUhq8QT5O31lkV2nCEhujL6v4uAT3DCjqcrlBR4ZE8I5
         5m1BdiX7UZ1DOyHYeohOuw23mP2tSUSyN8HulGs87E0a8GbCS44bl9/g++XdFwZcwmk5
         vKQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMFHX5yTR7SOcGAiOZnTkuq6NbJOj48t1C7VuhJmZq9YhMjI5+p3O0+gqnk514HErVVfwrovTmZTPG@vger.kernel.org
X-Gm-Message-State: AOJu0YyISqYLFgNAYCNYpEazlh4spy/SJNCzL9MaQQ7T8/EQhpLOrR19
	GpVstI5OrnwpybRjUDepCS9BVJ3ezOP30rblv0hKgSzeHOMIWH35Uck2wtKiE74=
X-Google-Smtp-Source: AGHT+IE+GC6LCWLQIl3WueQx+pYDMQMzcrUWE5ZDJ+B32lO2dzBpdBsOVz7+Dh/SfJSmobYphyJ0eQ==
X-Received: by 2002:a05:6830:6381:b0:718:823:cca8 with SMTP id 46e09a7af769-71858896259mr5651688a34.2.1729987546093;
        Sat, 26 Oct 2024 17:05:46 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71861506f3bsm933938a34.11.2024.10.26.17.05.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2024 17:05:44 -0700 (PDT)
Message-ID: <7700b27a-9ffc-474e-8390-a69428fe7607@baylibre.com>
Date: Sat, 26 Oct 2024 19:05:44 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 15/15] iio: adc: ad4695: Add support for SPI
 offload
To: Jonathan Cameron <jic23@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>,
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com>
 <20241023-dlech-mainline-spi-engine-offload-2-v4-15-f8125b99f5a1@baylibre.com>
 <20241026170038.4b629cff@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241026170038.4b629cff@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/26/24 11:00 AM, Jonathan Cameron wrote:
> On Wed, 23 Oct 2024 15:59:22 -0500
> David Lechner <dlechner@baylibre.com> wrote:
> 

...

>>  static int ad4695_write_raw(struct iio_dev *indio_dev,
>>  			    struct iio_chan_spec const *chan,
>>  			    int val, int val2, long mask)
>> @@ -779,6 +992,17 @@ static int ad4695_write_raw(struct iio_dev *indio_dev,
>>  			default:
>>  				return -EINVAL;
>>  			}
>> +		case IIO_CHAN_INFO_SAMP_FREQ: {
>> +			struct pwm_state state;
>> +
>> +			if (val <= 0)
>> +				return -EINVAL;
>> +
>> +			guard(mutex)(&st->cnv_pwm_lock);
>> +			pwm_get_state(st->cnv_pwm, &state);
> 
> What limits this to rates the ADC can cope with?
> 

Nothing at the moment. The "obvious" thing to do would
be to limit this to the max rate from the datasheet.

But that feels a little too strict to me since maybe the
PWM can't get exactly the max rate, but can get the max
rate + 1% or so. It seems like we should allow that too.
It's not like the ADC is going to not work if we go a
few Hz over the datasheet rating.

Maybe limit it to max + 10% or something like that?

