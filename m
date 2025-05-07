Return-Path: <devicetree+bounces-174638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 375C7AADEBB
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 14:15:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2183188DDF1
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 12:12:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D18625CC77;
	Wed,  7 May 2025 12:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="gDHXoQvs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C859259C96
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 12:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746619939; cv=none; b=OGi4FQqjqpKEhpTgghw3uVJ8SPbWGpxtMNteoR0pN2ozUOhYH9TR3kU7MdQDaTuVLn6f0XfMB7JrugV4MBp2rFo/3Swt9zYtTVDB/km4J75l/t0OU1yBlErKkB0EGC+4v8LMnQh5ZlTndyg44+soEXwfVs1TvvP4IdybHvl8ToY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746619939; c=relaxed/simple;
	bh=uIs8J8TAolvkoMCl71is1jxlWb8HZlMXJNpvhI0wHXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N0QACa3NbLE97O2dUiwT46pAS6wNbqz5LXvSVO8s0SFmfQvDU37LHJ7VFNQSr73UB1G3LgdmVHiB/mKzXQMbonUt1KVUngxAk9EHTU/wxNKw+Y7HHg2x+naxonsWHacn7pqowsGgncxVHR66WINqV30ZABsbXL1FIEzDk43Oaes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=gDHXoQvs; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5fbee929e83so947999a12.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 05:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746619934; x=1747224734; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=om7oxz58ErunXunVagFusPsxHO+ymwEeUcfbgeIERHg=;
        b=gDHXoQvscfSxC4cv9kOvIrvJQqEoxJ30mXevrvoH4N0OpEgESS0Ai3UNKem91xkCZ9
         1v88zEfntid3OYqdBohhjxT3SwpefJ4VxsvI26c8ml2v6PQRQI7bvKTh/lGkU1Yuu+Y7
         t86+RtGHr0cxzTYm/7t3VMZE2HhmLHWVMgeCwBWzXMGFp3k+Rzz8WN3hpoeLeaReSfB5
         k5Nc/YFXmo5rrlmZgGEWY8F5wASiIJHRYLLQdZNK93prpz7eJU6kV77a+9MB2hCPhEzS
         z9l9oMK0xwWo2rka1eKmQFsZ8GBDr2m57NSbTPcnqSXV1ihmxCEcRrz8mP49WmDh81l5
         e67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746619934; x=1747224734;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=om7oxz58ErunXunVagFusPsxHO+ymwEeUcfbgeIERHg=;
        b=KWzySF+0cORrXKS4rUHWbHfXDeLs3UIMEVYn6eMknkbjffMNvbPcUTG8uofZGnfcyi
         JHGEgI+PsiP/hGwRAi8sp757rdFp97I5lyAllsgdyoNEWkHoK9yxG2wDZ666cGB8dKo3
         tmdhpqtSmci7hsaw5JCYokJZOQdsP0xgSTnnppzpa0wcDbd9/ARfYg4fPts6+vARH3Qo
         qivTjtrxfQRlz2EPYsfO7mMHqgu6bvXlzKgtbzE9bYHbXHz2Ps4yW0roueLCT4PjhkUj
         ZswdiiVrlVzTokRSbl6yWVIdWQ0kgd0AMoI2wcgg+0eD6+XicbQPU5GXwYO78HTww8qF
         p9Vg==
X-Forwarded-Encrypted: i=1; AJvYcCVvbaVXYUxhubGsNVdc/q5o80hdruQ4ZBD6wR46e5O1eYGDCzzzZpOFKiyRsBKZPIYO/z+s0QoyFeUi@vger.kernel.org
X-Gm-Message-State: AOJu0YzrNlnFTSpS9KBryx6nVzFBjtlOLr6M4xQpt8+J/v3N3g4yAkaG
	D9xwORLRL28OTepHCc9wkrdTd7T2GekcGvicFZQPEKRdeIf1lxRwY3RV9kFi4pQ=
X-Gm-Gg: ASbGnctRaYzIaBjWmOsdfBYBvnlURdtY6kQfH4pV09XBGBQwo/gzx9UC3WxbI8jHNBS
	3UltANN61PnhH23loLXrkLsY9ngZgl2GoujzsDZVxFOkhU1YXUKNmbDls8k8NDRXvpoA+ENrajN
	Oy+j5W0zeOH356SxYLOC3ZD3dDuX5Gy3ZAjvVL3plKU1aqmxmBSJzNxtmVm/sW/qOSwKJzFDPtc
	LQAbUFbFmC+HqV5f8XAf6lO10p9eLSMfUrJ4owMrNI9XvMHquifpocH5QEOXINfFPRWCnIAp/Yu
	Vj0au0JPFj9BPTMvMRqJQQNTDuEXatPDtBof4/lIRqHKVYIrFw==
X-Google-Smtp-Source: AGHT+IF48ijHwhb+prKlciJYrp91ZouEQg6tU7MenRCxXDs9b8jde3XxqSXhLBFuS0IMKl9YSMBjHQ==
X-Received: by 2002:a05:6402:42cb:b0:5f6:c638:c72d with SMTP id 4fb4d7f45d1cf-5fbe9d77ce2mr2895742a12.7.1746619934400;
        Wed, 07 May 2025 05:12:14 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5fa77bf3f01sm9392974a12.70.2025.05.07.05.12.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 May 2025 05:12:13 -0700 (PDT)
Message-ID: <df05d999-8eba-4fbd-93f6-7919f73da11a@tuxon.dev>
Date: Wed, 7 May 2025 15:12:11 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] clk: renesas: rzg2l-cpg: Skip lookup of clock when
 searching for a sibling
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
 <20250410140628.4124896-2-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWx9Xk5QksoGFvCyo2HLXZ_+WRBCe3bDrZx=bfPoXHJgg@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdWx9Xk5QksoGFvCyo2HLXZ_+WRBCe3bDrZx=bfPoXHJgg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Geert,

On 05.05.2025 18:52, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, 10 Apr 2025 at 16:06, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Since the sibling data is filled after the priv->clks[] array entry is
>> populated, the first clock that is probed and has a sibling will
>> temporarily behave as its own sibling until its actual sibling is
>> populated. To avoid any issues, skip this clock when searching for a
>> sibling.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>> @@ -1324,6 +1324,9 @@ static struct mstp_clock
>>
>>                 hw = __clk_get_hw(priv->clks[priv->num_core_clks + i]);
>>                 clk = to_mod_clock(hw);
>> +               if (clk == clock)
>> +                       continue;
>> +
>>                 if (clock->off == clk->off && clock->bit == clk->bit)
>>                         return clk;
>>         }
> 
> Why not move the whole block around the call to
> rzg2l_mod_clock_get_sibling() up instead?
> 
>             ret = devm_clk_hw_register(dev, &clock->hw);
>             if (ret) {
>                     clk = ERR_PTR(ret);
>                     goto fail;
>             }
> 
>     -       clk = clock->hw.clk;
>     -       dev_dbg(dev, "Module clock %pC at %lu Hz\n", clk,
> clk_get_rate(clk));
>     -       priv->clks[id] = clk;
>     -
>             if (mod->is_coupled) {
>                     struct mstp_clock *sibling;
> 
>                     clock->enabled = rzg2l_mod_clock_is_enabled(&clock->hw);
>                     sibling = rzg2l_mod_clock_get_sibling(clock, priv);
>                     if (sibling) {
>                             clock->sibling = sibling;
>                             sibling->sibling = clock;
>                     }
>             }
> 
>     +       clk = clock->hw.clk;
>     +       dev_dbg(dev, "Module clock %pC at %lu Hz\n", clk,
> clk_get_rate(clk));
>     +       priv->clks[id] = clk;
>     +
>             return;

This should work as well. I considered the proposed patch generates less
diff. Please let me know if you prefer it addressed as you proposed.

Thank you for your review,
Claudiu

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


