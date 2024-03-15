Return-Path: <devicetree+bounces-50763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 140A587CFCB
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 16:05:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 375B21C22943
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 15:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADE4F3C470;
	Fri, 15 Mar 2024 15:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LQHCrmE3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F26A3D542
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 15:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710515127; cv=none; b=CIZmTndxbfyemYU9HFM7Qdq7CRwQtycZamX6tXe9KPQyxF+lIaL3eQo+bkzhQUaQj2tHYZ9A39lbC+PEKRDKFnF41Eqn83N1W+YINwVe6nUixu9iP9TvWIJiuxQfNMPK54UlxJuXCf5+JJxJ/Y6xZprfzcqV4MFZLIjWB/UjsrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710515127; c=relaxed/simple;
	bh=608S623xqC0b/8HelcnyHmJp3/fN4Q27AKppt8+4SSs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jJrR4FpzZOfJNWuuNLNoCaVp683tqmOeJQm2CW39OCpiHy9AXjUYyjMFzZ3ydJNVtpg4zBtbeJ32g6y+/GKsaVUV8GVW+wE3EbZhIcYJT9f4iDcsI77LVK2fOYPl8m+D95asNGbQyJ/9Wq7gPSBmkKWzX2gRAxZH/1NK+BdVsZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LQHCrmE3; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a468616ed70so107466766b.3
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 08:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710515124; x=1711119924; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=24MutwcHiBZkjQYCos7XDdDwAEGZOLUpdfO5OhJienA=;
        b=LQHCrmE3vq4+P4FXjfetbGuTF5nVJjW16VjjpIsSaqljUy4Mx1G3QbH7kIz615JB0y
         mifH6On3FYNeDgWpOg4d3iKvGVkPx5O+rgnW9Z0zlGJtCmWKfZ3jsMbTT9f7tOKGA0cG
         R7gt+uGC/g71lTG/IBiOjuSDVzRgP3w/WIsOcNjWt6nQ2+OZmBsG7aSUqxEu5OLgUy5y
         QjgAophCgvHYi6SK31LHxgBxTGI1d/vNov6zLsBW1bgcJXUUCiVN/MFq9VP/Q6WfHd4B
         KzKs9lzCuHg1Wql+38LwwHBN7Wt0gCT2wg9AO3/wd0MGF2haYqzDYMC/b/kUjdNP+s72
         i9lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710515124; x=1711119924;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=24MutwcHiBZkjQYCos7XDdDwAEGZOLUpdfO5OhJienA=;
        b=kE0cIWbTuchQUIj+d10KiKAQFminLhHfU881SOIfxQHTeeFTbFQV4oODHbVJkN5cLy
         pFjzA/i7Gex9LY5AHaMtxqcdkrIzKrwCPceb2uPVWrOVolcuQAQx2xwQ8ieIWt63uvbl
         5LP89Rv0Ckbp6985RZs8Q7ohY6av9n8G60IMX+BU7HuM3Ku9WjjKG8u1BWjbXFevRihG
         +TeEY2gB6qOvazZ13BDAaghuBxUW4xvpTNCThP7OT32TCZD+p4RJ6n9KAaTlbLhAs1Jl
         cmu/VawoMLcfJ34yA7YNXIMMBxkCsf/ehhVnLqGa8LSs3/dxsj2+i8DuTiEE0MNaWuds
         BWiw==
X-Forwarded-Encrypted: i=1; AJvYcCVNVNHHZUmCOvi4GjxcL0In4lPOIXGgq6qofJQQ+5dqkkV2KVpLtGqP98nfwDZ0Rk2RxihhKjP1FBmr2r6cOA4tx8BPpjnj+tdGSQ==
X-Gm-Message-State: AOJu0YyHf8Z0Ytmu9NzlQGpvW2zWEj9USnGJV4+ip21AURU/1P6k4wq7
	6tEMPjw+b3G3QWXrOcWzuD+YtzbwRWPTVOBvcXpGph+PtZtBamFRME8xso0tVmI=
X-Google-Smtp-Source: AGHT+IEO2hyzf/1xUUR4DWAg0e4i1y4j4ET1cfOEMZuvZS0x8BJ0B3U9ZhIu1vGtdXCzcUUMUTMYUw==
X-Received: by 2002:a17:906:9c8c:b0:a3e:cdae:7aa2 with SMTP id fj12-20020a1709069c8c00b00a3ecdae7aa2mr4284674ejc.35.1710515123916;
        Fri, 15 Mar 2024 08:05:23 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id j22-20020a170906051600b00a441a7a75b5sm1773189eja.209.2024.03.15.08.05.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Mar 2024 08:05:22 -0700 (PDT)
Message-ID: <fd53a0e7-fa70-4c0d-b578-393183487335@baylibre.com>
Date: Fri, 15 Mar 2024 16:05:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/18] ASoC: codecs: mt6357: add MT6357 codec
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Nicolas Belin <nbelin@baylibre.com>
References: <20240226-audio-i350-v1-0-4fa1cea1667f@baylibre.com>
 <20240226-audio-i350-v1-12-4fa1cea1667f@baylibre.com>
 <9891855d-2284-42e4-9d3a-35ba406540e8@sirena.org.uk>
 <c441a132-b16b-4244-a712-8971c902d4d7@baylibre.com>
 <ff3d2db1-697b-42c6-a0f2-74276e9fc098@sirena.org.uk>
 <dda0e6ba-4538-47a0-95e9-6adcfd4169a7@baylibre.com>
 <0d31ffb2-9df5-4c3e-a728-902b71a1a713@sirena.org.uk>
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <0d31ffb2-9df5-4c3e-a728-902b71a1a713@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 15/03/2024 15:30, Mark Brown wrote:
> On Fri, Mar 15, 2024 at 12:01:12PM +0100, Alexandre Mergnat wrote:
>> On 13/03/2024 18:23, Mark Brown wrote:
>>> On Tue, Mar 12, 2024 at 07:03:25PM +0100, Alexandre Mergnat wrote:
> 
>>>> Actually you must save the values because the gain selected by the user will
>>>> be override to do a ramp => volume_ramp(.....):
>>>> - When you switch on the HP, you start from gain=-40db to final_gain
>>>> (selected by user).
>>>> - When you switch off the HP, you start from final_gain (selected by user)
>>>> to gain=-40db.
> 
>>> You can just read the value back when you need to do a ramp?
> 
>> You can't. Because you will read -40db when HP isn't playing sound. That is
>> why the gain is saved into the struct.
> 
>> Let me know, when you change de gain to do a ramp down (start from user gain
>> to gain=-40db), next time for the ramp up, how/where do you find the user
>> gain ?
> 
> In the register.  You only need to reset the gain to -40dB at the start
> of the ramp.

Sorry but I don't understand your logic, I'm not able to implement it...
If I'm at -10dB and doing a ramp to reach -40dB, next time I will read 
the register the value will be -40dB.

This implementation is also done in other MTK audio codec drivers.

> 
>>>> Also, the microphone's gain change when it's enabled/disabled.
> 
>>> I don't understand what this means?
> 
>> When microphone isn't capturing, the gain read back from the register is
>> 0dB. I've put some logs in my code and do capture to show how it works:
> 
> Is this a property of the hardware or a property of your driver?

At the end of the capture, the gain is set to 0dB by the driver.
At the start of the capture, the gain is set to the setup gain.

AFAII from the comment in the code, it's done to avoid the "pop noises".

> 
>>>>>> +	/* ul channel swap */
>>>>>> +	SOC_SINGLE("UL LR Swap", MT6357_AFE_UL_DL_CON0, AFE_UL_LR_SWAP_SFT, 1, 0),
> 
>>>>> On/off controls should end in Switch.
> 
>>>> Sorry, I don't understand your comment. Can you reword it please ?
> 
>>> See control-names.rst.  Run mixer-test on a card with this driver and
>>> fix all the issues it reports.
> 
>> Ok the name is the issue for you AFAII.
>> This control isn't for on/off but swap Left and Right.
>>  From the codec documentation:
>> "Swaps audio UL L/R channel before UL SRC"
>> This control is overkill, I will remove it
> 
> This is turning the swapping on and off.

-- 
Regards,
Alexandre

