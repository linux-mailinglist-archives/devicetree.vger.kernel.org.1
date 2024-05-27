Return-Path: <devicetree+bounces-69345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 779D28CFAED
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 10:05:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19E641F21D01
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 08:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48DA53D978;
	Mon, 27 May 2024 08:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QWpcrwuB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DD6381A4
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 08:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716797150; cv=none; b=s3lppHg79vpgZGhLcInre6QhgfYmWWdkTv2UxrwqL4HGGYc5hWR7ulQPoP1ixnUlo/kILbe6QKwogqA0zdMNjnMQWDPKP7Vwg0KlrrIGrjCPgxCIplfR+VRZGdO+ir2NXEZjtMrr1gmqc86LhQ+f04ZKRIFz2TQgQEJwX8v6Zhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716797150; c=relaxed/simple;
	bh=0PSvznaULgAMyci1Cuzw0gj53Rvyogvjy4WMf8Yb64Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WGB1/8p2QWxLKApgeyiUS1LqIJfUDYbYOVPo/H1/F/3PyEqwfshDzUCZVeZO7F5sbQ/lFOFL4/X4Vzh7H00P3SDOYdghWCY08S5nSnqY8TOswcZSF5T9SRq2FWvM76BqxbqPcAN1UVVENjeX3B6iLDWx+1S+kQYcd2oNJaxmPbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QWpcrwuB; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4202ca70318so76798025e9.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 01:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716797144; x=1717401944; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5BtQhzjdT5QYL2ZvPWoXdnXVCwFUxuBDZKoHrk+bMdg=;
        b=QWpcrwuBowqCLGFx6vE6zilTO1GGaS9zAS0kXlx3hh4o8e6SmtCAgUAcsVivUqUoII
         UTuM9M+jAyqP5LsI+7ZbvVxBGtdi9BMdbjhV7S80/uSVRzN1XsVe95A+39RFoIwLti/G
         ckC8DD3QyU6uoOQy2IsFoDrFtWfQCk7ZIxkev6Mlcbe/1cCz7HW75EFldrCddWJYt5+h
         PmLo0deSaBXv3y4G3gPYkm/vCqC7rrCD2sjAn9ppuz0tUU5npwJFEjNrO8lDWSww6raO
         OS2LvTEM8dKlCqbccbQ5CnHKp/yUcAQHnu8kJHIlMr9Oi2YWlTqZANmFutNaTQHfNb7u
         m5zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716797144; x=1717401944;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5BtQhzjdT5QYL2ZvPWoXdnXVCwFUxuBDZKoHrk+bMdg=;
        b=FfShKOR9NtAwhGZrsMQ5vusJhRdZZNCwyZ6SPoH4OeK5I9vj/0///5CnUyhk2hJen1
         9xQaiomXoxLdFzmaY3nqq/L/8lXzQElAeLnsH9ObksOU/Krqsvhl5q/fTkiC1Uuu25Hk
         XuFin5GIK4/SaDqDdHboVj2TtO8Fg25u+HlmLoLUOt9oaazAufwEVybKThHJnYxwnKuL
         eHRk5PUPvFXibpwGEPGZGT6vJKejTl5JlE04ZvywTvp0MRzosiVp931ryNQKfJY8oLPi
         xRu2ID0SH6guSD26r8Xzp6+nXbslfAa5iQMxk/ikcYrn7C2GUfF9litxsbcKu3ttBn3z
         37mA==
X-Forwarded-Encrypted: i=1; AJvYcCVnh/JkVQfL9dKooGAg1xQX+wA4L62DwRMXy3zADpc77o87wN8Yw02MV07aHa9Cr+DpQQqT49Wdjkc9CrNazqwWakOor+KwPUUMkg==
X-Gm-Message-State: AOJu0Yy3MJYRRCbB8BZlxxrhK7RXI+MQNJKztNYv0T4ZekQRLjdo6Nks
	jJRehMwdlfHg/P1WPQD5w5m5rKptSoGzDyKtuXyBs+rLX7ak2LpFOxQTExyrZ/8=
X-Google-Smtp-Source: AGHT+IFjTh3sALivWS8cyiG3P2VqGfa6WZ9uRwNWd0jWYgzVAeeUnrCZ0dIfl1hzkqKwPke1T7cB2w==
X-Received: by 2002:a05:600c:56d6:b0:41f:f144:5623 with SMTP id 5b1f17b1804b1-421089cd2a7mr57708205e9.14.1716797144380;
        Mon, 27 May 2024 01:05:44 -0700 (PDT)
Received: from [192.168.0.2] (host-87-9-236-85.retail.telecomitalia.it. [87.9.236.85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-421089cc504sm100277335e9.40.2024.05.27.01.05.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 01:05:43 -0700 (PDT)
Message-ID: <fe9d08e4-fc47-461f-8715-98aed484535d@baylibre.com>
Date: Mon, 27 May 2024 10:05:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/6] minor fixes and improvements
To: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <noname.nuno@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 nuno.sa@analog.com, lars@metafoo.de, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240522150141.1776196-1-adureghello@baylibre.org>
 <751faef385f81f8a2dd0dcc2acd2d4519bebebe5.camel@gmail.com>
 <20240525180631.13446abc@jic23-huawei>
Content-Language: en-US
From: Angelo Dureghello <adureghello@baylibre.com>
In-Reply-To: <20240525180631.13446abc@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 25/05/24 7:06 PM, Jonathan Cameron wrote:
> On Thu, 23 May 2024 14:45:01 +0200
> Nuno Sá <noname.nuno@gmail.com> wrote:
>
>> On Wed, 2024-05-22 at 17:01 +0200, Angelo Dureghello wrote:
>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>
>>> After testing this driver, add some minor fixes and improvements,
>>> as adding single channel variants support (ad3541r, ad3551r), also as a
>>> preparatory step to bigger future improvements related to fast-rate mode
>>> for this DAC family.
>>>
>>> Previous patches (v1, 3/3)
>>> https://lore.kernel.org/linux-iio/20240510141836.1624009-1-adureghello@baylibre.org
>>> https://lore.kernel.org/linux-iio/20240510141836.1624009-2-adureghello@baylibre.org/
>>> https://lore.kernel.org/linux-iio/20240510141836.1624009-3-adureghello@baylibre.org/
>>>
>>> Angelo Dureghello (6):
>>>    dt-bindings: iio: dac: fix ad3552r gain parameter names
>>>    dt-bindings: iio: dac: add ad35xxr single output variants
>>>    iio: dac: ad3552r: add model data structure
>>>    iio: dac: ad3552r: add support for ad3541r and ad3551r
>>>    iio: dac: ad3552r: change AD3552R_NUM_CH define name
>>>    iio: dac: ad3552r: uniform structure names
>>>
>>>   .../bindings/iio/dac/adi,ad3552r.yaml         |  43 ++++--
>>>   drivers/iio/dac/ad3552r.c                     | 140 ++++++++++++------
>>>   2 files changed, 128 insertions(+), 55 deletions(-)
>>>    
>> Reviewed-by: Nuno Sa <nuno.sa@analog.com>
>>
> This series crossed with a series using
> device_for_each_child_node_scoped()
>
> I've rebased on top of that. Was moderately straightforwards but
> given last week I messed a similar change up completely please
> check the testing branch of iio.git!
>
> The mess was all it the patch adding model_data

Thanks for this, sure, will check.


> Thanks,
>
> Jonathan

Regards,
angelo


