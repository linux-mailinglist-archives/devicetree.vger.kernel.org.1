Return-Path: <devicetree+bounces-44355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5214F85DB02
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BDB6BB2462A
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 13:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD5AE79DD6;
	Wed, 21 Feb 2024 13:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="q6oTz0rC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F462A1D7
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 13:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708522542; cv=none; b=Q1p7bCZq/amEb2Scta+x56KJSoPtKU+A2ZTK3UweHXbRBWWJu89Y4Z7ssSgHxK0AZxOB7p2SUHWIFl8eAO7Huf8Ypl8ddHXTN5Q4+6JYoEgLF08HVXq0IEioO8rBkRBltOeSymzLrNGHRmh2wq1c8zfh3uesiFtyxdQCzsYAizQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708522542; c=relaxed/simple;
	bh=bW3BcyOo3zOnh0jsWjwvNDury7C7SRom46TGw5ILpoQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e1jEIzB6PzisBg0OJPw2jm5MrnsNovZ5KKsckE0uxSNMz6+pMFSFlKc1PcE4BsGt2yhow/Eze8NwBr+WEvHCacmwDp7x5kXpS5e11ntgIc79zPK/xgQOk+hOs8EBNu4S78iyljCug486PAK/2Rf7R0g8R3ek00AdN72eSqTsujI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=q6oTz0rC; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a2a17f3217aso892317666b.2
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 05:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708522538; x=1709127338; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M85MKNxHpEwF31wKePTUoYXDesnkz6TsPaxXuG5yiJk=;
        b=q6oTz0rCssN3AQmE/IAWE65Jb2ML4ZrxtmR/MCtu3ETsrEeKGBuib/bduTJhBTVNgQ
         cqALLEDQ6SiDrK3qhoMSQWQ1UWe3uPzeM51774MSh3DPNRxJWVlgzQEqY8Jb8CSdJn2I
         X35TEMn+QS0voS0xAVCcZ+kQSM3mqOdLDhMFSUYNQeP4QMC95DcwC6B4576Opt1ZPLAZ
         sseEfI/bPZSjB0gIMknQNNwcUJQnJy3ym0OzCSsvTrTsCodK8Fbik+k/puqwiDEoZDqe
         HOZj6Qn4D2bcsl1TJQxHXN1CjjWgE68OgTHhAMJZI7NV34kOBQdHN8ILg1Ml7KUrwdj/
         zDKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708522538; x=1709127338;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M85MKNxHpEwF31wKePTUoYXDesnkz6TsPaxXuG5yiJk=;
        b=mKa7emaAVPUyrfRlVM1JOFRlqfxKRns9RKbjOYJQnZ+4X1dLsa7RZO3liTYB4cIcOh
         EYTkUHVQFUQoXhFZ3HJ8eFArmk2ZzobCcLLeSmOy8YG8voZSosgPP+wfyv91Z8S318Dw
         fh/PtQJbNSQ9qlkA/H3j0OUcIQh4CjEa8+hT2gH7tvoqlNnvKpZs4e/Do4t72yRvzU45
         FnhpcRgXxpMDaN5IKGNV5yBwqktiY4qSCqWq4Q30vmTiCXDO5zGnoOHOfJEZS/hr59Gj
         QUEvnqThzXz2Bs0ZFIm9uSw67N1eyzwBumRkwJBmZ+A/JoclHD2aNICMrd5Lm42n7hvn
         nNcw==
X-Forwarded-Encrypted: i=1; AJvYcCX+dzHgEz9uF/dA0vRt1kwgyZzWvkQDV8dez38WKDRW+HUsIHLJez6xoibt/nnkBI4FnUAO/phvGjx8bevjawi2CPdKrBhCy8K8tA==
X-Gm-Message-State: AOJu0YwmX1feNAp8D9tgPOlzGYU8hyyT92UiCkirCrFv5B5kmBXkyrAi
	fqrFHu4kfbqARyqP7GqeYNb+Hxa4zKD8YZj9Hd12s48GGYonFqFAd4/oiW6CysU=
X-Google-Smtp-Source: AGHT+IFjTAniUsouIQiZg5/1w3zu99rfqHzwO1yDcSTT+S18LBkfM8M18UxyzOt56YfOrmlo+CFdnQ==
X-Received: by 2002:a17:906:16da:b0:a3e:7dbe:298b with SMTP id t26-20020a17090616da00b00a3e7dbe298bmr6580101ejd.24.1708522537598;
        Wed, 21 Feb 2024 05:35:37 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id g16-20020a170906c19000b00a3cee88ddc7sm5044547ejz.147.2024.02.21.05.35.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 05:35:37 -0800 (PST)
Message-ID: <1a3c9ec5-69b9-4f55-bdf6-628fcf2b0268@tuxon.dev>
Date: Wed, 21 Feb 2024 15:35:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/17] clk: renesas: r9a08g045: Add support for power
 domains
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
 <20240208124300.2740313-11-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdUn6j8aZ+7iahrovWC8oWLiijqH=+cUDjYwdL3tWiuhDg@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdUn6j8aZ+7iahrovWC8oWLiijqH=+cUDjYwdL3tWiuhDg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 16.02.2024 16:10, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, Feb 8, 2024 at 1:44 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Instantiate power domains for the currently enabled IPs of R9A08G045 SoC.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/drivers/clk/renesas/r9a08g045-cpg.c
>> +++ b/drivers/clk/renesas/r9a08g045-cpg.c
>> @@ -240,6 +240,28 @@ static const unsigned int r9a08g045_crit_mod_clks[] __initconst = {
>>         MOD_CLK_BASE + R9A08G045_DMAC_ACLK,
>>  };
>>
>> +static const struct rzg2l_cpg_pm_domain_init_data r9a08g045_pm_domains[] = {
>> +       DEF_PD("always-on",     R9A08G045_PD_ALWAYS_ON, 0, 0,
>> +                               RZG2L_PD_F_PARENT | RZG2L_PD_F_ALWAYS_ON),
>> +       DEF_PD("gic",           R9A08G045_PD_GIC, MSTOP(ACPU, BIT(3)), PWRDN(IP1, 2),
> 
> My docs document only bit 0 of the CPG_BUS_ACPU_MSTOP register.

Indeed, mine, too. I took as reference the table "Registers for Module
Standby Mode". I asked for clarifications. The TF-A software also uses
BIT(3) for setting this.

> 
>> +                               RZG2L_PD_F_ALWAYS_ON),
>> +       DEF_PD("ia55",          R9A08G045_PD_IA55, MSTOP(PERI_CPU, BIT(13)), PWRDN(IP1, 3),
>> +                               RZG2L_PD_F_ALWAYS_ON),
>> +       DEF_PD("dmac",          R9A08G045_PD_DMAC, MSTOP(REG1, GENMASK(3, 0)), 0,
>> +                               RZG2L_PD_F_ALWAYS_ON),
>> +       DEF_PD("ddr",           R9A08G045_PD_DDR, MSTOP(PERI_DDR, BIT(1)), PWRDN(IP2, 0),
> 
> Only BIT(1)? My docs suggest GENMASK(1, 0).

I wanted to keep PHY separated but there's no reason for doing that,
AFAICT. I'll update it.

> 
>> +                               RZG2L_PD_F_ALWAYS_ON),
>> +       DEF_PD("tzcddr",        R9A08G045_PD_TZCDDR, MSTOP(TZCDDR, GENMASK(2, 0)),
>> +                               PWRDN(IP2, 1), RZG2L_PD_F_ALWAYS_ON),
>> +       DEF_PD("otfde_ddr",     R9A08G045_PD_OTFDE_DDR, 0, PWRDN(IP2, 2), RZG2L_PD_F_ALWAYS_ON),
> 
> MSTOP(PERI_CPU2, BIT(2))?

OK.

Thank you,
Claudiu Beznea

> 
>> +       DEF_PD("sdhi0",         R9A08G045_PD_SDHI0, MSTOP(PERI_COM, BIT(0)), PWRDN(IP1, 13), 0),
>> +       DEF_PD("sdhi1",         R9A08G045_PD_SDHI1, MSTOP(PERI_COM, BIT(1)), PWRDN(IP1, 14), 0),
>> +       DEF_PD("sdhi2",         R9A08G045_PD_SDHI2, MSTOP(PERI_COM, BIT(11)), PWRDN(IP1, 15), 0),
>> +       DEF_PD("eth0",          R9A08G045_PD_ETHER0, MSTOP(PERI_COM, BIT(2)), PWRDN(IP1, 11), 0),
>> +       DEF_PD("eth1",          R9A08G045_PD_ETHER1, MSTOP(PERI_COM, BIT(3)), PWRDN(IP1, 12), 0),
>> +       DEF_PD("scif0",         R9A08G045_PD_SCIF0, MSTOP(MCPU2, BIT(1)), 0, 0),
>> +};
>> +
> 
> The rest LGTM.
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

