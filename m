Return-Path: <devicetree+bounces-4033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 098CC7B11D6
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 06:55:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AED74281551
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 04:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FDD5883B;
	Thu, 28 Sep 2023 04:55:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CA5749B
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:55:51 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5228E98
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 21:55:49 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-98377c5d53eso1538740366b.0
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 21:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695876948; x=1696481748; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GRoZ9U8WPN+Qr3fM7UT4CjFDZZqBDxWZDvc7yR6K5h0=;
        b=d0oyf8m3qm5rklWiT/R30kvt4WfzwTKMe6jjY5/Iwv/Y8XlJpH8MjUFNrn3+zwNpvY
         Bya/r3q8L0EvaBav+sxt0WaBF1HjhRuSbmrMO/gub6qLNV3WqAZyRbRaDb051QluCaji
         c8/4niu+xDJABda20M8xnCOeerIZuV5lECuP/zcXDkrc3XLdQVpCAZi2UPi5SrfVYHu6
         2+TPUCGktlSDTL1pZUPfFPu0oMB3ePVnGfS3koNuv5X2exSS5DNlItwO+8iaxjRtxqJV
         Lziyr3kNdaVx31nzizJfYdIhMiSd5mS0ywNlvFl2k2uBHim28zuFOBp/x7EoGQ2OZ7yr
         hEeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695876948; x=1696481748;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GRoZ9U8WPN+Qr3fM7UT4CjFDZZqBDxWZDvc7yR6K5h0=;
        b=Sik5ulfbIryvB1FkyYb5MKIDN3Zm6bBQAZ9wgq4mM0SBEPbC/eq5vPo+xpEf817Nk0
         xomUrO4uHOuEf+cM8I7Dj/7K2A0VBTYKuY4PLTk7NdLpzPScUVp+7gvqSSi0Ow8o1Alv
         FFj+ZZ+swK71i3KBHN2cHmG2oa9OSs2tCI+PgMof8DWp6kmf5PLMKJ345FWNk+RlPBsJ
         k8HIv102UrVP62Ufqydk+2KJWUKrBrOIRqBvYHK9ss1TFloVR2tNWmTJKNYaeLlxc/ae
         pmgeLOHy9j53JqWJtXjgDCwNydosdeLMG+EivsalGPOGLF4eFftr4ss3ZHtpjiSEARZ1
         iQMg==
X-Gm-Message-State: AOJu0YxYaPDkvYIevhrJygUfYmLl8Cd7Am1vx1jk2ahgLNGhEZvyqjeT
	qmIhf1r+QzyCXJkf7P6ZRJ2mfg==
X-Google-Smtp-Source: AGHT+IE3pAEjLgDO8zlyhmBRQp2g+CFl8YUn7EwT8APbyBoysQf9t3e6/pskUqprJEO69PoIDitB5w==
X-Received: by 2002:a17:907:78d5:b0:9ae:6ab9:af90 with SMTP id kv21-20020a17090778d500b009ae6ab9af90mr142567ejc.47.1695876947632;
        Wed, 27 Sep 2023 21:55:47 -0700 (PDT)
Received: from [192.168.32.2] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id jt24-20020a170906ca1800b009929d998abcsm10195585ejb.209.2023.09.27.21.55.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 21:55:47 -0700 (PDT)
Message-ID: <25ba20db-6dca-7179-a892-9d9f87442313@tuxon.dev>
Date: Thu, 28 Sep 2023 07:55:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 09/37] clk: renesas: rzg2l: fix computation formula
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
 <20230912045157.177966-10-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVNzgHqURohOgpFEaGn+6+rQTqsDomoS1u_-jn=GgmHXw@mail.gmail.com>
 <dfe64c7c-2f90-65a2-05fc-e96ec5113a60@tuxon.dev>
 <CAMuHMdXJ_gp5cdGpcK-kGk16YGDX8d9MEjQQkSobOGLphbJ5dQ@mail.gmail.com>
 <CAMuHMdV=r9704bNemDHWvjMJKbsBQJKqTxkKCeGUNp4iBNBoew@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdV=r9704bNemDHWvjMJKbsBQJKqTxkKCeGUNp4iBNBoew@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Geert,

On 27.09.2023 11:00, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Tue, Sep 26, 2023 at 4:44 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>> On Tue, Sep 26, 2023 at 1:47 PM claudiu beznea <claudiu.beznea@tuxon.dev> wrote:
>>> On 14.09.2023 15:55, Geert Uytterhoeven wrote:
>>>> On Tue, Sep 12, 2023 at 6:52 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>
>>>>> According to hardware manual of RZ/G2L (r01uh0914ej0130-rzg2l-rzg2lc.pdf)
>>>>> the computation formula for PLL rate is as follows:
>>>>>
>>>>> Fout = ((m + k/65536) * Fin) / (p * 2^s)
>>>>>
>>>>> and k has values in range [-32768, 32767]. Dividing k by 65536 with
>>>>> integer variables leads all the time to zero. Thus we may have slight
>>>>> differences b/w what has been set vs. what is displayed. Thus,
>>>>> get rid of this and decompose the formula before dividing k by 65536.
>>>>>
>>>>> Fixes: ef3c613ccd68a ("clk: renesas: Add CPG core wrapper for RZ/G2L SoC")
>>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> Thanks for your patch!
>>>>
>>>>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>>>>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>>>>> @@ -696,18 +696,22 @@ static unsigned long rzg2l_cpg_pll_clk_recalc_rate(struct clk_hw *hw,
>>>>>         struct pll_clk *pll_clk = to_pll(hw);
>>>>>         struct rzg2l_cpg_priv *priv = pll_clk->priv;
>>>>>         unsigned int val1, val2;
>>>>> -       unsigned int mult = 1;
>>>>> -       unsigned int div = 1;
>>>>> +       unsigned int div;
>>>>> +       u64 rate;
>>>>> +       s16 kdiv;
>>>>>
>>>>>         if (pll_clk->type != CLK_TYPE_SAM_PLL)
>>>>>                 return parent_rate;
>>>>>
>>>>>         val1 = readl(priv->base + GET_REG_SAMPLL_CLK1(pll_clk->conf));
>>>>>         val2 = readl(priv->base + GET_REG_SAMPLL_CLK2(pll_clk->conf));
>>>>> -       mult = MDIV(val1) + KDIV(val1) / 65536;
>>>>> +       kdiv = KDIV(val1);
>>>>>         div = PDIV(val1) << SDIV(val2);
>>>>>
>>>>> -       return DIV_ROUND_CLOSEST_ULL((u64)parent_rate * mult, div);
>>>>> +       rate = (u64)MDIV(val1) * parent_rate;
>>>>> +       rate += ((long long)parent_rate * kdiv) / 65536;
>>>>
>>>> As the division is a binary shift, you can use the mul_u64_u32_shr() helper,
>>>> and incorporate the sdiv shift at the same time:
>>>>
>>>>     rate += mul_u64_u32_shr(parent_rate, KDIV(val1), 16 + SDIV(val2));
>>
>>  [1]^
>>
>>>>
>>>> You can save a multiplication by premultiplying mdiv by 65536:
>>>>
>>>>     rate = mul_u64_u32_shr(parent_rate, (MDIV(val1) << 16)) + KDIV(val1),
>>>>                            16 + SDIV(val2));
>>
>> [2]^
>>
>>>
>>> Looking again at this: KDIV (aka DIV_K) could have negative values thus
>>> mul_u64_u32_shr() cannot be used here.
>>
>> That means you can indeed not use [1].

You're right. Thanks for the input!

>>
>> But you can still use [2], as MDIV() must be in the range 64..533[3],
>> so "(MDIV(val1) << 16)) + (s16)KDIV(val1)" is always positive.
>> Note that you do need the cast to s16 (which I had missed before), or
>> the intermediate variable kdiv of type s16 (like in your patch).
> 
> Or include the cast to a signed type in the definition of KDIV().
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

