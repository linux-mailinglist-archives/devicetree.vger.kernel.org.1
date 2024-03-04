Return-Path: <devicetree+bounces-48181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDBE87094D
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 19:15:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 855E8B226D9
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 18:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 323FD62157;
	Mon,  4 Mar 2024 18:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="giHlgTOS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6EC62140
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 18:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709576146; cv=none; b=XTIi4wXZBKaLNVoz4gLmNB4a8HntziubY5+66bIzkGngaQpBx/0gCLKX3mFGUX35JlR0Y8LOvLut/jM7qnV9jatfXXuoqSh37cy2LMPHVwdLP88Kc7e8LRuseCvJelDQfmUaO21k73f/lZv3PjQnfwuwVtJheoyJAKzwvF4v730=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709576146; c=relaxed/simple;
	bh=VauSxUeKDlLS0XJnXJZoJkn64Xnlj2KotCEvFkmd1CM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ACKt9IGE76r36BXsNWRgL/qAzkBYsOsXeYoj024Wl13Tvqk7t9sFdUyXbwmB5OEI7jzQRyvN8zVWWCIoxvtAO+H4hHngr021xQ/voyStTcTYHjJbMWGTNNr28PqXtTpNhlfW94vL6r63rBI1qdUfqPyoF2xa228MrZ4tIQQlUE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=giHlgTOS; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-412dda84216so13713215e9.3
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 10:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709576143; x=1710180943; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aQwEQKxahRfy1UUMYJ9k49LKptzc1VSVKXuBad2xfbI=;
        b=giHlgTOSMvkDMXM9IyCrVGaDCfjBaMJAoyL1F/KeJob1GmvRprtAPAVlvoLINkRH1E
         Tok4xu3GvvAAqEzx994pnEAx3HqzuE089NMI6tPZzaUZfC/reNJL9a2JNF3DctxvNGYK
         4hqIIWCyLD6AfVuAO9KdBoOhoo7xN8ObZeMgkWxcyyZn2Ryb8dBk8i+GbIs8dfd5vLTd
         l2tgEIfGFd4kP//tzDBpTJWXf98WRgqYu34mRcl3S0YPqn5p64P8UXDf8wwQImTm8gCA
         3p9gFgSHaH2Dpq8TnINIpPud9sUUn91eqvRTVSOpFw88X1FWbAAPyi6QujbgrEVSnlbv
         oPAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709576143; x=1710180943;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aQwEQKxahRfy1UUMYJ9k49LKptzc1VSVKXuBad2xfbI=;
        b=Vqpy9cD2QtHFryrgdjwqSdiBBenuij//5dSYLsB8AnegENl85Cj0VVbt7ABCcg9Tfn
         iMYUqGQqTddcj2j25CW937dJexhJlEFKIAGd6cpDO+9KUOHYGoRj+GZov4bOMyDCUFAW
         qFHY7+QCHPXt02p7TW0JpPJ5X5Guxc4/onOF3SbsT8YSikT8E8z61l7f0fSmhigeBfEx
         4yyz6ei/hUFya+u2qvVNebrqQyu+VOWq5+9ftA9dqlXjVsJ0gWobpwWukx2Rm9AcQb53
         1mJEJZBqe8TOhcELNP1ZhH8phbQyYbpcIXfNeeG8U8cDrHZ4GPqWLswsXNHJj7fwgnfZ
         hswA==
X-Forwarded-Encrypted: i=1; AJvYcCWWzGD0UbnWCE8ioRtakdBAHdabA3pr24UX2shK0l9rXtCGn2pfnfVut4rFoTHPyLRklReUhkDPMPRK2bANnYYIBI2QP0kTUVhEDQ==
X-Gm-Message-State: AOJu0YxZqPfYi6rjc/oOnNSb1i/NJgfbCB8zDrwLsPQBW8G353BxDl/X
	Gu0rJ3lTm8cXXvpHOQP4JFUQ6mhk0K9EeLIkudmZtw/q4jtAOTbu6TGp0ayHo7s=
X-Google-Smtp-Source: AGHT+IHS8mH5ep3olTYKjEqY60XC9rt4PJOU0PV0d/ZJCfSs+EsqO0ZGvDc2uljxo9I10eGxI2VHig==
X-Received: by 2002:a05:600c:1d8d:b0:412:e7e2:b134 with SMTP id p13-20020a05600c1d8d00b00412e7e2b134mr1415090wms.36.1709576142191;
        Mon, 04 Mar 2024 10:15:42 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.35])
        by smtp.gmail.com with ESMTPSA id i6-20020adfb646000000b0033e033898c5sm12820159wre.20.2024.03.04.10.15.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 10:15:41 -0800 (PST)
Message-ID: <0852a6bc-315c-49e2-84fe-7dadca71df3d@linaro.org>
Date: Mon, 4 Mar 2024 18:15:38 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] spi: dt-bindings: samsung: make dma properties not
 required
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>
Cc: Mark Brown <broonie@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 andi.shyti@kernel.org, conor+dt@kernel.org, linux-spi@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, andre.draszik@linaro.org,
 peter.griffin@linaro.org, willmcvicker@google.com, kernel-team@android.com
References: <20240301115546.2266676-1-tudor.ambarus@linaro.org>
 <CAPLW+4=6oYcs0NPXo4ffLiCvtNQ-tY1s_isaxTX8dcPkV56xMw@mail.gmail.com>
 <cb426fb0-2f27-4c9b-89f5-7139354ea425@sirena.org.uk>
 <f06328e4-b283-4302-b9c1-6473aa3cfa25@linaro.org>
 <CAPLW+4kjXK=EWx__h0bX0rJMrL33E=t4YDzSOfObmvtG9aS+jg@mail.gmail.com>
 <20240304165635.GA739022-robh@kernel.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240304165635.GA739022-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Rob,

On 3/4/24 16:56, Rob Herring wrote:
> On Sat, Mar 02, 2024 at 10:23:16AM -0600, Sam Protsenko wrote:
>> On Sat, Mar 2, 2024 at 3:36 AM Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>>>
>>>
>>>
>>> On 01.03.2024 22:42, Mark Brown wrote:
>>>> On Fri, Mar 01, 2024 at 01:28:35PM -0600, Sam Protsenko wrote:
>>>>> On Fri, Mar 1, 2024 at 5:55 AM Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>>>>
>>>>>> Since the addition of the driver in 2009, the driver selects between DMA
>>>>>> and polling mode depending on the transfer length - DMA mode for
>>>>>> transfers bigger than the FIFO depth, polling mode otherwise. All
>>>>>> versions of the IP support polling mode, make the dma properties not
>>>>>> required.
>>>>
>>>>> AFAIU, the device tree has nothing to do with drivers, it's about
>>>>> hardware description. Does making DMA properties not required here
>>>
>>> correct
>>>
>>>>> mean that there are some HW out there which doesn't integrate DMA in
>>>
>>> no, to me it means that the IP can work without DMA, only in PIO mode,
>>> regardless if DMA is integrated or not. Not required means that the
>>> property is not mandatory, which is what I'm trying to achieve here.
>>>
>>>>> SPI blocks? Even if this change is ok (I'm not sure), the
>>>>> argumentation doesn't look sound to me.
>>>
>>> switching to PIO mode in the driver for sizes smaller than FIFO depths
>>> in the driver guarantees that all existing compatibles support PIO mode.
>>>
>>> Are you saying that if there is a physical line between an IP and DMA
>>> controller, then the DMA properties must always be specified in dt? I
>>> thought they can be marked as optional in this case, and that's what I
>>> did with this patch.
>>>
>>
>> No, I would wait for maintainers to clarify on that bit. Change itself
>> can be ok. But the commit message shouldn't mention the driver,
>> because the driver uses (depends on) device tree, not vice versa. The
>> device tree can be used in other projects as well (like U-Boot and
>> OP-TEE), so it should be designed to be universal and not depend on
>> kernel drivers. The commit message should be based on particular HW
>> layout features and how the patch makes the bindings describe that HW
>> better. It shouldn't rely on driver implementations.
> 
> If the controller is DMA capable then it should have dma properties. The 

should have as in required/mandatory?

> compatible should be enough to tell if it is a case of 'can only work 

yes, I agree

> with DMA'. Otherwise, it is going to be up to a specific user. Even 
> within Linux, you may have a serial port that doesn't use DMA for the 
> console, but uses it for the tty or serdev.
> 
> Of course, if a new device is added without DMA properties and they 
> are added later on, then they are going to be optional even though the 
> DMA support is always there. I can't fully understand everyone's h/w. 
> 

The SPI controller that I'm working with has a dedicated channel to the
DMA controller. It can work without DMA too, just by polling registers
or by interrupts.

I can't get the DMA controller to work correctly yet, and since the SPI
controller can work without DMA, I thought that I can mark the DMA
properties as optional, add the SPI node in dt without DMA, and add the
DMA properties later on, after I have the DMA controller working
correctly. Is this approach wrong?

Thanks,
ta

