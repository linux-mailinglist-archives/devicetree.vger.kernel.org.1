Return-Path: <devicetree+bounces-16991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E17D37F0CA9
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 08:15:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C92B1F218A7
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 07:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B30135673;
	Mon, 20 Nov 2023 07:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v2itvIN6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 592719F
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 23:15:22 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3316d09c645so1558019f8f.0
        for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 23:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700464521; x=1701069321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eYx5Az38SKG7T7dURB+4M9EQEBOXV5xHyMBYg3+g/T8=;
        b=v2itvIN6ymLRBbPdjWCSwtiliunEyMPtxu4VE0cgj7nXG8VZ4X0ZYB0rD1b/ZVjC2F
         3f6NKKleYyEjXUN+p5bXq/aTl0zKW8afBj6feDF87PJFqjcORK4FlxEOCwQdmyN97h5q
         U1fUja/Bh+U7fPiV/8vMSV0YBw4umMKcP0G0zuwwLKOs9LJextNKYv4IhiIbuvKdcAKP
         1UG0FVfBB27phsm2GG0Jh/ok5TxR1v5dJkTmNfc2z/2w4J0nhKh5fnphKg/oYVay/+sd
         AqkzMZbJWI8P/UuQv8FyupHr8jgfu5RdQw1J6eG1/6SFNm9w9hCfdLqBCIleEJovgW5E
         QSEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700464521; x=1701069321;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eYx5Az38SKG7T7dURB+4M9EQEBOXV5xHyMBYg3+g/T8=;
        b=QfEFYQngwZ0wO3DdVJTnOLVHUM+7Z2Ei0VrqZUkCSknl7LfNm/kvPwDKD3Pl7jTDUW
         5EyE4YABjfiQ+OOAQWOlN5JpWSQJF0UCB1s5zUePNl7fhVmB7LhvCmihXf+l2cLZ5eQ8
         TwYKDg7+jHFe+m3MXOvTRGzPU9y9xeIpsRhucPL9nBfuaYR/06uknlP1CDv3EBwSSTeq
         x1ZxaBDrf3vodXWaY0ZDty9Ts3SKLOzFWxODChS4O1Cc55pQZIVDJKZGfPN3Wjys8NXD
         8jCgFDqNSHBz/WM2LI8GxWJpRpVIl0WWxEynjgvqR9t/K9XyQtiRNTwrdYO8Liu7uAxU
         fiag==
X-Gm-Message-State: AOJu0Yyskcz4oEttkpOamwyYm2RH96nne123dBcmGyvxmHgnPv/+nFzh
	fttxIyYOphsJIkacFaN0zvUDYg==
X-Google-Smtp-Source: AGHT+IFmdJtXXeG8pN3FAvhKwKZy3XQW0PA8BFDDngBBMcBaQICz9QACi7v6kxUL5X5qHGvRUfK2jw==
X-Received: by 2002:adf:ce0c:0:b0:32d:e6ec:2862 with SMTP id p12-20020adfce0c000000b0032de6ec2862mr3265714wrn.7.1700464520657;
        Sun, 19 Nov 2023 23:15:20 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.11])
        by smtp.gmail.com with ESMTPSA id p6-20020a5d48c6000000b0032db8cccd3asm10166457wrs.114.2023.11.19.23.15.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Nov 2023 23:15:20 -0800 (PST)
Message-ID: <b3a5f971-6fbb-4c23-a7a0-f1e85787d85c@linaro.org>
Date: Mon, 20 Nov 2023 08:15:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Heiko Stuebner <heiko@sntech.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 Michal Simek <michal.simek@amd.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>
References: <20231116181218.18886-1-krzysztof.kozlowski@linaro.org>
 <bbbd30c4-75ca-4d04-ac07-1b458ee543b7@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <bbbd30c4-75ca-4d04-ac07-1b458ee543b7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/11/2023 00:53, Konrad Dybcio wrote:
> On 16.11.2023 19:12, Krzysztof Kozlowski wrote:
>> Document preferred coding style for Devicetree sources (DTS and DTSI),
>> to bring consistency among all (sub)architectures and ease in reviews.
>>
>> Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> Cc: Arnd Bergmann <arnd@arndb.de>
>> Cc: Bjorn Andersson <andersson@kernel.org>
>> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
>> Cc: Heiko Stuebner <heiko@sntech.de>
>> Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
>> Cc: Matthias Brugger <matthias.bgg@gmail.com>
>> Cc: Michal Simek <michal.simek@amd.com>
>> Cc: Neil Armstrong <neil.armstrong@linaro.org>
>> Cc: Nishanth Menon <nm@ti.com>
>> Cc: Olof Johansson <olof@lixom.net>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> ---
> [...]
> 
>> +Order of Nodes
>> +--------------
>> +
>> +1. Nodes within any bus, thus using unit addresses for children, shall be
>> +   ordered incrementally by unit address.
>> +
>> +2. Nodes without unit addresses should be ordered alpha-numerically.
> I largely agree with all this given our fight for some level of
> tidyness across linux-msm, but there's one specific case where I think
> it would make sense to break this ordering, and that's GPIO states:
> 
> 
> &pinctrl {
> 	xyz-active-state {
> 		pins ="gpio0";
> 		...
> 	};
> 
> 	abc-active-state {
> 		pins ="gpio1";
> 		...
> 	};
> 
> 	qwe-active-state {
> 		pins ="gpio2";
> 		...
> 	};
> };
> 
> looks so much more readable to me than

True. I'll mention exception for this and Renesas.

Best regards,
Krzysztof


