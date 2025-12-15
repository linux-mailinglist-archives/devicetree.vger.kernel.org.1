Return-Path: <devicetree+bounces-246738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1816CBF5F8
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 19:16:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E9EA30334F8
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 18:09:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24AB43376B0;
	Mon, 15 Dec 2025 18:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iZ/4CjFk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023D43385BC
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 18:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765822176; cv=none; b=ROi2Rfc0F1FjxN8dbRS5gyBI7LTsfdfgHmXUCOeCEEn7WSdhtiFQbLdImDQ6vUD6nnz3Rpy+aRYLW1Q4uxhGL0W/7LNoX1N07rI/y50ZsbFUgoMvAayS0OjexnpEi7K5K+T7ixQRxwmj9G/9Ku1Xufxf80hIbwVVBBHLq+hGTDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765822176; c=relaxed/simple;
	bh=jJoPLn1fkI9wPRU/0HMgfFAMd/C9HMYFq8hNraw6c8s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tpwEAquRYvezqmB/hC2XW+HO15QOk88CvK/Y3JMGOFpo+YgPB/lfzavq0Jo1IlG1l+2SzZ5HXaKOR7aVA+pVr337P+51YL87EnDyADL0X+Na7Dss1ibjOzmlF4176t13T+GevRQ9SW4bDDHu8KkdY5vNLYJI9C3vv+sNVc761rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iZ/4CjFk; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7c7613db390so2419339a34.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 10:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1765822173; x=1766426973; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P8D3gbs8j8tMtsoO/hc4EokJzJyu5XdrUi05ido4tmo=;
        b=iZ/4CjFk2LA4hX415hTiI2scaCuQDIqgruse8zSwUhG67SY1JKd9+WLPc+XsAufsDE
         Zn+vlHK63b2G1BZdmfBuGnl9cmlGegXdismUZIIe1FhuTYOiIAaIeECCGmSpF7m5fPHX
         GyjULtfMSKpcOWeO78IQjTA3uAEbvN7Hmpnt/0kBSEbILMPJbZlXOaz3xd1DTbcP2yPd
         eEJB18HgDVEkzVjgRKKrEInjuxsMKFI14p2yYK4/i4P9ABLSfCVvb9ePoBidaBIrXKve
         /e7+8utLQ3hYWNtTqano7HKlzYs/wu/NrXV/A+nLtASlh8/7TP4YVV3OdSmX71DB2WCB
         Yr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765822173; x=1766426973;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P8D3gbs8j8tMtsoO/hc4EokJzJyu5XdrUi05ido4tmo=;
        b=OtUxbmpPVQHpsfjsPaf6plhmvkXrj02NBwc7oAvFVnv/rEibp3gW2VNf4X3B/u8MKA
         akw4a6DouWe79ZJT8XKw9uLabQ6HmZCjww8vrs9yBb/CGCInll6Q/PiH04VdJ0YoZsAh
         PUyHsB0sgRNPq9XAG+/3Qq9gaV0QPXokO3cU0rykmKo+SAI8aillFFK8nl73/25xE44v
         da6geqfdcc+jzt3RUoM68OE/ZdPHWg0MZMxgbRXcEZ9D/1cpfBjvhjOe8U7fuy/vyCjH
         fOL4Noo6059Q7UzVn8dq51eqcKpkOP7lkpuzAXcMk/9uuzlmStsAcTMIrRvk93n06UTN
         N+NA==
X-Forwarded-Encrypted: i=1; AJvYcCVUs+nLf2G+8w/IKTNvoh0magwMNlOnzlGUAfdyJr2JSFNBIlxewpcBhqUFIoRIl/Su8kwynGz+0ibF@vger.kernel.org
X-Gm-Message-State: AOJu0YzOALXpB/G1fCpqo71pPDZRpAWAWq6yCnymYAKEIVh5bVZ/BOJU
	567XO/KuVA7hdmNwF5+oWx5If/pCJxU8ZTm2wz5Xwhm84GxqtTf9vmX8i3a2fzqDNfg=
X-Gm-Gg: AY/fxX56RXfA6mV2WIRFK2oX9h0o8kbLc1prE/oqi1p+uify66KPt+PFYNCSlPLdm78
	Ecz1BQlTMa1azGqrqY5EaPzMqZUkf0etf7ZePVnPgW2v7lwMrbVCrKQ39gsPZkVfdTATjAn7+m0
	9Yi5LCzSIKLAtOSN2wCxdY3Cy4npQ9UHmq2GpHiEAb+T4ayUjLT0ZmS9eoV4VggkQiPZFBYM8UN
	OLevnylgXitsbj9YBlUs7wbbDMQ0Xsn2qewNZnnFGxTNFBThcobusifiE0YVqB1GFH9jUG9QChh
	moOGd1Zzl6V1dBgVMwijzxXNRr4x92w35c/J9hr222zERk2s799YFmWGgIi9BH1t5hS9kveCa0i
	oUFqWS8YrN6Soptcf+Tj1MjrjhhlR9lLpu1AZnmffrcKuTvV53dS8yi/BG1d4iVaFZuZ7foWzHI
	g18Zv8T2s+3XA8CuVlektCj2gPS4joRR6qq+YeYcLBZPwYEepHOdqSJz894Elw
X-Google-Smtp-Source: AGHT+IHHsNWWpcFL7pxsMf0NT+Ch5aoGLcrbIOKR0HmNu8rxcH3yGMLa5YDaJGBvj/3gZjcMR41VGg==
X-Received: by 2002:a05:6830:4c08:b0:7c7:54e1:a3ad with SMTP id 46e09a7af769-7cae8366e93mr8570713a34.17.1765822172981;
        Mon, 15 Dec 2025 10:09:32 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:1635:b560:bfdd:f758? ([2600:8803:e7e4:500:1635:b560:bfdd:f758])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cadb2fcc39sm9838677a34.19.2025.12.15.10.09.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 10:09:32 -0800 (PST)
Message-ID: <bef2e71c-fd76-4e73-9e53-422f9fa96757@baylibre.com>
Date: Mon, 15 Dec 2025 12:09:31 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] iio: adc: Add ti-ads1018 driver
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Tobias Sperling <tobias.sperling@softing.com>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20251211-ads1x18-v8-0-5cd12ac556da@gmail.com>
 <20251211-ads1x18-v8-2-5cd12ac556da@gmail.com>
 <064e059b-5c86-4c41-8de8-b6a728361fd3@baylibre.com>
 <DEYY46ZUJQ35.YBNYWLGZMRYA@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <DEYY46ZUJQ35.YBNYWLGZMRYA@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/15/25 10:54 AM, Kurt Borja wrote:
> On Mon Dec 15, 2025 at 10:55 AM -05, David Lechner wrote:
>> On 12/11/25 10:25 PM, Kurt Borja wrote:
>>> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
>>> analog-to-digital converters.
>>>

...

>>> +static irqreturn_t ads1018_trigger_handler(int irq, void *p)
>>> +{
>>> +	struct iio_poll_func *pf = p;
>>> +	struct iio_dev *indio_dev = pf->indio_dev;
>>> +	struct ads1018 *ads1018 = iio_priv(indio_dev);
>>> +	struct {
>>> +		__be16 conv;
>>> +		aligned_s64 ts;
>>> +	} scan = {};
>>> +	int ret;
>>> +
>>
>>
>>> +	if (iio_device_claim_buffer_mode(indio_dev))
>>> +		goto out_notify_done;
>>
>> This should not be needed. It should not be possible to
>> exit buffer mode without triggers being stopped first.
>> (No other driver is doing this.)
> 
> Previously I had my own lock here because ads1018_spi_read_exclusive()
> needs locking.

What exactly are we protecting against here? I.e. give side-by-side
lists of possible concurrent function calls where there could be a
problem.

Any call to iio_device_claim_direct() will already fail without
calling iio_device_claim_buffer_mode() here. And since this is
an interrupt handler, we don't have to worry about reentrancy (it
can't be called again until the previous call returns). And nowhere
else in the driver is calling iio_device_claim_buffer_mode(). So
calling it here doesn't actually add any protection AFAICT.

> I dropped it per your suggestion in v1 I believe, but
> given the discussion in the cleanup.h series I was thinking in bringing
> it back.
> 
> But yes, the scope can be adjusted too.
> 


