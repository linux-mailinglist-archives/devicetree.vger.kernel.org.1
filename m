Return-Path: <devicetree+bounces-179843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF734AC1DCE
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 09:41:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9C9E3AEC28
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 07:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79AA21C19A;
	Fri, 23 May 2025 07:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ol7Z2OOU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E2820F080
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 07:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747986096; cv=none; b=lYmvTWag/bwu1sXo5T7o8W5hVXJO1Eq4Z+9D6o17+U/ZHp9BPWLGdNutPQ6XrOvcoLZSecwtQiNrUjwV0CvO4y7DkdtcpPcJCrn5HRvvOx4QxK6l9OimoVEY7OVk+kuJRHeTzIe45t/ATsQKhUBj37usq5HbXuKCEtxXd5wtCqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747986096; c=relaxed/simple;
	bh=Gcv7fQFjBsoA/VDKo34AnJZEVQyqgUBDLpgqJ7oE2cg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QaamReeCH0Tc+tnTa/sELrqvGxm65kdiYU2scSLiolPFBvCz1zuZNW9fDlqw7ialyUCSr4oONeqobKdzioTIg30nzpP89zVefnk9MpBisaf1hQ2fcoFK+ikNp8uIiPwWDLrMF1LeJN1svW7JgRM8EdMyyiMTnw1wbQvR8xMsi1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ol7Z2OOU; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ad53cd163d9so1225371366b.0
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 00:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747986093; x=1748590893; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wfbz3z2R9vaxFE03HpNykyLrdDEX10Q8GHXcIKDKwck=;
        b=ol7Z2OOUZLPExex2rIjl+jTFspk/mz8C8n5P1Yt33CpoD5WDBWT7LodxS9gI52SHsK
         XK8+m/9c+/dc7HC/EnXuCJCI8sfaZD2RaYerMHaowMvneJ6Vo/l1/x7xhSuqSMjXNRf7
         RPTYtYFo5+PAoEPiEbC0871XsKaCY41iKT5kyhpp2tWWcgjF2hfyW+3UDEEiJaNI6mXq
         BJf50ljKrjv8/V10kAxlyJYpajwydqBFLYKWZx01XiR7G6StqfqZ0x3z1s3mGlRsRMtO
         sgRFfvMssKk2c+0+DdOCLRUldN00pLBPS3aUSpp7Nv2N0iwEGerUmhGo/LVtNlH9dHUK
         in7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747986093; x=1748590893;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wfbz3z2R9vaxFE03HpNykyLrdDEX10Q8GHXcIKDKwck=;
        b=JCCfzFgP2dBXi53+DA4QXcyGvVT8tCcGeFx35ddVbbljl3vCaf0SL13JIrftcnihB9
         yGsCHnkvoTNChQACtWAV1uCzLlXjgR9eoiD/k0HbFa3YokH/jSMT3WxKR57jdbbxvq7Z
         vXTA48V9LayK85mm81rj09Ifi9oUwiAobLDhRPGwmvz20W9+dZTzyjSeojbh1kSTVDSK
         iWJw8vspNswh69SlheRXfqa4MQnkKHF+oOO74bXZL0LHOJ49nKohuiMRJuwsbSl7kpvo
         VltpNb2Gt9KtWfteX9tbH8mYAACB4riOeYd3J2Or24Y0CAnNpC3kiHu9129Cu/OAILCL
         c7SQ==
X-Forwarded-Encrypted: i=1; AJvYcCVoTw+22RoZMZWreq+9ls3FN5YVSioYF5VxLhCaNApjw+tf93MTjSLik6UJd1LsCIO2/9v6VrMBhl4Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5Bt4ivztXh9HEWgMFQWHAQNs0FGzcNAvqYCKwHAGY84TiaPaY
	ZQc4QoNlGf/1GSuBW0Ctc8ML/8+pC5DQwsRDvKnlA1v1w/wH6ndAf/aYvVRwLnCkZlg=
X-Gm-Gg: ASbGncsdIGXSdj2wZOI2KYeYeHM27gQqRwKUuEln+qGpt6tHOEpZ3LSIqB/bJnl2WDw
	rdU17tsNKWxqXshiMBwWJQD86vBsXZLEDTOB8agcYV/2avKE8NbBm6phqV+sxccR2A7gitGdtqu
	gYZziDyDbn+iZQfna/ENRGWj4RIAcBZcPFsKr7yzzWh9J0UP/Z48mYXURYnRsj+S5sYKDrCn3w9
	rcWI7puI6WEaZuGZsZmjBqZT3mTnoBp0peCVRYldEUk+xLaAPszEMh0BiapG2TRX1n/dJKYePJ4
	2/xejPYZZVDCRw74LQ+4/JmYTy/+fxWLMO9n3+vXiFhheupt1zgOiYJBsOA=
X-Google-Smtp-Source: AGHT+IFLWxVxo5oDe1VEFrnubK+bRZuRiU3pZfFFv6DnQEzoLbPR9OdPPq4oz3A7rx+fGDSHaEubkA==
X-Received: by 2002:a17:907:3f96:b0:ad4:f5ef:84ae with SMTP id a640c23a62f3a-ad52d5afb41mr2810680366b.54.1747986092365;
        Fri, 23 May 2025 00:41:32 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d443a0fsm1201993066b.97.2025.05.23.00.41.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 00:41:31 -0700 (PDT)
Message-ID: <b0d15a62-e164-4a8a-b4c7-77d9c3b2e7b2@tuxon.dev>
Date: Fri, 23 May 2025 10:41:30 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] clk: renesas: rzg2l-cpg: Add support for MSTOP in
 clock enable/disable API
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250514090415.4098534-1-claudiu.beznea.uj@bp.renesas.com>
 <20250514090415.4098534-5-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWNrU=XOZr3dKKXQikzCzJ1oUPGQofWFdRX9x6rhYn3XA@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdWNrU=XOZr3dKKXQikzCzJ1oUPGQofWFdRX9x6rhYn3XA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Geert,

On 22.05.2025 17:46, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Wed, 14 May 2025 at 11:04, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The RZ/{G2L, V2L, G3S} CPG versions support a feature called MSTOP. Each
>> module has one or more MSTOP bits associated with it, and these bits need
>> to be configured along with the module clocks. Setting the MSTOP bits
>> switches the module between normal and standby states.
>>
>> Previously, MSTOP support was abstracted through power domains
>> (struct generic_pm_domain::{power_on, power_off} APIs). With this
>> abstraction, the order of setting the MSTOP and CLKON bits was as follows:
>>
>> Previous Order:
>> A/ Switching to Normal State (e.g., during probe):
>> 1/ Clear module MSTOP bit
>> 2/ Set module CLKON bit
>>
>> B/ Switching to Standby State (e.g., during remove):
>> 1/ Clear CLKON bit
>> 2/ Set MSTOP bit
>>
>> However, in some cases (when the clock is disabled through devres), the
>> order may have been (due to the issue described in link section):
>>
>> 1/ Set MSTOP bit
>> 2/ Clear CLKON bit
>>
>> Recently, the hardware team has suggested that the correct order to set
>> the MSTOP and CLKON bits is:
>>
>> Updated Order:
>> A/ Switching to Normal State (e.g., during probe):
>> 1/ Set CLKON bit
>> 2/ Clear MSTOP bit
>>
>> B/ Switching to Standby State (e.g., during remove):
>> 1/ Set MSTOP bit
>> 2/ Clear CLKON bit
>>
>> To prevent future issues due to incorrect ordering, the MSTOP setup has
>> now been implemented in rzg2l_mod_clock_endisable(), ensuring compliance
>> with the sequence suggested in Figure 41.5: Module Standby Mode Procedure
>> from the RZ/G3S HW manual, Rev1.10.
>>
>> Additionally, since multiple clocks of a single module may be mapped to a
>> single MSTOP bit, MSTOP setup is reference-counted.
>>
>> Furthermore, as all modules start in the normal state after reset, if the
>> module clocks are disabled, the module state is switched to standby. This
>> prevents keeping the module in an invalid state, as recommended by the
>> hardware team.
>>
>> Link: https://lore.kernel.org/all/20250215130849.227812-1-claudiu.beznea.uj@bp.renesas.com/
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v2:
>> - udpated patch description to avoid plural in the configuration
>>   sequence description b/w MSTOP and CLK_ON
>> - use atomic type to store the usage counter; s/refcnt/usecnt/g
>> - moved MSTOP_OFF(), MSTOP_MASK() macros to rzg2l-cpg.c
>> - dropped struct mstp_clock::critical and use clk_hw_get_flags()
>>   instead to get the clock flags
>> - used unsigned int iterators in for loops
>> - keep memory allocated for a single list for clocks sharing the
>>   same MSTOP by updating the rzg2l_mod_clock_add_shared_mstop_clk();
>> - s/rzg2l_cpg_mstop_show/rzg2l_mod_clock_mstop_show/g,
>>   s/rzg2l_cpg_mstop/rzg2l_mod_clock_mstop/g,
>>   s/rzg2l_cpg_update_shared_mstop_clocks/rzg2l_mod_clock_update_shared_mstop_clks/g
>>    to keep the same naming conventions for functions handling mod clock MSTOP
>> - use the newly added for_each_mstp_clk() macro all over the code
> 
> Thanks for the update!
> 
>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
> 
>> @@ -1209,6 +1232,94 @@ struct mstp_clock {
>>                 else if (((hw) = __clk_get_hw((priv)->clks[(priv)->num_core_clks + i])) && \
>>                          ((mstp_clk) = to_mod_clock(hw)))
>>
>> +/* Need to be called with a lock held to avoid concurrent access to mstop->usecnt. */
>> +static void rzg2l_mod_clock_module_set_state(struct mstp_clock *clock,
>> +                                            bool standby)
>> +{
>> +       struct rzg2l_cpg_priv *priv = clock->priv;
>> +       struct mstop *mstop = clock->mstop;
>> +       bool update = false;
>> +       u32 value;
>> +
>> +       if (!mstop)
>> +               return;
>> +
>> +       value = MSTOP_MASK(mstop->conf) << 16;
>> +
>> +       if (standby) {
>> +               unsigned int criticals = 0;
>> +
>> +               for (unsigned int i = 0; i < clock->num_shared_mstop_clks; i++) {
>> +                       struct mstp_clock *clk = clock->shared_mstop_clks[i];
>> +
>> +                       if (clk_hw_get_flags(&clk->hw) & CLK_IS_CRITICAL)
>> +                               criticals++;
>> +               }
>> +
>> +               /*
>> +                * If this is a shared MSTOP and it is shared with critical clocks,
>> +                * and the system boots up with this clock enabled but no driver
>> +                * uses it the CCF will disable it (as it is unused). As we don't
>> +                * increment reference counter for it at registration (to avoid
>> +                * messing with clocks enabled at probe but later used by drivers)
>> +                * do not set the MSTOP here too if it is shared with critical
>> +                * clocks and ref counted only by those critical clocks.
>> +                */
>> +               if (criticals && criticals == atomic_read(&mstop->usecnt))
>> +                       return;
>> +
>> +               value |= MSTOP_MASK(mstop->conf);
>> +
>> +               /* Allow updates on probe when usecnt = 0. */
>> +               if (!atomic_read(&mstop->usecnt))
>> +                       update = true;
>> +               else
>> +                       update = atomic_dec_and_test(&mstop->usecnt);
>> +       } else {
>> +               atomic_inc(&mstop->usecnt);
>> +               update = true;
> 
> Shouldn't the update be conditional, i.e.:
> 
>     if (!atomic_read(&mstop->usecnt))
>             update = true;
>     atomic_inc(&mstop->usecnt);
> 
> ?

Indeed, it should be conditional as you suggested.

> 
>> +       }
>> +
>> +       if (update)
>> +               writel(value, priv->base + MSTOP_OFF(mstop->conf));
>> +}
> 
>> +static int rzg2l_mod_clock_update_shared_mstop_clks(struct rzg2l_cpg_priv *priv,
>> +                                                   struct mstp_clock *clock)
>> +{
>> +       struct mstp_clock *clk;
>> +       struct clk_hw *hw;
>> +
>> +       if (!clock->mstop)
>> +               return 0;
>> +
>> +       for_each_mstp_clk(clk, hw, priv) {
>> +               struct mstp_clock **new_clks;
>> +               int num_shared_mstop_clks;
>> +               bool found = false;
>> +
>> +               if (clk->mstop != clock->mstop)
>> +                       continue;
>> +
>> +               num_shared_mstop_clks = clk->num_shared_mstop_clks;
>> +               for (unsigned int i = 0; i < num_shared_mstop_clks; i++) {
>> +                       if (clk->shared_mstop_clks[i] == clock) {
>> +                               found = true;
>> +                               break;
>> +                       }
>> +               }
>> +               if (found)
>> +                       continue;
> 
> Can this happen? With your current code, the answer is yes.
> But I think this loop and check can be removed...
> 
>> +
>> +               if (!num_shared_mstop_clks)
>> +                       new_clks = devm_kmalloc_array(priv->dev, 2, sizeof(*new_clks), GFP_KERNEL);
>> +               else
>> +                       new_clks = devm_krealloc(priv->dev, clk->shared_mstop_clks,
>> +                                                (num_shared_mstop_clks + 1) * sizeof(*new_clks),
>> +                                                GFP_KERNEL);
>> +
>> +               if (!new_clks)
>> +                       return -ENOMEM;
>> +
>> +               if (!num_shared_mstop_clks)
>> +                       new_clks[num_shared_mstop_clks++] = clk;
>> +               if (clk != clock)
> 
> This check is always true

If I'm not wrong now, when adding the clock to it's own list, and the list
is empty (!num_shared_mstop_clks check above is true), if this condition is
missing the clock it will be added twice in its own list.

> 
>> +                       new_clks[num_shared_mstop_clks++] = clock;
>> +
>> +               for (unsigned int i = 0; i < num_shared_mstop_clks; i++) {
>> +                       new_clks[i]->shared_mstop_clks = new_clks;
>> +                       new_clks[i]->num_shared_mstop_clks = num_shared_mstop_clks;
>> +               }
> 
> ... by adding a "break" here.  The loop above has already updated the
> shared_mstop_clks[] arrays for all clocks sharing the same mstop value.

It may happen that the entries in the module clock array provided by the
SoC specific drivers to not be sorted by module clock ID. That's the case
with RZ/G2L IA55 clocks (from r9a07g044-cpg.c):

static const struct {
	struct rzg2l_mod_clk common[79];
#ifdef CONFIG_CLK_R9A07G054
	struct rzg2l_mod_clk drp[5];
#endif
} mod_clks = {
  .common = {
    // ...

    DEF_MOD("ia55_pclk", R9A07G044_IA55_PCLK, R9A07G044_CLK_P2,
			 0x518, 0, MSTOP(BUS_PERI_CPU, BIT(13))),
    DEF_MOD("ia55_clk",	R9A07G044_IA55_CLK, R9A07G044_CLK_P1,
                         0x518, 1, MSTOP(BUS_PERI_CPU, BIT(13))),

    // ...
};

Where IDs are defined as:

#define R9A07G044_IA55_CLK     8
#define R9A07G044_IA55_PCLK    9

These clocks share the same MSTOP bit.

Because the ia55_pclk is the 1st clock registered (index 9) it will be
added to priv->clks[base + 9].

Next registered clock will be for ia55_clk, with index 8, it will be added
to priv->clks[base + 8].

for_each_mstp_clk() loops on clocks from priv->clks[] array. If a break
will be done at the end of the for_each_mstp_clk() loop, at the end of the
registration each of these clocks will have on it's shared_mstop_clks[]
only references to itself.

Thank you for your review,
Claudiu

> 
>> +       }
>> +
>> +       return 0;
>> +}
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


