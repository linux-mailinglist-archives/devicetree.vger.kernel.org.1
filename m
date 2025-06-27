Return-Path: <devicetree+bounces-190604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C676AEC304
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 01:36:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71EAB4A6A8C
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 23:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F1D3290D8E;
	Fri, 27 Jun 2025 23:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hYANnAIu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F1321ABCB
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 23:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751067387; cv=none; b=DOOOEq207YWpXf9f5NTwxzYusuYg3ho4fyIaCpIk+lasWHhDhy3OgSNOYah6hUnunbkgVL/pj0nYL8r4qtFT3D90sfWV+PXiMCWY9oBq7rBXut75HckcZaotN8y6Ocw4+uR8vNpIWbfXlTbZy4i6H3AFj90ZRAnwi2cmoFGwXNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751067387; c=relaxed/simple;
	bh=ecxNgGLJ0ceg2mw32I8PwtVd+Bs6zCvgfvPYi442IWk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QrOpuiqg+fFCUrAjdRZymF88/ewRCOuoRqRfQkZ8SwMUbOEMn6yQ0JdzkUe/CwgjABzsU79titcKnW5IVtHkCuVpRqA5eI458u+OWxJDJheCfOqRmBDusf3nSypolCj/6wrbo2878i5kHzKMeiXjgIeoudPrhpA9VgLomd4xzbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hYANnAIu; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-2da3c572a0bso1495161fac.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751067384; x=1751672184; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KS5+5awS+3+wXbArsBYmZlO0Z0GYxJERA5jSGiTS01k=;
        b=hYANnAIu/ShF1cngobKyZ3e/Ql0pBBO2g6du8ulNviUq/sgS+uDkdRDYNiYj8IqZes
         mkvOtUXrfVKtd1o+PqTHdkAKy2HNz0JHWqezB7qmDiwFCK7Sg6ypcirW1DJVUz3envoM
         jLcIgqcPrIih6rbSmkQg/5jWGus1J6Ak2f2s3mC6YS5trLBhrccSCB9z2k/YKmut3kia
         Hr/oTsEXBS2Gouz2/g+yGlafrE/hAgRhNDqMeJiUPVxTieYb1j/7XLnMiA0lpmpSnflB
         5UUuijkv1Zr8GMVKw8WecsdvkrGtIh0LbioLkJnlgupqPPt/2+xf+gG8bSGzvoju93en
         ax+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751067384; x=1751672184;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KS5+5awS+3+wXbArsBYmZlO0Z0GYxJERA5jSGiTS01k=;
        b=hLGEfFd0EGdWTQqRN6rF+CSC0H0j1BzYRcviqrikfeGagR4+h21DoWr8TPlMu9BeW3
         DloXfu8BLk5Ao1h6Ncc1/GFr6XMjhaALOL3ycu/YfzRuduJgj7Jt7anADpHx3xywg6Qi
         S88rsptKp6iBRP07xrzFXIJQNrfqWTqNsjDzyt56lnZTI1Q63RuHvElathre91MT4L8C
         AJ93RSDkUSmIvxscAG+C5aB90Y4eQrBTOntY8L3tzXmqvBbbCM3Qu7VemMs1HOzg70ck
         X67h3I+mAhdKapr5AnkyU3yuy5bYYeecoYXQlI/J/nbEzliwIlrHwx/M7KK+spruDkjR
         hsBg==
X-Forwarded-Encrypted: i=1; AJvYcCVVrVkUKmpLBYHYAIPIhWhiZeR5sGa7fhcXAB9XUrBxFdDqhOSbNKfGNnfkR9m90tXvimEyFgbH1uFH@vger.kernel.org
X-Gm-Message-State: AOJu0YzF3tki5pc6oXnIW944HzDP6uQcn9RG6g+ip1lC0I4Y7QZXo9Mr
	tcaywzJQDtRGkD8NaRU8+L9Nb2ctUrI4W+a4w878yQEnZmZnp+Gn1gZmkqE01Y8y/9c=
X-Gm-Gg: ASbGncs1yJDLvFd6jtKwVFrT0dye0S319q72oZo758XYh4NdFU0ZAYObF0GP+k8/Ydp
	s9pL4LoqJbXSi0QBKnBfnyaurqsCtIGfHp1HG7sDX20BOLOES+Xs2+gx6JiV6RiDgTHslyZdXNa
	tRjMkwfhxO+MDoj8cdQYbyhjxXlThgLHCY9pQeTA0paKh2BtalVh2abpphADM+Moa3bqxbJkNti
	15BUxHj7zNQLVCFQJCkIcFLeYw04OgvijuZ+lrup3x8a5cF3ulDuHXh/3uwQ9ZLHGSIUmdsoFgx
	PI+e24w448fDzhl05DTWb3hSfWJVsLgO2WOg9bL+AoCp0HALRkTVWRaeSX4BJ1WFlHbLd57ED94
	kpmfdV7h2j+t4o1l1V7Zr7gHt8+S3DFX/clDQ
X-Google-Smtp-Source: AGHT+IEssFT0wZJYugWiw6Jgk1s5LByepHYNeiyjZJg6Qq+SSxEoPL/QLwyMcPPeh+MamQqKsKqBzg==
X-Received: by 2002:a05:6870:7905:b0:2ea:841f:773c with SMTP id 586e51a60fabf-2efed759ab7mr3742580fac.35.1751067384200;
        Fri, 27 Jun 2025 16:36:24 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:1715:453e:e133:7d6? ([2600:8803:e7e4:1d00:1715:453e:e133:7d6])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2efd4ef29absm1128704fac.14.2025.06.27.16.36.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 16:36:23 -0700 (PDT)
Message-ID: <c1ea7287-a1a8-4d77-97fd-f341d2412005@baylibre.com>
Date: Fri, 27 Jun 2025 18:36:21 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] iio: adc: ad_sigma_delta: use BITS_TO_BYTES() macro
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org
References: <20250620-iio-adc-ad7173-add-spi-offload-support-v1-0-0766f6297430@baylibre.com>
 <20250620-iio-adc-ad7173-add-spi-offload-support-v1-3-0766f6297430@baylibre.com>
 <aFj6Dv1kKFe9ijvr@smile.fi.intel.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aFj6Dv1kKFe9ijvr@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/23/25 1:54 AM, Andy Shevchenko wrote:
> On Fri, Jun 20, 2025 at 05:20:09PM -0500, David Lechner wrote:
>> Use the BITS_TO_BYTES() macro instead of dividing by 8 to convert bits
>> to bytes.
>>
>> This makes it more obvious what unit conversion is taking place.
>>
>> In once instance, we also avoid the temporary assignment to a variable
>> as it was confusing that reg_size was being used with two different
>> units (bits and bytes).
> 
> ...
> 
>> -	size = DIV_ROUND_UP(reset_length, 8);
>> +	size = BITS_TO_BYTES(reset_length);
>>  	buf = kcalloc(size, sizeof(*buf), GFP_KERNEL);
>>  	if (!buf)
>>  		return -ENOMEM;
> 
> Hmm... On the rough glance this sounds like some kind of bitmap
> and hence bitmap_zalloc() (and other bitmap APIs), but I am not
> sure.
> 

I looked at it, but I don't think it is worth changing. It is
really counting clock cycles, not bits.

