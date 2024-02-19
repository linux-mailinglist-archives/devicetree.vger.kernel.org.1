Return-Path: <devicetree+bounces-43297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6C3859E2B
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:26:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC2051F2121E
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 08:26:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5757220DD9;
	Mon, 19 Feb 2024 08:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="VG2RGTKa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9CA210FD
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 08:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708331157; cv=none; b=NIVs8ipHRzGjKL1T/fx4qGVy6QTKd+har9NA8bdHCcTlKWKjj3lPhXh4jLixFnWf3cfK1rfyZCPcxwXkz9NY9RpnZn5nAMfenWCQKT/ZYAGccEpyECqq1npDHpZXVYcNaJiM44Oc8fWqjOL2LmjRL+48mM9KiX1nKo89XKpmgSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708331157; c=relaxed/simple;
	bh=Bo5S8xr0Ve5PB6xmg+OHUlU5Qpa2kehTBcF2IBBqPM8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AEvzTofWKb2JwuHXV72oqa/Rq/httzl9urXUPiw/OrUfKlMyLoTmvv14CQKz5TUsOdnya+G1d+hYTUomCMIflxV8M0gV8BcZq+y8pTCnA9efsyBY5xpSM3AA5Abpk8bPzvg1j76P9i+COcMU8CZ5UDbKuwwXotW3TIgdZ8edOgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=VG2RGTKa; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-41269e079e3so741345e9.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 00:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708331154; x=1708935954; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=THU6glyGzZOjGWrBiKmvVasWAwiX7vB5lqswuej4FLE=;
        b=VG2RGTKag/UlPuTV3qj04CJIbYfZ//y/RdY+Eka01J+XqP4XA7zdp7IEtnuzi9LYQZ
         N7J4jb0HpNZiWuutrqH10MY7q07/ki0VwrQU3eDA8xoIQdpwYxTaNmW8sFJ9xSuKHCK+
         k5mUxuKcnxhbkTTPTyMV4hKSGpO/V+3pVc2i/n9XlC9IytLPZSd4ZctIPiWZtdI1Paqb
         bE0oCsuORhMJNbvxx1wtiZH7qeRGdyrkGmCToXtWIUk+5OkqolYFC7PC8DkPauLpdQYC
         z0KLrW4QL+ZA3we1lLxUyExuZFTCjHiBUPwzFQD10gfe/CiLP2CveVvjLsZhrYf/Jlax
         JdwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708331154; x=1708935954;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=THU6glyGzZOjGWrBiKmvVasWAwiX7vB5lqswuej4FLE=;
        b=uO+5tluMDHJJNnvXFBSxhzGjrx1mVHajp45MsYtDwHhQCu2wQ0TSwB+DMvbI9jG//F
         aYA88ckUPr/M3qhmQ/c/SuBeJuFj5wdUYRPSoLoWgB+6vvCdDPWFH4/4J49NlJD7e5FN
         AIqsBWB79NJTMhEHLFH0dGq4oWOxxB4h09Ra2ferjRlTkT3kGlaPfFA0GU7svdAAsoCn
         TBoaKytJ67YTMjY5ozVRtVprRjifMR/jMfw1p3+Y5X4h9+0BCjFmUeW8hMdqzHbEXDj4
         88BrK0MP0RWV8vl6rcV1ez73PL0Uzl/ZbrHDno+gjqdGSwSAEZgpR3rqEIPDTrFnzsgQ
         t2VA==
X-Forwarded-Encrypted: i=1; AJvYcCUkBMUL3PwP0QFBEqCiG6Jl3NiSmLnGTIflDpCmTXhqZYS8e6nOU60D+B7h/MDunweujXREPU3sJFAk6SHtDyqxysI+07ZpqtYYMw==
X-Gm-Message-State: AOJu0Yxe4M4sdORPqSYpmZPSmXXzbu58uRwdUUP2V73IssmRt6wEjOej
	0HnScDq3GT/GN2mQ/gW7tVsHXdPbj16s9y2WfjVoiaGNhel8YMTIgml6I+l+MxM=
X-Google-Smtp-Source: AGHT+IF9L/CaymxUFdiz527jMYT6eakK5vqvOw31jhwzGW9Ykq8Lf7BMYyEPxr5CsmTss8mE4dWNgQ==
X-Received: by 2002:a05:600c:4f83:b0:411:fbfa:959f with SMTP id n3-20020a05600c4f8300b00411fbfa959fmr8412572wmq.27.1708331154076;
        Mon, 19 Feb 2024 00:25:54 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id l14-20020a7bc44e000000b00411d1ce4f9dsm10468796wmi.34.2024.02.19.00.25.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 00:25:53 -0800 (PST)
Message-ID: <a71a36fe-d70f-46a4-85fd-edd07c7a5bcb@tuxon.dev>
Date: Mon, 19 Feb 2024 10:25:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/17] clk: renesas: r9a07g043: Add initial support for
 power domains
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
 <20240208124300.2740313-9-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdV=qpVCokRW1vGDS3_ZF3RE0nVcNi9URXMNS6bUtxqTZA@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdV=qpVCokRW1vGDS3_ZF3RE0nVcNi9URXMNS6bUtxqTZA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 16.02.2024 16:09, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, Feb 8, 2024 at 1:44 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Instantiate always-on power domain for R9A07G043 SoC. At the moment, all
>> the IPs are part of this domain.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
> As not all IPs are part of the always-on domain, I'd rather defer this
> until all domains are handled in the driver.

ok

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

