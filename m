Return-Path: <devicetree+bounces-63636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D789A8B5B1F
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 16:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BC631F21C96
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 14:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F4D47BAED;
	Mon, 29 Apr 2024 14:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rf+5EAPZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ACE76413
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 14:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714400439; cv=none; b=r0HYKKqCVnE6k/WMqzzZ9ZYgg0w5c++6WsZYMShnIK97s3d9flhcHd9abn82TFBzO5jKGNOH4tJACpHr5m5KfgvCGQzMOUzDWunieMx959igKuCdjBYLlWs2gGCkCY/79G7VgkYex/Yu4ovXt+DgqIv9iQFE7FIf/IpG5RFEaps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714400439; c=relaxed/simple;
	bh=uSTONnEE6bCuSEveO0Ljfw2aXr4s4UGIYP8uCnP1O9w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Pn1QsTLQHFfcagkU4/UHU8sK9xS1INJfrp352nnzMBRKe0Hp04NrfpMLQGt0UHUXbKX5AihcwBoP2EQEziqEuRsQgeuAHaAyy1YWjThGzV+0UzJSGg1EnjFZ0ar7PHGQBO7dSamnQhG+fhzITH/GrOIqFekTOSfOrai1AfdcJTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rf+5EAPZ; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-de603e3072dso397601276.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 07:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714400435; x=1715005235; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bh5GjqgFJnCNeFlUQdx4KaiNVw6ilwHux7LWxSHvRJc=;
        b=rf+5EAPZm/Y//W9tqbPkoGS0sC9MxtB+z81h+oLZPRE/cO7F+g8gwSPfeF7aN+Kw/s
         mwVesoGzU8wu3jbUYdTCRQO/qCmiUUH+Mp9/DEVIyCzbpt3IESJGV0Pbxhw7bXWgYwzo
         8NKU6qXqmuV4BMK2uBFTMk+5kIsG4EsxBQwf6rT8GVUOz8TJqf1bJsJ30jwgQn8x1mHq
         CI3DDFn1rP5813Hxt2z0TYPhM3eIiyqmdGQP6TmeMAMPvWE3F1NVPjTs7h7EGir9VDCV
         ym08R+ISbruAmiDZsJgPB3LSped8YixuslGEd1OpKCXfc5/IO8ipSe70HOSWXl+E94//
         AFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714400435; x=1715005235;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bh5GjqgFJnCNeFlUQdx4KaiNVw6ilwHux7LWxSHvRJc=;
        b=hnaaFeNWetdAShnMhQcw5ULMJZKyxk80bFMwrktBuEGoNEvlVPmcPxSrYg99JSRZzE
         PaNWd+HGBBrGgrbDDh6f4xP6fwgY0tQqQl6CPPtm5XsUN890VsDoHYZu1+a7KAteUTS+
         g2FWNvrzQX29BkbXhkhyVJ8iG6Ku2e1Wu3PFhxB0WIuiPmOFFRbticrcYcFl0HQVQJhV
         Q1IDaQ+bWtipnzK5a4k+8qMaANfkKtoXHRk1qxdZhKaBfm6J8+2jktkY9YKbeSDgt1hm
         a0uXouXYS5n89KrbD6ph7T2fFQXJT0Wx6jWHcFahOCEiZa7zHNRcfiHyJSmzqdD8FF5q
         BEVA==
X-Forwarded-Encrypted: i=1; AJvYcCUNddq9eMBNtbzrHOT72Z/beBNtUioMZ0s+d0w5ckBM2PcXCw95fZXSj+IXuSM3iNmEHgpHylSKNi6qZx0T32gvFqHzsWuHyO6qEw==
X-Gm-Message-State: AOJu0Yw7dBPzRHqk6lp6hzBGZNHEjZCQgoSWjVJhQNPL1Gr9ivhPV/ue
	CBsEbATvziQZjhHeK4l4IC1PXWO2Tiqin1+uFwnFGi18WzVb6Nn9pYTopZmMgwFdJmEJxgnPT6Q
	znvEyKGG5Ua//96orFQFLHkD5fjsC5ihEsd1U0A==
X-Google-Smtp-Source: AGHT+IHmlJ2jyI8mjBe+pxOG4dsuHYfxVfiW8tyhuQv/f2dImX1G7antM0eOYDE0OprKHgsuTrDWIBw4oGYVVa6LOXo=
X-Received: by 2002:a25:b19d:0:b0:de0:fb7b:864f with SMTP id
 h29-20020a25b19d000000b00de0fb7b864fmr7331009ybj.37.1714400435318; Mon, 29
 Apr 2024 07:20:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com>
 <20240410134044.2138310-10-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFqq+gMDHx_-g-j9rO3nBDcXRSoXRjJK9D51=VaQ5XaGvw@mail.gmail.com>
 <af9c6747-120e-48c1-8c04-9594c9b49666@tuxon.dev> <2d674a18-006f-4182-bc85-bcfa50615495@tuxon.dev>
In-Reply-To: <2d674a18-006f-4182-bc85-bcfa50615495@tuxon.dev>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 29 Apr 2024 16:19:59 +0200
Message-ID: <CAPDyKFp+8VnxDfhDzvP1KWCN_oRHrVMCru9BXO_55GkF=gHUBA@mail.gmail.com>
Subject: Re: [PATCH RESEND v8 09/10] watchdog: rzg2l_wdt: Power on the PM
 domain in rzg2l_wdt_restart()
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	geert+renesas@glider.be, magnus.damm@gmail.com, biju.das.jz@bp.renesas.com, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Apr 2024 at 13:14, claudiu beznea <claudiu.beznea@tuxon.dev> wrote:
>
> Hi, Ulf,
>
> On 12.04.2024 17:02, claudiu beznea wrote:
> > Hi, Ulf,
> >
> > On 12.04.2024 14:14, Ulf Hansson wrote:
> >> On Wed, 10 Apr 2024 at 16:19, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> >>>
> >>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>
> >>> The rzg2l_wdt_restart() is called from atomic context. Calling
> >>> pm_runtime_{get_sync, resume_and_get}() or any other runtime PM resume
> >>> APIs is not an option as it may lead to issues as described in commit
> >>> e4cf89596c1f ("watchdog: rzg2l_wdt: Fix 'BUG: Invalid wait context'")
> >>> that removed the pm_runtime_get_sync() and used directly the
> >>> clk_prepare_enable() APIs.
> >>>
> >>> Starting with RZ/G3S the watchdog could be part of its own software
> >>> controlled power domain (see the initial implementation in Link section).
> >>> In case the watchdog is not used the power domain is off and accessing
> >>> watchdog registers leads to aborts.
> >>>
> >>> To solve this the patch powers on the power domain using
> >>> dev_pm_genpd_resume() API before enabling its clock. This is not
> >>> sleeping or taking any other locks as the power domain will not be
> >>> registered with GENPD_FLAG_IRQ_SAFE flags.
> >>>
> >>> Link: https://lore.kernel.org/all/20240208124300.2740313-1-claudiu.beznea.uj@bp.renesas.com
> >>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>> ---
> >>>
> >>> Changes in v8:
> >>> - none, this patch is new
> >>>
> >>>  drivers/watchdog/rzg2l_wdt.c | 12 ++++++++++++
> >>>  1 file changed, 12 insertions(+)
> >>>
> >>> diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c
> >>> index c8c20cfb97a3..98e5e9914a5d 100644
> >>> --- a/drivers/watchdog/rzg2l_wdt.c
> >>> +++ b/drivers/watchdog/rzg2l_wdt.c
> >>> @@ -12,6 +12,7 @@
> >>>  #include <linux/module.h>
> >>>  #include <linux/of.h>
> >>>  #include <linux/platform_device.h>
> >>> +#include <linux/pm_domain.h>
> >>>  #include <linux/pm_runtime.h>
> >>>  #include <linux/reset.h>
> >>>  #include <linux/units.h>
> >>> @@ -164,6 +165,17 @@ static int rzg2l_wdt_restart(struct watchdog_device *wdev,
> >>>         struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
> >>>         int ret;
> >>>
> >>> +       /*
> >>> +        * The device may be part of a power domain that is currently
> >>> +        * powered off. We need to power it up before accessing registers.
> >>> +        * We don't undo the dev_pm_genpd_resume() as the device need to
> >>> +        * be up for the reboot to happen. Also, as we are in atomic context
> >>> +        * here there is no need to increment PM runtime usage counter
> >>> +        * (to make sure pm_runtime_active() doesn't return wrong code).
> >>> +        */
> >>> +       if (!pm_runtime_active(wdev->parent))
> >>> +               dev_pm_genpd_resume(wdev->parent);
> >>> +
> >>
> >> I doubt this is the correct solution, but I may be wrong. Unless this
> >> is invoked at the syscore stage?
> >
> > On my case I see it invoked from kernel_restart(). As of my code reading,
>
> With the above explanations, do you consider calling dev_pm_genpd_resume()
> here is still wrong?

Yes. At least, those genpd functions were not added to cope for cases like this.

Moreover, you still need to find another solution as
clk_prepare_enable() can't be called in this path.

>
> Do you have any suggestions I could try?

Not at the moment, but I will try to circle back to this topic more
thinking next week, when I have some more time.

>
> Thank you,
> Claudiu Beznea

Kind regards
Uffe

>
> > at that point only one CPU is active with IRQs disabled (done in
> > machine_restart()). Below is the stack trace decoded on next-20240410 with
> > this series
> > (https://lore.kernel.org/all/20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com/)
> > on top and the one from here (adding power domain support):
> > https://lore.kernel.org/all/20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com/
> >
> > Hardware name: Renesas SMARC EVK version 2 based on r9a08g045s33 (DT)
> > Call trace:
> > dump_backtrace (arch/arm64/kernel/stacktrace.c:319)
> > show_stack (arch/arm64/kernel/stacktrace.c:326)
> > dump_stack_lvl (lib/dump_stack.c:117)
> > dump_stack (lib/dump_stack.c:124)
> > rzg2l_wdt_restart (drivers/watchdog/rzg2l_wdt.c:180)
> > watchdog_restart_notifier (drivers/watchdog/watchdog_core.c:188)
> > atomic_notifier_call_chain (kernel/notifier.c:98 kernel/notifier.c:231)
> > do_kernel_restart (kernel/reboot.c:236)
> > machine_restart (arch/arm64/kernel/process.c:145)
> > kernel_restart (kernel/reboot.c:287)
> > __do_sys_reboot (kernel/reboot.c:755)
> > __arm64_sys_reboot (kernel/reboot.c:715)
> > invoke_syscall (arch/arm64/include/asm/current.h:19
> > arch/arm64/kernel/syscall.c:53)
> > el0_svc_common.constprop.0 (include/linux/thread_info.h:127
> > arch/arm64/kernel/syscall.c:141)
> > do_el0_svc (arch/arm64/kernel/syscall.c:153)
> > el0_svc (arch/arm64/include/asm/irqflags.h:56
> > arch/arm64/include/asm/irqflags.h:77 arch/arm64/kernel/entry-common.c:165
> > arch/arm64/kernel/entry-common.c:178 arch/arm64/kernel/entry-common.c:713)
> > el0t_64_sync_handler (arch/arm64/kernel/entry-common.c:731)
> > el0t_64_sync (arch/arm64/kernel/entry.S:598)
> >
> > The watchdog restart handler is added in restart_handler_list and this list
> > is invoked though do_kernel_restart(). As of my code investigation the
> > restart_handler_list is invoked only though do_kernel_restart() and only
> > though the stack trace above.
> >
> > Thank you,
> > Claudiu Beznea
> >
> >>
> >>>         clk_prepare_enable(priv->pclk);
> >>>         clk_prepare_enable(priv->osc_clk);
> >>>
> >>> --
> >>> 2.39.2
> >>>
> >>>
> >>
> >> Can you redirectly me to the complete series, so I can have a better
> >> overview of the problem?
> >
> > This is the series that adds power domain support for RZ/G3S SoC:
> > https://lore.kernel.org/all/20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com/
> >
> > This is the series that adds watchdog support for RZ/G3S SoC:
> > https://lore.kernel.org/all/20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com/
> >
> > Thank you for your review,
> > Claudiu Beznea
> >
> >>
> >> Kind regards
> >> Uffe

