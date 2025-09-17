Return-Path: <devicetree+bounces-218390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 58426B7F45D
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:29:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E7051C815C4
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:22:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8233833C76E;
	Wed, 17 Sep 2025 13:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OxzQxuNr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1AD1AA1F4
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758115288; cv=none; b=h+hZSu1EWBhbNBzsOAj78uCEATJwIlTNdJBYXk97uB3XLAXeGV1VS7JeH1PE8C+v1HP6/Ek0vRqNJVmilW5rWu6cPd4vVRGSOyo9UqDgbKggajQVdgK5hQ4a/yR/TGT4veep5hsOxM/okHeU52RwlW4AkV2fXHk75i5hlFXLEew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758115288; c=relaxed/simple;
	bh=tVbJPcBeoKD4E2eLTValdOE7YaeP4d+rsifsM5w1ty0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BdBvMPxeojlEOodkcet7Qcxchj7vvVZshSKU8Ro3vCp9mAf/gMTJ8CmnKteIG2coulGGObWQwNz4TrT5nsM6tRRYGPmmgMigfnX95kpwSrImYMWhl3g0Q9cSPSqzRsc3KT07WESVOSXOKL1vSEKM6xokp3lCzwyUns0i7MpER4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OxzQxuNr; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-61ea79c1e91so2987105eaf.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758115285; x=1758720085; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J1WE5yP4DbJ+DbETyxuSMK6o5TNVpZIHadGbqPQdU5Q=;
        b=OxzQxuNrPdP4ucTIBsVKMFQwqnkx4WEbheFqJHl/kNzSj9NkSKc37iOtPZrUgkJRS/
         /7wL7g9P0Vf0g9RzykccWTMKaGxtGlwSY8gPeSsB3po2twURLY6t3JbyEUjG2hGszacL
         HPQLlug9d3OU6jHrHNc3OZfnM2tqQ6fmYt2LTvvmxTh1MceF6XhqifDZrH6UyoXYULoi
         W9I0QgfSYPOgZv7JXYlRtImlcyAcIAaTX0rr95Iql356JHb14klzrshf2m0KNVJj4Okd
         /06QVRXlkxm+fYYkvZeZlljopI6LNiH/NsqaQXgK24z/i+nPlVTKuZ+5WuGo3ZdAUosl
         b50g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758115285; x=1758720085;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J1WE5yP4DbJ+DbETyxuSMK6o5TNVpZIHadGbqPQdU5Q=;
        b=GQPn2/sI/bwzD3av166Q4Plk1uGWX3iAp4O2UJSniLO486zB/ZJpy2uZFXwa122xfZ
         sA/b4UkLLyu4fHCd2ksGWtaagGbMJ1xGdr6wNwzo8DwK/++6KXRryWTCsyAjA8DIAry1
         ojH5ld6aLW0WVHJ0RNEJi9xi5rB4JYrNfmD++RCGTDrQ5JXNX3gS2PNahkliLKP+xwVj
         ndb2TQuADBjWacSbsQwZDqd/2AWcxEdX83GjOPqIHH5zXU7yRkfFyVICa0eWpz7cQw9u
         gPPTynTIQSWsJkzChLn5j0CIxj8ZFjXVFqrRNHDPsb3Bh5/CUNfjCXUGrmXaKtHtPi7F
         FOug==
X-Forwarded-Encrypted: i=1; AJvYcCXLDgkjrufHiFb3WqNX0GQsDVpIes4KjYWwauUlLXVNCVskXuANFjddz2dcF67Dle/MBlDzciwS30PL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7KnNUrLOmg0k1dk6gSJ6amd/+eU+e6q5gMLXVeqNd83pLNiMz
	/EH/CJILvnEcs5SHHo2WpyfI/V4iaUvJ8BVFEVoXok7oEBdYwdeWY0A2nVLgDAjpF18=
X-Gm-Gg: ASbGncu72btI7cvvSOua6D1HSIXPbwv8TuL/+kpO5XpL3sc171QDAMTK8U1jUJzdz/t
	GjogTDafzz6srRltDtJF/oTjTdhaM8VzJvaHOnZpmC5i+KGw9lc2eHwmE2ex896gii3bRq3h1Sa
	R0KkGzPC5C4e+YUJTz0SWG6Ol9GDiu74EkdyvKx3/Qd/HU3yM6gg4fJCnYpvFmoDeSNWOERGMAs
	eYTKGGKLUmTt/rclXTJ3yXet+5sXyE6OsOdQS+J/YbmowYKJrrjYft7huH93hDTiSgz6Hf9OSR6
	kpZFpUuH+1U34Gopk1M7SkU5BT4m1AYIwQEp6XCxOd96s5anw08iK3R98nwqHE5mUhLTWgleDps
	Xcwd4K1Rpjptogbln1G3S+9e3ymzaY0vw8CWccTa58y+J4tkkx8E84i45LiD6FbA3ozxqwc4Ygk
	JC+JaZ+yY=
X-Google-Smtp-Source: AGHT+IGWJXUGjhFmvzG+cfrT/10TsR9+S6JiUBCX0ZatkVgBtopJDnkuwzCKZMKEqeVlNvBdt0SvCw==
X-Received: by 2002:a05:6808:6ecb:b0:438:2199:6874 with SMTP id 5614622812f47-43d50ecb217mr1038224b6e.50.1758115285481;
        Wed, 17 Sep 2025 06:21:25 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:72c:cb37:521d:46e2? ([2600:8803:e7e4:1d00:72c:cb37:521d:46e2])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b82922de2sm4271063b6e.10.2025.09.17.06.21.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:21:23 -0700 (PDT)
Message-ID: <6ab0cee1-846f-4f90-bc61-141f74144a50@baylibre.com>
Date: Wed, 17 Sep 2025 08:21:23 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 2/3] iio: adc: max14001: New driver
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Marilene Andrade Garcia <marilene.agarcia@gmail.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Kim Seer Paller <kimseer.paller@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
 Marcelo Schmitt <Marcelo.Schmitt@analog.com>,
 Ceclan Dumitru <dumitru.ceclan@analog.com>,
 Jonathan Santos <Jonathan.Santos@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>
References: <cover.1757971454.git.marilene.agarcia@gmail.com>
 <c257f7feb92dcf33bf7a55810fe69d13890374d5.1757971454.git.marilene.agarcia@gmail.com>
 <2d5ef36b-ae37-453d-a19b-76fc97b7f14f@baylibre.com>
 <aMptAUsQaUIYpVNG@smile.fi.intel.com> <aMptaOOmQ6SUoMLj@smile.fi.intel.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aMptaOOmQ6SUoMLj@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/17/25 3:12 AM, Andy Shevchenko wrote:
> On Wed, Sep 17, 2025 at 11:10:42AM +0300, Andy Shevchenko wrote:
>> On Tue, Sep 16, 2025 at 01:04:41PM -0500, David Lechner wrote:
>>> On 9/15/25 5:16 PM, Marilene Andrade Garcia wrote:
> 
> ...
> 
>>>> Change I was not able to do:
>>>> - I could not remove bitrev16 because I am using an SPI controller that
>>>> does not support SPI_LSB_FIRST. So I suggest keeping bitrev16 and not using
>>>> the spi-lsb-first devicetree property for now, since this driver currently
>>>> works for both types of controllers: those that support it and those that
>>>> do not. I left a TODO comment to address this issue as soon as the SPI
>>>> kernel code starts handling the bit-reverse operation for controllers that
>>>> do not have this support. Once I finish my work on this driver, if the SPI
>>>> code still does not include this handling, I can submit patches to add it.
>>>
>>> I looked more at what it would take to implement this in the SPI core code
>>> and found that it would actually be quite difficult to do in a generic way
>>> because there are so many edge/corner/n-dim cases. We can't change tx_buf
>>> data in-place because it might be const data that is in some memory area
>>> that can't be modified. And things would get complicated if different
>>> transfers pointed to the same buffer memory addresses anyway. So we would
>>> basically have to allocate new memory for all buffers, copy all tx data to
>>> that new memory, reverse all of the tx bits, and update all the pointers in
>>> the transfer structs. Then when the message was finished, we would have to
>>> reverse all of the rx bits, copy all of the rx buffers back to the original
>>> buffers and put all the buffer pointers back the way they were. But this
>>> could write over some of the original tx data if tx_buf and rx_buf point to
>>> the same original buffer, which would break things if a peripheral driver
>>> expected the tx data to persist.
>>
>> And what's the problem here? We do the same with bounce-buffers in case
>> of DMA/IOMMU (okay, without actual data modification, but it's possible
>> on-the-fly).

OK, maybe not as much problem as I thought. Just rather inefficient.
I might have another look. We could perhaps allocate the buffers
during the spi_optimize phase and only swap bits on each transfer to
make it as efficient as possible.

> 
> Actually, can this be done on a regmap level instead? We have a lot of custom
> regmap IO accessors, bulk accessor that does something to a data can be also
> implemented.
> 

Currently, if you have a peripheral that has the SPI_LSB_FIRST flag connected
to a controller that does not have that flag, the SPI core code will refuse to
make a SPI device for the peripheral. So to make anything work at all, the
core SPI code is going to have to be made aware one way or another.

>>> And we can't do this during the SPI optimize
>>> step because that currently allows the tx_buf data values to be modified after
>>> optimization.
>>
>> This I don't know, so perhaps it's indeed a showstopper.
>>
>>> So perhaps it is best to just handle it in the peripheral driver. It will
>>> be much more efficent that way anyway.
>>>
>>> However, we still do want to handle SPI_LSB_FIRST now so that people with
>>> hardware support can be more efficient and we don't want things to break
>>> if someone puts spi-lsb-first in the devicetree.
> 
> 


