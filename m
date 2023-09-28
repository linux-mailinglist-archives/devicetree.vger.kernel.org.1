Return-Path: <devicetree+bounces-4031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D45B7B11CB
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 06:54:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 9C2ADB20959
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 04:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCAA7848B;
	Thu, 28 Sep 2023 04:54:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43D4749B
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:54:51 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45B58F9
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 21:54:49 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9b2b53e17feso320674466b.3
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 21:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695876888; x=1696481688; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=olm/D+dJExjfSBWXGE2Uq9vVnEsfwITsdsfFo+MxoTk=;
        b=Dr1zyC1tiyCEQjBL1uj1JD4h+4CA80qgc0YJRvtD7Fw+xe6WnHNn+uMkxHDV7XJe67
         A1LEWxgV1Pe5CESNz5cbrPvRDAZHdqRYYeXNMu6xo9etQIurMbGD/bAcmvmpG03pjJTN
         SeuF3oJAxs7Vyy9w/KlCsKMonoiWdoc0tcaD82qg+oKXI5FQ6SJ1eUAOsRNdehy2p8uj
         7eKOe8lWUfrUWiSjyndt82MaOSEiPGjeV0oapU+aPlEV5uvnA5Uh88E7R80KjpXlI5Pa
         V26TlUnUOJW2XT4t2qvf4vNFqpIKZXoeNgw7jQsavdqALhMc05oKE6h7C1VMuAqPRnOZ
         0ajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695876888; x=1696481688;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=olm/D+dJExjfSBWXGE2Uq9vVnEsfwITsdsfFo+MxoTk=;
        b=GFNWKT38hu4BtoWOiJzGJ8wKNkgbeiVuc7wWlU0WWnGwzBmBLinkUgIBBvCWIuOqy8
         +JxBgwhbOZMuNj1bjvF4LJpUwXSDehYBfu8JR1VGEotd1a+Ij6RUuYBhrHz5Qz03+1sq
         EO0Bg/CVWpXYy2fKa3/dBVWO50ILgLMOkzGlIktEVVNrCICrBePNpbmjFM0fREVuZGKJ
         gfCTm8bxchcj6V97bDunm1lqi7h35lLB01ge3BgL8qx0vHtjKN+BSqeTguO47wZZ6O+I
         LyLzbvwduQCmTHBCmDikVMt4kNKZpt6bhL2plymMkeC8G3/M6e9pBudzMHgpbIvqQdi7
         drjA==
X-Gm-Message-State: AOJu0YxHAGtSed06Oec42PZzcpBwnCoukyQmfyz4Cr/C4jgfhpqTsjBv
	fApC0O/JyNJ9XtXWd18r6EVljw==
X-Google-Smtp-Source: AGHT+IEFpdq3a7HATHUTgENVuaEGn2ioT9l2ERfVEJ8IOkiDOT6bn01Sn56ChsWGJMbIjhbJQj2snQ==
X-Received: by 2002:a17:906:518e:b0:9ae:5fe1:ef03 with SMTP id y14-20020a170906518e00b009ae5fe1ef03mr176773ejk.67.1695876887638;
        Wed, 27 Sep 2023 21:54:47 -0700 (PDT)
Received: from [192.168.32.2] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id p26-20020a170906229a00b009ad8338aafasm10387144eja.13.2023.09.27.21.54.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 21:54:47 -0700 (PDT)
Message-ID: <154b823e-d532-ede7-5ada-08436ec86804@tuxon.dev>
Date: Thu, 28 Sep 2023 07:54:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 21/37] dt-bindings: clock: add r9a08g045 CPG clocks and
 resets definitions
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 ulf.hansson@linaro.org, linus.walleij@linaro.org,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, magnus.damm@gmail.com,
 catalin.marinas@arm.com, will@kernel.org,
 prabhakar.mahadev-lad.rj@bp.renesas.com, biju.das.jz@bp.renesas.com,
 quic_bjorande@quicinc.com, arnd@arndb.de, konrad.dybcio@linaro.org,
 neil.armstrong@linaro.org, nfraprado@collabora.com, rafal@milecki.pl,
 wsa+renesas@sang-engineering.com, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
 <20230912045157.177966-22-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWc6yy=oJDo4zMdvB-t8pjCuE1oJ_Y6Ck0aX_hPkfhPug@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdWc6yy=oJDo4zMdvB-t8pjCuE1oJ_Y6Ck0aX_hPkfhPug@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Geert,

On 15.09.2023 14:59, Geert Uytterhoeven wrote:
> On Tue, Sep 12, 2023 at 6:53 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Add RZ/G3S (R9A08G045) Clock Pulse Generator (CPG) core clocks, module
>> clocks and resets.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- /dev/null
>> +++ b/include/dt-bindings/clock/r9a08g045-cpg.h
> 
>> +/* R9A08G045 Module Clocks */
> 
>> +#define R9A08G045_USB_U2H0_HCLK                65
>> +#define R9A08G045_USB_U2H1_HCLK                66
>> +#define R9A08G045_USB_U2P_EXR_CPUCLK   67
>> +#define R9A08G045_USB_PCLK             68
>> +#define R9A08G045_USB_SCLK             69
> 
> There is no USB_SCLK bit in CPG_CLKON_USB, so please drop
> R9A08G045_USB_SCLK.
> 
>> +/* R9A08G045 Resets */
> 
>> +#define R9A08G045_SRAM_ACPU_ARESETN0   11
>> +#define R9A08G045_SRAM_ACPU_ARESETN1   12
>> +#define R9A08G045_SRAM_ACPU_ARESETN2   13
> 
> There is no SRAM_ACPU_ARESETN2 bit in CPG_RST_SRAM_MCPU,
> so please drop R9A08G045_SRAM_ACPU_ARESETN2.

I see there is SRAM_ACPU_ARESETN2 in CPG_RST_SRAM_*A*CPU register. You are
actually saying that the documentation might be wrong?

Thank you,
Claudiu Beznea

> 
> The rest LGTM.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

