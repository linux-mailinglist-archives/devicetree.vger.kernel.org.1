Return-Path: <devicetree+bounces-163028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57599A7B1AD
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 23:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35E7D3BA28C
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 21:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE79D19D071;
	Thu,  3 Apr 2025 21:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GfzkScJk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F65C171E49
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 21:52:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743717136; cv=none; b=OdmyILLS/auQhnds1x3vVFSCuOR7C3wJ2RU2PnnaUDIiiw/zWFpXNJOc3K+x2PbzPP5MkDAtZuJVhaHGJhRmrtM2z725I2s4Bq2yPvBUdR3c0cC+8v/fVIRGLUhwLwbv96OvjvC3MAPDhVUtJ1tdjja94Bre+zZnLzIhvkMnAqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743717136; c=relaxed/simple;
	bh=GmFKNkwo7OjCRB3zDhtKR6SA8LbXtBX0zH/ZfRsiMlg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QwlJp/avfda2rTpy4lFxoPbSbp9aBEBqCfdpvIp4hWMPNQY46CmYZp6avTIdyuCAEh5mGzWkJr+T6uXWqefBhlsYul1nbyt+CbhtLPYHJ8mgSplOcLDLjCKPP5kXOj6k47Rh0idyDp/ZE3Tl9gid8xMkb8keH+zFbI01BOPGM4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GfzkScJk; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cfe574976so9619685e9.1
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 14:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743717132; x=1744321932; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8CBMfdre7+DE0f35RrLYETNVW6K15tew9xojKyZNltM=;
        b=GfzkScJkbk+vesgboCudw7W+1d88Vkrfi2Q0sg0BxHHolJYMjI66YYbMhXBKfxhhfO
         uwoxMboWY1HQkpobaY8lpYl/e2XpJJ/xjUeLMOAtBBEwStoaCSgHlc4DiFffF3DrK+O2
         nRvlyzcVkqIbel2sueKufqbBPAjD35bbzxgxTMofNOBDtvb0JQuoJiCwHb0ZMQ2Irelb
         0lO4B0QXPJkTNhn1NjWcKXaVMcV31FaDXxPny2gsTO+y/h9I8e401PRt4rQ+p4fOneSn
         KRFgH6ixYUbpHN9hfm3an5RZ2Uk9H2oW0Dexz6EbwFC7vcfJT2UeH4uRTQ+ScN2DPTF6
         wjVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743717132; x=1744321932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8CBMfdre7+DE0f35RrLYETNVW6K15tew9xojKyZNltM=;
        b=P2kAbmRfrwZIsERnp5mJH4hCLGglUAHBn1DmxoPLTli85HO4Zc3IUylA59nFyJ5gJe
         EbG3BlJx9Sy9+R5pdx/rmjTLs7ZGX1XdDGIeWIw+F5Qc0C2pTHLAPKpwceXKRau4Nmx6
         McMpHvMNpAPJu15fbjovWsP//Qo8lus+jIvKokL9ZL//UUO8yU4qnQ1r/bQUGwc4aS3x
         GGXsMEboDChSKI487+LfdZDvUK20vMBturg3CxVejejR6qjM7PPOyKrZ+lE5Yjj+Pvm9
         qNV7mYbkAJBXBYFMkPjsiSvEr3pXVsmc/lMPHa8bWu0ZCw3Q42CImuLLOCjjy1JXORdW
         r+6w==
X-Forwarded-Encrypted: i=1; AJvYcCUzBXV52LHRRLiZdXOe/q6yRlD/8Usoxy7IubGkKwV2UO8eUBMQohdQjGub0TWVhAxF3kXQqEBAvBqS@vger.kernel.org
X-Gm-Message-State: AOJu0YzfjAHRJeH1srDORQHiGm5zeMRBJFyovDbAfDjVmgXPaIqSSvFu
	uT5qtGajjfEEHvXL1gvlC+IIR44kqxPc6+SnE+noT6zhYCd23AHrY3+0/3Vs9os=
X-Gm-Gg: ASbGncuLLihGg9VDt//vZzQPge0OxYYBa0hMmlevHEBcG1wKem2cYmjkyiuZgx9jdJ2
	ckKxnN+CZoE4LKrT7Y3YlMU3D9SUQYCDqOX9tZF/CwyuU45SXZItMs6/b5Cw8amSuST8CbfIs2l
	cj8BaveSopX5Hb6ge2bC/X1y8ah/6juCzeft6efphSD13bjXl9MaY7+9+zpvKsIwmY4MUOg/N1y
	2GAFN7d8kwvPY2+7nviyLjgc/j5bR+8UN9FSOCylwONsy/LEq05uWxuWa0xgakv/KrPyElyVM0X
	TsnkX5EzNZ4+hUTADnEtWVqAK/xIDLWVRx5yQJR4p2cTXH8QglmQdNbAgEyXTtp38G6ncOGilzs
	VY4EUCEaV
X-Google-Smtp-Source: AGHT+IG/Xfu2XEhsB4cp+SWI6+hlJEq3oPbspdd1RkIZaN7jaXBv9WIRoN7YzWMpD/aceNrTbTwLeA==
X-Received: by 2002:a05:600c:1f0c:b0:43c:f81d:34 with SMTP id 5b1f17b1804b1-43ecf85db8bmr6388875e9.9.1743717132315;
        Thu, 03 Apr 2025 14:52:12 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43ec364c959sm28482925e9.25.2025.04.03.14.52.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 14:52:11 -0700 (PDT)
Message-ID: <68ece50e-568b-47d0-9d36-b5eb9ec17c2c@linaro.org>
Date: Thu, 3 Apr 2025 23:52:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add NXP Software Watchdog
 Timer
To: Krzysztof Kozlowski <krzk@kernel.org>, wim@linux-watchdog.org
Cc: linux@roeck-us.net, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, S32@nxp.com, ghennadi.procopciuc@nxp.com,
 thomas.fossati@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org
References: <20250402154942.3645283-1-daniel.lezcano@linaro.org>
 <20250402154942.3645283-2-daniel.lezcano@linaro.org>
 <ffe49998-f809-458e-8eda-002d0c0fc32a@kernel.org>
 <c449fba0-476e-495b-abbd-65ba2d44d590@linaro.org>
 <9c47cd4d-41c7-42b9-8f00-a1ea9b9f6ed8@kernel.org>
 <5c2def81-11c2-4e24-b633-aabdb50cab34@linaro.org>
 <a9115802-09da-4475-8957-eb74de3ee36a@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <a9115802-09da-4475-8957-eb74de3ee36a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/04/2025 17:35, Krzysztof Kozlowski wrote:
> On 03/04/2025 17:33, Daniel Lezcano wrote:
>> On 03/04/2025 16:16, Krzysztof Kozlowski wrote:
>>> On 03/04/2025 01:01, Daniel Lezcano wrote:
>>>> On 02/04/2025 17:56, Krzysztof Kozlowski wrote:
>>>>> On 02/04/2025 17:49, Daniel Lezcano wrote:
>>>>>> Describe the Software Watchdog Timer available on the S32G platforms.
>>>>>>
>>>>>> Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
>>>>>> Cc: Thomas Fossati <thomas.fossati@linaro.org>
>>>>>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>>>>>
>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>
>>>>> Best regards,
>>>>> Krzysztof
>>>>
>>>> I ran the make dt_binding_check but inadvertently removed the "oneOf:"
>>>> after :/
>>> Other errors were also not fixed even though you got report on them on
>>> 29th of March.
>>
>> Which ones ?
>>
>> All errors were coming from the oneOf removal, after re-adding it they
>> are all gone
> 
> 
> The same as from previous patchset - wrong unit address, maybe more.

Indeed, my parser was not up-to-date and did not reported the error.

Thanks for pointing this out

   -- Daniel


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

