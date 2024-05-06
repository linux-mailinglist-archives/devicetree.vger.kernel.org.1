Return-Path: <devicetree+bounces-65267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2848BD608
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 22:08:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 65E36283609
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 20:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89ECC15B0F5;
	Mon,  6 May 2024 20:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GJ10Y1PW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD59745D9
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 20:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715026086; cv=none; b=XIGfXi/MDqdOtftOMTZs+mInwvrG28ooTaH3XwaiUgwW85Z8BuGDsGURUa2S/CpB8FHeF0n5Z8D4s0+LpqIpYcaR5Zmt8fWwO3E7a6S+kZXfCNSR1OjkBZMR+F1admxFn21MryHwtIb/9y8Bti00ohDlawiXs98rtYUiM1RRYxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715026086; c=relaxed/simple;
	bh=yJANYZ5LjdWz2cLq7h83HamivaxLEvIt81deRzqkkUY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pFMsDZmZF3THv/xApNxyuuLwH4/I/af9I55cbEhY226xuU4CgI+RXMdiuwl+5+Q9nv0khyHT/5+9WTVGSjLrAfLDGHqz9gzQk45bU6SO4WqzG7UqYxMp8+7JFdspGxySe6L/dpyHJqdRTFsvimX0qTvB7N4aqbDv/yJwT3Fmv+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GJ10Y1PW; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2e0933d3b5fso30242331fa.2
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 13:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715026083; x=1715630883; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=4r2QFiv+Y5YFHDZS/uVsaIfDuAxtmH3kZzYhY3bwJMg=;
        b=GJ10Y1PWYfbwnVrs6KVacugYJTpL2d3rRlbbTbej9dSUuhpKYdM2cBxHc5HfrjLdBO
         HjgwSvSWp3HNEH7jHvFGsCYH8WCz3iaCKxeBYYUAkOXQgn2+zKmpSgh0K/hdVYiMfON/
         L3JHgnMMtq3QYYpXob6AScX8ezABXyz9WZI5zYTP0AJu9uSVI6G7dBlTESUlaDjOsvXx
         YoDQdkOL4QrJ9N0/BGgjymqkU8ZIhdrLw/HruIxEKk4cy7OiNO197yGgxM4wk/6XC8OD
         PXHVPVribHLpEdbFRDD1e3j+ItJFinGaFIC4BGITdpXeTY5D99TVNF/BMyMa7jovDE0C
         gEAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715026083; x=1715630883;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4r2QFiv+Y5YFHDZS/uVsaIfDuAxtmH3kZzYhY3bwJMg=;
        b=mt8U4mfwM4XNj8TPne9TFKuLKDaAYfhdJCyEPiSbrZQ0GUbws6I+EsEsigGpeJRTRA
         dvIZ/3/KEd+0FQNjGYXMmF+RtDD0XAdVdby9pJ9+9MLMsFnjOJYfKBhdbYD/dizZJkna
         i+EdmxS32lB+eMjbwrOdI9qzwEB0IzxsVtVuC9Bu8gPnUHsfBDymfoQr04l9CaBt/7cr
         R8vFBdkb+fzjXfCqKAMHXFpOyyHaLCYlbsyOJl5YUJ2SorWuHwTQ2R/8v08L0M60UqGw
         UddIbgrGyOPXAOkrw1WGZ5wZJ4m73C60YdMzrR1k3iBCI/A0I14yU8fABUd8zkkAAvYX
         klLA==
X-Gm-Message-State: AOJu0YxOZ7FaDMieNS0IQyl9s8riGB5h4V0m/5qqKRB5DmfE4VXOIexf
	qI1qqPfidULh6xQfxY1GdvVbC1N7NvL8zUEASHw/c5EN5LZHt5yHAjrsB+UNBmQ=
X-Google-Smtp-Source: AGHT+IGFIeRBBk7VGAPYN4qg+AUifIyYRtOsm5z71dsKQvzhwE0BVV5mvFEKkqGRIJ/bqHj8NG2rsA==
X-Received: by 2002:a05:651c:1691:b0:2e1:d747:8c0 with SMTP id bd17-20020a05651c169100b002e1d74708c0mr7451991ljb.21.1715026083131;
        Mon, 06 May 2024 13:08:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id w26-20020aa7da5a000000b005722cb1dd6fsm5486170eds.27.2024.05.06.13.08.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 13:08:02 -0700 (PDT)
Message-ID: <ad7f3328-6eb7-4b32-9316-b0c79fd2753e@linaro.org>
Date: Mon, 6 May 2024 22:08:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: mfd: rk809: Add audio codec properties
To: Jonas Karlman <jonas@kwiboo.se>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>
References: <20240505134120.2828885-1-jonas@kwiboo.se>
 <20240505134120.2828885-3-jonas@kwiboo.se>
 <5c4a6d57-82e0-430b-a12e-59c331a32eab@linaro.org>
 <76519e53-a226-497b-9db1-4f11ea83151a@kwiboo.se>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <76519e53-a226-497b-9db1-4f11ea83151a@kwiboo.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/05/2024 18:14, Jonas Karlman wrote:
>>
>>> +
>>> +  codec:
>>> +    description: |
>>
>> Do not need '|' unless you need to preserve formatting.
>>
>>> +      The child node for the codec to hold additional properties. If no
>>> +      additional properties are required for the codec, this node can be
>>> +      omitted.
>>
>> That's useless description. Describe hardware, not syntax. This must say
>> what this node represents.
>>
>> Anyway drop it. You do not have any resources there, so put properties
>> in top level.
> 
> This just tries to follow the rockchip,rk817 binding, not fully sure
> about the reasoning behind this node in the the rk817 binding.
> 
> RK809/RK817 are very similar and their schema files could possible be
> merged.

That binding was a conversion from something older, so it might not be
in good shape. At least new binding should follow usual rules/style.


Best regards,
Krzysztof


