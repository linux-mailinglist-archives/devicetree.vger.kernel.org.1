Return-Path: <devicetree+bounces-236117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CACE8C40098
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 14:08:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2464A4F067F
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 13:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D9D92C3258;
	Fri,  7 Nov 2025 13:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uOpuKlo/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E3FF2BE658
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 13:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762520890; cv=none; b=IlErg0QFRVqnco0uvgNWbMSFRM+kdZmD7Y0G6eEaYIgotLPIhRlGva7MvW3uc9SC9oWPxI6hzdLqigyWvti8WdqaoxJkdXyN7n+rqm1lUfLTvqk40v7aEBzaa8ifGviKufLV5pPQympCzXIkg7vBBJvjUrrICe3jLfs0t/nfAoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762520890; c=relaxed/simple;
	bh=ab4JdEU2wkT0Hj03mRg7cQTBpYv7n0lBGv/VFV9YQ5E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iFtOi1J8BAteWRI7ZsalMQBXIWrMZ8nxrNrcM3MHijR7r4jxvX4Rn3BKqdNVZ6O2oKyVO4YCt9POLGk8Pv0dSmrcCsgHhjaeXrdrcvG0xmBVGmBdkpblx+4DlUt+J+MkvHU0kKY38jj1CYzFcL1mIEpOBTDRb7P/vKOju0x3paM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uOpuKlo/; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-640ef45546cso115753a12.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 05:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762520886; x=1763125686; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PUZwTrdAx5DA1QRiAEjUm/Dj+qOzLieiy+DwjMngH4U=;
        b=uOpuKlo/yAGDmdsbjTqnvwt3QU4cMvcG4XlcvqqXxtARKW7qwsd2/zi1asHoiYU8F+
         6G+siioOvn/hjQQdupT8jVm1sjg3XcX8BOrHNb4Gk+3e+MtPJW94ZH/C1GAyg1wGfK2t
         +/6hynOlY/xrok0ja2uu3XwDMK4W+N0ci/3MnO5L8tKnKmDeWf/WCKv7++IoWRyogKlt
         Exj4YfwItzfphRVv3xX++966ezFo9mhQQe+hTveeuf84xAPhuTM73nx/47giLioosA0T
         Z1RZ/o1njm+M/bnXjHlKJtK7EKTP+DfSaO5mANy35iUhU2FDxSuPQCZ6WBeAFrCWLeZt
         /RnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762520886; x=1763125686;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PUZwTrdAx5DA1QRiAEjUm/Dj+qOzLieiy+DwjMngH4U=;
        b=hwNIrDU0H69uxM41n4LjOuH1zBqTN8Bul6lIVtomnbHQMvLYUp9nJ7DBwkIAY28xK4
         q1P6EOL2gWjSHhf5fs7Or4oZ/O9gasKLdud98G9c5O14wBLyj9ggpmy6S8nCvNpUWH+9
         40nJy+C3tnv0I4tzBsFp6qAqWRnYweG27HfHohDM02fjX+7CtgiC2ExgyX+N8OrqaVrZ
         Mtxk30VRByFV+PiUo1neulkl0R7bErddXScaOLv3vmnEQQC4sHDOtNimN0oFXmEAI/XX
         SkJI1hr5fv9F7UurKIIHEMd7QOJXSLNwXzJAyJ9roFFvDC70uC4r6zMv4NhLXr0wxxvM
         HX3g==
X-Forwarded-Encrypted: i=1; AJvYcCU1tZxuv08StbpFuwB4UgYT7G+wKwzIFiAeo+6KXb8osMv/3JqVOeqKI/0kFhfNO2fsnxs0E8NRotwq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1lJ0MwHICcX23AY4MVwApyti31Oc2i2jM1b3VXACJ7/zHPZAz
	1jzPRHcXVt7epbFD2/P9X3EnI6kLwc0wAqLJM0Dvtc7SJDUE508AvbMmxhYQffPhpSI=
X-Gm-Gg: ASbGncvmPfSBQo4GlxItJqTLSNfPwI7oFqtmDB+AOXpieg4FhPh+vOC+MFzY1zEIYfP
	tBwYSMIIdpInAoE0lPJU0AtsHKlAUMXnOHYH1EQceQ9wPgBsjDHZBgILvxPaLN+zV2MZorilsQm
	zp4PE3ZrAADbI0Vp+4+oBZ5I3GflQNf7YHUXMas3DSMNEfTpfbjIXDkdOWkNynxENaY3pZPkr1C
	FUWxIs9nUjDc3YuGzB8JfPTxBQOqDtZfUJRF0PTNacJ2qntWV5vffUuqcGNcK/Og/MPuam2iydT
	9pvpzEUe0qY2njH3RqxPvE3Rz2aVkS05pc1fBkrkkKtDGhCiPSA5B1na6tGvzQN++G6aIJHboV7
	AXrF7TDX+wFKzjP+osTwftkObuIUYivSHK0OGbv04iFdGXjjwVWkyQbLp3PESL7uYpCG/N+uPTx
	V+tlUC05JSBMY29E7ikgJ7MruhEEvt5A==
X-Google-Smtp-Source: AGHT+IH9tINldpmuxzATwX+vJGBph2fWU/B2JPxAB+dd5zTEjXHIhI/JdfJAw6vwGdZgenYc3xl5rA==
X-Received: by 2002:a05:6402:268b:b0:639:fbd0:4e44 with SMTP id 4fb4d7f45d1cf-6413f063d32mr1657770a12.2.1762520885794;
        Fri, 07 Nov 2025 05:08:05 -0800 (PST)
Received: from [172.20.148.107] ([87.213.113.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97e457sm235515266b.43.2025.11.07.05.08.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 05:08:05 -0800 (PST)
Message-ID: <57585b7f-0c4c-4b28-892f-4aefec388136@linaro.org>
Date: Fri, 7 Nov 2025 15:08:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] media: i2c: add Samsung S5KJN1 image sensor device
 driver
Content-Language: ru-RU
To: Luca Weiss <luca.weiss@fairphone.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil@kernel.org>, Hans de Goede <hansg@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251023025356.2421327-1-vladimir.zapolskiy@linaro.org>
 <20251023025356.2421327-3-vladimir.zapolskiy@linaro.org>
 <DDZU8E8EBAMW.3J9K3YJ94V2B4@fairphone.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <DDZU8E8EBAMW.3J9K3YJ94V2B4@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Luca.

On 11/4/25 12:28, Luca Weiss wrote:
> Hi Vladimir,
> 
> On Thu Oct 23, 2025 at 4:53 AM CEST, Vladimir Zapolskiy wrote:
>> Samsung S5KJN1 is a 50MP image sensor, it produces Bayer GRBG (2x2)
>> frames in RAW10 output format, the maximum supported output resolution
>> is 8160x6144 at 10 frames per second rate.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   MAINTAINERS                |    8 +
>>   drivers/media/i2c/Kconfig  |   10 +
>>   drivers/media/i2c/Makefile |    1 +
>>   drivers/media/i2c/s5kjn1.c | 1407 ++++++++++++++++++++++++++++++++++++
>>   4 files changed, 1426 insertions(+)
>>   create mode 100644 drivers/media/i2c/s5kjn1.c
>>
>> diff --git a/drivers/media/i2c/s5kjn1.c b/drivers/media/i2c/s5kjn1.c
>> new file mode 100644
>> index 000000000000..9e2ac3d695ae
>> --- /dev/null
>> +++ b/drivers/media/i2c/s5kjn1.c
> 
> <snip>
> 
>> +static const char * const s5kjn1_supply_names[] = {
>> +	"afvdd",	/* Autofocus power */
>> +	"avdd",		/* Analog power */
>> +	"dovdd",	/* Digital I/O power */
>> +	"dvdd",		/* Digital core power */
> 
> My comments from the dt-bindings patch apply here as well of course.
> 
> Also my datasheet mentions that VDDD should be powered up before VDDA,
> and there should be a minimum time of 1 us between them.
> 

Good, thank you.

> And power down first VDDA then VDDD, again with 1 us minimum time
> between the two.
> 

Ack.

> Can't say much more about the rest of the driver, great to see this
> being worked on!
> 

What might be the most important, my plan is to keep the AF supply
on the list of the regulators. The testing has been done on SM8650
reference boards, you'll find the dts changes.

-- 
Best wishes,
Vladimir

