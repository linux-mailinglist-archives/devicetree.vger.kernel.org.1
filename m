Return-Path: <devicetree+bounces-171109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FF3A9D409
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 23:17:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2EB6F3B82E7
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF19224888;
	Fri, 25 Apr 2025 21:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AwwVQTCP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9564221DBC
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 21:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745615786; cv=none; b=WwaLprJMpx1IljaK5NNeKBy9dnjcp5S0tnjHZ3H2HWoaI5p/d6PUzTPcopExtu0CTHdtHiJh8KipZutpAoGxScjW9iLZjAq08t187xypYIe1dAHTQRTKK89VGEfOHE6eMb0ldedomjTaiLk26oFYnkSTcmVVfLBMCD0LBPRoLLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745615786; c=relaxed/simple;
	bh=gfFhdTGxHbl/LD37YDzvdKH+lTSppcTv0j9nC41MXw8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t2k51vgxf1rASiWXFOyU5Vmb87fvgm8BBWGoSZnETOZTt71cRSnTFhUxNk7J/U8MtSiRQxpxKxMqhd8xPQQk0OhG2h3k92PxDSVQHE7M2ABLeZmDL/HNvtg9ptqY128AsNP3lq8Qsk77zc23fNAO+R4GE0U/AdyQsTdncemZ8s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AwwVQTCP; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2d4f8c42f49so2172131fac.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 14:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745615782; x=1746220582; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dTz9I5enTaJxLVBqLDZUEqU3il7OBimu59UQoHiVNMA=;
        b=AwwVQTCP2K9CKA4fyIHrFrdBnoSQuw+MGhcGYT6karBo24u81I/NgHboYE4KWjBdQZ
         2jQ355Uf85ipswqalfYQOcnB16PMRY6/0n7RE6yggkwGwkWUYKylHYzst8PqwPW7gYLa
         LuCp1pVUCBENWqDqqZli/UnyZCr9rgILrG8I70DDHpcgV6uawgL5yOTmD9eOvdN6+LUC
         x6v7v/W1/OTZ5h5Op2bhbChw+s938Q4jp6xsXc4xotwC0QZ0FETfq/4faR2AkUYg8GrO
         iIraHhbsryGCdQU9NCNKo635EYhf7DzZ4ruUihysiBC2+a/89G2X+9D7yPNc2E3UkAFo
         e/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745615782; x=1746220582;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dTz9I5enTaJxLVBqLDZUEqU3il7OBimu59UQoHiVNMA=;
        b=dvAkmlkkyGjFLHnOpCB28g9yWthSuUAXJ8VtW8/sRPP8Yl7aepdF1cPPQ2wjnNgMpB
         BPdXaA5+VNiaYOgp9JqFzFtkKP9qIdoTHryE6MyhXjzSdB6+8clxem/A9XFu6l7dVWxi
         wG6bilK+UqzgnK7c2nuJoPlwTc99pAQVqZbtqAeRldiElY2gPuw0lBSVeZ7fMRKxhI4k
         20EB7GxbYzlfrTC0YAikNwuBnG2L2M5lTFDSeCcFfvEMrMQbB/uSfsBhS8RCxBRFcbXY
         zjN1W34SaP8c18E7cn0rSI4wznpwuCvGhX/C2Ky4kIIVHYrlTfGkCHO+8tGi01/M/YW/
         JH0w==
X-Forwarded-Encrypted: i=1; AJvYcCVj7A5zU56ILAJ3QzC9f1qbL0nDS++9PPeNHddtFXS/p6K42yo61dEYB6hzruyWsK0yDfQXVnJA53nP@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp25/EDaEm3cpoa/PitNwvJONSF/9skpf6mGTCD8iR0m5++gFQ
	VSXFk/4AelsvPsixsH5M7RreNLHOBGPlW6ZMM4PLAS4Zbg/KNxyNGrOrQaIzFjIUiXwpxXv9oJN
	q
X-Gm-Gg: ASbGncumbBCRhwmLUTnJJpTF3Jz8xyKK7+C5sKnt/CnlNhMkSZq+lI+J+159ufdEDWk
	4YjGgOiEEVv8zX/esnSEAYu11L0Qx/xAgprzPi2XriKzbKHAs8KPg8w6CWm1LIUgBqgaUxDYeGW
	n+a/Q5sgB/prBdQxxQH4WXWIcstuIwEgxiJDCvQl/Cw4SPbYYVc8PIEDsqUq84J/XxUs7sBhKae
	j78CU4QpHGpYCyL/jIry3N54qbQTVAITY+Tcyp0vXwUAy2N75Zo8gdrpqLEI45u2FUOeJeZaAwu
	0D5aakEvZPysY57Ah6xfBoZbcoVrZA7BFL2iLq/cj9zgzJ4XgOWq4R+jubpoCX1D2FewKr5kiFw
	pgr8+Z0F+RTZ7
X-Google-Smtp-Source: AGHT+IFP6Q8OseGcSbnqWqVTrZCG0R7+HN99jIze+0SssGMO+saUY5k74kZJ24hu1RttCmiKMZvjBQ==
X-Received: by 2002:a05:6870:611e:b0:2d4:e8ce:7bcc with SMTP id 586e51a60fabf-2d97317915cmr4604390fac.8.1745615781776;
        Fri, 25 Apr 2025 14:16:21 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:96a3:e28:3f6:dbac? ([2600:8803:e7e4:1d00:96a3:e28:3f6:dbac])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7304f37b12fsm848940a34.43.2025.04.25.14.16.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 14:16:21 -0700 (PDT)
Message-ID: <143ffe9b-b32e-41ea-b5c7-855c680b48d4@baylibre.com>
Date: Fri, 25 Apr 2025 16:16:20 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] Documentation: ABI: add oversampling frequency in
 sysfs-bus-iio
To: Jorge Marques <jorge.marques@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-pwm@vger.kernel.org
References: <20250422-iio-driver-ad4052-v2-0-638af47e9eb3@analog.com>
 <20250422-iio-driver-ad4052-v2-1-638af47e9eb3@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250422-iio-driver-ad4052-v2-1-638af47e9eb3@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/22/25 6:34 AM, Jorge Marques wrote:

...

> Devices with this feature are max1363, ad7606, ad799x, and ad4052.
> The max1363 driver included the events/sampling_frequency in
> commit 168c9d95a940 ("iio:adc:max1363 move from staging.")
> and ad799x in
> commit ba1d79613df3 ("staging:iio:ad799x: Use event spec for threshold
> hysteresis")
> but went undocumented so far.

It looks like this part was copied from a different commit and isn't related
to this one.

> 
> Signed-off-by: Jorge Marques <jorge.marques@analog.com>
> ---
>  Documentation/ABI/testing/sysfs-bus-iio | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
> index 33c09c4ac60a4feec82308461643134f5ba84b66..129061befb21b82a51142a01a94d96fcf1b60072 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio
> @@ -139,6 +139,23 @@ Contact:	linux-iio@vger.kernel.org
>  Description:
>  		Hardware dependent values supported by the oversampling filter.
>  
> +What:		/sys/bus/iio/devices/iio:deviceX/oversampling_frequency
> +KernelVersion:	6.15
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Some devices have internal clocks for oversampling.
> +		Sets the resulting frequency in Hz to trigger a conversion used by
> +		the oversampling filter.
> +		If the device has a fixed internal clock or is computed based on
> +		the sampling frequency parameter, the parameter is read only.

Don't need a newline after every period.

> +
> +What:		/sys/bus/iio/devices/iio:deviceX/oversampling_frequency_available
> +KernelVersion:	6.15
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Hardware dependent values supported by the oversampling
> +		frequency.

		oversampling_frequency attribute.

> +
>  What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_raw
>  What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_supply_raw
>  What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_i_raw
> 


