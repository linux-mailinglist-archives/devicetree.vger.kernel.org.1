Return-Path: <devicetree+bounces-3400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 897207AEBBB
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 13:47:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 386D128156C
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 11:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C9CD26E30;
	Tue, 26 Sep 2023 11:47:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB252569D
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:47:14 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1A0F101
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 04:47:11 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5041335fb9cso13746859e87.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 04:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695728830; x=1696333630; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LCp3DXpfVKfH2Y0o0M8mCid7ujeQPXx6UqfFbszv1i8=;
        b=GFkmqM9lLJYapN4xBN0c7JH0ecC/aSpNEUDIAgH0wVZE/sOz9fL5dSc8mVtIEcOmUd
         KF/3fQt921CGdVlWaw8FyZhfGdQzBNYlNjG/uvesG4Ewzg9I1AMKGE5u/XBrdjw8dlOw
         NU9mK/8GxX5GZfK6E+K3Lk/odhHG9ZhG64kZCC3D4q7tqtaPxmJrxlRtwdEem6N0Nxfd
         AWtevtsOlJlmU43ZXEy6KwYK86a9iYIGSF3/+/bd+9oTr8RLDOjoyJvxnJL1Zx1ufehH
         xwcnQx5JGm0qOUBidz6Lg/yKqdwDMkolGZy0sd/DUfIVuhS14R+FVyL+bt+WFjIN7Q5C
         IvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695728830; x=1696333630;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LCp3DXpfVKfH2Y0o0M8mCid7ujeQPXx6UqfFbszv1i8=;
        b=sWRuybh11KeFvLsraX9hu2y8v8kavCRIQa3Ku7tTZ5a/EZ0sVgz4D4RvNCLvLmnbI8
         OXfliPJSC6Q2l/E3vn6dMqNGIfOMZERCfryPD9YQfTk1VL2IMyOAj/am+Aix9mYfnTfD
         0JV/CeL91AbjphFBHRrLPF7uS6+ZCCWeZzGSx6X/4HhvBQ/Todr6lFKV6xo2E2ICZlp3
         XA3CE+ESNtjtBYUlAqJWcdFupiX5GqRtMPdK5zuwONaKtAwG/tTIfCQTIWyn6B1cBex4
         n+sjamK9oLi98fzjLqZfPfXRgfoXrq4YlAdg4efOBRZLp4/BrJmlMaEQmaKJZEW08l03
         qBFg==
X-Gm-Message-State: AOJu0YzKBubMNKWSZSQU8COE/KaF8KuWSPewlru25bB/S+kHCPijtt5o
	fEuahjjmNzQVBG29n5UlUMPRlg==
X-Google-Smtp-Source: AGHT+IF+jbH7FWr6+cFqAnCyk/CUAIFVAZ8LgGPN4rOxnI4j0tUbuQS0WA4s9y3m/r3g5552xfmfnQ==
X-Received: by 2002:a05:6512:110e:b0:4fd:d64f:c0a6 with SMTP id l14-20020a056512110e00b004fdd64fc0a6mr9175819lfg.48.1695728829802;
        Tue, 26 Sep 2023 04:47:09 -0700 (PDT)
Received: from [192.168.32.2] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id lo18-20020a170906fa1200b0099bd1a78ef5sm7641095ejb.74.2023.09.26.04.47.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 04:47:09 -0700 (PDT)
Message-ID: <dfe64c7c-2f90-65a2-05fc-e96ec5113a60@tuxon.dev>
Date: Tue, 26 Sep 2023 14:47:06 +0300
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
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdVNzgHqURohOgpFEaGn+6+rQTqsDomoS1u_-jn=GgmHXw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi, Geert,

On 14.09.2023 15:55, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Tue, Sep 12, 2023 at 6:52 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> According to hardware manual of RZ/G2L (r01uh0914ej0130-rzg2l-rzg2lc.pdf)
>> the computation formula for PLL rate is as follows:
>>
>> Fout = ((m + k/65536) * Fin) / (p * 2^s)
>>
>> and k has values in range [-32768, 32767]. Dividing k by 65536 with
>> integer variables leads all the time to zero. Thus we may have slight
>> differences b/w what has been set vs. what is displayed. Thus,
>> get rid of this and decompose the formula before dividing k by 65536.
>>
>> Fixes: ef3c613ccd68a ("clk: renesas: Add CPG core wrapper for RZ/G2L SoC")
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>> @@ -696,18 +696,22 @@ static unsigned long rzg2l_cpg_pll_clk_recalc_rate(struct clk_hw *hw,
>>         struct pll_clk *pll_clk = to_pll(hw);
>>         struct rzg2l_cpg_priv *priv = pll_clk->priv;
>>         unsigned int val1, val2;
>> -       unsigned int mult = 1;
>> -       unsigned int div = 1;
>> +       unsigned int div;
>> +       u64 rate;
>> +       s16 kdiv;
>>
>>         if (pll_clk->type != CLK_TYPE_SAM_PLL)
>>                 return parent_rate;
>>
>>         val1 = readl(priv->base + GET_REG_SAMPLL_CLK1(pll_clk->conf));
>>         val2 = readl(priv->base + GET_REG_SAMPLL_CLK2(pll_clk->conf));
>> -       mult = MDIV(val1) + KDIV(val1) / 65536;
>> +       kdiv = KDIV(val1);
>>         div = PDIV(val1) << SDIV(val2);
>>
>> -       return DIV_ROUND_CLOSEST_ULL((u64)parent_rate * mult, div);
>> +       rate = (u64)MDIV(val1) * parent_rate;
>> +       rate += ((long long)parent_rate * kdiv) / 65536;
> 
> As the division is a binary shift, you can use the mul_u64_u32_shr() helper,
> and incorporate the sdiv shift at the same time:
> 
>     rate += mul_u64_u32_shr(parent_rate, KDIV(val1), 16 + SDIV(val2));
> 
> You can save a multiplication by premultiplying mdiv by 65536:
> 
>     rate = mul_u64_u32_shr(parent_rate, (MDIV(val1) << 16)) + KDIV(val1),
>                            16 + SDIV(val2));

Looking again at this: KDIV (aka DIV_K) could have negative values thus
mul_u64_u32_shr() cannot be used here.

> 
>> +
>> +       return DIV_ROUND_CLOSEST_ULL(rate, div);
> 
> return DIV_ROUND_CLOSEST_ULL(rate, PDIV(val1));
> 
>>  }
>>
>>  static const struct clk_ops rzg2l_cpg_pll_ops = {
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

