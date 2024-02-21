Return-Path: <devicetree+bounces-44491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF7885E75F
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 20:37:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBF501F236C2
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 19:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E0486645;
	Wed, 21 Feb 2024 19:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u7W79RKB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F67385C7C
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708544213; cv=none; b=Umx4ZOQVQoKFiErmAhqQb/Y/dG9jDf+nRytRWEJPy7C2YAtb5QrxYQ+p4oFznma5SJVEenPEW7RHPIxHTvpVIqvX0EgeMAGpXQtx+9wg15Vzh36kltIi9dJwdFw/4x4A+xK5sP1361HP/Wm8ekscDoBgr1YdWLrvyRvhyBfAxu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708544213; c=relaxed/simple;
	bh=eV8KAdCq546PLUu5EHILB1FlUk/5D6xqO6K8+ATuJRk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DjhngjtN/TOziHRezmHuaa7sNyQ+Qk02OX8NEsMR09DE62SYfKShwpepdnE5c4OPIfYTGvkSMIgs2a5+es2dE0GYeHudoVWx8WoAwdJzWA7qhGjzkAgVdkmxyYd7SW5kfrwP/oflrFvkLVG2ClHwf5cqPf6RTi/tRhw3Fqynm+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u7W79RKB; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-607fc3e69adso61399897b3.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 11:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708544210; x=1709149010; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ww0To1dp+AHUBLp6rp2jOb2P+DD7/I49Wgp5bodshls=;
        b=u7W79RKBLtsgCnc0flAkFFQjlNIqxSAjY5e/tyZWGtgpaeWNePfbPUT/5PyeQQy0Vg
         gMawdvc7NuNL2qna8LFqr8OoYCxlSNbNchQtxc3gKCQnpM8KzZTDoxG+ZCRoumx8fg4j
         vKGy5yVlHdC3r+q+1lbXf6/AKkrc6XdgPPT4Oau/33l1pCJ4mHeG9ggcN+S0sGO/uTFy
         /ELHrXy7VM8kS5kqWWcrWM+OFMoy4XImpDOMhQdVzhnDxCfEUBzYSYwlcZlita1tX0h2
         SfTk+p/6UAKzYhFDtfufqjxWXM5/MmPhZnFMzEwtxFhINIZUpdEyguFQ+tIB9o3u9ule
         6gjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708544210; x=1709149010;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ww0To1dp+AHUBLp6rp2jOb2P+DD7/I49Wgp5bodshls=;
        b=A1p8qmy4Svzyk24nuUTyLDSm6ZEbv17L9bcqyI3OSkxwdBjwOFQydhS3h7/1O97JDC
         lgcNJDslsr2ZYCzfTqpL6ycDOJjjqAsUT3LQ/XDZ9Sx5xuEUCmj1yuSsNOtJ4S8k5a8e
         j8+BShb4DKZu/lqVaw1Be/pgGZ8DNqDRMNhbBbb8qTKJj/gUcW5JeS5OlpPzzEUwrsQN
         J1sZJGolYQzB9pKGqjSh6V3rb8aQ3jaj0fBSt0PjaAAf8NZoMyRDwDyx8dYgEaNRvAjU
         XaEHl2cWVzmKy+QfHBJBTq5mLqx5bFF1JffUndWIc0YmDA3ePsyz/H0WBvvDTu3puZw3
         LLPg==
X-Forwarded-Encrypted: i=1; AJvYcCUSwslhiQR1kClMSuaDB4KeEUEH4DeJvvmyCqQwaMEwNXcreHDA5TaPbBb0OfuCjC6siQfV+2R9tVXE1RtF7fvY4bcqDvHOIuwsqQ==
X-Gm-Message-State: AOJu0Ywlolif5II56cXSh3vg+y7qMkbkPtc2uPssptCh+fcXSNuNNK9w
	rJ2DJD208qVqwimaAF3XkYKbxKV9ycNXlYp4QVe+S2jwgpwswc6AbejPPDNyAN7wqu3th9ByqFa
	OyZR+fM7U3ZP/hoKIjxMw4R2pOiN+f0illicCEw==
X-Google-Smtp-Source: AGHT+IGCZPDCa1Hzfo+KEBVcL7TsTR0Ad/nA9/EpiWdmACh0Xp2HAj3m3ZyLtUAY4auzZzhlgNjzo05jt7jYW0MAWUM=
X-Received: by 2002:a81:8d51:0:b0:608:8b1e:cee with SMTP id
 w17-20020a818d51000000b006088b1e0ceemr1805668ywj.25.1708544210048; Wed, 21
 Feb 2024 11:36:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240214-mbly-gpio-v1-0-f88c0ccf372b@bootlin.com>
 <20240214-mbly-gpio-v1-18-f88c0ccf372b@bootlin.com> <CACRpkdYLBGsphNkmWyPXQZvFaO2hHGHGTMt1eqz-HAa2k5F3bg@mail.gmail.com>
 <CZAW47LJHQVD.1Z9GFT8UENYXT@bootlin.com>
In-Reply-To: <CZAW47LJHQVD.1Z9GFT8UENYXT@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 Feb 2024 20:36:39 +0100
Message-ID: <CACRpkdZQ9LEqKvugDCMEXPPLMCUJ-f9rYQOpmsSEJhtW0zjNsg@mail.gmail.com>
Subject: Re: [PATCH 18/23] gpio: nomadik: support mobileye,eyeq5-gpio
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 21, 2024 at 5:16=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> > Trying to figure it out...
>
> Can I help in the debugging process?

Nah, I found it :)

> Reading the code once again I'd guess
> of_device_get_match_data(&gpio_pdev->dev) could be the root cause. We
> are accessing match data for the GPIO device while probing the pinctrl
> device. Maybe something isn't initialised properly yet? The rest looks
> rather harmless, I've checked all conditional expressions.

Yep spot on. The nmk_gpio_populate_chip() is sometimes called from
the pinctrl driver before the gpio probe() has been called, so the match
data is NULL and we crash.

This looks like it does for historical reasons and there could be better
ways to fix it now that Saravana Kannan has fixed up the probe ordering
code.

The following is one way to fix it for now using device_is_compatible()
(illustrating some other changes I did as well):

diff --git a/drivers/gpio/gpio-nomadik.c b/drivers/gpio/gpio-nomadik.c
index 21bb6d6363fc..11071a982ebb 100644
--- a/drivers/gpio/gpio-nomadik.c
+++ b/drivers/gpio/gpio-nomadik.c
@@ -27,6 +27,7 @@
 #include <linux/of_platform.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/platform_device.h>
+#include <linux/property.h>
 #include <linux/reset.h>
 #include <linux/seq_file.h>
 #include <linux/types.h>
@@ -37,15 +38,13 @@
 static DEFINE_SPINLOCK(nmk_gpio_slpm_lock);
 #endif

-#define NMK_GPIO_FLAG_QUIRK_MBLY    BIT(0)
-
 void __nmk_gpio_set_slpm(struct nmk_gpio_chip *nmk_chip, unsigned int offs=
et,
              enum nmk_gpio_slpm mode)
 {
     u32 slpm;

     /* We should NOT have been called. */
-    if (WARN_ON(nmk_chip->quirk_mbly))
+    if (WARN_ON(nmk_chip->is_mobileye_soc))
         return;

     slpm =3D readl(nmk_chip->addr + NMK_GPIO_SLPC);
@@ -105,7 +104,7 @@ static void __nmk_gpio_irq_modify(struct
nmk_gpio_chip *nmk_chip,
         fimscval =3D &nmk_chip->fimsc;
     } else  {
         /* We should NOT have been called. */
-        if (WARN_ON(nmk_chip->quirk_mbly))
+        if (WARN_ON(nmk_chip->is_mobileye_soc))
             return;
         rimscreg =3D NMK_GPIO_RWIMSC;
         fimscreg =3D NMK_GPIO_FWIMSC;
@@ -134,7 +133,7 @@ static void __nmk_gpio_set_wake(struct
nmk_gpio_chip *nmk_chip,
                 int offset, bool on)
 {
     /* We should NOT have been called. */
-    if (WARN_ON(nmk_chip->quirk_mbly))
+    if (WARN_ON(nmk_chip->is_mobileye_soc))
         return;

     /*
@@ -161,7 +160,7 @@ static void nmk_gpio_irq_maskunmask(struct
nmk_gpio_chip *nmk_chip,

     __nmk_gpio_irq_modify(nmk_chip, d->hwirq, NORMAL, enable);

-    if (!nmk_chip->quirk_mbly && !(nmk_chip->real_wake & BIT(d->hwirq)))
+    if (!nmk_chip->is_mobileye_soc && !(nmk_chip->real_wake & BIT(d->hwirq=
)))
         __nmk_gpio_set_wake(nmk_chip, d->hwirq, enable);

     spin_unlock(&nmk_chip->lock);
@@ -194,7 +193,7 @@ static int nmk_gpio_irq_set_wake(struct irq_data
*d, unsigned int on)
     unsigned long flags;

     /* Handler is registered in all cases. */
-    if (nmk_chip->quirk_mbly)
+    if (nmk_chip->is_mobileye_soc)
         return -ENXIO;

     clk_enable(nmk_chip->clk);
@@ -235,7 +234,7 @@ static int nmk_gpio_irq_set_type(struct irq_data
*d, unsigned int type)
     if (enabled)
         __nmk_gpio_irq_modify(nmk_chip, d->hwirq, NORMAL, false);

-    if (!nmk_chip->quirk_mbly && (enabled || wake))
+    if (!nmk_chip->is_mobileye_soc && (enabled || wake))
         __nmk_gpio_irq_modify(nmk_chip, d->hwirq, WAKE, false);

     nmk_chip->edge_rising &=3D ~BIT(d->hwirq);
@@ -249,7 +248,7 @@ static int nmk_gpio_irq_set_type(struct irq_data
*d, unsigned int type)
     if (enabled)
         __nmk_gpio_irq_modify(nmk_chip, d->hwirq, NORMAL, true);

-    if (!nmk_chip->quirk_mbly && (enabled || wake))
+    if (!nmk_chip->is_mobileye_soc && (enabled || wake))
         __nmk_gpio_irq_modify(nmk_chip, d->hwirq, WAKE, true);

     spin_unlock_irqrestore(&nmk_chip->lock, flags);
@@ -383,7 +382,7 @@ static int nmk_gpio_get_mode(struct nmk_gpio_chip
*nmk_chip, int offset)
     u32 afunc, bfunc;

     /* We don't support modes. */
-    if (nmk_chip->quirk_mbly)
+    if (nmk_chip->is_mobileye_soc)
         return NMK_GPIO_ALT_GPIO;

     clk_enable(nmk_chip->clk);
@@ -517,7 +516,6 @@ struct nmk_gpio_chip
*nmk_gpio_populate_chip(struct device_node *np,
     struct resource *res;
     struct clk *clk;
     void __iomem *base;
-    uintptr_t flags;
     u32 id, ngpio;

     gpio_pdev =3D of_find_device_by_node(np);
@@ -551,8 +549,7 @@ struct nmk_gpio_chip
*nmk_gpio_populate_chip(struct device_node *np,
         dev_dbg(&pdev->dev, "populate: using default ngpio (%d)\n", ngpio)=
;
     }

-    flags =3D (uintptr_t)of_device_get_match_data(&gpio_pdev->dev);
-    nmk_chip->quirk_mbly =3D !!(flags & NMK_GPIO_FLAG_QUIRK_MBLY);
+    nmk_chip->is_mobileye_soc =3D device_is_compatible(&gpio_pdev->dev,
"mobileye,eyeq5-gpio");
     nmk_chip->bank =3D id;
     chip =3D &nmk_chip->chip;
     chip->base =3D -1;
@@ -667,7 +664,7 @@ static int nmk_gpio_probe(struct platform_device *pdev)
         return ret;
     }

-    if (!nmk_chip->quirk_mbly) {
+    if (!nmk_chip->is_mobileye_soc) {
         clk_enable(nmk_chip->clk);
         nmk_chip->lowemi =3D readl_relaxed(nmk_chip->addr + NMK_GPIO_LOWEM=
I);
         clk_disable(nmk_chip->clk);
@@ -690,7 +687,6 @@ static const struct of_device_id nmk_gpio_match[] =3D {
     },
     {
         .compatible =3D "mobileye,eyeq5-gpio",
-        .data =3D (void*)NMK_GPIO_FLAG_QUIRK_MBLY,
     },
     {}
 };
diff --git a/include/linux/gpio/gpio-nomadik.h
b/include/linux/gpio/gpio-nomadik.h
index 8d0134dd3771..ede16cdaa920 100644
--- a/include/linux/gpio/gpio-nomadik.h
+++ b/include/linux/gpio/gpio-nomadik.h
@@ -51,6 +51,7 @@ enum nmk_gpio_slpm {

 struct nmk_gpio_chip {
     struct gpio_chip chip;
+    bool is_mobileye_soc;
     void __iomem *addr;
     struct clk *clk;
     unsigned int bank;

Yours,
Linus Walleij

