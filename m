Return-Path: <devicetree+bounces-31734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4948382C4E0
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 18:43:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C6811C2221C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 17:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F2571757F;
	Fri, 12 Jan 2024 17:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FJH3AJ/9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1328817C7F
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 17:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-33677fb38a3so6112632f8f.0
        for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 09:43:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705081416; x=1705686216; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ee6xKpvxneUnoDiC8AB7cIQc/ZfkSZ84CMrUIJPEZ+c=;
        b=FJH3AJ/9muIjbC//4TR89xmHMhguiJM6JI8gT020x0e1U3pd72+U10gGS/t8ZVg/8s
         ciPh22T2jIc9REkzFIhwvBg42Xnpopuo/bD08BecS6AG1/HE8fo4QFRlQOoi8uS2lACf
         qy/c4aPXF0w03AhTI0Z0CmWkr73h5gYgOF+FqWb0i7o80DDJLvuXsJXjghwDFNg4kVZQ
         9YzV9fAnR1IZlfvcHa+2A++WE3krwe7x3OZD7lvIvOIluYNW/YD2qU0GIOvoEmHD155c
         BFt3Jz5Dz2Ve+kDPhtENFjO1UT7gtRDMG7FONDm+8HhAvepW/YaXyM86AGTM9RAsrpkv
         g0Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705081416; x=1705686216;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ee6xKpvxneUnoDiC8AB7cIQc/ZfkSZ84CMrUIJPEZ+c=;
        b=uzUCAAvR9abGHfiugvFPRrttnJqqzIoN2kmjPvH73t5OD0qzxg/+fgrO/wOI9ceUuW
         B78NXI7ggcmVOgkAE70+8HaIN/rF2LNAw/DuUArWyEwtavjQccn/llkRsUxyRpcoKuET
         5UtezyCYpLsHiwmC2TTeGOe2XO8qwti5hyMILoga+amc9ZUWX4iuTjTlClKna9JQg3uT
         idx6D7La6NUXu9sxcr1pcys5PT5SzGcRKuKhShRW2CpURiSL8uFHUQKj3mBRpnyZFOw4
         T5wpZZfsrdpG5T5kzWz28lhQ+hIvkLAIVzvxS2JfZTQPFisvioX9EvJzJVaa6wEXLfOG
         t8UA==
X-Gm-Message-State: AOJu0YxEM+ggIkZZ0zlwlcua11rKzWWG3ryju/1ymxADCqdNTa1Is3Al
	xjHShJa9hY3jejywgFHpqwpl7a2pJPfvJg==
X-Google-Smtp-Source: AGHT+IEG/RfygOLnVEXU1ua+90WU6Kb2zmqMLCNjZlPGmGHulU5Ed+rlhuWJaTig7LLnl+pgA60sTA==
X-Received: by 2002:adf:a319:0:b0:336:8ce8:454f with SMTP id c25-20020adfa319000000b003368ce8454fmr738433wrb.138.1705081416323;
        Fri, 12 Jan 2024 09:43:36 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id b7-20020adfe647000000b0033763a9ea2dsm4462856wrn.63.2024.01.12.09.43.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jan 2024 09:43:35 -0800 (PST)
Message-ID: <21a8feea-7306-4016-9a58-6e5bf8fe30a8@linaro.org>
Date: Fri, 12 Jan 2024 18:43:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: Add Hardkernel ODROID-M1S
 board
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: KyuHyuk Lee <lee@kyuhyuk.kr>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Morgan <macromorgan@hotmail.com>, Jagan Teki <jagan@edgeble.ai>,
 Tianling Shen <cnsztl@gmail.com>, Andy Yan <andyshrk@163.com>,
 Ondrej Jirman <megi@xff.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240112134230.28055-1-lee@kyuhyuk.kr>
 <20240112-granola-underline-36a525dc789c@spud>
 <dc4e9808-cd36-4b99-afd9-8dd4cd16a2a9@linaro.org>
 <20240112-headsman-concur-1d47da7e3e14@spud>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240112-headsman-concur-1d47da7e3e14@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/01/2024 18:26, Conor Dooley wrote:
>>> if the vendor for this board is hardkernel...
>>>
>>>> +        items:
>>>> +          - const: rockchip,rk3566-odroid-m1s
>>>
>>> ...why is the vendor prefix here rockchip?
>>
>> Uh, good catch. I missed it when acking their earlier mistake year ago
>> :( Would be nice if they fixed that one too.
> 
> Maybe they will if they got your email, they did not get mine
> apparently:
> <lee@kyuhyuk.kr>: host mx02.mail.icloud.com[17.57.155.34] said: 554 5.7.1
>     [HM08] Message rejected due to local policy. Please visit
>     https://support.apple.com/en-us/HT204137 (in reply to end of DATA command)

Uh, what did you do to Apple to be denied by their policy? Admit, you
have an Android phone?

Best regards,
Krzysztof


