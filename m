Return-Path: <devicetree+bounces-44306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E814285D6D6
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 12:29:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1812E1C20BB5
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 11:29:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 960CF3FE4C;
	Wed, 21 Feb 2024 11:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kKB4l2+6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA42A3FE37
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 11:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708514940; cv=none; b=bBhSInJ8Aat5dpqexpKzB0RNP8IcYojFtA1c/yyrzpW4osiDrjldurWtezP8vlRY6fmFkxLKzLdJe3baNecc9i4/laT5+XlVWibkwluUIR18850aLRKtHvxrC2uReO7C5bF/ld4HTm0GF28HJ54zEhcHKl49sq1AfjBM88Vtsvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708514940; c=relaxed/simple;
	bh=BjGIujGy9uSMg0+odNuhrXa2WVNxB9nXwF3n59nK/8U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WSnAbjvoMrzKJyIEi8AgVV6DeL5b/TuNp53sb4EqXFELSxVk+HNZ03Q8/rUxaOD44tQLxDLtBaWjyae0jeuQvOudg/KqLzBHVct0FExRRe+GFDctF0IxyuRMFRsIVpbdGERBXhlmLOgCaDC6ik5k+Rv7JzugiNe8ERP7N9AVFEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kKB4l2+6; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-564fe0273e4so514822a12.2
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 03:28:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708514937; x=1709119737; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2uGxM6/2SBSUObOeQvfq+UUzJjduE352bGJGnjX6fsE=;
        b=kKB4l2+6FcqZjafbPNYurORxzdc7MRADyUrh86i84E+++GV8E+WBOxgfe5uBxgCfLp
         t8NIY7B54R5tISXnuSZDrcMihz1xNcIColFC/2/WcIFYouVO3/aTV9kq6MtZEpMXsvws
         gMZzh1Q2umrKVwdEC9Nf9xb8rKA5WujDzlLYvmwbZYiR0qI2bl6G566LAurDRe5wvV4m
         ve3pIWRfY/xnx+A0FT63IPnjh91UfXqGhY6szLGtzSMIb4d8PQS1BYQCS2+DNp12ehKL
         C7pkNE1+PhjEJf/3XKhBvKU1LRej8FiXBxbgP3USjZTcvwx37DV/059NC7BX/1v5NUxE
         Gi/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708514937; x=1709119737;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2uGxM6/2SBSUObOeQvfq+UUzJjduE352bGJGnjX6fsE=;
        b=Nkis1FdCpCBywWl/VQZdjRJlPjSLPkryxjVlKcn3BxAbNcMKQrVXV7EhmbbZgwE1OE
         okM6kzNmg5d+rKHEfC3h1L/SqCdzdaQixyzUebtWztGLp+4+kfzdtyUCAa4qiSOawN2P
         wTd60/PK2ADoPWa7mwTWEJzKIIH4tM2pQeB5Kiy0EEUffWxHMrYAYI10ZtXqrEEZw2M5
         AdGt3MBDg1M3wMuufYb0WqlYBs72vHighm4ziD3oAH4UH/wFyWqJ6LhHP1NrK07t/kzW
         iartnAzal18aoxVgf2+Y4lRFbVhbY6sFWauMlVd02Pcn0tSD+7GKxNyeCF05bDYfll53
         q5Pg==
X-Forwarded-Encrypted: i=1; AJvYcCXM55NEqUGywTTL7TdLO7ZcJTulfM6FvFW36JoZU8N3cog7NV59XeRVdk0eChWIRJDg8v8Da5OWekLkZRphaJuEJO/AwScvX5cLvA==
X-Gm-Message-State: AOJu0Yywuk+/TsZ3bQI+A+GAKnUYe1RnkW52g6xVQ74Nf3YT0xWB63Sm
	cfv05y8SD6+E9zEKVdruRmjv7eJcmSrpqJ4qlPFHYcZJCXocD1Yuj04g4u3pDqg=
X-Google-Smtp-Source: AGHT+IE8f05kjIs1GFUfpAE7y5v4uZt32V2qW4SkS1HxgQGj/Qg7yQT+m4IIlCUguY/jruvL7rEulw==
X-Received: by 2002:a05:6402:7c9:b0:564:e278:60d2 with SMTP id u9-20020a05640207c900b00564e27860d2mr2016147edy.2.1708514937117;
        Wed, 21 Feb 2024 03:28:57 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id f23-20020a50a6d7000000b0056392b7d85fsm4812255edc.9.2024.02.21.03.28.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 03:28:56 -0800 (PST)
Message-ID: <474d45ca-6d1a-49e1-a408-6e7c2244ff37@linaro.org>
Date: Wed, 21 Feb 2024 12:28:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/6] reset: gpio: ASoC: shared GPIO resets
Content-Language: en-US
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Banajit Goswami <bgoswami@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Frank Rowand
 <frowand.list@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org,
 linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Sean Anderson <sean.anderson@seco.com>
References: <20240129115216.96479-1-krzysztof.kozlowski@linaro.org>
 <7ae0567d-e5d3-4e00-98f7-5139d5879f75@linaro.org>
 <38fda6619769da7240517982adfe734cb653ff5e.camel@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <38fda6619769da7240517982adfe734cb653ff5e.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/02/2024 12:26, Philipp Zabel wrote:
> Hi Krzysztof,
> 
> On Mi, 2024-02-21 at 10:44 +0100, Krzysztof Kozlowski wrote:
>> On 29/01/2024 12:52, Krzysztof Kozlowski wrote:
>>> Hi,
>>>
>>> Dependencies / Merging
>>> ======================
>>> 1. Depends on !GPIOLIB stub:
>>>    https://lore.kernel.org/all/20240125081601.118051-3-krzysztof.kozlowski@linaro.org/
>>>
>>> 2. Patch #2 (cpufreq: do not open-code of_phandle_args_equal()) and patch #4
>>>    (reset: Instantiate reset GPIO controller for shared reset-gpios) depend on OF
>>>    change (patch #1).
>>
>>
>> Hi Philipp,
>>
>> I got acks from GPIO folks. The also provided stable tag with dependency:
>> https://lore.kernel.org/all/20240213101000.16700-1-brgl@bgdev.pl/
>> (which BTW already is in mainline, so you could just merge Linus' tree
>> into your next branch)
> 
> Thanks.
> 
>> Can you take entire patchset?
> 
> I've picked up 1-4. Patches 5-6 can go independently via ASoC, right?

Yes, thanks.

Best regards,
Krzysztof


