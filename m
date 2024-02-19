Return-Path: <devicetree+bounces-43317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE9B859F23
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 10:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BBB891F23838
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:05:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B64A22375A;
	Mon, 19 Feb 2024 09:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="LyAH430X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE15E23763
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708333495; cv=none; b=miIUgLYDBwaI5+ZQpIjJeuGT0fjvlg30CIjh9xQSDRGfgyQBxI/2GxIrl4Kxte77ZpuqeenvdQuUaBCYuXx3ai3oTmDHeDMdK7cyhAs7jqB319FkdzKRkp/aHRg8Cs9liabD7B70qkwqR+sY3MO6qvDfAXvhoO7MKARt9K3lvWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708333495; c=relaxed/simple;
	bh=uQE+HBxhODMtSC9yhjOPxO99whbGm6VHOSreEDYTf6k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a6c3r7dDxHVUbx8ZALGDbvwR3oZF/LweqFx3Kf3Mep6cpCtsO9wpyOIqK6so1xILs5XnKJh0VjirYRFqRQX4XqBrE9LxA5YdkUec3RMPDUxLIjrlUP4T9F6L5XmR1m7bRGjQnl7Vpo27mdkTKSMwyiPD8BzI7ipNQvnGTCwhwKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=LyAH430X; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-512bde3d197so85740e87.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 01:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708333492; x=1708938292; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=csW9r/4gQ0jxKhE2Wzu5kKeCgTzvE7WcFlLyXAHYs/4=;
        b=LyAH430XvR0tiJWytSqp7CqFYN9w8VsPGdzIDLhJhMrm88J2rR2knTCKg7htaX9s5V
         vNcyEPwqqs2olggiaXJ/YLWXT6MCquhhvK+ibQ55WDyhiUrfT1A/Fv8ewlg9njnesgmH
         nkVfEr51VDC3NZ9kEFfzgXpWP1rGh2up2bI9VQuWkT+4Pq7A5RojhjmzcPpOemXXayFa
         IfdoN/YkRImuus7antObSbz6s+TxikoS2t9eOakl9zz06f1bLJ2RA7ruesk56DcMkhOl
         79mzeNntNRV38FM4cp40De4H0HBm8cUa0BNw43v+icQO9dwh+yqQpMvrlQgS0hkreTkD
         /etg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708333492; x=1708938292;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=csW9r/4gQ0jxKhE2Wzu5kKeCgTzvE7WcFlLyXAHYs/4=;
        b=els25aPCokeekI+1fqCz84vxzRzsrMUr5MeY/SC1GbO5TV/vDkRXfkeCzO87A/YCRl
         RlrxxUpGcTPU7kdFnwHAoropt/D7JGOZcOgJ9A2MB+kpT/zqFbEEnwEUZ1dGiA53tYpx
         7lAvyR1+fAmYJv5+T85FgUAeeT1v/sT0VeSY2B8epVqHnMc+EXn+/E6mEfoR89RqXIbo
         +EnnumExqVYEZpwL9xY/LCC46CnAzAubE6XWa4vy32GOHAReKZCr7JTFIz0ymL0Kzati
         DiDe3YYNxNyBbYWcE+KKtQFN/OmMcEjlCEyH2O8S9TdttwSwH+Gxc1Zh84tEES+EqlCO
         /97Q==
X-Forwarded-Encrypted: i=1; AJvYcCWyeEyaYIyvfoCmMlKNu9s+z3Od9v6Z9zfEY2UNkU8Qvz99OhMwWOda0Yg1Ocwrs0wuVzToNIkmhrFFXi01sn1f+trOtBRALx5HEg==
X-Gm-Message-State: AOJu0Yy1WXt6srbKthoottaKuWaCa47qCb4dnmA2aESfWGJS3wrHjGvj
	JkZnggzbRp0ThcSZarpZWUR0j/L8LtmubjnWQxrIg8h3gxoRPq3cAtoUBTXHndQc7mGkVMl0yMI
	j
X-Google-Smtp-Source: AGHT+IHIIH1nQpDud5Np09DnfjqzOylTojdUO6ifSKPECbfou2QFnUkVFQbppPGzAhWd9AzX/DIxTg==
X-Received: by 2002:a19:2d43:0:b0:511:7b37:1d26 with SMTP id t3-20020a192d43000000b005117b371d26mr7692205lft.13.1708333479889;
        Mon, 19 Feb 2024 01:04:39 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id f7-20020a5d5687000000b0033ce727e728sm9611101wrv.94.2024.02.19.01.04.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 01:04:39 -0800 (PST)
Message-ID: <ba089899-3625-43b2-9ba4-f2fb0e8ac03e@tuxon.dev>
Date: Mon, 19 Feb 2024 11:04:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/17] clk: renesas: rzg2l: Extend power domain support
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
 <20240208124300.2740313-8-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWdJ9jN9-cko2zSoqSS0acbwYB77aBWvenJHMrFTXhdWg@mail.gmail.com>
 <4098873b-a7e7-4c88-9af2-01f3c76424ab@tuxon.dev>
 <CAMuHMdX0HDK2w1N-k_R9ud_CVotRgAd2CjOoHTsWkSE_Rb7zyQ@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdX0HDK2w1N-k_R9ud_CVotRgAd2CjOoHTsWkSE_Rb7zyQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 19.02.2024 10:48, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Mon, Feb 19, 2024 at 9:24 AM claudiu beznea <claudiu.beznea@tuxon.dev> wrote:
>> On 16.02.2024 16:08, Geert Uytterhoeven wrote:
>>> On Thu, Feb 8, 2024 at 1:44 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> RZ/{G2L, V2L, G3S}-based CPG versions have support for saving extra
>>>> power when clocks are disabled by activating module standby. This is done
>>>> through MSTOP-specific registers that are part of CPG. Each individual
>>>> module has one or more bits associated with one MSTOP register (see table
>>>> "Registers for Module Standby Mode" from HW manuals). Hardware manual
>>>> associates modules' clocks with one or more MSTOP bits. There are 3 mappings
>>>> available (identified by researching RZ/G2L, RZ/G3S, RZ/V2L HW manuals):
>>>>
>>>> case 1: N clocks mapped to N MSTOP bits (with N={0, ..., X})
>>>> case 2: N clocks mapped to 1 MSTOP bit  (with N={0, ..., X})
>>>> case 3: N clocks mapped to M MSTOP bits (with N={0, ..., X}, M={0, ..., Y})
>>>>
>>>> Case 3 has been currently identified on RZ/V2L for the VCPL4 module.
>>>>
>>>> To cover all three cases, the individual platform drivers will provide to
>>>> clock driver MSTOP register offset and associated bits in this register
>>>> as a bitmask and the clock driver will apply this bitmask to proper
>>>> MSTOP register.
>>>>
>>>> Apart from MSTOP support, RZ/G3S can save more power by powering down the
>>>> individual IPs (after MSTOP has been set) if proper bits in
>>>> CPG_PWRDN_IP{1,2} registers are set.
>>>>
>>>> The MSTOP and IP power down support were implemented through power
>>>> domains. Platform-specific clock drivers will register an array of
>>>> type struct rzg2l_cpg_pm_domain_init_data, which will be used to
>>>> instantiate properly the power domains.
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>> Thanks for your patch!
>>>
>>>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>>>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>>>> @@ -1559,9 +1556,34 @@ static bool rzg2l_cpg_is_pm_clk(struct rzg2l_cpg_priv *priv,
>>>>         return true;
>>>>  }
>> [ ... ]
>>
>>>
>>>> @@ -234,6 +246,54 @@ struct rzg2l_reset {
>>>>  #define DEF_RST(_id, _off, _bit)       \
>>>>         DEF_RST_MON(_id, _off, _bit, -1)
>>>>
>>>> +/**
>>>> + * struct rzg2l_cpg_pm_domain_conf - PM domain configuration data structure
>>>> + * @mstop: MSTOP configuration (MSB = register offset, LSB = bitmask)
>>>> + * @pwrdn: PWRDN configuration (MSB = register offset, LSB = register bit)
>>>> + */
>>>> +struct rzg2l_cpg_pm_domain_conf {
>>>> +       u32 mstop;
>>>> +       u32 pwrdn;
>>>
>>> Why not
>>>
>>>     u16 mstop_off;
>>>     u16 mstop_mask;
>>>     u16 pwrdn_off;
>>>     u16 pwrdn_mask;
>>>
>>> so you can drop the MSTOP*() and PWRDN*() macros below?
>>
>> I did it like this to align with the already existing approach for this
>> kind of things available in this driver. I can do it as you proposed.
> 
> The other fields do not align nicely with byte or word boundaries.
> 
> I can see the value of the MSTOP(name, bitmask) and
> PWRDN(name, bitmask) macros, but I'd rather get rid of the *_MASK()
> and *_OFF() variants.

Sure, I'll do proper adjustments in the next version.

Thank you,
Claudiu Beznea

> 
>> For the rest of your comments on this patch: I agree and will adjust the
>> patch in the next version.
> 
> Thanks!
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

