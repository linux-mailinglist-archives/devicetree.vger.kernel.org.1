Return-Path: <devicetree+bounces-200381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEB4B1481E
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 08:22:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1E9F7AD54B
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 06:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E902B2367D2;
	Tue, 29 Jul 2025 06:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kKhbdNrI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192E91DE4CA
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 06:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753770117; cv=none; b=EmxkvbZuPwd3lQFcywJAcSZTagG4ChY+1oSf0mZ7fP8GwdAKYM0e7n++farSAUITOUrc980tDSkHk+gTmvLPwcMEn1fw2LXcmhAhIIgWL0NTlRx/ee4ZTzmHGMbbwVBOq3+3GHqIpnPXL66y22aUwl/5TnVw/dOYYKe5TSfuWvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753770117; c=relaxed/simple;
	bh=tlgddxrVQjlOsnqEd7zQsT5JtzsOO2cO5+7j+nxrk10=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hkijmd/Voh9t9MHxQkcvI/1+BD8Zrlsw0JeLxlPUZNcjx03GMh4/EoN+XeSa7Q5x4ASNOrBBHPnU0fWOxn0MM2veb7IbNjpSWIqHdYl9plCAHP+hDawddqOo5TVFnbyYyVxuXB7ittbHjyu68L9OgS1xsa3nYtUi1YI2/y+3ohE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kKhbdNrI; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4535fc0485dso4876365e9.0
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 23:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753770114; x=1754374914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=h2hqXZgK8Gn0aRzZzaTCh7Opcg1Hze3iFdTdCpmIFKw=;
        b=kKhbdNrIQNZkM4YhwXl3plXUh24TLiZXN8rl6R90NAhemMkh7Z62A8WwG0Jv4kiy4n
         LQIJqreXoEyqXRn7b2L5tC/4R5Ci1bM37IAhyPJFvCjSvAZg/fAT2MeIh/pu6mVg+tO4
         KQdDxQZLF2NJdOKbeZjVHTwBJlg4A8XH8Ty1YSpaDg/Z+5rgmti0iWpcGdLxh7knykL7
         29BVo74dQ2Wg7MHjwIeLGgzhDUeumSENuderf+Z+QYKqlA+ffJXBjV+66D/PpTduXk+Y
         Xdeix448MJscXw1DReKVaQAVcEam51E3o+Lj0qK8Zsg6W5vTzvvDw2lwW+VcoZ99Mc6S
         QCyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753770114; x=1754374914;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h2hqXZgK8Gn0aRzZzaTCh7Opcg1Hze3iFdTdCpmIFKw=;
        b=ZmQyLC1spMYflcwO+vNPREI0xhsC5H5TuS1uNIIKnT88u0S298iclxzU67iw3D0BAX
         6rWi9le+iZsBFqESOYNBSz3GuSOQgIWGV57NgZKCgJjd3PEjUKPB8BK4pHovTPmOO4EJ
         Rz+7nANSq4TXLeTlcRry4QEdAUHxXsCsFZS2LP3Bhy0zzWvuD/TAViEBav2VDyQqlRQT
         4VTOFZ3pwySwSk5D/0f6hWk/Ae+/35zbjgur9wrgQMQtZ+ghHvXbuogt1ly9022RBHce
         uyRsP1sKAoUQJJGxEciOvcnJkxjPS9dZaDcXnRkPqMPKrk/QU9eS0mUvGbL7oPtrn2xw
         NXJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKlWC9sLW2wH/YGfNj/vOkDgdt7gmASud8Uo0XiERA1SBtO+eGKKWyPYXiiQ9Q9jcS+PN9LW/RMkyU@vger.kernel.org
X-Gm-Message-State: AOJu0YxzxEtbv38isiAUDzeSjSPn8BeEDKTb7Tohtt1OQF/AkyGN3rNc
	uPouPF6Msx8dqzzrybjTob6tIMQqJeXbWUbHIRMzzN+YkZscRK5sv3Gt+RdR515uNCw=
X-Gm-Gg: ASbGncsMg5j38wGl5DYx9uBVDqH23lLQz0bhWKyc+MSSTl+TBJ4oKi80zgYi3ZQFpmL
	JdiV3KaE8PrWvkrAuJRjJbrSdFrxkTfKMVp52CRilcWX/jGVn/WZUFDV0T1Yw68aHCQvWUlb4n3
	RnrHRWOKyh2/Ygre9qV/SmLXEIfBT2j3y7yOvk/R0lC+fu2+MAhEC8qVVNg9oQE2hrIoWyO3BPM
	ZrpVwZP/DGgo0JVTNf/lHEW/RqOxUtl0I2nswjTqqfWjmHozcjJNPuSDSaeTvhcG/hGQHEO7Zqz
	nLsKlr9cR+qb/9fjYXXPkmXenFVWoiBO/QTC2Yv4gGCj9nTMTRO3lrLD42bFO/1dyRkQYqW8xJ6
	MIKtV7ZSmqNf+ZY0yVHgjYJMJ4QDR1C0YdkVMWjIpEnE=
X-Google-Smtp-Source: AGHT+IE5UIyoVNX9D7EyQrHXAExFd3ft6CMjGgFnL5zErWK4QL+JT/zmGZvgdD4HxEYlNnwqbozq1Q==
X-Received: by 2002:a05:600c:5253:b0:456:1823:f10 with SMTP id 5b1f17b1804b1-45876676a3dmr45305065e9.8.1753770114319;
        Mon, 28 Jul 2025 23:21:54 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.218.223])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458705bcb61sm178271825e9.20.2025.07.28.23.21.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 23:21:53 -0700 (PDT)
Message-ID: <61a0c875-89cd-4040-af15-79f57b53f377@linaro.org>
Date: Tue, 29 Jul 2025 08:21:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] arm64: dts: nuvoton: npcm845: Add peripheral nodes
To: Tomer Maimon <tmaimon77@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, avifishman70@gmail.com, tali.perry1@gmail.com,
 joel@jms.id.au, venture@google.com, yuenn@google.com,
 benjaminfair@google.com, openbmc@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250717135336.3974758-1-tmaimon77@gmail.com>
 <20250717135336.3974758-2-tmaimon77@gmail.com>
 <db07c25c-4064-4330-8bdb-8a619b0b2915@linaro.org>
 <CAP6Zq1jDCfhOWj4JwORy22TDZRBr0fnuy5-=G4WO9DFRv7pTdQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <CAP6Zq1jDCfhOWj4JwORy22TDZRBr0fnuy5-=G4WO9DFRv7pTdQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/07/2025 13:30, Tomer Maimon wrote:
> Hi Krzysztof
> 
> Thanks for your comments
> 
> On Thu, 17 Jul 2025 at 17:05, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 17/07/2025 15:53, Tomer Maimon wrote:
>>> Enable peripheral support for the Nuvoton NPCM845 SoC by adding device
>>> nodes for Ethernet controllers, MMC controller, SPI controllers, USB
>>> device controllers, random number generator, ADC, PWM-FAN controller,
>>> and I2C controllers. Include pinmux configurations for relevant
>>> peripherals to support hardware operation. Add an OP-TEE firmware node
>>> for secure services.
>>> This patch enhances functionality for NPCM845-based platforms.
>>
>> Drop this sentence, redundant and not in style (see submitting patches).
>>>
>>> Depends-on: ARM: dts: nuvoton: npcm845: Add pinctrl groups
> Maybe it's an issue with our work mail server,
> https://patchwork.ozlabs.org/project/openbmc/patch/20250706153551.2180052-1-tmaimon77@gmail.com/
> I believe you didn't receive the patches below as well, since I didn't
> see any comments. Am I correct?

How is it related?

> https://patchwork.ozlabs.org/project/openbmc/patch/20250706134207.2168184-2-tmaimon77@gmail.com/
> https://patchwork.ozlabs.org/project/openbmc/patch/20250706134207.2168184-3-tmaimon77@gmail.com/
> 
>>
>> There is no such tag.

Do you understand this?

>>
>> Use changelog for this purpose or b4 dependencies.

Do you understand this?


Best regards,
Krzysztof

