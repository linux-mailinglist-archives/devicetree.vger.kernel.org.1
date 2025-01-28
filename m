Return-Path: <devicetree+bounces-141514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A027A211D5
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 19:51:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3E1C18855C6
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 18:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 921841DE8A5;
	Tue, 28 Jan 2025 18:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="FgXRQqbv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A7F1C3BFE
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 18:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738090257; cv=none; b=VW0JiUNiU4dPsxWxt7iyryIcCrcVPEk9M9w99HJ3MDI5KFa8p7/eo6qnXgW5XNrtSK+L8V1x6C5y72jxhEYBGGrvJ6RykH0HrR8lTc+Vh25RG+PuhTNOKs7nbPdFI4mUCfViACfiXSKcpTTQ/K4h7Ze/OPhkOcNXc3VIjvqC09U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738090257; c=relaxed/simple;
	bh=QzR2zraDzhdPmnen2nrSyJqHz3aAkzNNFUeKfO2nd2U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oWJQpquw7xjySHahWTVg0GnsKRVPnk9sfY7ocH2rK81Pt+V8d9OxL1jD2WZ42blHFyU6/F0Ra72HL2tuil/YdNSW8nZdGrtd+TurxdypaW1kK9ZS0SqMEfzyoIgQDWKv7pRIC3WlP9KMMDK7mxLPHBfVgesEPlqDwBGIA0rjLfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=FgXRQqbv; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-844ce6d0716so438863639f.1
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 10:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1738090255; x=1738695055; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PqUXIYlkxvfYqINhnODqmqhH4YgyMU363PiAXYfM844=;
        b=FgXRQqbvIZOSBidugCFWKte19e9rYPeCLuWX+Yf76F85qVSQJAmvhDiN2xuQytyNAq
         LnLmvgbesdjtmrUtL/0FgEBg0X6WdBXIZESuPWC4QpXl8qCgd58L85le8YmhiuEDf/i2
         YDBvHCyVNr+ruxM+WN7MPX7HzZdPzYfncUsY19o8GiJ7k1KZQNvfv8gDpy8Q4jIYp2wi
         p7xdTEWnDd/HpJGl6oJphjSMhqbjkX9KhMa5ZodGO60fIEBRmSDqinJwLgMHie6gVLtR
         avH47rqMgsWrnJtuciTvNdXaHBFWk3DSsfi9lgCcLr0OmAEcttrpus/yFtL6ZOC8s95O
         EQaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738090255; x=1738695055;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PqUXIYlkxvfYqINhnODqmqhH4YgyMU363PiAXYfM844=;
        b=Ha3vdfYqsvl98YNmeKczYut70e9s1MKwwqljd6jp8POTmeg7NW9U0a5psE7/a3oLyf
         Fgjij1m+SANfwQ08wDKXsffIs1a2+udt+2GMKCNSIExMF/QHvGkkxOuhUrXq9rfOBlCh
         mYbtoHLhLlqAjFKE3qAQIosBM1lcOQD0LTk1T9gmD3PWKFhVSCqF6K2/HfvLzpd9OBTH
         VgTC77BzrgI85zRbk9ILv7walw+rIv75gpUSglANVry2iIgIlR8pFEJfOOduSEehWP5Z
         KWfdQicJalFRyUmcnyFXtUYEZPGPgAlYJonWq0nkDfI2oVY3iEYTh12Vw59Mx/oSVNlU
         Ki3Q==
X-Gm-Message-State: AOJu0YzsTe7Z2IaR4tSrtQmtMZA3ygX5nYzUHeAi9d7J5FAeCN+AE7yl
	XD3S0HAiv6Lc9yBG0EuxlJ3YMGUhutqflQtn4v5Ljj6Fm0qlo21C4QQG6lLt8DM=
X-Gm-Gg: ASbGncs7USzcwfwgEr7gaY8LMDsoaEgNMlgPiuE3SivMefdzo9nmbYX+VPDYSjoOl1J
	t6BplD6Vm4sAX+LL5YppQDY26ShI6zFP3zRFVW32d+Ewx/u/iFHuoTEQ/E49TddBb+I3c5h9AY4
	RzeHRlgDSOpk4bE311xcQvV8nujASaLnGSOG6jI/GWQ+tgmoX/t8BwMITad30+CV7/3eDXB+20C
	+B/G1sA8h1dVm34pjW84b/w30E+ULRJfu6eKAbvlf5YVq7uTzfDw3GKdgIJgFh8xOb/qGHgRAA4
	h+CgiBRFHpTwbq8Z7w8o4uNfQpy67jqW8kgzSp0=
X-Google-Smtp-Source: AGHT+IFS83gkdSZV4Cxk7SmOYgYnYCl3sC6BIr3NPp/pphQx7I/0PqjJZKMuyvqAaF0628suLeEFSA==
X-Received: by 2002:a05:6602:380b:b0:847:22a7:240e with SMTP id ca18e2360f4ac-85439fa6279mr40636739f.13.1738090254958;
        Tue, 28 Jan 2025 10:50:54 -0800 (PST)
Received: from [100.64.0.1] ([165.188.116.9])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-8521e035792sm345458739f.40.2025.01.28.10.50.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 10:50:54 -0800 (PST)
Message-ID: <9dc005ef-3cba-4f9d-9d99-6a6fa49d9383@sifive.com>
Date: Tue, 28 Jan 2025 12:50:52 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] dt-bindings: gpio: spacemit: add support for K1
 SoC
To: Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, Yixun Lan
 <dlan@gentoo.org>, linux-gpio@vger.kernel.org,
 Bartosz Golaszewski <brgl@bgdev.pl>, linux-kernel@vger.kernel.org,
 Conor Dooley <conor@kernel.org>, Yangyu Chen <cyy@cyyself.name>,
 Palmer Dabbelt <palmer@dabbelt.com>, Jesse Taube <mr.bossman075@gmail.com>,
 Jisheng Zhang <jszhang@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Olof Johansson <olof@lixom.net>,
 Inochi Amaoto <inochiama@outlook.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org
References: <20250121-03-k1-gpio-v4-0-4641c95c0194@gentoo.org>
 <20250121-03-k1-gpio-v4-1-4641c95c0194@gentoo.org>
 <Z5FPJLzAEVXGWJnE@chonkvm.lixom.net> <20250123113042-GYA38135@gentoo>
 <Z5LOdh-4UxRtteOy@chonkvm.lixom.net>
 <20250127181726.GA538260-robh@kernel.org> <20250128031712-GYB47737@gentoo>
 <CACRpkdYbSOHD9UH5=+qjztxS3Cq_rxaoOT9tFtD8ZWm9zQGnPw@mail.gmail.com>
 <CAL_Jsq+f56DoH5YTV85ZqP52sMzkOtHtjWzQ7Tu4FhKSjTSpEQ@mail.gmail.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <CAL_Jsq+f56DoH5YTV85ZqP52sMzkOtHtjWzQ7Tu4FhKSjTSpEQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2025-01-28 10:58 AM, Rob Herring wrote:
> On Tue, Jan 28, 2025 at 10:03 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>>
>> On Tue, Jan 28, 2025 at 4:17 AM Yixun Lan <dlan@gentoo.org> wrote:
>>
>>> [Rob]
>>>> If Linux can't handle 1 node for N gpio_chip's, then that's a Linux
>>>> problem. Maybe it can, IDK.
>>>
>>> I haven't seen somthing like this to register 1 node for multi gpio_chips..
>>> To gpio/pinctrl maintainer (Linus Walleij), do you have suggestion on this?
>>
>> For Linux we can call bgpio_init() three times and
>> devm_gpiochip_add_data() three times on the result and if we use the
>> approach with three cells (where the second is instance 0,1,2 and the
>> last one the offset 0..31) then it will work all just the same I guess?
>>
>> foo-gpios <&gpio 2 7 GPIO_ACTIVE_LOW>;
>>
>> for offset 7 on block 2 for example.
>>
>> We need a custom xlate function I suppose.
>>
>> It just has not been done that way before, everybody just did
>> 2-cell GPIOs.
> 
> You can do either 3 cells or 2 cells splitting the 1st cell into
> <bank><index>. I'm pretty sure we have some cases of the latter.

There is also at least one example of 3-cell GPIOs:

Documentation/devicetree/bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml

It supports controllers with varying numbers of pins per bank and banks in each
instance. Compared to the design described above, it shares a single gpio_chip
across all banks in a controller instance.

Regards,
Samuel


