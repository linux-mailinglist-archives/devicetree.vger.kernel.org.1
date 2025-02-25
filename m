Return-Path: <devicetree+bounces-151049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FECA44455
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:27:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C59D19C2CBE
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EED7726BD9E;
	Tue, 25 Feb 2025 15:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RUYgTBkL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F6226B968
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 15:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740497220; cv=none; b=OrOMeV5p3lOQch5j4rWUuhDzX60/9b4a4561M7+CYj2hBzr3vcWudl82JG8Mjyyy2KKr6Va0a4sneEem4rdIvCcxdf8Qz+LFbmkgq/iEJkrQWewlWNqhWiCmZvcv0akhew+X2ZZsdl5xBxnFkw0RsN7xLeAP2s2zszcmMZB+76M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740497220; c=relaxed/simple;
	bh=R3eOfvTKD8GbF+X93jYcj93Ugx4SD0tD0JNmsutwA+I=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Z3gdaWxIgZ+2x9kF6Olq6o9fcJ0TtfQsM5d2OhLcADEcAw7AiE9Kl5PJtuRwEujblvC9WQ0UgsZT2EueFL3AcQaim3u3XHzSDNKPb5d5tygdps7OQ7WraX8DaiOOgkSazv87gdqi7xyfGt1v7tjCxCz3CE398rCzs5ybiS8UYaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RUYgTBkL; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-726819aa3fcso3149515a34.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 07:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740497218; x=1741102018; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZEFMtqXWJ11nWI2h5TBKW+yhwiEH+1Jx79XU7n+Tvio=;
        b=RUYgTBkLJc5LcVmJKtlOa7wXn18qyGd8nUJcH6hAelS/mZOyWGLFKCBwC0ZAlJ+JyD
         VsOAwCt80OOkaQYpJ5D+avEDU8rjUh0IOg1wzOZo8plr7Bf+48ebEknTTBIsOoE7bPic
         glQLOOVc9bgAn7Kb2oXJj+WGuMAptlZ4dy8lj1rQx8K6dw18WLiTDTQHnVX0WrZCY58u
         QXuNEcKwKLW286CwJPV47//X3nbWmpwM96clBnDNBWeTIIw35HsHT1dFrMv/5aD9tdSF
         2cH1x0u0TgMd1BsWb2Gsld6GTKXn3s8v2Jz8PpdrezpDlL02hUXe5dQS5vRWZW9eZhtD
         RqVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740497218; x=1741102018;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZEFMtqXWJ11nWI2h5TBKW+yhwiEH+1Jx79XU7n+Tvio=;
        b=a5zdUxqUfr74dDV1cK0yQXjUXe4ItEHZXdN8dk8Hbz7UmLw+EaA+U1vZpkNGYXLtkZ
         xPWAnoq3DTzizTJ1I4ICPbwZrUVRXI9C0AZo736SerOTgDqz3oXyGdze34AD3IUWLz4i
         KRUbJnE3zwx2THkU/wggr7E89G5fF3Lic89B7wyGGqFyWyz3NiDObW8WpnTpYwuN/x1/
         t0KO9x9WvRniJi3Z0CXGLqJRGDBE5nhx6kpt7N7ft18tTw9sgqIBueaQ85iUYbcSKq91
         YetB0WEf8lUwjHdEusZf1ctVxUNUGJs3td8Gbvo6QxZgp4owq63X3UfhBplm/hemGdBF
         od0w==
X-Forwarded-Encrypted: i=1; AJvYcCWNw5MKiK3C+CSr+NwqwjOhvtdqHR36mAXbSwz7Ci0ioMuryZmy+Sb/4yT3vwiYiwqfj2VjqXKYXOIW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8cRgKHqWxFKEyPBw+ueBKKH69xeL2gxdB61db4mnW23FJHO42
	JDOVJxXH8vPrDTBVcx15vFYfA5FzkWTrkeSMDNXXNedgJmBndjnIGr4gmrLyNrM=
X-Gm-Gg: ASbGncufAJwNBaTd1Sb8kNa4oes+mgH01jGyhXcsf7++J0f5M6e2QRlIxZtp5n5G9wk
	Dd2lmgE9yGBughqJATdA4x/DKf0FbkvlsYiPpOfkV0TjvZAr26Z3a3YopRWwImvOslPcznraiDV
	sR4c4+VNTEkMaGibStxr1i/LY0T9Vcta/fn20SIfq4sLgApqkdLU4Hz73SCBkD1LEAH2w5Mz/hk
	o8AEWcGPExqnYbxJDDPYdGcnRt2fDcbysR9emBsaEFw9aWnEk+P/SWkV0F1YSUI1DY0QsVf2Cnw
	5tX1QWt6G/9vgXkfTo7uulHeDu+na75qcCPg8ND2AlJ4acqcLTiJEe5cV1yQqwc=
X-Google-Smtp-Source: AGHT+IFGCyY/0apfFgHzqIrY9A63Ru1cUYpVgHHxAiTBgOOrsAuBzOUsIBrLonLqsT9Pl1DiMc3++w==
X-Received: by 2002:a05:6830:2b07:b0:727:2e61:c831 with SMTP id 46e09a7af769-7274c235252mr14195332a34.25.1740497218150;
        Tue, 25 Feb 2025 07:26:58 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-728a42cdcd9sm25002a34.11.2025.02.25.07.26.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 07:26:57 -0800 (PST)
Message-ID: <d1af7490-5d91-4b30-a86f-8df3a8d17af7@baylibre.com>
Date: Tue, 25 Feb 2025 09:26:56 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/14] Documentation: ABI: testing: ad4080 docs
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250220135429.8615-1-antoniu.miclaus@analog.com>
 <20250220135429.8615-15-antoniu.miclaus@analog.com>
 <8f588f4b88d122815df694660d19672e8ccd3d70.camel@gmail.com>
 <fd3ba169-c5e0-4405-961f-d7c11c68dffb@baylibre.com>
 <3f4bb345c1d76e7521d8bdbf4b4552e727c7dc1c.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <3f4bb345c1d76e7521d8bdbf4b4552e727c7dc1c.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2/25/25 3:16 AM, Nuno Sá wrote:
> On Thu, 2025-02-20 at 12:27 -0600, David Lechner wrote:
>> On 2/20/25 8:53 AM, Nuno Sá wrote:
>>> On Thu, 2025-02-20 at 15:54 +0200, Antoniu Miclaus wrote:

...

>>>> +
>>>> +What:		/sys/bus/iio/devices/iio:deviceX/sinc_dec_rate
>>>> +Date:		February 2025
>>>> +KernelVersion:
>>>> +Contact:	linux-iio@vger.kernel.org
>>>> +Description:
>>>> +		Set the filter’s decimation rate.
>>>> +
>>>> +What:		/sys/bus/iio/devices/iio:deviceX/sinc_dec_rate_available
>>>> +Date:		February 2025
>>>> +KernelVersion:
>>>> +Contact:	linux-iio@vger.kernel.org
>>>> +Description:
>>>> +		Return the available filter's decimation rates.
>>>> +
>>>> +
>>>
>>> I'm not yet convinced we need the dec_rate custom attr. I'll add more
>>> comments
>>> in the driver.
>>
>> If we do need it, in another driver recently we concluded that
>> decimation rate is the same as oversampling ratio and there is
>> already a standard attribute for oversampling ratio, so we used
>> that.
>>
> 
> Yeah, in theory decimation is about averaging samples. Makes sense to me even
> though I never thought about using the oversampling ratio attr. I was biased by
> the IMUs drivers where we configure the dec_rate as part of the sampling
> frequency attr since these filters directly affect the chip ODR. 
> 
> Out of curiosity, how did you handled this in the other driver? I would be
> tempted to only allow reading the sampling frequency attribute which means that
> the oversampling ratio attr is the one we can write (which then directly affects
> sampling frequency).
> 
> - Nuno Sá

The other driver is still under review:

https://lore.kernel.org/linux-iio/2c3ce1701545e435238605342397e45657a0fb2a.1739368121.git.Jonathan.Santos@analog.com/

It is modifying an existing driver, so in that case, we still have to preserve
writing to sampling_frequency even if that isn't the ideal way to set it up.

