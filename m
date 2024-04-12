Return-Path: <devicetree+bounces-58780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ECC8A301D
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 16:03:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BB102B24591
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 14:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B1986622;
	Fri, 12 Apr 2024 14:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="qjnxA4sF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF8484DF6
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 14:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712930533; cv=none; b=dGdVt3vsB2FqBbvppqM7ZczglLT5d3bjxzATIvatEKJxQY2VCP6m6Vi8uDYSLfIsmQajBc93QpyNQKJstoDbpsYf+xmFKVAdK2J3eG9pwTAY1xv7Hj/MlxZM6xYq08Xd8ueFthcrPnNRqJ750xRitjDNqMkHLD0zjkEqm8WQfQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712930533; c=relaxed/simple;
	bh=lYPTWLdvMEVQj9r+jQ2anUCEq2r/crYLuyN/2SuWdLw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IrFTkN0b8/idVu7jPrFxwU0hXCO9VfQpD8DOTvXCADsq6QK/H3Au53OpNKIOKzB7PK1APYatJl0ymlQjmwJONb++2N/Lkcnff827gWtY7E00z1R7H8QKREcP1vCEh2o+FZbqjiXbDjkSRvrxFiLtOo49oKX74BFSnlQNKRWVx7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=qjnxA4sF; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a51a80b190bso54317966b.3
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 07:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1712930528; x=1713535328; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m2IAoqinwRu+uP7N6pyXnwN0TMgTPOq++rvccYitA5w=;
        b=qjnxA4sFOGNPYBYtf67O2IN0hHym6GSPIJMYhd+F/MDyLDZ2tMLLwM83E0aS3AeTps
         dbi8YEo8yx4xbnfeTiQ/0KJfyEAUEMCeyGwfEwzjPOW3Tdk9A9FIcU9hzFS+3adI5jIj
         S6B5yddi7P7V/C03XuGaIrI77JIxy2Kfbhll/5tC2v3dP2/7joeoY1HQpnn7dE889VEo
         G68FhYoX8D/Dwtjkfal9wjxqQt0rx+zjhkrpxgnzOibSSE8eAEGB/dRM/HZFfEgRzScm
         w9GjLOLGCdKhMgRnu8DrHK9CWvZaa3V8/9A1FOO8PyQRuJ524a2i9DeT3KHJs9ieoGwv
         OvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712930528; x=1713535328;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m2IAoqinwRu+uP7N6pyXnwN0TMgTPOq++rvccYitA5w=;
        b=gH2lGtrSkm7rOtizKYY1Tw0BGfOEvqrwlUUwwYamTk19GEkV3D2q0Rqk3SzUOdeuAx
         rxEL7DsrBO4CKWhTtxYXo4wOdeIJvxIDQ0OpfB7X64R12NiRc2WfWtxooARbVpfj8hTz
         Co1JDkOzlZAWYCtbcELikXDXbqemjmwFDO5RGr70zF6oL0z60YcOe85ZvVKPbyM9G0QW
         24PCn0bskSoBG/x3Mf2GlIH6/QYwMYosN3jjNSGwc+OXjCgdQ+7T+2wFl9DqPMFdyC/f
         SdJH1YtLXf5ubXoo1CMyrQgOZKXPxtM3E0E6nvBZyMmaF2bs4F7D3rsnLPQPZs/FrK5F
         KI4A==
X-Forwarded-Encrypted: i=1; AJvYcCU4gHka7ago12FA8wKvEDbE+/uxUjj3aiMgkp4pvkgc13F5EYgCheEkgfJuxjeUNVyZtrHe1LHDwlvsLp9mZs7DW2LKiVupbRKU2Q==
X-Gm-Message-State: AOJu0YwX/oxQ8g/G2MIsJNB6TbKzEciqK/SGnmnyO6z65Mhihg2nmSjy
	VptRpv3HX2z+fdL/GyeN4OtPC+xEXYydEvF5l2F8LvksPkNkdHf0r8g+mvk1ngY=
X-Google-Smtp-Source: AGHT+IHR7BiWNm2RQ9m4pL92rZ77hroajU61fyg1U3Ft1ZfMOweIPQK3mpvc11s7193AFpytfpeasQ==
X-Received: by 2002:a50:8e12:0:b0:56e:2433:a0ab with SMTP id 18-20020a508e12000000b0056e2433a0abmr2606300edw.34.1712930527425;
        Fri, 12 Apr 2024 07:02:07 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id p32-20020a056402502000b0056bfca6f1c0sm1705644eda.15.2024.04.12.07.02.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Apr 2024 07:02:06 -0700 (PDT)
Message-ID: <af9c6747-120e-48c1-8c04-9594c9b49666@tuxon.dev>
Date: Fri, 12 Apr 2024 17:02:04 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v8 09/10] watchdog: rzg2l_wdt: Power on the PM
 domain in rzg2l_wdt_restart()
Content-Language: en-US
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
 geert+renesas@glider.be, magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com>
 <20240410134044.2138310-10-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFqq+gMDHx_-g-j9rO3nBDcXRSoXRjJK9D51=VaQ5XaGvw@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAPDyKFqq+gMDHx_-g-j9rO3nBDcXRSoXRjJK9D51=VaQ5XaGvw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ulf,

On 12.04.2024 14:14, Ulf Hansson wrote:
> On Wed, 10 Apr 2024 at 16:19, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The rzg2l_wdt_restart() is called from atomic context. Calling
>> pm_runtime_{get_sync, resume_and_get}() or any other runtime PM resume
>> APIs is not an option as it may lead to issues as described in commit
>> e4cf89596c1f ("watchdog: rzg2l_wdt: Fix 'BUG: Invalid wait context'")
>> that removed the pm_runtime_get_sync() and used directly the
>> clk_prepare_enable() APIs.
>>
>> Starting with RZ/G3S the watchdog could be part of its own software
>> controlled power domain (see the initial implementation in Link section).
>> In case the watchdog is not used the power domain is off and accessing
>> watchdog registers leads to aborts.
>>
>> To solve this the patch powers on the power domain using
>> dev_pm_genpd_resume() API before enabling its clock. This is not
>> sleeping or taking any other locks as the power domain will not be
>> registered with GENPD_FLAG_IRQ_SAFE flags.
>>
>> Link: https://lore.kernel.org/all/20240208124300.2740313-1-claudiu.beznea.uj@bp.renesas.com
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v8:
>> - none, this patch is new
>>
>>  drivers/watchdog/rzg2l_wdt.c | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>
>> diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c
>> index c8c20cfb97a3..98e5e9914a5d 100644
>> --- a/drivers/watchdog/rzg2l_wdt.c
>> +++ b/drivers/watchdog/rzg2l_wdt.c
>> @@ -12,6 +12,7 @@
>>  #include <linux/module.h>
>>  #include <linux/of.h>
>>  #include <linux/platform_device.h>
>> +#include <linux/pm_domain.h>
>>  #include <linux/pm_runtime.h>
>>  #include <linux/reset.h>
>>  #include <linux/units.h>
>> @@ -164,6 +165,17 @@ static int rzg2l_wdt_restart(struct watchdog_device *wdev,
>>         struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
>>         int ret;
>>
>> +       /*
>> +        * The device may be part of a power domain that is currently
>> +        * powered off. We need to power it up before accessing registers.
>> +        * We don't undo the dev_pm_genpd_resume() as the device need to
>> +        * be up for the reboot to happen. Also, as we are in atomic context
>> +        * here there is no need to increment PM runtime usage counter
>> +        * (to make sure pm_runtime_active() doesn't return wrong code).
>> +        */
>> +       if (!pm_runtime_active(wdev->parent))
>> +               dev_pm_genpd_resume(wdev->parent);
>> +
> 
> I doubt this is the correct solution, but I may be wrong. Unless this
> is invoked at the syscore stage?

On my case I see it invoked from kernel_restart(). As of my code reading,
at that point only one CPU is active with IRQs disabled (done in
machine_restart()). Below is the stack trace decoded on next-20240410 with
this series
(https://lore.kernel.org/all/20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com/)
on top and the one from here (adding power domain support):
https://lore.kernel.org/all/20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com/

Hardware name: Renesas SMARC EVK version 2 based on r9a08g045s33 (DT)
Call trace:
dump_backtrace (arch/arm64/kernel/stacktrace.c:319)
show_stack (arch/arm64/kernel/stacktrace.c:326)
dump_stack_lvl (lib/dump_stack.c:117)
dump_stack (lib/dump_stack.c:124)
rzg2l_wdt_restart (drivers/watchdog/rzg2l_wdt.c:180)
watchdog_restart_notifier (drivers/watchdog/watchdog_core.c:188)
atomic_notifier_call_chain (kernel/notifier.c:98 kernel/notifier.c:231)
do_kernel_restart (kernel/reboot.c:236)
machine_restart (arch/arm64/kernel/process.c:145)
kernel_restart (kernel/reboot.c:287)
__do_sys_reboot (kernel/reboot.c:755)
__arm64_sys_reboot (kernel/reboot.c:715)
invoke_syscall (arch/arm64/include/asm/current.h:19
arch/arm64/kernel/syscall.c:53)
el0_svc_common.constprop.0 (include/linux/thread_info.h:127
arch/arm64/kernel/syscall.c:141)
do_el0_svc (arch/arm64/kernel/syscall.c:153)
el0_svc (arch/arm64/include/asm/irqflags.h:56
arch/arm64/include/asm/irqflags.h:77 arch/arm64/kernel/entry-common.c:165
arch/arm64/kernel/entry-common.c:178 arch/arm64/kernel/entry-common.c:713)
el0t_64_sync_handler (arch/arm64/kernel/entry-common.c:731)
el0t_64_sync (arch/arm64/kernel/entry.S:598)

The watchdog restart handler is added in restart_handler_list and this list
is invoked though do_kernel_restart(). As of my code investigation the
restart_handler_list is invoked only though do_kernel_restart() and only
though the stack trace above.

Thank you,
Claudiu Beznea

> 
>>         clk_prepare_enable(priv->pclk);
>>         clk_prepare_enable(priv->osc_clk);
>>
>> --
>> 2.39.2
>>
>>
> 
> Can you redirectly me to the complete series, so I can have a better
> overview of the problem?

This is the series that adds power domain support for RZ/G3S SoC:
https://lore.kernel.org/all/20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com/

This is the series that adds watchdog support for RZ/G3S SoC:
https://lore.kernel.org/all/20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com/

Thank you for your review,
Claudiu Beznea

> 
> Kind regards
> Uffe

