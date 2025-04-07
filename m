Return-Path: <devicetree+bounces-163599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD79A7D660
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 09:43:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D01C2189776A
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 07:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19A0822836C;
	Mon,  7 Apr 2025 07:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cu7WTj0T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A43227B95
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 07:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744011481; cv=none; b=j9qwQxAx+1XUND8wW5xjITUNUPXC+i5+ZqlVEGLiRQTWGhOTUDe/tiQl88h7/ioZ1ps1mV2CHCQEZ+vz4quTf19B6vC0afwxp6G6S6BsRaakulBwOhRtjWE8g6Wmym8n+MkDX09GTK4XBfZdgt0MNxJyybLDoylmh6cpjvCOwXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744011481; c=relaxed/simple;
	bh=wbpn05YOBnvAIAEQiPQ/6y1/bXax+ql2ksAKoSkC61U=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=AlNaHYo4NzdORxSpFbWuO30BRzM7WxJ6Arj6AYBgshg5Eqc38rlpPIrUhoQWA5Tl2nkBeWKmLMkeVwIjCK7HMQBlJoLEB+vQlXiMRzShUWPUFS8D09WnkaDGEjYxH6jjMbZJT3WovF0E6TLlwVtkivzPFBiRr2ciWG6fGtu4ZhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cu7WTj0T; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4394a823036so36433605e9.0
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 00:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744011477; x=1744616277; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T/iUB0JBxFkjp2l/okcxobSe1sYUcwQcPDba5DDM9oY=;
        b=cu7WTj0TyOdy/bX5huGIqakvw0r0K0p8nILUQIvdPL0NMfGUh9pr7nXyBwnybLQNIW
         IHlHvcpJmsj4QIh3PS9ywIjVv/yMMOk3d8mSurbEhcNYUKKlUz4xwtU7AhpifzdZlnoL
         SxhOSCMVOEqvxNlMp6RD8N/vK9LxLVL455DWLjyvrf3ZjwjpBGr3uQwbSMXTZeFLnL7z
         S/B6UcoEBjkEwB+pfEXJcqy3M8/OEG3Gd1ppLzGovVWyIQgfzfDaB29A4C5RwtCARb3m
         mUdjMuS6cZWWEG7evG9jVf0I5MUlJ04Ki0S+uabYlQEYapWsi7sJNkO2+fN6JYkai4lj
         j+QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744011477; x=1744616277;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T/iUB0JBxFkjp2l/okcxobSe1sYUcwQcPDba5DDM9oY=;
        b=UBfl/HKbzWugSClcGVwfGybNHhGgXk84Qep/Xsom6cP27eP/KUxA+QCZCbAKfd12Al
         LgHgESEdMVxGVjC2NH1Tflaxg/fAzmKpNoLjyCWYanathf29xv7iZSpkWMbJVnyX9GDR
         MywL7uh+DifJTXwoU8gefShuLV2ZIX/3BlG6Oms+9J4zgrq0eqpc1E8Oo1OwqjKI5KiQ
         4rOc1gFyQVs+Xn9eLXNUpmMiBlfuBead8Zntz2oFlynPWs6bm8WKIVxb0vBTUXMQtgCu
         TZ32pgFeE/DP8Be4t1wXrX1sYPHpxtF4k5kNtVLZMREN2S0NL+CjRpPy1lurzIb9UYPj
         W+dg==
X-Forwarded-Encrypted: i=1; AJvYcCXseVG+XGiEYYL9rd4nRNOKZFybvFz4EMEnE7ZrOxSjG8wJuanNWCh9zoE15bOjXSvzqmw6eIFQwOt5@vger.kernel.org
X-Gm-Message-State: AOJu0YzKW6WapqiYana4DYq6QnU+WSeFicXTWmSJfz9QMr2jqS0gCB7t
	VbunypI7nIMxKjZIQDCYyYtZbblb3Cy6WglotXKvN6BUSvq/GZBOgUjBDu414vI=
X-Gm-Gg: ASbGnctPvJrqZJFFY/zfqNxflMazGVjbn1V+5PyJtGpC2bEQpR3BG2fTD8HyXenJ0j7
	kaC8ASPY+ZcwLeWSLhHB2MQsuuNU8D4rGqCc4Y4yeSpjiNq1mo0sUwRlwnF6Y7bUraO/zM0/sg1
	70l6FktWC2S0ZlKoc0plFvC+hzichVXqAGh7pjepdDWzL9COJC8EJhvt5/M1i8qZF3GBE2IMIlw
	wBsdrOFA7ylyudIjJuIo1GpAd7itVA+brpD158K05akMmeByJJ7yF7kEmm66409UH2VzxD+OJe9
	M878n9TwFxgJpTzF41vWNYo7QnyvuS8ilEMo8COiZyO3PmGM37Ya/eXg9wtMMSvf16EzzrhbhiB
	93NTF2gef
X-Google-Smtp-Source: AGHT+IEDc/bRsFcizrk4e4TwMWtU8c1AL1TwXJ0IcJRIR1rjn42XqoKfWILEntbQHzwjOQZAQgc+Vg==
X-Received: by 2002:a05:600c:1e27:b0:43c:fc04:6d35 with SMTP id 5b1f17b1804b1-43ee0615d04mr74241945e9.4.1744011477415;
        Mon, 07 Apr 2025 00:37:57 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43ec1692ba4sm123138995e9.16.2025.04.07.00.37.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Apr 2025 00:37:56 -0700 (PDT)
Message-ID: <c14389a1-1904-450f-98c5-a55351518ed7@linaro.org>
Date: Mon, 7 Apr 2025 09:37:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: timer: Add NXP System Timer Module
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, tglx@linutronix.de
Cc: linux-kernel@vger.kernel.org, thomas.fossati@linaro.org,
 Larisa.Grigore@nxp.com, ghennadi.procopciuc@nxp.com,
 krzysztof.kozlowski@linaro.org, S32@nxp.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
References: <20250402090714.3548055-1-daniel.lezcano@linaro.org>
 <20250402090714.3548055-2-daniel.lezcano@linaro.org>
 <2503deb2-b993-7fd1-adf3-cafa1e7bd2f4@oss.nxp.com>
 <67daf656-0e08-471d-afce-22ba8f2fa1f2@linaro.org>
Content-Language: en-US
In-Reply-To: <67daf656-0e08-471d-afce-22ba8f2fa1f2@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/04/2025 17:21, Daniel Lezcano wrote:
> On 03/04/2025 08:33, Ghennadi Procopciuc wrote:
>> On 4/2/2025 12:07 PM, Daniel Lezcano wrote:
>> [ ... ]
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +
>>> +    timer@4011c000 {
>>> +        compatible = "nxp,s32g2-stm";
>>> +        reg = <0x4011c000 0x3000>;
>>> +        interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
>>> +        clocks = <&clks 0x3b>;
>>> +    };
>>
>> The S32G reference manual specifies two clocks for the STM module: one
>> for the registers and another for the counter itself. Shouldn't both
>> clocks be represented in the bindings?
> 
> AFAICS, there are two clocks as described in the documentation for the 
> s32g2 page 843, section 23.7.3 Timer modules.
> 
> The module and the register clock are fed by the XBAR_DIV3_CLK which is 
> an system clock always-on.
> 
> page 1994, 40.5.4 Clocking, the documentation says: "This module has no 
> clocking considerations."
> 
>  From my understanding, we should not describe the XBAR_DIV3_CLK as it 
> is a system clock.

Can you clarify for the STM if you still want to change the binding ?


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

