Return-Path: <devicetree+bounces-252687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CA6D01FD4
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 598FD303753C
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D4D3BC4F2;
	Thu,  8 Jan 2026 09:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DSCGezEd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D35C42884F
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767863853; cv=none; b=k9GeIMyWFrsA4D9PI14v2NvaiumkK/psThiPYOkD0S8w0HVKyu4ZTsfrkrQnSiRH0PUHomS0tpogf1VghLQLaeaw24yMSF4/gyCddsR03Z8MmLNi8Mk/JTqdIogmkqWRsaDDT5rCN3A9j7WESp+dq0xk96ialgXB7mnv776LOoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767863853; c=relaxed/simple;
	bh=B+hE1zp+0cdPWIc8GokfyF2eQY9+MSW38I8xKZ2DL4c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lcXOl0I+t8TQMt21bMHvE8u4KVHx5ctnM8Gw7tppGOhHTr9K9ECImxkwNNMdLKAvO+Bg9+KEqwOnU+TLfF/MVai88kZlUVwIfazfCaYIJMayqHIW3kCyYq3+ItpxvAgCLo69ReEtwqvnmHAnQhVAemOosdrJrNJ5NQ1FzMCUPHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DSCGezEd; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso27700335e9.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:17:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1767863839; x=1768468639; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R5S8zQ9e2sGnfnBt19hJ4W6t0YOug0PEiUPvQAC/cPY=;
        b=DSCGezEdwl1KV9e2IOkJx1xGxrJg7ZlDAlN6RpdTKiNFje2uiajqGswPAvantgiTb2
         WB8LESih/IlcDPIpurpz6IjVPTv5mbyx9QgJU5BoR0e4M6zwo7tVsRFzFQUpjDpa2P90
         rFRpnk47EDOEAlKglsG9qvg+Pu5SARV5nhWvJn5zk6uPPbAdCDhfwY2WTfIuk7QTWoFV
         hmARPWDH3WLG1ZDYNvmW6IHllSALdeXYdn1kMTVqK7pUA4Y9kS4zI9OJy5xiLzBgVfJR
         1kJB6F7GGW9XkGhlRxpvd67e+0bIdzB3zwKtDE1L2A0dFIimJkCxHCwZ9L2O2MTfuA60
         pRGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767863839; x=1768468639;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R5S8zQ9e2sGnfnBt19hJ4W6t0YOug0PEiUPvQAC/cPY=;
        b=i//wwLCjDuns+0r8rvT0Ee4mZKr9bCVmKzdqLRUmQL72J4MpGKDtairUy2+pHnPynF
         a/N9RUel4wybp2sPRcQrYRsDNWZnVeiBcNTzXxKTUOuWivSS7rGGFe9S2sCbKJEfDEW7
         tILpqDNeUgZsXdmc4St/7mRRjj4lmZqpEnc0nkata9KTonG1/PTQeLpSSt/w7A1CcA5f
         3QTXU6YbYlPz9xfhLjzQaczAu8c726df02fhQvz0u64sypnCTeGX/xGSiR/BvOqSwAj/
         c72aoiAlIHK+A1mBKyqH9+AazN0ALWOdVNG2/2OD0SDo4UYMHss9doqa0kdF86A/MV2f
         GLMg==
X-Gm-Message-State: AOJu0Yx99iLtork7gYP++tbpxM3QabdVu4/oAT4KSH5aS6Yh8k6WRZVO
	BrEsCHATpZAERHx5eRpe7hvKz6lI+Me8qM6pBRWkrU9XtLVYYHZkzFnpSJinqVFsf/w=
X-Gm-Gg: AY/fxX5jBRPtWD3gM5ncUKXoBmoQX4uxOQUkm+OXqWLad08fvWJXXbgAMVIZQToaeYc
	sffpES7HzTVNTLvMsUGvH208ai6RG2anwKoIBUinwwaTxy3RK/7dQjTws2JqeQwDDBrdISq4yBV
	27maLl9izjEftxHJmTZniGCDeKvglRxDBPOR7PfBCi9QfUD3YeZjuFBQidDUDN3tJAyEya94Zp7
	Uat64ISwpp/OF94VFvO8WxaN5CMbGtEpPoxZMKAH5GudLkcDDvDWCYzmglda7jgF65VHArVbX08
	EhcGF779u2u6JxfUx2IRkE92/tquAwnEmkdIW79u7/qe7bsroZw+iS0eBMOc61kYdHXiz1IGdFZ
	Eskx8Gd9L9bF0vIde6VDhS9tMEGviklR3d5g0Cw25dcQzoIb4mpNLMKv8xmx/BKGKvWaSnf5bzE
	H7LbVe8VB4QcAtM85caw==
X-Google-Smtp-Source: AGHT+IEhTW+XL3PZlPk8egAcp2/D9p50DS7jTT6A1e+Oq9/3ughseVDLhZT1N7KDmEogh4RRmDNh7w==
X-Received: by 2002:a05:600c:c4a5:b0:477:95a0:fe95 with SMTP id 5b1f17b1804b1-47d84b347ebmr74042375e9.24.1767863838937;
        Thu, 08 Jan 2026 01:17:18 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f6ef868sm140085435e9.11.2026.01.08.01.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 01:17:18 -0800 (PST)
Message-ID: <eccf0609-562c-426d-b72e-97673a97f069@tuxon.dev>
Date: Thu, 8 Jan 2026 11:17:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] dt-bindings: timer: microchip,sam9x60-pit64b: convert
 to yaml
To: Nicolas Ferre <nicolas.ferre@microchip.com>, Rob Herring
 <robh@kernel.org>, Conor Dooley <conor.dooley@microchip.com>
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-kernel@vger.kernel.org, conor+dt@kernel.org, conor@kernel.org,
 linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org
References: <20230525125602.640855-1-claudiu.beznea@microchip.com>
 <20230525125602.640855-4-claudiu.beznea@microchip.com>
 <20230525-straw-fidgeting-4c1099aa16fe@spud>
 <5edf3d3b-6f59-0af3-6414-940a278962bf@microchip.com>
 <20230526-knickers-aim-e01220e6a7cd@wendy>
 <5a5d25a2-e6b5-fd69-f615-cd3d6ed33b9f@microchip.com>
 <20230526-unsubtle-chowtime-ce329d7e5627@wendy>
 <20230608201707.GA3359628-robh@kernel.org>
 <276e53d3-46ae-46c6-ba64-f3337bb963d9@microchip.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <276e53d3-46ae-46c6-ba64-f3337bb963d9@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi, Nicolas,

On 1/2/26 18:03, Nicolas Ferre wrote:
> Hi,
> 
> On 08/06/2023 at 22:17, Rob Herring wrote:
>> On Fri, May 26, 2023 at 08:55:39AM +0100, Conor Dooley wrote:
>>> On Fri, May 26, 2023 at 06:41:39AM +0000, 
>>> Claudiu.Beznea@microchip.com wrote:
>>>> On 26.05.2023 09:23, Conor Dooley wrote:
>>>>> On Fri, May 26, 2023 at 04:47:28AM +0000, 
>>>>> Claudiu.Beznea@microchip.com wrote:
>>>>>> On 25.05.2023 20:14, Conor Dooley wrote:
>>>>>>>> Convert Microchip PIT64B to YAML. Along with it clock-names 
>>>>>>>> binding has
>>>>>>>> been added as the driver needs it to get PIT64B clocks.
>>>>>>> I don't think both of these PIT things need to have different 
>>>>>>> binding
>>>>>>> files. 90% of it is the same, just the clock-names/number - so 
>>>>>>> you can
>>>>>>
>>>>>> But these are different hardware blocks with different 
>>>>>> functionalities and
>>>>>> different drivers.
>>>>>
>>>>> Having different drivers doesn't preclude having them in the same
>>>>> binding provided the function/description etc are more or less
>>>>> identical. I was confused by:
>>>>>
>>>>> +description:
>>>>> +  The 64-bit periodic interval timer provides the operating system 
>>>>> scheduler
>>>>> +  interrupt. It is designed to offer maximum accuracy and 
>>>>> efficient management,
>>>>> +  even for systems with long response times.
>>>>>
>>>>> +description:
>>>>> +  Atmel periodic interval timer provides the operating system’s 
>>>>> scheduler
>>>>> +  interrupt. It is designed to offer maximum accuracy and 
>>>>> efficient management,
>>>>> +  even for systems with long response time.
>>>>>
>>>>> Those seemed like they do the same thing to me!
>>>>
>>>> They do the same thing, they are timers... But the way they do it (from
>>>> hardware perspective) is totally different. With this would you still
>>>> prefer to have them merged?
>>>
>>> Yeah, one binding would be my preference.
>>
>> I'd probably just leave them separate if they're pretty much unrelated.
>>
>> Rob
> 
> I'd love to see this (old) thread revived and I'm ready to help.
> In particular this pit64b or WDT pending conversion to yaml which 
> generate some errors while running dtbs_check on recent Microchip 
> board .dts.
> 
> I tend to think like Claudiu and Rob here, hardware are so different 
> from so different era, that... well... I would keep them separated for 
> the sake of simplicity and future proof.
> 
> Claudiu, tell me if I need to help with this?

Unfortunately, I don't have the bandwidth to look at this in the next 
weeks. Any help would be appreciated.

Thank you,
Claudiu

