Return-Path: <devicetree+bounces-176721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5312AB54D8
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:35:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAFFF4A0351
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 12:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53DB2267F76;
	Tue, 13 May 2025 12:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="BFGZlNco"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B6328DB6C
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 12:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747139682; cv=none; b=u0xS2cJVVlTJwR5yQlmz93tLMt/59WwhmQKUdoiksKCu3chXDjMug+jEmcCimGZOrD3ra3VjrmclYLlXRIimPCSjYzK0G1EKt+7cgmj0jNXS4rToXbSsm34bVa2KNGTDsUbtooogjo9bzPpiIv+YfFV1KhFbVsBDtk2LJGecMAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747139682; c=relaxed/simple;
	bh=C6g26+a8+4FWdWFM6DToFTTtYFPKxuXSuqUWlbI9vLk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HbobdHEqCG0ytXkIeB/Z727q2yZ0H+kai1sj9T0S+q4JFlK3nlNcBsSJf/vuVpLz1yJfx0KJ7XSA556PhlzDtPynqB8PDBjeqG7ZIdS9YCHIXEcM549LjTQAlRc3hIdrYjfbZxrlCxtAb1k+Tii2tydHe3H+n1we9+ysVq/b1vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=BFGZlNco; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a1fb17a9beso2402982f8f.3
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 05:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747139678; x=1747744478; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tHvaWLNRQYIypczjqy5l/3kyXpFgu36gZsSsUPB0g3w=;
        b=BFGZlNcodhFIGG95tBF8ZHeHAy1SwtQqzOgi4U3aLowrzUHuGkoZbFYFUltuPHYVdY
         X2+7GfmurVn2WtjAqbdE8ASX93ptUroC1IidHL/GEOgoMQkXKNKZY8VFCkSA9Jlxy6Vl
         BbUGIjUQcQr+43F+ez0AAcjJVBqyjDwO6p2zEoKhQxdfx0vnPpClilPDVFUkxfjUXPxG
         jU5ATcSjOSd+VqeoNEqhTN2JrU+fVPGK8MJlOhh+eLhGZE98Z6SC2yq+pF36GRhowKpH
         o56EvyfcdUMrpPml0fO7ULeDSAq0yBHb/cp0n1hnc5srfSAuyhSFt+HfDQUnEHXtEzOG
         5U6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747139678; x=1747744478;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tHvaWLNRQYIypczjqy5l/3kyXpFgu36gZsSsUPB0g3w=;
        b=IpP9PB18eSwshCvLUvN4Ve9vZmoaixpGJ3848W7Sq0zy0J63KRFLzA1idgo5g75ZDH
         FKx2BU15syhtLNZvHnDnke8g+kLSR6oP7hEzfTzJ5evatPySpIP91VEoVh8/YZG1qsHR
         JRI2CaCrKUgUXRe3ekdtLEhhBUKDqRCO8PDaDKuk0kM6tyqhAuqByFEfg+Rtfm4E2saN
         hlXB4vbTRIFHZSwbuF9vm7krmPWXJHWGrio5QA8WocwVyRwe/wW4aG+NSXrpe5IqlC08
         zpAXgRSUV/8/cV8HJd/nuhLqOgJk5uuYjjntM+UlZ/A44Z2qi39wLcgFLW3FezHPgEWH
         9pNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvelGC1oH0m7w1pmpUS6rctnXgeWfDMO8fvUPTR2h8CxFqlDsG5Q+ybS2GvndmQsurR1XdYuBhRsie@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4jcv+i9+a/RoO6JXFZOz9s8k3in0Sq2uwhpFZXb2PkY9XEVz2
	kmZ+V5ZL9IfvgAHw90mAX9EZ3V2jra+0k7yw0HPu29bnwPFY5ysCDTe6ALXRXe0=
X-Gm-Gg: ASbGncs8mrFKjzIdpRKtIPqKS/62hSzMtRKQOSVZH+8CNGGX9ghmrYUHztzrhmSt34g
	xm5mt8Mm/A9J8hR+dthtd0o652VDXA+D6Yq/XPwIOGC9hx5cMvMJCzgqfIDkmt4LevE91hiyM6j
	IpdCEQmkHB4Iq+N+2eeYBApecw7k+NAhdu6homTIGckvdShMUDeLpO8zEhv+G1dFduRe26U/N3/
	0kX95aorymjVrrCi9WE0aJIKhoTZm/tfGRQFQmAAjN2oyJN2w0rYcZ5kOvWiuRgjTSxPXkdAETG
	sCd3QMi6TpHGyOA4RF8WPxhJRYliwHglTtm/SC2b3qQI/97+k67rAxQoKzCGWZ0BwlY=
X-Google-Smtp-Source: AGHT+IF0EETx+h4w6PCBRf8i2YG0WKTnteIW6fnBPI7UNFnIyzB7TOmxHpmZzzr0n8N9bYJM5uBJpg==
X-Received: by 2002:a05:6000:4287:b0:3a0:b635:ea40 with SMTP id ffacd0b85a97d-3a1f64a3e3dmr14843773f8f.55.1747139677671;
        Tue, 13 May 2025 05:34:37 -0700 (PDT)
Received: from [192.168.157.194] ([213.233.104.159])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f57de087sm16321473f8f.16.2025.05.13.05.34.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 May 2025 05:34:36 -0700 (PDT)
Message-ID: <53999471-277b-4621-abfd-b4c25761b3da@tuxon.dev>
Date: Tue, 13 May 2025 15:34:34 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] clk: renesas: rzg2l-cpg: Add support for MSTOP in
 clock enable/disable API
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
 <20250410140628.4124896-4-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdUv6+KFuobDzzmKFOH6PvwU0RFzd1M9WrEZ-yzESBahkw@mail.gmail.com>
 <e77c85de-4542-44e1-af2e-f63f72602ff8@tuxon.dev>
 <CAMuHMdXFtBmjDu=1RS2MLNYzhZ0fmpT7+1QbA9p4LvoLHitOuw@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdXFtBmjDu=1RS2MLNYzhZ0fmpT7+1QbA9p4LvoLHitOuw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Geert,

On 09.05.2025 15:34, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Fri, 9 May 2025 at 12:54, Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
>> On 07.05.2025 18:42, Geert Uytterhoeven wrote:
>>> On Thu, 10 Apr 2025 at 16:06, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> The RZ/{G2L, V2L, G3S} CPG versions support a feature called MSTOP. Each
>>>> module has one or more MSTOP bits associated with it, and these bits need
>>>> to be configured along with the module clocks. Setting the MSTOP bits
>>>> switches the module between normal and standby states.
>>>>
>>>> Previously, MSTOP support was abstracted through power domains
>>>> (struct generic_pm_domain::{power_on, power_off} APIs). With this
>>>> abstraction, the order of setting the MSTOP and CLKON bits was as follows:
>>>>
>>>> Previous Order:
>>>> A/ Switching to Normal State (e.g., during probe):
>>>> 1/ Clear module MSTOP bits
>>>> 2/ Set module CLKON bits
>>>>
>>>> B/ Switching to Standby State (e.g., during remove):
>>>> 1/ Clear CLKON bits
>>>> 2/ Set MSTOP bits
>>>>
>>>> However, in some cases (when the clock is disabled through devres), the
>>>> order may have been (due to the issue described in link section):
>>>>
>>>> 1/ Set MSTOP bits
>>>> 2/ Clear CLKON bits
>>>>
>>>> Recently, the hardware team has suggested that the correct order to set
>>>> the MSTOP and CLKON bits is:
>>>>
>>>> Updated Order:
>>>> A/ Switching to Normal State (e.g., during probe):
>>>> 1/ Set CLKON bits
>>>> 2/ Clear MSTOP bits
>>>>
>>>> B/ Switching to Standby State (e.g., during remove):
>>>> 1/ Set MSTOP bits
>>>> 2/ Clear CLKON bits
>>>>
>>>> To prevent future issues due to incorrect ordering, the MSTOP setup has
>>>> now been implemented in rzg2l_mod_clock_endisable(), ensuring compliance
>>>> with the sequence suggested in Figure 41.5: Module Standby Mode Procedure
>>>> from the RZ/G3S HW manual.
>>>>
>>>> Additionally, since multiple clocks of a single module may be mapped to a
>>>> single MSTOP bit, MSTOP setup is reference-counted.
>>>>
>>>> Furthermore, as all modules start in the normal state after reset, if the
>>>> module clocks are disabled, the module state is switched to standby. This
>>>> prevents keeping the module in an invalid state, as recommended by the
>>>> hardware team.
>>>>
>>>> Link: https://lore.kernel.org/all/20250215130849.227812-1-claudiu.beznea.uj@bp.renesas.com/
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>> Thanks for your patch!
>>>
>>>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>>>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
> 
>>>> +/* Need to be called with a lock held to avoid concurrent access to mstop->refcnt. */
>>>> +static void rzg2l_mod_clock_module_set_state(struct mstp_clock *clock,
>>>> +                                            bool standby)
>>>> +{
>>>> +       struct rzg2l_cpg_priv *priv = clock->priv;
>>>> +       struct mstop *mstop = clock->mstop;
>>>> +       bool update = false;
>>>> +       u32 value;
>>>> +
>>>> +       if (!mstop)
>>>> +               return;
>>>> +
>>>> +       value = MSTOP_MASK(mstop->conf) << 16;
>>>> +
>>>> +       if (standby) {
>>>> +               unsigned int criticals = 0;
>>>> +
>>>> +               for (u8 i = 0; i < clock->num_shared_mstop_clks; i++) {
>>>
>>> unsigned int
>>>
>>>> +                       struct mstp_clock *clk = clock->shared_mstop_clks[i];
>>>> +
>>>> +                       if (clk->critical)
>>>> +                               criticals++;
>>>> +               }
>>>> +
>>>> +               /* Increment if clock is critical, too. */
>>>> +               if (clock->critical)
>>>> +                       criticals++;
>>>
>>> If clock->shared_mstop_clks[] would include the current clock, then
>>> (a) this test would not be needed, and
>>
>> Agree!
>>
>>> (b) all clocks sharing the same mstop could share a single
>>>     clock->shared_mstop_clks[] array.
>>
>> I'll look into this but I'm not sure how should I do it w/o extra
>> processing at the end of registering all the clocks. FWICT, that would
>> involve freeing some shared_mstop_clks arrays and using a single reference
>> as the shared_mstop_clks[] is updated after every clock is registered. Can
>> you please let me know if this what you are thinking about?
> 
> Currently, when detecting two clocks share the same mstop,
> you (re)allocate each clock's shared_mstop_clks[], and add the
> other clock:
> 
>     rzg2l_cpg_add_shared_mstop_clock(priv->dev, clock, clk);
>     rzg2l_cpg_add_shared_mstop_clock(priv->dev, clk, clock);
> 
> Instead, call rzg2l_cpg_add_shared_mstop_clock() once, and modify
> rzg2l_cpg_add_shared_mstop_clock() to not only realloc the target's
> shared_mstop_clks[], but also loop over all its existing entries,
> and update their shared_mstop_clks[] pointers.
I tried this approach but w/o complicated further the code I can't keep
track of whether the "to be updated" (not reallocated) shared_mstop_clks[]
pointers were previously updated pointers or devm_krealloc()'ed ones. I
need this to properly free the unused arrays. Calling devm_kfree() on a
non-devres resource triggers a WARN_ON() for each call.

Because of this I prepared a new version where the duplicated lists are
freed after all the mod clocks were initialized. I'll publish it soon.

Thank you,
Claudiu

