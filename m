Return-Path: <devicetree+bounces-57850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C933089EFD9
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:31:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B410B2203B
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 10:31:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E37B2837B;
	Wed, 10 Apr 2024 10:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="UDXT/o2A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7D041C89
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 10:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712745103; cv=none; b=rRKxtF5klGNG/bOSuj48qy/T4nCHCjAVwp9tvvzgIcrJN6V/s+3qOv0/5Cz/7F51eY6on41JHM5CSy3fctBqoGtd8zOJ62L3Grsqwpp6pcDm8UtqzmnJOsb0nz/lcXdeOZjAkWS6FOnrszPVrSbCVu/XrfPYt/OV2UqTOQS0Bwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712745103; c=relaxed/simple;
	bh=iICQtskbqMFkYw9gL5hU6mYX2XOrlY3PR/l9E6BwGyU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gZ8elo2ZtooC52k1EUJrY8gfpIrvOZDca/qdS+MIC1DYelUsSUGyvRw9v6J1LerasjWr6GOmN6vm3nzId7e0k0rx+Ev+yUYZxAofwNJYP5YyWnys5DUqAGJeUa6V7tPhXehlk/ojgP8daCTkLBceFkj/gFnIEsMj99iupY81HvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=UDXT/o2A; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-56e6f4ee104so2783532a12.2
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 03:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1712745098; x=1713349898; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t2cJahpKiT81XBZYJgPZW1e7iLd0A/fWtraJwcFfugY=;
        b=UDXT/o2Ajx8xJci7Yf+lU/BsCoqxGHu8Ud7S0dHzAcGm+IsCAJ5gG20amNlDmfAbxS
         ng699kaPhnx419p4otsXbI//P/GBJk5Rz8bp6M9Jb8hiKmmkXlS2tDaiv56lBFHIIQQu
         j2t3fdJsWVgI9ZQqB5+xTYhx8KoCIudXeSYKJWfv5nbMbVMfmx/9gCtMrjpbqKI1rux3
         LPPH6PG2yGYh61nfTSjWJ92mFSytcSXXnwPSg9ncsqob5KkUIBfAl5xcfqtf1DIOeEwf
         W9DUBtQD+Ugc3IC3jEPBR6DymRqmySOruqFutuxLwKJlmDSiflUtNZm6HtLn0ZQAv3gz
         QqBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712745098; x=1713349898;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t2cJahpKiT81XBZYJgPZW1e7iLd0A/fWtraJwcFfugY=;
        b=CcaEi1gv8dKacZ/vzkVNsgdmKzQzYzSCBzpD48oaiUg7HUOuwI35kxKy4KhKU9cQ/k
         +/O+dz25KgaGCsNJLIcvxuj2VGE4ZfZUTPMPiWGYjw2x9ueedm140L90mxRsHooLnmtH
         KTbhI98NrpmsGUwZAfYzbN58o2yVS3IRJYEaMTql+rzw1tykrs9Z0x+xqQzAPVUua1Nr
         oqMPieO3GVup9n6nfYhLMC39/rlWWSREuSkTpE6HbkKl+nU377bwnQfDzrYvPidU5xAx
         03Qy2EjQhh88qBpK8x/5C0aulW/IntGiAUho7Yfp8N32T41LE+mxPmgCL1d1gUs4W5nJ
         8HRA==
X-Forwarded-Encrypted: i=1; AJvYcCUedz3XMubtXoOrA7Je4a0uaGj3mnzH7zWbEv7Yu2C9ukE6Cd3wOY1fE2zsFLqFd8AOnMsswz20gVsuW97bln6Dm0OWiGpnxVhSgw==
X-Gm-Message-State: AOJu0Yy9+1oyFji84u3Jb/AmgClcSfd3tXlF2K56CQFUO671kjMQ0g40
	jcaFanUfpi11Yg9vHLi4a9mAAnvtW1ZE1hhYI20pcFtcfno+ygJMhmYxm172a5w=
X-Google-Smtp-Source: AGHT+IGXgc4szc6/2H8e3NH8Atr59PVFG1sF1pIp8usS+QI+TfgAtWxl817vYLjg7YLm/NrXAjrMpw==
X-Received: by 2002:a17:907:2d12:b0:a52:3d1:6768 with SMTP id gs18-20020a1709072d1200b00a5203d16768mr1529361ejc.1.1712745098139;
        Wed, 10 Apr 2024 03:31:38 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id ml16-20020a170906cc1000b00a4e670414ffsm6811000ejb.109.2024.04.10.03.31.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 03:31:37 -0700 (PDT)
Message-ID: <00b6c73b-d57f-4520-b1af-d2ad2a88240d@tuxon.dev>
Date: Wed, 10 Apr 2024 13:31:35 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/10] clk: renesas: rzg2l-cpg: Add suspend/resume
 support for power domains
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 magnus.damm@gmail.com, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240307140728.190184-1-claudiu.beznea.uj@bp.renesas.com>
 <20240307140728.190184-9-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVdn9K1gKJAKyyDz8ObaJboknE_qqYfS_vyxNU+zhRWPA@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdVdn9K1gKJAKyyDz8ObaJboknE_qqYfS_vyxNU+zhRWPA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

Sorry for replying that late to this one.

On 18.03.2024 18:48, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, Mar 7, 2024 at 3:07 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> RZ/G3S supports deep sleep states that it can reach with the help of the
>> TF-A.
>>
>> RZ/G3S has a few power domains (e.g. GIC) that need to be always-on while
>> Linux is running. These domains are initialized (and powered on) when
>> clock driver is probed.
>>
>> As the TF-A takes control at the very last(suspend)/first(resume)
>> phase of configuring the deep sleep state, it can do it's own settings on
>> power domains.
>>
>> Thus, to restore the proper Linux state, add rzg2l_cpg_resume() which
>> powers on the always-on domains and rzg2l_cpg_complete() which activates
>> the power down mode for the IPs selected through CPG_PWRDN_IP{1, 2}.
>>
>> Along with it, added the suspend_check member to the RZ/G2L power domain
>> data structure whose purpose is to checks if a domain can be powered off
>> while the system is going to suspend. This is necessary for the serial
>> console domain which needs to be powered on if no_console_suspend is
>> available in bootargs.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v2:
>> - none; this patch is new
> 
> Thanks for your patch!
> 
>> --- a/drivers/clk/renesas/rzg2l-cpg.c
>> +++ b/drivers/clk/renesas/rzg2l-cpg.c
>> @@ -1700,6 +1719,8 @@ static int __init rzg2l_cpg_pd_setup(struct rzg2l_cpg_pd *pd, bool always_on)
>>         } else {
>>                 pd->genpd.power_on = rzg2l_cpg_power_on;
>>                 pd->genpd.power_off = rzg2l_cpg_power_off;
>> +               if (flags & RZG2L_PD_F_CONSOLE)
> 
> I think this should be replaced by some dynamic check, cfr. my comments
> on PATCH 9/10.

I agree.

> 
>> +                       pd->suspend_check = rzg2l_pd_suspend_check_console;
>>                 governor = &simple_qos_governor;
>>         }
>>
> 
>> @@ -1890,9 +1911,43 @@ static int __init rzg2l_cpg_probe(struct platform_device *pdev)
>>         if (error)
>>                 return error;
>>
>> +       dev_set_drvdata(dev, priv);
>> +
>>         return 0;
>>  }
>>
>> +static int rzg2l_cpg_resume(struct device *dev)
>> +{
>> +       struct rzg2l_cpg_priv *priv = dev_get_drvdata(dev);
>> +       const struct rzg2l_cpg_info *info = priv->info;
>> +
>> +       /* Power on always ON domains. */
>> +       for (unsigned int i = 0; i < info->num_pm_domains; i++) {
>> +               if (info->pm_domains[i].flags & RZG2L_PD_F_ALWAYS_ON) {
> 
> If you would check "priv-domains[i].flags & GENPD_FLAG_ALWAYS_ON"
> instead, I think you can make r9a08g045_pm_domains[] __initconst.
> You may need to make a copy of the name for pd->genpd.name, though.

I wanted to avoid this copy.

> 
>> +                       int ret = rzg2l_cpg_power_on(priv->domains[i]);
> 
> I assume you are sure none of these domains are enabled by TF/A after
> system resume, or by the pmdomain core code?

Out of TF-A the MSTOP and PWRDN bits for these ones are set and setting
CPG_PWRDN_MSTOP though rzg2l_cpg_complete() leads to system being blocked.
It is the same as in booting case exlained in cover letter.

"the DDR, TZCDDR, OTFDE_DDR were also added, to avoid system being blocked
due to the following lines of code from patch 6/10.

+       /* Prepare for power down the BUSes in power down mode. */
+       if (info->pm_domain_pwrdn_mstop)
+               writel(CPG_PWRDN_MSTOP_ENABLE, priv->base + CPG_PWRDN_MSTOP);

Domain IDs were added to all SoC specific bindings.
"

The PM domain core code doesn't touch these domains while resuming as of my
checkings.

Thank you,
Claudiu Beznea

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

