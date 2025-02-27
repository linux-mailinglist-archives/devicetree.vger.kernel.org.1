Return-Path: <devicetree+bounces-152328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 801C9A48AD5
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 22:54:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6702B3B6E2B
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 21:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9038B271295;
	Thu, 27 Feb 2025 21:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NchOCmf6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276C51EB5C0
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 21:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740693261; cv=none; b=sccP6SOh4u0bB/BNyCGJedJK90fl9SeJ52IKH6zzfGOwnRo159zdZ8PSDP/ETOojCpWuvX46T26SXP2l2hlvnpNaty9jiVDHNiL3a7W4BNcMusF4Y2n+uDFwvKYk3BfXz/Qfubck1b0BKurbjwQp1+mBavuocRGFHDO3vYI7tVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740693261; c=relaxed/simple;
	bh=vQHbDRJK2BUW3sVk844uq3TqW7P1kixXvD0chqN70M0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EecN5xyOAt/nbPLP1EzexG8gIQ5RBXMkwOe0XEzItmV/QiwuVQjoZc8viNSRC2cHnA7+YpIS5w3DUXMHKsoEje0yCcfgzo9Pn20m2lrbVp5Neag8KVA6sVzC8SHRu81fqChFrt7KUL1sjQcFUIyuNwb7gZT9ZNxAtZmOibiU1Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NchOCmf6; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-72720daed05so769014a34.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 13:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740693257; x=1741298057; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v/hXAHCtNLeAWG63+hcCl8SC7KoqJ0y7pVArSY1JtLE=;
        b=NchOCmf6bMHnnHxl040Lq65ldRvmeF/mYcjC5nT+hsvtK6qv42bYpS99G0bAjOJTap
         w8w94ygtA3AC/r34AY8yKXmM7BFHDRKAEe0B8oklM3AYnzu8RaPVtJye1MH2hdq4PSBI
         DyNWr2e+BMyWKCqzAYiFvkt26qAzVlfpOKZ1bls/sZS/nSdOrqx/uiK4+mkVvHE9HN2b
         swBdS4tM8H43/opyqAp7naksuCu6SbLoDl80Y/iL/yy8H/vCaJ1hn7BO1IZx4otdUmJl
         kNWqicHO9OlFW+YNOItI8kF8Ovi0BVYkSFbs6EuQZbzPSOhZQQ6H0bl4EVrP34c9sps3
         9HHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740693257; x=1741298057;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v/hXAHCtNLeAWG63+hcCl8SC7KoqJ0y7pVArSY1JtLE=;
        b=rNNrIJVDU58eakuAEW8QtTYnfxlZXbpxGSZeAM3R94S+3Z+wOui7WEmQjjt0HWuo9u
         qKB+pkkqHiNVEIpzSMjigFkRC6/Wj+nqwq+oUIHJk/nBdnxxIGIloemJ5Z8NFnn8Nn91
         YJeAhJB665ZHsQUQC68D6Hc+ogP+y/8ejq3dOOJMtj/mMoNNGW4+nKjJLsEbeKgAJXMx
         41DOVXuKWrSENsNQgbl+IIKghRMDG8k/d6dnnx87YLgIDUzjyqfL3NMcKAw9ZDK7ynd0
         ypfvJLyiV7ZyxT13wkyIRsjGgyQTxWUMnA0/zEJnWm0czFPv5qwOgKqXYtjk//k1ifDR
         JPVg==
X-Forwarded-Encrypted: i=1; AJvYcCUOYzw764Y8SixDYUQ72fo2+Nk/wI+bJ0m2FwkJ29g0Yl7pbC6Co/vX91llSKz6Ne++ACxgYGJ0Wgyb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq5vFZXJJ1dgk5WFKDivl4avcsRQH7V79OpC1zr4KY2gwmHmp8
	+XRcRjNWfgi9P/gaWGPZf2HA8uOzkAUurrbevl773xsSPQcQqUBtNt/VjQUj4Xk=
X-Gm-Gg: ASbGncs5qyniJggrfMInRkPjI6VQbia9OQN4OxC1KCtbcNV2beFBajEVA/9gRvmq+35
	Bq10O9xioRQEOIGuXdKX407n+oS+rX2GoA91vkLP21EZpg4+HyiHoE70vVfWH5c9jxTz7Rn+YjZ
	EhtXIL6vQgYxLNZN2RB71THs5bsMa/d3buYUxrl8tmGa1g6lMGu156b5cyFNTKaF22iy8XZ1r0r
	YujN5nMgv4geMblUIO/22mVE6gTNAZzdPS1YQJXN+dNy1AIIwweuDaaxRkbIUgn61S7Lxsh0uaC
	IdMsQOi/oVA97vz63hJucdbnXUVEQsNoTECgovXKvHGM/+mWiqp0l3gBDb7VO/4=
X-Google-Smtp-Source: AGHT+IGX6e+UTV3fnyRf7e6ZqTStb+426CrDeWO0t2ai6r0zce8y0wyvZGrnkjPKj62Xq0Vh0eHNCQ==
X-Received: by 2002:a05:6830:6505:b0:726:ee0c:57e7 with SMTP id 46e09a7af769-728b8306535mr539540a34.24.1740693257155;
        Thu, 27 Feb 2025 13:54:17 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-728afd76cc4sm404845a34.42.2025.02.27.13.54.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2025 13:54:15 -0800 (PST)
Message-ID: <47ae0fa6-8005-4c8c-9409-3189ba6f42af@baylibre.com>
Date: Thu, 27 Feb 2025 15:54:13 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 12/17] iio: adc: ad7768-1: Add GPIO controller
 support
To: 7c5e2364-038b-48a8-ad67-3cf0f2fd2be3@baylibre.com
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 marcelo.schmitt1@gmail.com
References: <cover.1739368121.git.Jonathan.Santos@analog.com>
 <62cb9786b02adde118db9349617cb796585ceb02.1739368121.git.Jonathan.Santos@analog.com>
 <CACRpkdaSY7WH191makzPcZqLd-vBsC_f6yagWzBa65MrC+pjKA@mail.gmail.com>
 <7c5e2364-038b-48a8-ad67-3cf0f2fd2be3@baylibre.com>
 <Z8DazwTguF/gfKW1@JSANTO12-L01.ad.analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <Z8DazwTguF/gfKW1@JSANTO12-L01.ad.analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2/27/25 3:36 PM, Jonathan Santos wrote:
> On 02/20, David Lechner wrote:
>> On 2/19/25 2:34 PM, Linus Walleij wrote:
>>> Hi Jonathan/Sergiu,
>>>
>>> thanks for your patch!
>>>
>>> On Wed, Feb 12, 2025 at 7:20 PM Jonathan Santos
>>> <Jonathan.Santos@analog.com> wrote:
>>>
>>>> From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
>>>>
>>>> The AD7768-1 has the ability to control other local hardware (such as gain
>>>> stages),to power down other blocks in the signal chain, or read local
>>>> status signals over the SPI interface.
>>>>
>>>> This change exports the AD7768-1's four gpios and makes them accessible
>>>> at an upper layer.
>>>>
>>>> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
>>>> Co-developed-by: Jonathan Santos <Jonathan.Santos@analog.com>
>>>> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
>>>
>>> Is it not possible to use the gpio regmap library in this driver
>>> like we do in drivers/iio/addac/stx104.c?
>>>
>>> It cuts down the code size of simple GPIO chips on random
>>> chips quite a lot.
>>>
>>> Yours,
>>> Linus Walleij
>>
>> I think the answer is "no" since we need to hold a conditional lock
>> while accessing registers. Namely: iio_device_claim_direct_mode()/
>> iio_device_release_direct_mode().
>>
>> Unless we add some extra stuff to the gpio regmap implementation to
>> add optional callbacks to call these. Which could be worth it given
>> that quite a few ADCs provide GPIOs like this.
> 
> Since this patch set is quite large already, is it worth to do this
> here? if you say it is necessary, i can try this.
> 
>>

I'm a big fan of not trying to implement every single possible
feature in one big patch series, but rather splitting it up.

