Return-Path: <devicetree+bounces-241749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 542B0C81EFC
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 18:38:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5DB2E4E5644
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 17:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68F2B2BEFE8;
	Mon, 24 Nov 2025 17:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uGvAq5iG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8302BDC1C
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 17:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764005903; cv=none; b=ArdBbUdgvn0bmnRRJQt49DEJhKVmWiAemC6uPg/JS03J1fZK3GkT9+Y7YR4lUaCOW8/yMyWvmLGthkRU1QEF0Pr6KqbvXwhLCSRuB7I3EE/7L5oeMlnoScxNe6YCGGSWr6PKOO6t8aM5VnqcQ/YLoXjWS6ZFcttdVq5OtVeIKSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764005903; c=relaxed/simple;
	bh=KMlWQB7AOIOzyYJhTj0B28sxJc/jSZAfZdb+tJ7XAUQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=LAaamv4JV/ZoG7pEU50NWjPqn1s4Z0viVJ2YZyDLlOKcaoNT7gC22aJa1QFKe7mkO62aiYg7R59mCR6CY94f5n5/wh18+i9tLkXOeM0u+K8RUttMPJ1IDojfep88nFcZqBrGRTQ/XtQoBKVOur2DXFcW8l5Crayy8ePm0owePJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uGvAq5iG; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-3eae4e590a4so1573010fac.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764005900; x=1764610700; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IM2QtAR8pkeEr/p0bVpusa4zLAxQY32DCc9xBmEC9fA=;
        b=uGvAq5iGwz7drb5g80IT6X3YsHeomZhRU4rYt3+l2XA5PzDXe0WDlu5aTeR6mQcuM4
         0YizjKSTZhiQNTWAf6I+tBCXT3jskJ4kpx7BgiyDB4Y37e9ObTJXnq9+z5/iZa8JriCk
         sPHrBYX2VYCKxdQTZF5Jnh/AAljcW63zEg7s1VaM8gpKkNs52Ii04vu85ahCr8qcIh2Y
         uy9dok27lG7/m8dGLc+sf+ESCTkDVlAbKUiu2owPZNNTOD1zoF2pk76heVNUDbTI3bMN
         1y6Fpm2bzYvVVcp7hWp69Adnk3/i0oeJEjpbiPqlwX0Vacv5I3M2YkSo8OpAKq4PdD4r
         nOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764005900; x=1764610700;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IM2QtAR8pkeEr/p0bVpusa4zLAxQY32DCc9xBmEC9fA=;
        b=rYEnR9p9cOeo+DSciBdAFZ+qrP8qrIsNVPpThlk52D4u5J7JBuT3YImgDnPpFH1T9U
         0Qs5ciq2snPYfurAUQKIFjoUQSPVxje9pyrmqlGfPI+8nv4Fr+zrvjRpQ8mc4uNpiBn7
         j/MNZfnBKIQwg11BRuar7PpzEmk/nTptMayrPqT0QkyFKtk+BBUYqa5/AvYihJL1YHXM
         ozRRRXMhTTxndcAP/5xDen1JJLwgG+1XvbtRC2HBZ9GyK8c8LnlGkSYqYrM1QH/IHFkm
         kIFoT7lJruWwBqEITrfD/f2a26/wYFXb0zS6TQovjmvHWsJVX2hEWa1chwtCCE0Kacho
         Vzbg==
X-Forwarded-Encrypted: i=1; AJvYcCVc8haJRHfr/B0dWufjbUF9LURDzcS1rIs/jx873GVELiYVyndmGi2fmtApkjALKzJ+/TeSCHrRsG0L@vger.kernel.org
X-Gm-Message-State: AOJu0YwO2IlRssZwEE3kpG+T9qaNu5gS95+txiBRvmwyABYx5Hl1VGS+
	enFcFC0wWjFE+hGJd8Jj9LVl0jKICZTMm2XH6N3VQ8F2E94Tj83dPGj+3OkvDHkcxAE=
X-Gm-Gg: ASbGncsPK84swVaPB1ixbk0xC4El2qBAKV5RK947oZFu3ieX3t9/uSrfE0ACmJYdOmT
	0lSiRXS605VHkV2s9hoHSXWDD/QMBoB/Cp7vEoU15vTbLEWxF+/kYY6X2dzYCqhJRBDsCaKzs0C
	YUmf4aLJzO/A3KoWHlg6dV4wOx2Ge2fe9LZodKyMTx6JEHyc42ZSGdMYyS9Y2mQHXzg5IJH2vKe
	w5/CV/iagX4NdTu0ma17nWVF49ws0bqGzr9NgKby5v2frRvdllGt2lleJ7b2tG4xVAer/Ujt+Vs
	3ou9dJXqvjcX0Oo14FWfUGSrzdZyndSwhxmhaMBnZyhMwkAJ7exTHT7x5yl2P7VOpM1MqbHyfhF
	ZFCiZ1DZnyz2+0YNb3H9j/I8m8cQc3IE2SAMoxVf1xDOKo2EzSEPTxPUEFgAamlT1H7bi6jZFVW
	/VdLAFhPGwmfucddUdAcNCDjXVaf4lttlWtL1d6yIH+eovfsTzorH6dyc7y/kC
X-Google-Smtp-Source: AGHT+IGx3mc/Rz3SDW3zPuI+4+eMrrwhqJj6Kmdxvwlw5NVA4vxWo2y830231IUxYrpJWGKOWMA9pQ==
X-Received: by 2002:a05:6808:1903:b0:450:b0b2:96ea with SMTP id 5614622812f47-4511572ee91mr4339658b6e.1.1764005900291;
        Mon, 24 Nov 2025 09:38:20 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:1f0e:7ca2:8633:22cb? ([2600:8803:e7e4:500:1f0e:7ca2:8633:22cb])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65782b4cc31sm3661246eaf.12.2025.11.24.09.38.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 09:38:18 -0800 (PST)
Message-ID: <531c2dfa-b96b-4fa2-ac45-4a5be14fafca@baylibre.com>
Date: Mon, 24 Nov 2025 11:38:17 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v2 0/2] iio: frequency: adf4377: add clock provider
 support
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20251121095933.19032-1-antoniu.miclaus@analog.com>
 <37d15b55-4483-428f-9950-46f1b0ab2a56@baylibre.com>
 <CY4PR03MB3399892478516DB8724CDF549BD0A@CY4PR03MB3399.namprd03.prod.outlook.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CY4PR03MB3399892478516DB8724CDF549BD0A@CY4PR03MB3399.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/24/25 6:09 AM, Miclaus, Antoniu wrote:
>> On 11/21/25 3:59 AM, Antoniu Miclaus wrote:
>>> This series adds clock provider functionality to the ADF4377 frequency
>>> synthesizer driver to address user requests for controlling output
>>> frequencies from userspace.
>>>
>>> While implemented as an IIO driver, the ADF4377 is commonly used as a
>>> clock source. This patch series enables it to function as either:
>>> - A traditional IIO device (when #clock-cells is not specified)
>>> - A clock provider (when #clock-cells is present in device tree)
>>>
>>> The implementation provides standard clock framework integration with
>>> rate control, enable/disable support, and maintains backward
>>> compatibility with existing IIO configurations.
>>>
>>> Antoniu Miclaus (2):
>>>    dt-bindings: iio: frequency: adf4377: add clk provider
>>>    iio: frequency: adf4377: add clk provider support
>>>
>>>   .../bindings/iio/frequency/adi,adf4377.yaml   |   8 ++
>>>   drivers/iio/frequency/adf4377.c               | 119 +++++++++++++++++-
>>>   2 files changed, 125 insertions(+), 2 deletions(-)
>>>
>>
>> When doing a RESEND, please add a note that says why.
>>
>> Also, you still didn't include the clock mailing list or maintainers,
>> so I don't expect this to progress since the last time.
> 
> I forgot to mention in the resend patch, but i missed some of the changes 
> when i sent the first v2 series.
> Should i send a v3 with the mentions + clock mailing list?

Doing a v3 with a proper changelog compared to the original v2
+ cc the clock list/maintainers seems like the best way to me.

> Or do another RESEND PATCH for v2?
> 

No, I think that would confuse things even more.

