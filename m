Return-Path: <devicetree+bounces-43298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E20859E34
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:29:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28CC71F21401
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 08:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E69152110B;
	Mon, 19 Feb 2024 08:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="UgrZj6Ky"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6368420320
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 08:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708331368; cv=none; b=VTHkHiteBndYrBKWUxpjYvIZI2YLsXVJOTE5jSnZkd3r8mAwqvOGgFwbokgR6gRE7BUAEIkYFlCV+L9AuHvJquhoS2EExRjmxDF6FgZZdWpiXjbwqidovg+xQ5TULVgjrGgaNBaWY4IUqUxP82phDS9BZe9FXfqgYvJ3tksuq+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708331368; c=relaxed/simple;
	bh=uhdC6JFPIGg+KsZnoOpAWCewl/MoAdPwQ2M0i3DpJNw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i93s5LLTfTVwuZlBHv7OxzhlZl4EvvR1hz1LsI2GBXf8tnetyU5ubkr5bkVpiAWQUT1/5QnICq+OL0Objqy7B0BHU0+9hHKMzcHDN9foykSKeFyKbGnA9cC7OIL7UMpQRrjTv0cULAIWa7+zzWVtdRyQ3OnygSuAOagueQRy+AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=UgrZj6Ky; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d22b8801b9so24923511fa.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 00:29:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708331365; x=1708936165; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kWUWsnfwYVJB3NeJPGabmiQoX5d4BCcDZFFFL55Cbcc=;
        b=UgrZj6KyMkIoaNrtRt8adIqFsfchFQmxiPgEzEAZfss5rCWyQz8DPmeSQJx+lhag6k
         oCYw2YhOVynEz64c99AxdBZUSq9SB7eS8iwGgBDWzsLS8eiBhHACusWTSzvzZIXwNOma
         l0mhn52QL9uKoIUA0DYj/gMtQiYo0FZlwwrNGZnoApK0pe9S/JPbdI+fJqgFfyHQ42LM
         iDtTZF6Ryi2px9OlbcnGokaNnKqtHBRplEn7cArxAUK8/DaJsvyUG7n1fh0O5yseIE8M
         yiC6EJkzm+OOYsCSoG70aF8D9fVH7mQqDeFOpL65q3DolO+26L7F431domELyjncqnws
         0uAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708331365; x=1708936165;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kWUWsnfwYVJB3NeJPGabmiQoX5d4BCcDZFFFL55Cbcc=;
        b=rbsJdgjleaA2JR5Win1wvNd7eNNwSJMhuE6SkPa5GvgmOrfwlEpITn1qzYST9BLKD5
         l8Es693xWXFrrvkQZzHBaHyBjBE+NYwDaup2V2kh2YrkMscZE8VInil3Ek6fND85CZlQ
         CDRFG3KY8/P/SPvxYFrxmvw0RLX/K4n/rAiL2vN08WIPhaNDgwgh9T+UdsUmHrOGxpg9
         DcCC2WYn5hNtgH0ksrazgUoE1npT9p8u8Hj0w0cwlkPVHZTFd8Rd8xITxLTeBigWBTob
         gsJscHvEsd4SL7CYb416iYJHYe2fTKvZA/4xgO/RIvHkwcfoNHihCzJDMKb6c/MH4u3i
         yCOA==
X-Forwarded-Encrypted: i=1; AJvYcCVK4kP1WL+Xpj0pbOk9Og1guLI7tOHoXwNECFxI42DI7+d7E7zY/VxsIBvSAhLMf4oO4hM7695XBcwxg9uM478Y3xh6GMvqlcDwJA==
X-Gm-Message-State: AOJu0YzpXiavoe1qgIreNvcIfzLkOA5DYhR62QnQDbMCOr3SfBJoWWe9
	pW2drCK41D6vhkfJPeX7cDvDWnobG/H3t2QVPM5znb4YVymdBuPbyCiyj8CdS5A=
X-Google-Smtp-Source: AGHT+IGJbZ1oXtdXJ0tTWHvHxj794/54tKPc/gXozHxyRNAZCzrqi/Be9hQAFy18RTkyv7AzQAYNmA==
X-Received: by 2002:a05:651c:604:b0:2d2:4314:8c06 with SMTP id k4-20020a05651c060400b002d243148c06mr47798lje.15.1708331365518;
        Mon, 19 Feb 2024 00:29:25 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id g2-20020a2e9382000000b002d09bdb7e1fsm983394ljh.24.2024.02.19.00.29.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 00:29:24 -0800 (PST)
Message-ID: <3c47c45d-be37-415b-b38c-2185a2108d40@tuxon.dev>
Date: Mon, 19 Feb 2024 10:29:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/17] arm64: dts: renesas: rzg3s-smarc-som: Guard the
 ethernet IRQ GPIOs with proper flags
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 magnus.damm@gmail.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240208124300.2740313-1-claudiu.beznea.uj@bp.renesas.com>
 <20240208124300.2740313-13-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdX3=KJ6=qOW__KxWisj7Fguwr=SdP7XGvFD+BKgZbRo9A@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdX3=KJ6=qOW__KxWisj7Fguwr=SdP7XGvFD+BKgZbRo9A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 16.02.2024 16:17, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, Feb 8, 2024 at 1:44 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Ethernet IRQ GPIOs are marked as gpio-hog. Thus, these GPIOs are requested
>> at probe w/o considering if there are other peripherals that needs them.
>> The Ethernet IRQ GPIOs are shared w/ SDHI2. Selection b/w Ethernet and
>> SDHI2 is done through a hardware switch. To avoid scenarios where one wants
>> to boot with SDHI2 support and some SDHI pins are not propertly configured
>> because of gpio-hog guard Ethernet IRQ GPIO with proper build flag.
>>
>> Fixes: 932ff0c802c6 ("arm64: dts: renesas: rzg3s-smarc-som: Enable the Ethernet interfaces")
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch! (which was well-hidden between non-fixes ;-)

Sorry about that.

> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v6.9.
> 
> As Ethernet is enabled by default, I think there is no need to fast-track
> this for v6.8.

Right!

Thank you,
Claudiu Beznea

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

