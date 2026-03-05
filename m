Return-Path: <devicetree+bounces-271493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAEDDmhcqWkL6AAAu9opvQ
	(envelope-from <devicetree+bounces-271493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:35:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CB320FC27
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 74A813019808
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 10:32:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B8FF378D85;
	Thu,  5 Mar 2026 10:32:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E959B31D362
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 10:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772706771; cv=none; b=EU6t+uthX7inSzPJ2S8ZWIPz3P4zm7hX7yODR5G8aPvXiW/2K9cOph0RJF+R3dAzKqLkvfXmeYQBGQCpcQpW/BgxZhgzyFPaQXYoNE2s+UKq/NVFmtJJqZVXQqfunnN3u7tIUJN/7JXSHwkL8eV8ugro0iAzDCgfiIf0VYw3L5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772706771; c=relaxed/simple;
	bh=hzR/DJPGKmySS9c+Pr6X+vQuNGBaidaL+cpT+F96Xks=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O5FGbp2sXYfSSxBnrBKmOrRl0+ijpfThCZzbnI+HHnhXXloSRUmVMnjrph01JgSfmusBoTROuQ/HEZAu7Yz+z7lAi2A6AavxX6EBn6jXIYdLO2rZGmsN5kpMOA9UvgjAjKiJs6jg3XSXfamdNTQHTmLlWhP/fpZVhmfFnSLS/DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-89a05955720so51322586d6.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 02:32:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772706769; x=1773311569;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n3yqJTxsIY1lPN4PgWxKVyykkH8+ipNK1w9pI9/GKdU=;
        b=LLd7SJcnZliRcH8F2E3H2wSBfgp3EKv4eAocEkmq7ktTVbZ4dDaCQayi7AFE2hPbOn
         tS0uGVzU2Kz4VJmTRLfbINWXKqX3pCAGC+7GbKKlRke7aAPV2ZB4cHaaJOLy4pdyQNk4
         qE4No2+ZXb7jarlmZrjSFOMfpO3bMLyvtroqYcbsW1F5LKamBVV0qzfsiNto6JoUlub9
         v/4BBAik0d1pNIWNbYg3SM3Jb4EpDYwdCEjeBbmzlzS36JhA1vZpap6wauo4TxlpeybT
         x5oiDb4s1S9OtR8lzLDFGbgj5YNV58vpkGLgp+Ak4yPTbc+pMtdAudz4TSRPOQ8B45bz
         KG9g==
X-Forwarded-Encrypted: i=1; AJvYcCX6AvvBst9wTCz7gPTgC07uPe66JOw+0QV7n2SM5HTA2ZsCSNjvhXss+o/oPkAvAbGQxgyKEtN6kzHU@vger.kernel.org
X-Gm-Message-State: AOJu0YyeptKuABmaLQsd6NGRNb20tbewIxfwid5RWvzF1i6hDB3IJkuF
	f1IsHQyWHRWkpwx5yl+cjFJJNtIGCM1lPHSkCziycr5JaF32+NLhMslN3kBIR0xK
X-Gm-Gg: ATEYQzzmCmwEgVII0kq6nsoa3104AZaL/9Ssj729GqRmmHHcp2S3H46dGEcqZQ1n3Ym
	+/jmwKgsRHT/6LBpbbVwXZhB32ayxMsvwMgXNsUb8RZzkYShYO+qGeo4o79MKSauDyWTxMwMLw1
	kvJof/dSVwwI3doZZp+gmo1MIwF59TlEDLyAyy042LVc/HY6VBJPSADGRmCJqRqDry0tTwj8Tj8
	ltTB78wWolS9J0F7q5IVewT0xuCGhrABK8EWxSsJiyOkA8tbwQ2RcGKuyMoEObC3Uzx5oUagS/3
	J0Vti8DZkREvanR5TJ9yl6cYBoyLwWYLAkSPVqXzDT9kifDhcV4ThWGw1tq1xTz70rJRp6O/bC7
	ergrDiHdo9roIUECdJsNz1yXBxzIQPE+Tf7yDYTmEXY6SGWrePGMtocxMrpnjAOKkEk5GUNuyM7
	odD3aykWg0hAvjojd/AZ4XcYkFbjYqoqbtE1KhMwuvUnoGo4mQ+yk32L8utOJy
X-Received: by 2002:a05:6214:f01:b0:89a:12da:374e with SMTP id 6a1803df08f44-89a19aee7a5mr74211516d6.31.1772706768913;
        Thu, 05 Mar 2026 02:32:48 -0800 (PST)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com. [209.85.219.46])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899c7374600sm179137006d6.29.2026.03.05.02.32.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 02:32:48 -0800 (PST)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-899ee87355dso60975216d6.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 02:32:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUcV8zAlMeunGlDzDoRjoUoeWPrxpd/IS0zX/Z1DkRImdVlRAd+l72fUmmjU5eXwWzs/RCKibpVVKRW@vger.kernel.org
X-Received: by 2002:a05:6102:3ed5:b0:5f5:320c:4d36 with SMTP id
 ada2fe7eead31-5ffab240223mr2483807137.40.1772706274492; Thu, 05 Mar 2026
 02:24:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1772644406.git.geert+renesas@glider.be> <d22488d128d39fcd90359f59559fac637bb4b04c.1772644406.git.geert+renesas@glider.be>
 <86v7fa7fdq.wl-maz@kernel.org>
In-Reply-To: <86v7fa7fdq.wl-maz@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 11:24:23 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWWYNGThGYsj6Oakwx-1RKO_BrENiSSUi08ZzfE_b3EXA@mail.gmail.com>
X-Gm-Features: AaiRm50s5nNMGcrhF9lpYz1D5nEmYHga723M3h1qHVdFckZiw7-IBT_v4J6wsk0
Message-ID: <CAMuHMdWWYNGThGYsj6Oakwx-1RKO_BrENiSSUi08ZzfE_b3EXA@mail.gmail.com>
Subject: Re: [PATCH 3/4] irqchip/gic: Use GIC_* DT binding definitions
To: Marc Zyngier <maz@kernel.org>
Cc: Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Antoine Tenart <atenart@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Mark-PK Tsai <mark-pk.tsai@mediatek.com>, Daniel Palmer <daniel@thingy.jp>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	imx@lists.linux.dev, linux-amlogic@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 87CB320FC27
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,broadcom.com,nxp.com,pengutronix.de,gmail.com,linaro.org,baylibre.com,googlemail.com,mediatek.com,thingy.jp,collabora.com,nvidia.com,ti.com,socionext.com,lists.infradead.org,vger.kernel.org,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-271493-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.969];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,glider.be:email]
X-Rspamd-Action: no action

Hi Marc,

On Thu, 5 Mar 2026 at 11:13, Marc Zyngier <maz@kernel.org> wrote:
> On Wed, 04 Mar 2026 17:21:58 +0000,
> Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> > Replace magic numbers by symbolic DT binding definitions.  This improves
> > readability, and makes it easier to find where the various GIC
> > interrupts types are handled.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

> > --- a/drivers/irqchip/irq-gic-v3.c
> > +++ b/drivers/irqchip/irq-gic-v3.c
> > @@ -35,6 +35,8 @@
> >  #include <asm/smp_plat.h>
> >  #include <asm/virt.h>
> >
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> >  #include "irq-gic-common.h"
> >
> >  static u8 dist_prio_irq __ro_after_init = GICV3_PRIO_IRQ;
> > @@ -1602,25 +1604,25 @@ static int gic_irq_domain_translate(struct irq_domain *d,
> >                       return -EINVAL;
> >
> >               switch (fwspec->param[0]) {
> > -             case 0:                 /* SPI */
> > +             case GIC_SPI:
>
> I'd rather not do that. I use *numeric* values on purpose, because
> that's what the DT *binding* describes, and I have no control over
> what lives in that include file (it gets changed without me being even
> Cc'd).
>
> So I want to stick to the binding, and not to the interpretation of
> it. If you want symbolic values to be used, describe them in the
> binding, have a tool to generate the values from the binding, and use
> that everywhere.

This sounds more like a philosophical debate, so I'd like to defer
to the DT maintainers...

About you not being notified: that can be fixed easily ;-)

--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2110,6 +2110,7 @@ F:        arch/arm64/include/asm/arch_gicv3.h
 F:     drivers/irqchip/irq-gic*.[ch]
 F:     include/linux/irqchip/arm-gic*.h
 F:     include/linux/irqchip/arm-vgic-info.h
+F:     include/dt-bindings/interrupt-controller/arm-gic.h

 ARM GENERIC INTERRUPT CONTROLLER V5 DRIVERS
 M:     Lorenzo Pieralisi <lpieralisi@kernel.org>

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

