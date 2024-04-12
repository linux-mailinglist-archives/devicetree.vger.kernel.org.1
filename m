Return-Path: <devicetree+bounces-58688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFB78A2D2C
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 13:19:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4EF03B21DF3
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 11:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B307753E2B;
	Fri, 12 Apr 2024 11:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mkJObC+U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8CD53811
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 11:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712920769; cv=none; b=D1tynR7HtJIAEft1wn0SX43qkEJscHTiFRgPsI9t6TXLH0nZeLMbMJtUsR4Ex2Ox3AHdYfvEHYVDDps2btyiM4BUtstljycSBqkTn02zzZhB2+3E0tzYjwVzn9EldRIzBDwjaCoZFurKGoGwtKbeRv0zuYDlEHi1WzpABxdtKh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712920769; c=relaxed/simple;
	bh=jJXQWARzxh60e8csc7f0AlY8R8u61wyoaZ5C9ACBeKc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BLjYJgl6jMWBORfJCTLLJ5xVqZJRagaZ8LvBHjjCUFvxhzNokadebuSosnpe3XAIt6nn9UNlMpsMMukStln81WUiQC3mvQByusvny5YWOA099bT0UPKeEf2smIQ2g1PmM/DsFx/+KgOTD+swsNHQflyD+58ol5ZMM0CSyEB+cVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mkJObC+U; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dcbc6a6808fso722470276.2
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 04:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712920767; x=1713525567; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v5rDLo34QYHoVsmJR+qXt/vyD8JmocFWIjXhIAKbA2M=;
        b=mkJObC+U8nDDJgklpIU2LoOmw05ZgepN0LI6hV8mIj+8ORTLPsMXz2BEsPNBXWYWwg
         bwkKqaJSOUZny7uJwMNVBWfbtQwG/bQgnmKHe5t572TgKJbqbsF0UVpQtII24Lb6qEpG
         y9FJsyUj4xrQxyPYOmShTpov9U3m6cJzzZASfQCHGa2o6MlI6U9E0YD+qGnHdonYTOIK
         fvMj0PW79tMCa3Fn/wsEH+rL3vBtI+xc0SEwbP+svld33oQzHaxkohDwQUwYBe0wB/jv
         VZ5pBXn4yKGdcDBXzbAlgPuk2vLLlka3ibPXdU00NO4GBYTRAWHknON4QLXgvFP9rRcc
         XgUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712920767; x=1713525567;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v5rDLo34QYHoVsmJR+qXt/vyD8JmocFWIjXhIAKbA2M=;
        b=WtkS+rJw5f+x4Kwtb3BGrrnSpuSTym6phAiaaz9WQqzZFXNRMXTtRkWYbywg95A/9j
         8tnK3O/UJEP1ANrP4DmFBOcQWLDumlYWhp5H61MXkpjUvNuVGx951n521K70dv0+45VL
         QyDPp16SZa5R+ZKsIsEmRNCH7M0b9iSiHN0dIMp7U30Z9Lb5Xa/4MsT8lglPG0PDVMtm
         CIoAQJJUSK6v41uN8K0edrglu4ZqQOMSFH5WAQ17nv/1S+p66JFEWhhocTZYQm4ughGy
         Bq9HFF4vamD9boeae5csBSlTYwb+cCBKKUYS0axw4P84LPFbW9RqXv49ST8D6r+znpII
         MBBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPc4fohTeV3jPXicfcvgxivSNfHQSKG5UNBHHTwwwdnVu2YEYR3LjeUgBdplwDBh+BiDfM9WI6/UmAo5K9z1euJuc0ih6wLfdbYA==
X-Gm-Message-State: AOJu0Yw1qlipxdPOuFFZ5+wjTBqaHlg7pB+zQdE6nVhNP+ttpIIn3ymV
	6Q0Jio86UpmSGuHwxNJnSpzRpjLZyIjbUAy/CXO7xU21s7tzQBqIjSYzyosaaUYSaI79K6TEEV4
	yhyxjwM6oP/Xf4HJUaus+xTyUtfSofjpyVzFErg==
X-Google-Smtp-Source: AGHT+IGjcxQfZZ4gEXpxEJHHCkUAzxFeclWwScgkVbFOPUQuv53ARt5z+a4tB0oWhU95+YIs637qHwGwylAPZ0V78DI=
X-Received: by 2002:a25:2d07:0:b0:dcc:ae3:d8a0 with SMTP id
 t7-20020a252d07000000b00dcc0ae3d8a0mr2500615ybt.48.1712920767132; Fri, 12 Apr
 2024 04:19:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240410134044.2138310-1-claudiu.beznea.uj@bp.renesas.com> <20240410134044.2138310-10-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240410134044.2138310-10-claudiu.beznea.uj@bp.renesas.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 12 Apr 2024 13:18:51 +0200
Message-ID: <CAPDyKFq1+cL1M9qGY0P58ETHUZHGymxQL0w92emUJPMe7a_GxA@mail.gmail.com>
Subject: Re: [PATCH RESEND v8 09/10] watchdog: rzg2l_wdt: Power on the PM
 domain in rzg2l_wdt_restart()
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	geert+renesas@glider.be, magnus.damm@gmail.com, biju.das.jz@bp.renesas.com, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 10 Apr 2024 at 16:19, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> The rzg2l_wdt_restart() is called from atomic context. Calling
> pm_runtime_{get_sync, resume_and_get}() or any other runtime PM resume
> APIs is not an option as it may lead to issues as described in commit
> e4cf89596c1f ("watchdog: rzg2l_wdt: Fix 'BUG: Invalid wait context'")
> that removed the pm_runtime_get_sync() and used directly the
> clk_prepare_enable() APIs.

Calling clk_prepare_enable() doesn't work from an atomic context
either as it may sleep on the clk prepare mutex.

As I said in the other reply too, it looks like we need a different
solution. I am not sure what, but I am happy to help discuss it.

>
> Starting with RZ/G3S the watchdog could be part of its own software
> controlled power domain (see the initial implementation in Link section).
> In case the watchdog is not used the power domain is off and accessing
> watchdog registers leads to aborts.
>
> To solve this the patch powers on the power domain using
> dev_pm_genpd_resume() API before enabling its clock. This is not
> sleeping or taking any other locks as the power domain will not be
> registered with GENPD_FLAG_IRQ_SAFE flags.
>
> Link: https://lore.kernel.org/all/20240208124300.2740313-1-claudiu.beznea.uj@bp.renesas.com
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Kind regards
Uffe

> ---
>
> Changes in v8:
> - none, this patch is new
>
>  drivers/watchdog/rzg2l_wdt.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/watchdog/rzg2l_wdt.c b/drivers/watchdog/rzg2l_wdt.c
> index c8c20cfb97a3..98e5e9914a5d 100644
> --- a/drivers/watchdog/rzg2l_wdt.c
> +++ b/drivers/watchdog/rzg2l_wdt.c
> @@ -12,6 +12,7 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/reset.h>
>  #include <linux/units.h>
> @@ -164,6 +165,17 @@ static int rzg2l_wdt_restart(struct watchdog_device *wdev,
>         struct rzg2l_wdt_priv *priv = watchdog_get_drvdata(wdev);
>         int ret;
>
> +       /*
> +        * The device may be part of a power domain that is currently
> +        * powered off. We need to power it up before accessing registers.
> +        * We don't undo the dev_pm_genpd_resume() as the device need to
> +        * be up for the reboot to happen. Also, as we are in atomic context
> +        * here there is no need to increment PM runtime usage counter
> +        * (to make sure pm_runtime_active() doesn't return wrong code).
> +        */
> +       if (!pm_runtime_active(wdev->parent))
> +               dev_pm_genpd_resume(wdev->parent);
> +
>         clk_prepare_enable(priv->pclk);
>         clk_prepare_enable(priv->osc_clk);
>
> --
> 2.39.2
>
>

