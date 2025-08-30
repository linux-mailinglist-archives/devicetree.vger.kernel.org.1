Return-Path: <devicetree+bounces-210799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0101BB3CD7C
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 18:50:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAD7E3AB967
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 16:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 419912D0C66;
	Sat, 30 Aug 2025 16:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="W+5l9BOJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0974F279DDA
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 16:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756572568; cv=none; b=OFg00iapQW0tUNAJ9jsNLwCMiXlQgy/zKBy5M9g/l7KrJK1/qRq55xQxAqh+BduUKoYQRYzk406xhbryEnlzJCoXwAKF+q6URBJS14U/CzOGZ8jO26DQ2BFsdlkppzSm2ZHbN/PMwqdfSHyWG6GZQ3+NIR3CNJaHywX5o5yR6FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756572568; c=relaxed/simple;
	bh=pqWpXbFcE609uQqR01kW7hm82CkHD8Rd6qNu7+Mm3Nk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MkK27SHVh00lQ8l8OSFj9fEy545At3Razd5rmAwjYETs7Mp8zDSXnM6nKx0eo2aA9y4iMG+rrCWGecxQqySQGIX7P+6vqCxA4/Mw3Dw7ZAdLt/SMXPaagEakgA7i7DLj0hmW2hUNnLMRPoUTpwkfv5W7hvy8MLamzb+wRS4rLSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=W+5l9BOJ; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-61d9db134d2so537323eaf.1
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 09:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756572564; x=1757177364; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kBuLfFgHrxPEkeUpMGG9r71kM7QEpK8DGwxPWbzpVPw=;
        b=W+5l9BOJLWKRqqTmUOR4rNzlvBovp7zGu6PRQUUi5FV/Dba2FYyWw9R/xZcTmVf1rL
         uKmxAKZvJySjz8MQxE1ZamSMSFQoQBEwSRKoBg2iYt1lt4ne3UrqTSOYIQMMFb45sAgV
         KMsZ9sfDbGCjEcM+dVJCm3+CV2UttIZIkXZYnnNgT/3sUAzZnek4U6NsqDNU0hVKSMBm
         fubS5lfufmh9tsYkDbGL7CipxmFHvr/QfD9OHxsrSq4G7bZZ6778UkUXPYd9wcvSRf7D
         8uq8da0L4vv2rZWZxe3AQGjrK6ZsW75X5ne5XpX/kVom97wfIwkG+e3rIRVMCGcxUNw4
         LrKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756572564; x=1757177364;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kBuLfFgHrxPEkeUpMGG9r71kM7QEpK8DGwxPWbzpVPw=;
        b=XujmjRgfL9HGzYjtgYuVQIx+2IStb+Z73+YqoIMY47cDe1Nk2H8pmo0fmD0HAoPQA5
         5G0INbeg25HdU6w2rIIyQi7XHVj+YomGdQ9UX0vcNhFzmmdhGwbtB+8WjjnDgXcfixy6
         j1268BQSpURndH2nOzD35fijhXl+FJ9MNdko/v9o4f2y5YTDsQvkP9k22NN2p8b+6Y7Y
         az8DHHvGYUzK0wRSD8r5x0ziQH2xFYrqYSBPKGMJJRl1EgVaON9Tq/9YO/VcC8S7jRM1
         XKn+LESfEoEdQZdpaCooOD9f/bujKWT6rbaF0VaedkOBWC/oAMmZXM6tmQvGjP8pyUZL
         /91w==
X-Forwarded-Encrypted: i=1; AJvYcCWhJim/PgY6IUEDAbUTJDDiLuZFCvXOPcp64ebZ2hQuQkOXH3uCuGZlghPTo0lP7dyxStWxdkcBOzEH@vger.kernel.org
X-Gm-Message-State: AOJu0YyqeXbmdA5nNPAyVHRPQhp/ElXJitj+NMzdwppOyliphtaPQnCU
	iZ2XYV/WpDSOvCd20NWtM2l9L9h+0yxHVPfGnE9JhYYexjJZWNtT5DrTSDPi/edeC6U=
X-Gm-Gg: ASbGncsw0yfiRb+1ch/CG4K7PYCfLz4h3LR3Q14L4MbIl4vuW30Op0GgxRPgIYaHqlt
	KJqLovxxXPnX6+D6KmA2/DpVWb3u6KBxz9ZcJPnOB3NexExVmKtfvfi2wzlMGDT0hASXpO+eScC
	ihOvS2Nn+H8mEo/VdG1Fl6fZjGyDv1XUVGdjNDXzqw1zXiHHLxKZ/c621/xEWXIImfhDa9uCW/I
	0QQNspzlzJWNj6m7G2QGxOiNt0iorQ22NqFLgIujt5Q02/8Lw3lWc/Qm1ugtZsYyWeGDLh4dXPZ
	51HtWlQXpEVV3Y8PLpmZPlxzfrFsnhNYK15WF7YMQeSemhSTnnRCHt14uH+NjrgF0wc8zRYt2eu
	h/F0YgqpoBdWcwxa7Tv8y6TLgpMhdHDy6Zz2t2CMtPTuZOrx9K77WGKs0SarJwU2069I16NRJYr
	U=
X-Google-Smtp-Source: AGHT+IFu2ryWAbQjLQmOFSwzl839yLjB1FcTVR4u+JiQkg49Vg88/OQH6BXsgfWPJMxa0TmaCtPuBw==
X-Received: by 2002:a05:6820:1acb:b0:61e:2be3:97b4 with SMTP id 006d021491bc7-61e335b8e70mr1078229eaf.2.1756572563897;
        Sat, 30 Aug 2025 09:49:23 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d? ([2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-61e357137d6sm160026eaf.4.2025.08.30.09.49.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Aug 2025 09:49:23 -0700 (PDT)
Message-ID: <34c23490-470d-45b1-a8a6-e9e1ee82f5c8@baylibre.com>
Date: Sat, 30 Aug 2025 11:49:21 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/15] Documentation: iio: ad4030: Add double PWM SPI
 offload doc
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org
Cc: jic23@kernel.org, Michael.Hennerich@analog.com, nuno.sa@analog.com,
 eblanc@baylibre.com, andy@kernel.org, corbet@lwn.net, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
 Jonathan.Cameron@huawei.com, andriy.shevchenko@linux.intel.com,
 ahaslam@baylibre.com, marcelo.schmitt1@gmail.com
References: <cover.1756511030.git.marcelo.schmitt@analog.com>
 <4425996699ceca9fa909bdad86b41abe8b25aad4.1756511030.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <4425996699ceca9fa909bdad86b41abe8b25aad4.1756511030.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/29/25 7:41 PM, Marcelo Schmitt wrote:
> Document double PWM setup SPI offload wiring schema.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
>  Documentation/iio/ad4030.rst | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/Documentation/iio/ad4030.rst b/Documentation/iio/ad4030.rst
> index b57424b650a8..dc3ac253ef66 100644
> --- a/Documentation/iio/ad4030.rst
> +++ b/Documentation/iio/ad4030.rst
> @@ -92,6 +92,35 @@ Interleaved mode
>  In this mode, both channels conversion results are bit interleaved one SDO line.
>  As such the wiring is the same as `One lane mode`_.
>  
> +SPI offload wiring
> +^^^^^^^^^^^^^^^^^^
> +
> +.. code-block::
> +
> +    +-------------+         +-------------+
> +    |         CNV |<-----+--| GPIO        |
> +    |             |      +--| PWM1        |

Would be more logical to swap the PWM numbers since CNV
is triggered first.

> +    |             |         |             |
> +    |             |      +--| PWM0        |
> +    |             |      |  +-------------+
> +    |             |      +->| TRIGGER     |
> +    |          CS |<--------| CS          |
> +    |             |         |             |
> +    |     ADC     |         |     SPI     |
> +    |             |         |             |
> +    |         SDI |<--------| SDO         |
> +    |         SDO |-------->| SDI         |
> +    |        SCLK |<--------| SCLK        |
> +    +-------------+         +-------------+
> +
> +In this mode, both the ``cnv-gpios`` and a ``pwms`` properties are required.
> +The ``pwms`` property specifies the PWM that is connected to the ADC CNV pin.
> +The SPI offload will have a ``trigger-sources`` property to indicate the SPI
> +offload (PWM) trigger source. The IIO device driver synchronizes the PWMs to do

suggest to add something like:

with an offset between the rising edge of PWM0 and PWM1 to delay the SPI
transfer until some time after the conversion. This requires a specialized
PWM controller that can provide such an offset.

> +ADC transfer zone 2 data capture.

What is "zone 2"?

> +
> +.. seealso:: `SPI offload support`_

There is no section that this links to. Add the section or delete this.

> +
>  SPI Clock mode
>  --------------
>  


