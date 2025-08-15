Return-Path: <devicetree+bounces-205135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD15FB2816D
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 16:16:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 533973BCBE4
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 14:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6486B1514DC;
	Fri, 15 Aug 2025 14:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="L4Em8DIT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388AF21C177
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755267391; cv=none; b=GR3FoX6dadWn3cLZVJzxKwJQ+uCh0I5AZ5T62P/gQ+5NGuc/IK7ADkpEgdB249ob+tMH5kMYvDvCAqJrc3ECKWTFMR1wVZA4C4hvJ4FMYC/+sWYMnbhNX6WTkC0k8F1ZAjEZxM3o7CTGzy+M1CzGhGmUhQZilNZgubovkNEx3lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755267391; c=relaxed/simple;
	bh=KOhlSg0qcYg9ob3Mm7f2krs+0oUtcXnKHGyVvRFd7qA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LJ44BNVxDM1RtE228Xbc3+EtgWAwz/NdQIYXMw3kZdOlArc/T1OYJY8sPKb0oO7EX9v9Zki0jNqQchUe16MOqJq88A0cE6b4RXb1FtFowYKsf4JPfTJ+c2XPox/fSuIS2UUa4zfOg+uVuZA763D5P5zhxwE+Uhcoa3ZQ6sGWPZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=L4Em8DIT; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-74381e207a0so1165400a34.0
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 07:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755267387; x=1755872187; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l+dzZAqMWMrU9JQ+HnPQcZbDejbmWGfSuQd14G8BjoE=;
        b=L4Em8DITgSwkQaL2gneAQwGvbYpPWWUKhAmzj8MnnTVT/ewnqtdk/KVoLzoCjaLsuo
         Z1iVBXVHARtmuCP7RsKOYODxBWenZwwdMKJ+WbTnI4cUg4T067WJiVfMNGDdjtu7HrpH
         unVuTuImmmuod3GEXDdCLL7+nuWxdHaiSO84rs8i8sGiWRJSajnR8W8ORMe8K4BaYIqX
         3ilgJxEwREfO5MRFdXVkQAVOA25o5IW+uM8Fwui4JETnB1nVecPOExzpwlfu+E2xwZ4A
         vVfiuKY2K0F3VWl6islCSTJENFECRhZ6pHYnK8HC71AwiRHnnr8wzGWGBXjM5A6et6b7
         ktCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755267387; x=1755872187;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l+dzZAqMWMrU9JQ+HnPQcZbDejbmWGfSuQd14G8BjoE=;
        b=Jg35Vnh5rmQA2+cS2x/gcxD51tLsRZbFNT/y0b9/s1Gu7SVx2FwQM4E60aJV796Se1
         h9OqBxa0CKApGxzFB/cxTdWlZyNfsLdcmnoy/7dpm4IqH9jOt8JpatZ0e8BXp2jYo4DI
         7yqEyp4DQU00GzRkQuFhSuD6AtY1mw0C2ue6FitEz8YuX+qEPUXBXCmmvCus/52SE9us
         aAVYaZbNwYRmT1JOzzFdd99mfmsFCn+OuEnVfKOrfyPZzNa2avElDe/xZOORixkYEImb
         c3Bi0Qcs5qbO8afpRnaMK54k7CVVUiyXjNDojSlT7TmS+px/aRY+ifLPfvvlv6zfgBgQ
         rHyg==
X-Forwarded-Encrypted: i=1; AJvYcCW13USL8n0TaztoqRiQHdx0UlKsraoIXN/wyW3QLHFiRlgm0n8Ks5TTEY3Tyw5KsAdxn4+wNNw/Tb/j@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6dj3BTUZ4nmd5TiRgT1CwvfpA/4kN9zmCpBNlesse50OKGi0E
	70s2VRxQuTUC+6bT/EegFVk/0MwfREIi6B/ShUV9F4CSjtsIvNdRjxoqwb8yK5amjVk=
X-Gm-Gg: ASbGncuqPaiR/vRELs6lvfVOHJ6R6YhIzW9QxsH4nNKB4wiUkO/Y/R0U+mh6nSNu4z/
	rPBq8y92inwzE1LUKCoQGxiQF8ZBDr8jQKYJq99kEvTfPHdZsZFbY65mpNbCS6rN3joeogsmvZc
	WtrTADc4Hwgg5kWTLnv9ZomDmzSfo89OVtRjwDh2GalpmSoUS/Nt/UQNqYXVjRerg/i0Jy5izmP
	1nwfBfBPZIYCzUnYapgv0eW/TkifzNTytxGYehYx+dUDgs4BDVf8y9lPwx+cgCO3Mrn8vPImP7i
	t3nr6yIMwZJcQw2FsQBfGeWuvfEtfc7RVs9iBBz0JnqQT9udEu6Su3zr0NYlmEuL3oye+/ZvFgS
	NgFLZ+A4hCti71/vyajHUni2imFwjlTkY1D4Qe7XGZOzvtDrHFs1/lOwBaRNwFZr1n9Mf/5pz
X-Google-Smtp-Source: AGHT+IHUesJ2V4GKpXl067F97odMOMFwnwY0zqEdIAx4kIEiR13a/+37EIRwtokkyj02SDIkZXFr9Q==
X-Received: by 2002:a05:6830:6585:b0:741:9b10:5f80 with SMTP id 46e09a7af769-743923abd24mr1135235a34.7.1755267387266;
        Fri, 15 Aug 2025 07:16:27 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:677:c1a1:65b9:2b0c? ([2600:8803:e7e4:1d00:677:c1a1:65b9:2b0c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7439204d28dsm318773a34.35.2025.08.15.07.16.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Aug 2025 07:16:26 -0700 (PDT)
Message-ID: <384f56af-efb3-412b-9874-4d422fe2ac8c@baylibre.com>
Date: Fri, 15 Aug 2025 09:16:24 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] iio: adc: adc128s052: Support ROHM BD7910[0,1,2,3]
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sukrut Bellary <sbellary@baylibre.com>,
 Lothar Rubusch <l.rubusch@gmail.com>
References: <cover.1755159847.git.mazziesaccount@gmail.com>
 <e43c184fc6aa5c768045fc772b64d812fdb06254.1755159847.git.mazziesaccount@gmail.com>
 <014487e4-f8c7-42e6-a68a-9e984002fd46@baylibre.com>
 <3024c64b-48e4-4a28-bbab-b80cdaec4a9a@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <3024c64b-48e4-4a28-bbab-b80cdaec4a9a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 8/15/25 12:23 AM, Matti Vaittinen wrote:
> On 14/08/2025 18:01, David Lechner wrote:
>> On 8/14/25 3:35 AM, Matti Vaittinen wrote:
>>> The ROHM BD79100, BD79101, BD79102, BD79103 are very similar ADCs as the
>>> ROHM BD79104. The BD79100 has only 1 channel. BD79101 has 2 channels and
>>> the BD79102 has 4 channels. Both BD79103 and BD79104 have 4 channels,
>>> and, based on the data sheets, they seem identical from the software
>>> point-of-view.
>>>
>>> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
>>>
>>> ---
>>
>> One small suggestion. With that:
>>
>> Reviewed-by: David Lechner <dlechner@baylibre.com>
>>
>>> ---
>>>   drivers/iio/adc/ti-adc128s052.c | 36 +++++++++++++++++++++++++++++++++
>>>   1 file changed, 36 insertions(+)
>>>
>>> diff --git a/drivers/iio/adc/ti-adc128s052.c b/drivers/iio/adc/ti-adc128s052.c
>>> index 81153253529e..2f2ed438cf4e 100644
>>> --- a/drivers/iio/adc/ti-adc128s052.c
>>> +++ b/drivers/iio/adc/ti-adc128s052.c
>>> @@ -122,6 +122,10 @@ static const struct iio_chan_spec adc124s021_channels[] = {
>>>       ADC128_VOLTAGE_CHANNEL(3),
>>>   };
>>>   +static const struct iio_chan_spec bd79100_channels[] = {
>>
>> Even though the driver doesn't support it yet, there is a
>> adc121s021 [1] so would be nice to use that instead of bd79100
>> to keep the naming consistent.
> 
> I have to disagree on this one. For people who don't use the TI ADCs, the TI numbering does not bring any clarity. 


I think it does in this case because the part number includes the bits
and number of channels. And the pattern is pretty easy to spot without
looking at the datasheets. This is why I suggested it. Otherwise, I would
agree with your points in general.

