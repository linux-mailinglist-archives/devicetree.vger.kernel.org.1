Return-Path: <devicetree+bounces-149140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FF2A3E782
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 23:27:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2FD919C42C4
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 22:27:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CED62641D4;
	Thu, 20 Feb 2025 22:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KPzLH7iV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471CB1EE02A
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 22:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740090450; cv=none; b=dWbsIY8qctxsve+hP506fDnvehqehDW9/Bk5jqUcaVo0G1A0q06fRXwCz23leOI8XOpIUPrM/3QBI1P17NKHA4fdFzbcB+g9+FwX2Kg3CarbeEWq9yc+LvON7m0AwM/VGa06zvj52sBfFwvW/pCi89bwFc1HG7SFL7ed02ER9JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740090450; c=relaxed/simple;
	bh=Wwlx+PMNjFVQG+p5LgCwO5bEhpwUj2L8Wcxf+n7/TkU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sLVMjAWgLiUgjRqlPivHlK03/vRBujsbro2ib6C0sqbNdig0VJ61vjJs3oIJcMksV01nGiFr3TNJoF06GSB0HRA4zuTkkji/VKw6V/QBkLgEQY977tjUtGW9K5zUxQz9VC9zpKKrIJLxZm7UpaRgExS6usueboLePCZ0veNrff0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KPzLH7iV; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2bc66e26179so273172fac.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 14:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740090446; x=1740695246; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pCESArWTseHQGpGv7tpeQqcnGXM7p2OA6JgdrilOIUE=;
        b=KPzLH7iVYauwnVWpKAzd8c+gRI8jqXjZVAi9CYURZRm+LzfNpuJXNW3mUISQNVvHOq
         KKfd9kbCYUQN9B/ikEQDVVHzAWI7XV+nyHXbosauAIf1U81o4h4NMdQDvGfaw0NkA/6N
         zCed+5cfix5tupuIhaXHF5xB4CYKiNY/HZlZPr0o/MgrJN/xTr0x8KVCdLaiBKfhwGWB
         iE92+aMeJp7PJruw2cyqy5xyPGQkphC8QDpqcW2Uj6Wk9gV4B6aC8uVT1nzkhaC7OBXV
         eDX1Aah/as5lKXknbKr87J8IYW4w86yHgKBGzXW2gKME+buUA8mhSEOl+XvRRRAzfhXa
         MGyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740090446; x=1740695246;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pCESArWTseHQGpGv7tpeQqcnGXM7p2OA6JgdrilOIUE=;
        b=IHQ3q15iJDfz70lN4ntmrb0XF/AIJrYSO2Q9UgENgfbqnZqscJGvPMKmGf37yd2DHC
         Lpk29rvPyRpwKrAnEWoh0MfulS+KxKFVpYN25NKYSq/Wvk76bJWm6gtFrijL0CVK3OXC
         ANoaUrbYM+hdx79IEJQQh56MwBTkmIGcNEguSqACJkIB/F2ClqNB55aA5e/MG5DFM1Wx
         8HcuWhAIr5pdz9obNoBqtkP4An5pVBIfQt5GUhKYoPFYSivfbRELSUqceiaEJVD9Ybq+
         b+rC6Pc4eHbHz5QjWHU3x6OaUoEAu9FhZn/U7CXH03arHbKEE0SH3M+8f3+06K/Jpqhf
         4RNA==
X-Forwarded-Encrypted: i=1; AJvYcCVLUBf4R3tzhumLv306PSQ0HaWcKOE0ogNuT3jmSYKY/cLZhUFhUVFz20ZEYz5LodXSpVb3P9v0fMJL@vger.kernel.org
X-Gm-Message-State: AOJu0YxI+gLpNHBU8lhbEm48VcbUCGVsD0pAnoug+RJjuJCIzefy2b7v
	dky6DWRU0gD8eKI8oQxHu0Df8WQAfk94BpRMpimlzVjL2JGGTK3pTtLOeR4Aeh0=
X-Gm-Gg: ASbGncue0y7ESpIxCe7j62osbM4NtzpTt70gZYuNuCiF2jYXACi6HsA67rE+cNsbZAy
	FxbBmud6sK2+tTVJwdSmrkgEGTgN7dq68va3n8vLB/wAD/GYpbvqn8SfkluujWsSXSJiTLTA1ZT
	Y6RSaXWqa+i1nCCpDPkLJUCO0R8LBFe6V7LIyvCSlHoBXlFkF5GXIRJELbyZ7De8wZrMZ+iRd/8
	8G8pb7cKNQGh7Mb6OxNKTajlDz1MY0fcVXPZEmXWOXU1GLgJA5nYEYIrq/AOhp+xZyidF7k7dne
	uMPhY/368U9ji9Y+B6KHwZ5ro6MQnjLePMF3ACqKiqCLtoKbWoOj
X-Google-Smtp-Source: AGHT+IEZpgJbx9x8Shte5+BRZ16avAvT1+wdr0Mi+ErzsXsYe5ooaU2WYdYSImpsg2NCEWK5B0Iz2g==
X-Received: by 2002:a05:6870:6b97:b0:2b8:ec17:66e9 with SMTP id 586e51a60fabf-2bd50cdbd64mr746258fac.11.1740090446165;
        Thu, 20 Feb 2025 14:27:26 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b9548878adsm6600768fac.17.2025.02.20.14.27.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 14:27:24 -0800 (PST)
Message-ID: <7c5e2364-038b-48a8-ad67-3cf0f2fd2be3@baylibre.com>
Date: Thu, 20 Feb 2025 16:27:23 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 12/17] iio: adc: ad7768-1: Add GPIO controller
 support
To: Linus Walleij <linus.walleij@linaro.org>,
 Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sergiu Cuciurean
 <sergiu.cuciurean@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonath4nns@gmail.com, marcelo.schmitt1@gmail.com
References: <cover.1739368121.git.Jonathan.Santos@analog.com>
 <62cb9786b02adde118db9349617cb796585ceb02.1739368121.git.Jonathan.Santos@analog.com>
 <CACRpkdaSY7WH191makzPcZqLd-vBsC_f6yagWzBa65MrC+pjKA@mail.gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <CACRpkdaSY7WH191makzPcZqLd-vBsC_f6yagWzBa65MrC+pjKA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2/19/25 2:34 PM, Linus Walleij wrote:
> Hi Jonathan/Sergiu,
> 
> thanks for your patch!
> 
> On Wed, Feb 12, 2025 at 7:20 PM Jonathan Santos
> <Jonathan.Santos@analog.com> wrote:
> 
>> From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
>>
>> The AD7768-1 has the ability to control other local hardware (such as gain
>> stages),to power down other blocks in the signal chain, or read local
>> status signals over the SPI interface.
>>
>> This change exports the AD7768-1's four gpios and makes them accessible
>> at an upper layer.
>>
>> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
>> Co-developed-by: Jonathan Santos <Jonathan.Santos@analog.com>
>> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> 
> Is it not possible to use the gpio regmap library in this driver
> like we do in drivers/iio/addac/stx104.c?
> 
> It cuts down the code size of simple GPIO chips on random
> chips quite a lot.
> 
> Yours,
> Linus Walleij

I think the answer is "no" since we need to hold a conditional lock
while accessing registers. Namely: iio_device_claim_direct_mode()/
iio_device_release_direct_mode().

Unless we add some extra stuff to the gpio regmap implementation to
add optional callbacks to call these. Which could be worth it given
that quite a few ADCs provide GPIOs like this.


