Return-Path: <devicetree+bounces-254122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7FAD14521
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 18:23:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A73B30E1A9F
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 17:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E183364E9B;
	Mon, 12 Jan 2026 17:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yLFHmJ63"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564402DE718
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768237827; cv=none; b=PFqF0YvB8ZyxhgUn2d6PmgvPCS9MBgXZ0AqXXSwvpiiAw3wwlOLShB+R5E655MmQ6XxOGpX8raEyYXt+FbsxkhgOZNu/jnPX5vegM99BA7EiBd19BIfNY2WtJ5mjn6pdSKbzVXpNcJSreKZEClYQaEED7g9muZNYHOC3GgBw67g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768237827; c=relaxed/simple;
	bh=OAH5naFNjOllYduWvwQD0Wi97hw4lHAw0rHxC1KY20c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=id7huNQA9reVoL5vrO8mDgNriKN32HvGttjUqAkMyU69dlcpXT7BvoFFwwAVHlrD/AaNRzhcCOvcY/LwXHZA+8+WoG3J2Tlqak6+AK7qggXCjCLgniRy3B95STz4QO8mJM4VemJnspXuPdzgJVEDQIQgNMQxD12d/7nIwYJ3kHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yLFHmJ63; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-45358572a11so4092821b6e.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768237824; x=1768842624; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m9/AFf01u7lcoTbEksrXqqgn2N/dpSWjRoYjLFZ9u+U=;
        b=yLFHmJ63uszX4HY8EJJL5iMkcJKuunD1+Sw63Ku0zRMWJD6Lo7EY32lab6N/jZBOK9
         dSEcwZrEU3Q5nAxlgdCbmojByYanaHjqFoDyNXywxXYEzZhm2KGz41ztfyIOygcXirwe
         H0IqrjAFF5RRA6oP5nDIKzewNkZvWvjiySUX1VYibq6DerUgOZmNz+R6x8cvUcZrk33d
         ACzPHN61jigcXLIzD4X08FR0pw3AwzaJpL/zF8WhIuXcIPlSSPZGYKmiC+nhhg+BXEDG
         Zc6YAms/yOzmBhkyCCce4/UO8/eCvEsxfv7hHJ0BM0kzCIp79S5qBovShXGSJfvtW2X2
         akFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768237824; x=1768842624;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m9/AFf01u7lcoTbEksrXqqgn2N/dpSWjRoYjLFZ9u+U=;
        b=BGKO/V44yqzqLFPjUxvzZDAERB2TOEHO6+c+mDAoxbmEHSfD3YM2gcPqFXAOLEEs07
         l/GEGDUnrMkRy0JI7bouprYUFIjqY+pX8K/jJZpP2gb32y1+07YliBjMzwN47vuA6Me+
         awCo8vUfQtDwUBHPO1GmKqvCBje2geh3mNEx1YL0ngbV0q4c9toCnfFbP1NLZOirkwVE
         DAde/7JaRpanIbTqfwMEGQROK9rbZnku5mdaeVZZ/eOtN46i4B8Ma3aehAlA0nP+tRVg
         9cPaJqr0X2AEH68BZJoBi5fcIg7huSkB10QZLXDKeOEaPqgJIZ2exFz6Zf95d1Bb6hXR
         XPfA==
X-Forwarded-Encrypted: i=1; AJvYcCWPY9M10x9yQf9fSDTm+yMJ11OKy5AEpoF/LDV4Xq8fWE8ont1hJEOKqd9kCu75GoXw73bqMAAGm30a@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2pbo447FeWGBiAgdUksXSHsWLph7ovkTj5XP3I3ScXRxChkzO
	KSzhRHljgN+4cx5lbGFW/FSH268V4rJi65CdXJv9xHwQ80nfQnOlLoKzEvne0uzDRzU=
X-Gm-Gg: AY/fxX5LMZ35Zq20wsryHSWMkJlUJsZS6BAaZGu6H0WfSndUUs8ePkwVf58ncjGGtV5
	R8UKx4Wg+kQyYIGtDkXx+0DRFvmFZvxRbCX5kslQF/tnSOWDsra2xzM+F3P9HTqE9a+yEYqwmMW
	A+W7ouxxKJoHVNyP2ZgKQBTbABCkHm7v4UXBHzkAAKndJTCal+bZdkTDy7F1+8FtMxCHqvhpeNP
	tVYihdbvuvCYPWppwFWrq614Y7jbqTgsaz+ekyYMtG+8bfqMympeB/zegWHm/sNuwEUs2zONbH0
	KgUM+22m9bP4shOign5fiLG2oLFQ4lDs8siEdSu86OpogcHLJ/XGUEFVIhsPj1nqsLXc6lkUSCd
	pf6x9GKcjGMAZepc2EsS2N/vM+mFcJ0tkaj0GcU1k/9zTBS/vdB5D1gxniHEZSoRjFk7xkXuKPR
	vaE4inSgBB42eFsy0O28+kgoe4fGxV7nfLAxPohzemclxJghxbCxRAHUHkxg0aVFw5kvvUQ2A=
X-Google-Smtp-Source: AGHT+IERGDoUKExncVjlW46GPrn6YhEvSLbilPx7CfLMbFAf04otsZ0YAgDPpRk+Jn6HZpG/4t2pKg==
X-Received: by 2002:a05:6808:3507:b0:450:cc23:98c6 with SMTP id 5614622812f47-45a6bedeee2mr9476465b6e.56.1768237824219;
        Mon, 12 Jan 2026 09:10:24 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:6b4b:49b3:cce5:b58f? ([2600:8803:e7e4:500:6b4b:49b3:cce5:b58f])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45a5e183cd4sm8162627b6e.1.2026.01.12.09.10.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 09:10:23 -0800 (PST)
Message-ID: <19e3980b-043a-40bc-9944-3ff2ef389ab7@baylibre.com>
Date: Mon, 12 Jan 2026 11:10:22 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/9] spi: add multi_lane_mode field to struct
 spi_transfer
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
 <20251219-spi-add-multi-bus-support-v4-4-145dc5204cd8@baylibre.com>
 <aU_3v5smP1AnsHCG@smile.fi.intel.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aU_3v5smP1AnsHCG@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/27/25 9:14 AM, Andy Shevchenko wrote:
> On Fri, Dec 19, 2025 at 03:32:12PM -0600, David Lechner wrote:
>> Add a new multi_lane_mode field to struct spi_transfer to allow
>> peripherals that support multiple SPI lanes to be used with a single
>> SPI controller.
>>
>> This requires both the peripheral and the controller to have multiple
>> serializers connected to separate data lanes. It could also be used with
>> a single controller and multiple peripherals that are functioning as a
>> single logical device (similar to parallel memories).
> 
> ...
> 
>>  	unsigned	cs_change:1;
>>  	unsigned	tx_nbits:4;
>>  	unsigned	rx_nbits:4;
>> +
>> +#define SPI_MULTI_LANE_MODE_SINGLE	0 /* only use single lane */
>> +#define SPI_MULTI_LANE_MODE_STRIPE	1 /* one data word per lane */
>> +#define SPI_MULTI_LANE_MODE_MIRROR	2 /* same word sent on all lanes */
>> +	unsigned	multi_lane_mode: 2;
>> +
>>  	unsigned	timestamped:1;
> 
> Btw, have you checked the layout of these bitfields? Are they all in one 32-bit
> word or split? Dunno if `pahole` handles them, never actually paid attention
> before.
> 

There are only 14 bits used so far.


