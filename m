Return-Path: <devicetree+bounces-227329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B61BE08CD
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:53:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8F53550762A
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E6E3081B7;
	Wed, 15 Oct 2025 19:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ObYaBkA0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EB0221FBD
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557961; cv=none; b=fc/Rq7Jz9vZ3lERYQ57wHgLXaWeDBd8FbSJzmOkTRvfpfp0EXG1u9AtYEwdjZsekS6lNLAtbwLs+gR+qzloYdjPkEZ1qG2mu1cWIst76oDkKNg37bRIK357xrwtuhOjW6/v4QYuWUe2+Qfoc3ZPOQXOGXVqA0MuE219frXVembE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557961; c=relaxed/simple;
	bh=af8Xe6TRc+JzmwAuvgEbc4JHLFA1oiSBVP44j7jh3EU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SWiPqMVkI46TvrXm6yDu2jO7UD8mV5qKpINlMFlCXe1t49HR4oPAE9JcaVPhIKEIam5BG6cqwuNj7EzYG9W16F2M2ZmInKnG3HgeqlaCNS8v6QMot88ElTpoPHrBQwo7cT+DVFxgUcmLbcpnahn4HS1tSzPstNdpI3iHDkWh5G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ObYaBkA0; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46e6ba26c50so45026295e9.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760557956; x=1761162756; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9GS1idVixeI5e2i+7QHqAFbRFPE0KaUN0lsPmnrv+9w=;
        b=ObYaBkA01lQyxQhQ8kKSQS/RPGNqcvyHVTldqN5eRNylfz7gCGR5SvaQoP/MB4iNVT
         3DchSRkM+24PNgUiYDUXTMT/dNu9OEwYdp3YbvMvEtQad0m4DRNZ3PZZbl3z//pLOWSw
         kjfknvKRcAs40ttBipcx0cvgoj1ZQ/0Yd4fPYEn2+XLSettgAgu7H9aagLhvuIavhXb9
         U+6Uxv9GLmntVcWFMCsZDezMt6fqklBHMw5dEBa6+G6SG7LBEIqh0lrp6qqexrUGLzMY
         9P7CRhdbq+Q4XA+0KtpcOy5MrztJB//q8ay1nAAPwNgHAuzxeMfAEWchvccMoKrOVQR0
         h3HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760557956; x=1761162756;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9GS1idVixeI5e2i+7QHqAFbRFPE0KaUN0lsPmnrv+9w=;
        b=hnuPCfFsC1eBlVcCht7p7ooNbs7cSAhAX9GjB6iA9gHIW+vWU77tO1bRy4CMp7ayaU
         PItTl9Q7WDo3LG6SDZU6fhkNB1y3BoD/M8SsXcQM9Ki8K72Zoplyw4zkM8zmOL/Dlb/a
         zbTe8Q5gVXeAwBzwm2dTYhSovaBou/wq3wYsGEuj77x7Cc0CORE7vabpxYknZ7XxRkS6
         DCztu6ZOpLVVrN/ZIUIxFJDC59JAXHAe3QV8Hu3jG2zjVfJ6/HhmAeOhss87aR+XYTBk
         W/B4cnWy/2jsifnvxKNPk9Fauef4SAKF0PVsk5MAQeF+8+BJe1+JzdTPlAApUTJNqjK/
         2lag==
X-Forwarded-Encrypted: i=1; AJvYcCXNmFOBRPU8w9hQMdVjaBLYQxh+5WPmSvlyYPwkV4mbhyLcVloi56lZcp9Vh+a/iE0iNJ3K9JuZn3Lt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4fuUk0z3RjEjFv5FMRlf8nRO4fAfk+3QBAwyFyLhiRJLPNJyy
	8O4czMnuzFlubR0VaB4j/gPXtk1Q3cFQbzTp00JPFYgi70GxHU4FaHUNjzihJwN3GnE=
X-Gm-Gg: ASbGnctyixSkR1jV71c1SldiKZ+kCyOXcQNL7v52zAQer35h4F/pGBiTGlaNou0DLyq
	NCVyw6AFoiRVkW2xOuOkB2gh+m6FzH2W6och12OpwJ4fpRxtEUtLZLmWoFTvKjNSjznkipu7GQY
	7H+agm27KxuadJXNMngLgkhbumSSvcdVCBPF+E/ZDNfzFfS1/T2+4zRq/UwPDAmHBXzNyCWbS+5
	ubujVX94BGMsH/KL3CeEbLMRHkqBpdoT/brOoiJoGgxEMI8fPJHcQA0xxF+DIl6aBpN/wF45VxE
	f41231DW6pMqHSEf1lsszTqs5KaCOY6TyTxBNltoKCUs7dG7RW5Uxs/Mxn4t47nXjVRNr7GDSp1
	psBTDTjOvr2pqXb8RwIATTDjA5Ujk2+8uUs7ZgxH7mk22PzJzskUPhlIzrnTP5uPLRzQZsBkcbh
	Ap0ZZYg5TwOHNy/6KxJ42AVU0KTUpTlwbQ0wN+gdCYWabSZV6+/KGPRAHHtE4whZxuFoA=
X-Google-Smtp-Source: AGHT+IGkZ6+GeFJQTzXCmHptwwr4bo+TRjYBptncrFFbipQ1Aojn7DOqu6C8j1sCaiyxrTrPkDJUeQ==
X-Received: by 2002:a05:600c:a4a:b0:471:672:3486 with SMTP id 5b1f17b1804b1-471067234b4mr23258485e9.15.1760557956297;
        Wed, 15 Oct 2025 12:52:36 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47101c2359fsm48647285e9.11.2025.10.15.12.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 12:52:35 -0700 (PDT)
Message-ID: <aae11951-35c2-48f8-b919-e32393279c79@linaro.org>
Date: Wed, 15 Oct 2025 20:52:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: qcom: camss: Use a macro to specify the initial
 buffer count
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20251014-use-marco-to-denote-image-buffer-number-v1-1-f782e4cc622d@oss.qualcomm.com>
 <62da6efb-24d0-4a6b-9a52-c8f981f09d30@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <62da6efb-24d0-4a6b-9a52-c8f981f09d30@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/10/2025 20:22, Vladimir Zapolskiy wrote:
> On 10/15/25 05:42, Hangxiang Ma wrote:
>> Replace the hardcoded buffer count value with a macro to enable
>> operating on these buffers elsewhere in the CAMSS driver based on this
>> count. Some of the hardware architectures require deferring the AUP and
>> REG update until after the CSID configuration and this macro is expected
>> to be useful in such scenarios.
>>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> ---
>> This change use a global macro to specify the initial buffer count. It
>> meets the requirement that some hardware architectures need to defer the
>> AUP and REG update to CSID configuration stage.
> 
> Both the commit message and the explanation above brings no clarity on
> the necessity of this change at all.

I don't agree. Removing a hard-coded value for a define is an obviously 
correct change.

> This is a dangling useless commit, if you'd like to connect it to
> something meaningful, please include it into a series.

No. It is fine as is.

---
bod

