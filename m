Return-Path: <devicetree+bounces-17512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D73B7F2B62
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:03:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06FDE28265D
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BBB6482DE;
	Tue, 21 Nov 2023 11:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jay/4mi6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C428D5E
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 03:03:28 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a02c48a0420so32996566b.2
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 03:03:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700564607; x=1701169407; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ocOW+wDtvl9wtSJcVQOjkvft6Ekjwogemq66Yy+7vig=;
        b=jay/4mi6tMVsAkorg/DuQihHUxQY/iyzISw/IlBsrCZcuKtabOwoDqTM7iPfHnxDZy
         VZNoKkERz3B0xUGJXU2q0+fend0F1w3DYLU4NIe5wAYbFmSmIfACH2MLHlpHiAFcWUlA
         eJSW+Ken3U4LyqSMPJU8T39Aut7avgEIp4/v3UV3b3BPpqWUjeF+qmv/xaiSH57eGiaY
         MlqzK7N8CAKblq7L39UIcUPheq0fUVr0CeUH6nkDhWLenoc18OW10HHxvyjA0f/bgHPj
         8AfcIETzP5LL/tPOFl2tgks7KM0gkBXQtqLKb2Zc+OewRICD6f0d+8H/8eD80YH1w5AI
         a0JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700564607; x=1701169407;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ocOW+wDtvl9wtSJcVQOjkvft6Ekjwogemq66Yy+7vig=;
        b=FnO4XWvRCYZRDwkNboIxFS+uJsYmk1cn1gDodL9P1mBBrN7gBAxfUI+KUrpeVUfCmA
         uiYW0r4EkzWrYuAFCj3t0Sdfzy4ZSe8Yw6abN/TriGTYztn5lSTjytTykmOVdDenATF/
         50oKfGGd+xT6zew/qnLGMtaoH0YLvPrU5PueUyfjPS5fY84QSrBEEjXIaAUyb4MU1xLL
         rElQlXlzmz+iMJVieIZq/pC+XXhFvyp+0lyP4jTp9QKooa1Z5EzJAo9ID+7BuR3dtVbh
         pvntSF3OGZovlG33CQ96aW6bUIR7OL6bv06TWFRk7nsT1TTkylR97g3nwltqTYjSpx6M
         nTcA==
X-Gm-Message-State: AOJu0Yx2nePf1WFmUmbyUnbCYfd+ltKX5xkv522//mkOJlCl6jkPaGIP
	QCpgFjhx+1Twhgo+0V+qU81yEg==
X-Google-Smtp-Source: AGHT+IFraOZ+of1Nnh5fF4NLdfU3+RxtQZdG0uykUyhOhO7o4mzH+IpOupjDqWstj06JiptHz0lPHQ==
X-Received: by 2002:a17:906:3f1b:b0:9fe:a92b:9844 with SMTP id c27-20020a1709063f1b00b009fea92b9844mr4130736ejj.37.1700564606722;
        Tue, 21 Nov 2023 03:03:26 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.3])
        by smtp.gmail.com with ESMTPSA id f16-20020a17090624d000b00a02b519232bsm311964ejb.208.2023.11.21.03.03.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Nov 2023 03:03:26 -0800 (PST)
Message-ID: <c36cf6d0-181b-4a2c-9ccc-a585db66d5b8@tuxon.dev>
Date: Tue, 21 Nov 2023 13:03:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/9] clk: renesas: r9a08g045: Add IA55 pclk and its
 reset
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: tglx@linutronix.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20231120111820.87398-1-claudiu.beznea.uj@bp.renesas.com>
 <20231120111820.87398-2-claudiu.beznea.uj@bp.renesas.com>
 <e8637d39-911d-d8a3-b8da-548914df6ac@linux-m68k.org>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <e8637d39-911d-d8a3-b8da-548914df6ac@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 21.11.2023 11:59, Geert Uytterhoeven wrote:
>     Hi Claudiu,
> 
> On Mon, 20 Nov 2023, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> IA55 interrupt controller is available on RZ/G3S SoC. Add IA55 pclk and
>> its reset.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/drivers/clk/renesas/r9a08g045-cpg.c
>> +++ b/drivers/clk/renesas/r9a08g045-cpg.c
>> @@ -188,6 +188,7 @@ static const struct cpg_core_clk
>> r9a08g045_core_clks[] __initconst = {
>>
>> static const struct rzg2l_mod_clk r9a08g045_mod_clks[] = {
>>     DEF_MOD("gic_gicclk",        R9A08G045_GIC600_GICCLK,
>> R9A08G045_CLK_P1, 0x514, 0),
>> +    DEF_MOD("ia55_pclk",        R9A08G045_IA55_PCLK, R9A08G045_CLK_P2,
>> 0x518, 0),
> 
> This conflicts with [1], which you sent just before.

Sorry for that, I intended to adapt the one that will have ended up last in
your tree.

> 
> If that patch goes in first, I guess this new entry should gain
> ", MSTOP(PERI_CPU, BIT(13))", just like the entry for ia55_clk?

That's right.

Thank you,
Claudiu Beznea

> 
>>     DEF_MOD("ia55_clk",        R9A08G045_IA55_CLK, R9A08G045_CLK_P1,
>> 0x518, 1),
>>     DEF_MOD("dmac_aclk",        R9A08G045_DMAC_ACLK, R9A08G045_CLK_P3,
>> 0x52c, 0),
>>     DEF_MOD("sdhi0_imclk",        R9A08G045_SDHI0_IMCLK, CLK_SD0_DIV4,
>> 0x554, 0),
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> [1] "clk: renesas: rzg2l-cpg: Add support for MSTOP"
>    
> https://lore.kernel.org/r/20231120070024.4079344-4-claudiu.beznea.uj@bp.renesas.com
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 --
> geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like
> that.
>                                 -- Linus Torvalds

