Return-Path: <devicetree+bounces-21216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5070D802D5B
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:38:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73FDE1C20A45
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 08:38:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB115DF64;
	Mon,  4 Dec 2023 08:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="D1qGeoCD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 881E8D6
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 00:38:25 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40c09ba723eso10639955e9.2
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 00:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1701679104; x=1702283904; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mXHGFzYh/eKEpUPYl1Ap5PY48QYUpYTuUF24q1tFUVc=;
        b=D1qGeoCDq5zYB+NJH9GWk24cNo7z/weNso2JJzXgjZWQLOXJMWGEdg46MxBBGcPDo6
         eeSj1vDRp4vpyFgUYIijQsEoHHelAGomZRwh3P8iFzXaH10W/ZFSfqq/d6z+B1EWwHR9
         YWzaTR1UsOUffe85mzS3+jpqXKNQW+SGEVDGCDzSG3X4EAg6uzCjkYxICFNmLLPP2QQA
         uOL59qNrt3839+SCDExgg+FYdNMw1afpGBGHIdgMWRXj/a2o6O7J5Oohi/UluREbNpxP
         sc8V1jioME0GXjXg7N/tyYrIVSlRWzamGT9ydTpIdt/Qt03D+RZIj7cu/DCyv7V5h7iI
         FIrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701679104; x=1702283904;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mXHGFzYh/eKEpUPYl1Ap5PY48QYUpYTuUF24q1tFUVc=;
        b=lnG9Jk4ej4o1owfDVU+kw4XUZSmmIUBbyJoMPdArZvKUrhtB7OoZMtEVkv33JLJfSX
         bAwy4yBXgB51M833kYzc2/eSEgWFmgzUu9FIYj8QS2ID8jA3fRPPdG0NhzbivSxvWzgL
         j7MWcOT36w1Hmngwibmry1ALa/gLRXtmRej4ukmji5W5dsSdpQseyCf3nqPxTTrcKQH1
         ++ancxrHltGFaOQfdF+9n7eMysb6qN6yB38ost5A8yqwEUQPFKhdgGtij9JTWb/55Mgv
         H738pXnh0xQbbiFVqHWi+CfpZvSjlSqVUjXe+GuzK/9ulXrod5XIU6yKbB60hYqVyIfA
         AxYQ==
X-Gm-Message-State: AOJu0YzSl8QsAqtMTKLS0+bTq1l/6Jks/fYbY3OG6ZUgEQCuJKDMK0qq
	xDaqoXDUZVp7r8y5+r5OWd+3rQ==
X-Google-Smtp-Source: AGHT+IELNYw3RkOXAmb8vkG3gRt9A+IRTNasMaoq3lVyPbRRKkTGTZN2fAw1PANrCWuSZFt9WzbeTQ==
X-Received: by 2002:a05:600c:164a:b0:40c:5c9:287 with SMTP id o10-20020a05600c164a00b0040c05c90287mr1354668wmn.195.1701679103805;
        Mon, 04 Dec 2023 00:38:23 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.22])
        by smtp.gmail.com with ESMTPSA id bd22-20020a05600c1f1600b004090798d29csm14232581wmb.15.2023.12.04.00.38.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 00:38:23 -0800 (PST)
Message-ID: <b3701927-e41a-44d8-8f91-da245b76f532@tuxon.dev>
Date: Mon, 4 Dec 2023 10:38:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/14] arm64: renesas: r9a08g045: Add Ethernet nodes
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: s.shtylyov@omp.ru, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux@armlinux.org.uk, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, linus.walleij@linaro.org, p.zabel@pengutronix.de,
 arnd@arndb.de, m.szyprowski@samsung.com, alexandre.torgue@foss.st.com,
 afd@ti.com, broonie@kernel.org, alexander.stein@ew.tq-group.com,
 eugen.hristev@collabora.com, sergei.shtylyov@gmail.com,
 prabhakar.mahadev-lad.rj@bp.renesas.com, biju.das.jz@bp.renesas.com,
 linux-renesas-soc@vger.kernel.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20231120070024.4079344-1-claudiu.beznea.uj@bp.renesas.com>
 <20231120070024.4079344-11-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdW9Unpw7NQOGWd4SeFV8XgvRYTKTXnt9Tsagb3Q3U9tNA@mail.gmail.com>
 <96dd3f54-9560-4587-b4e8-bf75422ff5ef@tuxon.dev>
 <CAMuHMdWGbEhBdzK4Swu4uX05vX7H2Ow4uE1C=JVNOrdcbZYL=A@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdWGbEhBdzK4Swu4uX05vX7H2Ow4uE1C=JVNOrdcbZYL=A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 04.12.2023 10:02, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Mon, Dec 4, 2023 at 8:41 AM claudiu beznea <claudiu.beznea@tuxon.dev> wrote:
>> On 01.12.2023 19:35, Geert Uytterhoeven wrote:
>>> On Mon, Nov 20, 2023 at 8:01 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> Add Ethernet nodes available on RZ/G3S (R9A08G045).
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>> Thanks for your patch!
>>>
>>>> --- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
>>>> +++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
>>>> @@ -149,6 +149,38 @@ sdhi2: mmc@11c20000 {
>>>>                         status = "disabled";
>>>>                 };
>>>>
>>>> +               eth0: ethernet@11c30000 {
>>>> +                       compatible = "renesas,r9a08g045-gbeth", "renesas,rzg2l-gbeth";
>>>> +                       reg = <0 0x11c30000 0 0x10000>;
>>>> +                       interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
>>>> +                                    <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
>>>> +                                    <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
>>>> +                       interrupt-names = "mux", "fil", "arp_ns";
>>>> +                       clocks = <&cpg CPG_MOD R9A08G045_ETH0_CLK_AXI>,
>>>> +                                <&cpg CPG_MOD R9A08G045_ETH0_CLK_CHI>,
>>>> +                                <&cpg CPG_MOD R9A08G045_ETH0_REFCLK>;
>>>> +                       clock-names = "axi", "chi", "refclk";
>>>> +                       resets = <&cpg R9A08G045_ETH0_RST_HW_N>;
>>>> +                       power-domains = <&cpg>;
>>>
>>> Perhaps add a default phy mode, like on other SoCs?
>>>
>>>     phy-mode = "rgmii"';
>>
>> I skipped this (even it was available on the other SoCs) as I consider the
>> phy-mode is board specific.
> 
> IC.  Still, it's good to have some consistency across boards.
> 
>>> Also missing:
>>>
>>>     #address-cells = <1>;
>>>     #size-cells = <0>;
>>
>> Same for these.
> 
> These are required, and always have the same values, so it makes more
> sense to have them in the SoC .dtsi file, once.

I remember I had a compilation warning with an Ethernet controller
configured with fixed-link having #address-cells, #size-cells. With
fixed-link these were not needed.

Anyway... I'll keep all in dtsi if you prefer it this way.

Thank you,
Claudiu Beznea

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

