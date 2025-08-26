Return-Path: <devicetree+bounces-209398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C832AB36D88
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 17:19:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D413018979DD
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 15:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20EE426CE2D;
	Tue, 26 Aug 2025 15:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="k44vpu9O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754B8265CB3
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 15:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756221442; cv=none; b=MrhkdS2tYzdolphnDXfeskLlKuUUL4USohqZHZFG/vhV3cOejtQjW8qH5n/4spFPghfPJd8hthICZxEAEIrD+Xj2ZR78ZI/AhcEnoEpR83rpYA+wDZjJLrkXnvtT35GwwECoaxoJ1tiCcqyr94Z0LcNIMHh+RBDM8k+DYd62Y38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756221442; c=relaxed/simple;
	bh=/t5/2CPyPn9o74VgbH9n0A/kTH3YcpV/p0nXJfE3AhM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gctPKNINC90jf/1uEburwNCnjHmHQETWx+gC9zisNoJ18lBXaOwppIYCZ0DFtqD1JFxRPFnjT74fMvBBn2/BHbY4CEw85piLMs/gMpOwwikuLxP94UsX2TwqJPwcyd4Z4h8ZyTcGCkGjK5KRJGOpLbk9L3wNqQV8T/tL0SkmYNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=k44vpu9O; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-61d99c87e35so1900288eaf.2
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 08:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756221438; x=1756826238; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PIxs7n+ObMkT2exzwYyVBr1bdO4Qn50p94uuAm4mbWQ=;
        b=k44vpu9OrrLFMdZOf6lX9lK33IhlVwii0xYtJI+W6cLSh9gGM4eEG8Lhuqc4eGhoOG
         8MTanivoZbPn2TlAaQuk3vYbi2u5ClhHOYvs5zgpmq2zDFMUQOZZM5qOvoBrrcXec6ru
         KMmZoB0NMlMTB6RJgs8K/267m/QnQSGr38m+hnux9EkAaAvLk/C53F/aJ3MWZfwWBNNJ
         2s1m+RaXo921kGsqlOC4CFoUnXKni5kBhsfL4urLQc4YA9THMORMt/PFoY1gnub3jQ5q
         sAR3KOKz9+L/v7A/7sSBZlYfrC1T/e5fjuzCjUe57JZ3BmmgsDZlarD1wtPxR7tyuLkG
         Z0Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756221438; x=1756826238;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PIxs7n+ObMkT2exzwYyVBr1bdO4Qn50p94uuAm4mbWQ=;
        b=bQLGNhXfPnnomQ9OJAG/lcWdEgTTeadFMeQ0B3LjI+KMBgt5Med/jichpd60fGxmRC
         Bpc9+SGtFFU2Gkow+CJczpt7I3W0ndqXIwi/gPD30YdEOMPZ3h4HVCdYPCOXf7MsGkgK
         dslTY3QXVH8z2CMQf34PkPUtGGPzgE2D1SNwNyKFkC8hIq+1aSKvbpPrMXhitqFlMvkQ
         TBpILcXIymCvPS7wgY5c6cI3rBEmDgVR38RSJQJ56eBq3m3FU9UfwinIQLbHsqH25Thb
         xRxCJzVPZs3m5fiuL7O8vI/LqmdSCwLcKkLcPZPY6cbiYWD7U242vTcEsU+8hlfu3egK
         uyrA==
X-Forwarded-Encrypted: i=1; AJvYcCXPOI5oJulRNUCbWvPYVWcagB22CeH+ovvlLS4fJtpBKv48I64/VovuN0npt3Ra8CZFxd+H65MHPxVL@vger.kernel.org
X-Gm-Message-State: AOJu0YxbpyqGr9zfI8t1bNsCQmTcOaBZC9IufOtBlpGx1Sqs1+HDgztX
	gjzIAhT+dxR+tAcaSxFRQ+2WIqpwW9m7By9XmVLbcB/FCqcpKicSLdnWjkjFwJs39lc=
X-Gm-Gg: ASbGnct0z+qP+//ajLrbwV9wv6alC2yX1soXO0PbuLH6MSEm4719pbDXiua9oazLOMz
	dfHetNdONQzYJfVSUVa0bV/C0IpJmECjcXH9r25vHMCDK51vdupmA4SHhCtgs5jwZp5VcpMGrYa
	NfHbRhSgz81CqNiq8tgmCKEMOwK8GPG6Sk8jdYbmKY167SHNmEDXf+G3pqSnHS8vUozUKSbs6Vj
	a8Zv57IZaw29qA4AFZlnxGowpgvk0xfDLyeJujfsut9XYpTuTBG5FtNZ+eYbOFNq6T1M1RKkvRQ
	3tKMfT0lzRPGNOwiCMeJYKNsnQFWZhwmhRGMduwxZyIx/H1X8A+6G9Epiv3BolAdjO6CO/ZV54o
	COFf+jvppKCNzOHpZ0srQuZ7pcmnwHz1kvWH/d4WqP1cFBrZoxQSa6NKzJ/pVDGkuj4WR0WV5jG
	A=
X-Google-Smtp-Source: AGHT+IHWe648hfWj8bonLMzPtFtFzwlK5tipvqTWGRoiHcKfZbEYoi0qYigzeXZty1AdcPHWdzx37A==
X-Received: by 2002:a05:6808:2189:b0:437:7577:d458 with SMTP id 5614622812f47-437852880d1mr9248911b6e.44.1756221438463;
        Tue, 26 Aug 2025 08:17:18 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:aa9f:f4cd:76b1:fecb? ([2600:8803:e7e4:1d00:aa9f:f4cd:76b1:fecb])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-437968f6394sm1522294b6e.28.2025.08.26.08.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Aug 2025 08:17:18 -0700 (PDT)
Message-ID: <7c013171-784d-4acc-b662-189ef568cb1f@baylibre.com>
Date: Tue, 26 Aug 2025 10:17:17 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] iio: adc: ad7124: add external clock support
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250825-iio-adc-ad7124-proper-clock-support-v2-0-4dcff9db6b35@baylibre.com>
 <20250825-iio-adc-ad7124-proper-clock-support-v2-3-4dcff9db6b35@baylibre.com>
 <CAHp75VfBEQAettOACoSix748pu0T2D+ihie0VjNW7U1_AuuB=g@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CAHp75VfBEQAettOACoSix748pu0T2D+ihie0VjNW7U1_AuuB=g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 8/26/25 3:10 AM, Andy Shevchenko wrote:
> On Tue, Aug 26, 2025 at 1:55 AM David Lechner <dlechner@baylibre.com> wrote:
>>
>> Add support for an external clock source to the AD7124 ADC driver.
>>
>> Previously, the driver only supported using the internal clock and had
>> bad devicetree bindings that used a fake clock to essentially select
>> the power mode. This is preserved for backwards compatibility.
>>
>> If the clock is not named "mclk", then we know that the devicetree is
>> using the correct bindings and we can configure the chip to use an
>> external clock source rather than internal.
>>
>> Also drop a redundant comment when configuring the register fields
>> instead of adding more.
> 
> ...
> 
>> +                       /*
>> +                        * The external clock may be 4x the nominal clock rate,
>> +                        * in which case the ADC needs to be configured to
>> +                        * divide it by 4. Using MEGA is a bit arbitrary, but
>> +                        * the expected clock rates are either 614.4 kHz or
>> +                        * 2.4576 MHz, so this should work.
>> +                        */
>> +                       if (clk_hz > MEGA)
> 
> This is (1 * HZ_PER_MHZ), but as the comment says, this arbitrary
> check may be improved by using the exact values.

The datasheet wasn't clear if an exact value was required or if
there was some tolerance, so this is why I didn't try comparing
to exact values.

> 
>> +                               clk_sel = AD7124_ADC_CONTROL_CLK_SEL_EXT_DIV4;
>> +                       else
>> +                               clk_sel = AD7124_ADC_CONTROL_CLK_SEL_EXT;
> 


