Return-Path: <devicetree+bounces-119968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A93B59C0BF1
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 17:48:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39E501F21CEC
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 16:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69A0B215F4D;
	Thu,  7 Nov 2024 16:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GPT0n2z0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91288212F0E
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 16:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730998076; cv=none; b=Xiozgo3CMhzGEuscemEtdFZkEJ73DtK7+AEly0FFwN+FSTu96cc5biVDfU8EZ0ZHQt8W9P2UYTkTJL8iT1rt7Q7fVkAF1KFz2l/CxMx170gBs/8ue/oDAa4OaOH6EVPN+bEnu64ExyKSF+mYmQ9Z3y5LHdueWSTnDlmmcC4O3RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730998076; c=relaxed/simple;
	bh=MyJVBDs7UxhsHdmpA9nPUYzatgGtn4LHTQr6nOaAvrM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=gsXv5l4TId+DOXQYfPSf/svtzDflDlGDQQsS7Qg7778APijlvwhOT4cVJ95/OWuN7PpvZ1G6xotKH6oWUYWNjZOHI6jyMC6UJ/foMprUzOogok4R4+ZDIo9cgYvWad3Qq6nOzH9Ahs2bl8cfEaBfcdreoWwJfacuJkH1xYhHH3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GPT0n2z0; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7181a8af549so756961a34.2
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2024 08:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730998073; x=1731602873; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jQWZ1USrC2bX2O7g5xSuh5PtlEXRxQNOeVN09zfklbA=;
        b=GPT0n2z0qbGi9WPBWuf848fzVAccDlHZP+RNbfVmq/++m/JYRWYEg19QhScPP5hdpI
         N6Rq3ZMm2CBhq4COf+rFIKysR/WxgnW8rQkgMx8aW8cLFIEsHPiv2+G1Ta5LkJzJI5xH
         wdNQaLvwJCMIESmhlIoVpDIQ8BoXF4uFYZvLUd3qz3FT7J2w7CL7P8mlDcUyXTVPcN58
         qq+2ndU+PARfjLDMU+etjV2Rpq6P4D+rO9duBzfIwJtTZpljKupNoTOhxnyeft+foXwG
         D17jR87wVCU3c+zyf7E6m4LRpC9u0uo+5uRTUBf5/P3HykzFs1l89uCEU34yb6dvUWgt
         cN/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730998073; x=1731602873;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jQWZ1USrC2bX2O7g5xSuh5PtlEXRxQNOeVN09zfklbA=;
        b=Rf/S48czQsEWpeHGQ/M0gMKvDRY+parxV1xVPe6OsL+6JMgMxEsjBuWyFu0w1bRKsO
         rEidew/hxMdPAEVmgirg9ZAr4Arl50IzAPU2q5GK+YYKjYSkjGCLgEK6O0Mb5fXbwB2l
         ypGKi5yfld+ZCoJOARkCko/gps5s8/ddX3EbaZ7KCOEF6BRnJBZpnk5M5w/w4BTZYDzQ
         r/uLrPlEqouv0Dh+OTkieEbNOIezBICPng95Nt04idy1fCc38h0h/BZdmEaZ/e1cjtGE
         Z8fsD3ELOrvmq0yDNKcfwC4rpApdFRfQGdQ+1jtSuRKVLxoBmgz1XvoVor7wzoAlwiy3
         YB5w==
X-Forwarded-Encrypted: i=1; AJvYcCW6TRh5/kmu4DXmjDWNsVlgV1XzwEpYZ6z5on4RdiFn74Fdi7cE5rIKuQ0OKaLBKN11qP6z8ee8t+Vr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz97AuyqDCnZK2RFa/fmznZqUJ3NRoivtHJooHgsbrq+Ot0Us0W
	5N5nySNdn7Hp0llssyHnuCtBPzIa+AHGYKNDbb2GvdcJV9picaFfyni1/fy48iE=
X-Google-Smtp-Source: AGHT+IGusElvLIohY/VxTByYGSepIb6cAz85xp5HcdZrLDeDottZzhXM1JaGfbQBfZecm+CJaJ93kg==
X-Received: by 2002:a05:6830:6a98:b0:718:9f5c:7b43 with SMTP id 46e09a7af769-71a1b3b6f11mr118477a34.1.1730998073660;
        Thu, 07 Nov 2024 08:47:53 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71a108e3235sm321095a34.53.2024.11.07.08.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2024 08:47:53 -0800 (PST)
Message-ID: <146a24a7-d7a1-4969-98c0-f621a1709dd7@baylibre.com>
Date: Thu, 7 Nov 2024 10:47:52 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 6/6] iio: adc: ad4851: add ad485x driver
From: David Lechner <dlechner@baylibre.com>
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>
References: <20241101112358.22996-1-antoniu.miclaus@analog.com>
 <20241101112358.22996-7-antoniu.miclaus@analog.com>
 <de120709-b60b-4e85-912e-b60ca18a8001@baylibre.com>
 <CY4PR03MB339993CDE9BA8DD3976CF2F29B5C2@CY4PR03MB3399.namprd03.prod.outlook.com>
 <1f2b8d91-19be-46b7-9202-824aa177dff6@baylibre.com>
Content-Language: en-US
In-Reply-To: <1f2b8d91-19be-46b7-9202-824aa177dff6@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/7/24 10:13 AM, David Lechner wrote:
> On 11/7/24 4:51 AM, Miclaus, Antoniu wrote:


>>> I'm pretty sure that calibscale and calibbias also need to take into
>>> account if resolution boost is enabled or not.
>>
>> Can you please detail a bit on this topic? I am not sure what I should do.
>>
> 
> We haven't implemented oversampling yet in ad4695 yet, so I don't know
> exactly what we need to do either. ;-)
> 
> But this is how I would test it to see if it is working correctly or
> not. We will need to test this with a 20-bit chip since that is the
> only one that will change the _scale attribute when oversampling is
> enabled.
> 
> First, with oversampling disabled (_oversampling_ratio = 1), generate
> a constant voltage of 1V for the input. Read the _raw attribute. Let's
> call this value raw0. Read the _scale attribute, call it scale0 and
> the _offset attribute, call it offset0.
> 
> Then we should have (raw0 + offset0) * scale0 = 1000 mV (+/- some
> noise).
> 
> Then change the offset calibrate to 100 mV. To do this, we reverse
> the calculation 100 mV / scale0 = calibbias (raw units). Write the
> raw value to the _calibbias attribute. Then read the _raw
> attribute again, call it raw0_with_calibbias.
> 
> This time, we should have (raw0_with_calibbias + offset0) * scale0
> = 1100 mV (+/- some noise).
> 
> Then set _calibbias back to 0 and repeat the above by setting the
> _calibscale attribute to 0.90909 (this is 1 / 1.1, which should

Now that I have written this, this has me second-guessing if I
implemented calibscale correctly on ad4695. It would seem more
logical that if we have an actual input voltage of 1 V and a
calibscale of 1.1, then the resulting processed value we read
should be 1100 mV.

Jonathan, can you set me straight? The sysfs ABI docs aren't
clear on this point.

> add 10% to the measured raw value). Read, the _raw attribute again,
> call it raw0_with_caliscale.
> 
> This time, we should have (raw0_with_caliscale + offset0) * scale0
> = 1100 mV (+/- some noise).
> 
> Set _calibscale back to 0. Then set _oversampling_ratio to 2. Read
> _scale and _offset again, call these scale1 and offset1.
> 
> Then repeat the steps above using scale1 and offset1 in the
> calculations. The raw values will be different but the resulting
> processed values (mV) should all be the same if the attributes
> are implemented correctly.
> 

