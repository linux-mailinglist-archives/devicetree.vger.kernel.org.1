Return-Path: <devicetree+bounces-265992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIYsOCQelGk1AAIAu9opvQ
	(envelope-from <devicetree+bounces-265992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:52:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0260149582
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:52:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CACA0300C0FE
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 366DB2DA776;
	Tue, 17 Feb 2026 07:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QNdec8ln"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734EF2D8DB5
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771314712; cv=pass; b=tnPNCcL/gBaexMSEu7pCKs7+PzOzqdO8PxM785Hm6fOkuoAyCu9Ed9XOyYiY1F5Dr4fPYntswzQUXIj0htpxoEvVOf3OZgzyfzZh/dh7HL8ZZwyQuoWGfsFrRGcJ6bHEPbpvx2qPuRE4FCjqRF27Sbvv4U8gMBCi7Rvp0FXvqJA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771314712; c=relaxed/simple;
	bh=pQ4Rf/+tlz+EsZT/+SVJIC7Ljz7WZmW/Qpc373mjLRM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F/CCSaevzjv/8GW68U/lT8kHhLhajphLUELGG+C2dOsh9TsqjMgH+aMU5Kh+WsG6TUSPcXF2NPU1iHNHBWya6LcLlX35AgpJUGAbCcv8OwuuO1SXVhN1wos0tcBss76z/U/1lvv6MlKXSvMu99HzGW5oQ+sDpGiquqpq5gYsTic=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QNdec8ln; arc=pass smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-43621bf67ceso2363464f8f.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 23:51:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771314709; cv=none;
        d=google.com; s=arc-20240605;
        b=JbY2wb7zEA9ByZ2QuNPPV0p6Z7cbnlmlcGccLDueMC66H0IGNn7UFfYImvIGtyzAYe
         zk8K/llKRqHc3LnmgCJWsdMH2MrWG6bmQQ7yyOWSlaf1QXzgI5NxTfwO8bXH6yE+KZa+
         2l1ig7LCrbHvjnuYWNiXNtiH0Y/vjU9gyj5Ft3sNTErZqwrG6SOkPuGbYnB07N7V/V0p
         xQfgmJ3klHfRCyagbnnRa5F1PVq3WMC+VJik8SE4RZvfJGukK7YFEYqGxlGwLo8Qe/hx
         1RTZwOvWwMPOI/92s6g6VCMn+9KhD8LSiNcRUWtP/Ye6UtW7M16jUQtq3u0WyWe1iGVT
         sduA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qoATWroTqUpTj5yQA7J4PcHBO/937bY0v50OC3aEzqs=;
        fh=DXEv28Aq28UYg6u80ieCDTrnyvtKPEivcgNOT1X/q9Q=;
        b=Ru6bxjuojrcuwdQ9/RCGfWRxWLo3SWdMhvl9h+X4uFdhWSG2x9K3UH3pB1lwDpVm3b
         S76Y4/45AX2KKHVxOQ+KF84/Ei73S6nNgo6L119meZuzoDXgrrd59Ve0p8lj8buSnNvL
         MDsmQCiy2hsEeb73ivk3wLKObIsWW7AZnRpTAKXyRPJa7yRF65yeU6P+3XiyzUBUr4Dj
         2uBf8Nf8jqr2GTJuyKif5bTUijWE7c1FZ927lW9ZkUNGEXLBInTs3Slg8kjvrW1ilJel
         f6XFCUGxfJnA7XM0DLKX1/fPdRUV5gM46cemZ88rLB+ZTbOYA9qm6vAclR1Yc8SrNlU4
         3chg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771314709; x=1771919509; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qoATWroTqUpTj5yQA7J4PcHBO/937bY0v50OC3aEzqs=;
        b=QNdec8lnXDnDyvz9KpSY6geLifw51UTADoa+F6qwmV/qnyX9T2WywAtnzmxQZYVbt7
         vthDOcO1Hvc5epvbH4vHOkQdyTHekuc4dYjKmV2XszXsDsktKADPK4zObm0+h1cA2oRK
         DqBKs7qHViBlRjc8Ou3cJ3l7qskI+ryP7t1I/7zf6K8Hde+7hXKKuA68IENhu4v2gd18
         MmsKvhgJxCBrq6/P5Ewsa0inI/Bmg+mgFaO6reVw7A8epovJ0SrumhLOyeKkfVP6kwKb
         eUe9bfJlyKITkKs5TAlnzgKF5IkGvqc7at/WgJ45tGX504Q/mrWXw4/0dCwP968Xn/JQ
         gBjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771314709; x=1771919509;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qoATWroTqUpTj5yQA7J4PcHBO/937bY0v50OC3aEzqs=;
        b=eC7jJuNx6VwcAUEmWyMmhInPfZ/PQyTGV+fiJwagnG3LkRjkwsgoCIN2e//K8YZs9y
         0J/+AIe2p7NvSZ5+CS5h6CsOTqYjmlnJM+5yT5wje4TseQAevTrxo+xTeVL8rztwb6P6
         l4g1+t6fpa22VhSZc9v/DjeDonIbXKGpZtkDA9E18Nmt4AT6aDZUAThT3al+gUfuum3d
         pqznv7Mv7g6UtOyiDn0DisOKywRMyGXHTCVPeOdDxDf7djvFG3hyB5JxRrEmT+sy/e/D
         V+VZ2L/znm1Wns6wRp7P2tqLKCG3pH4OV/pgn1Qa+tTijIQ/fy0hzfjtWUmu0+J4it1R
         G5ag==
X-Forwarded-Encrypted: i=1; AJvYcCWGYZDliSExbMcQtzAAppbLYPOMbWhstCovWSu1POazZB26+cks2sOaBla+KX+yalCpKxmpAXIqudru@vger.kernel.org
X-Gm-Message-State: AOJu0YxACeUpFT0OZ7TE5wbr/lufcPSLe5K4UV6nkgWzCPQBKVFyp/3q
	4PbGj1qbwgdV66pRclxOlxcQ4RgdTGm9MycSFYGln3Z6IqCaOkMcmac14W/g+4rW0bR+xUrvwl3
	aWb4OnXdKZ2LwQ7fvo0Wu5dXtTuAE8bc=
X-Gm-Gg: AZuq6aIMmsaWi47RrxYEPNZ073bnOVta+z4m+qYCDp5gv6qHg5LFSVy7cLGep8KlfF1
	/1umkUPDM7hNsxz7dsHDNPLovKgGbzni+9dhEEtIqcGbYY02mW7XuPf6tNkxRzXoZLquvmgrk0P
	r+0n5CsJjvjcYroY5eHTxA3eVQJcnwMx/fFuR+Ww92htzpM6yFFerDr2f50cdHiijBnx8Eah/7X
	Nma/+GFxYIESbqjEKIomYyvyWAaAN4nW0Q4LQT4OmtoIhFlOq6sJ0yLdk6JY1kA8Jz1b1tsJh7M
	Wizpdd49
X-Received: by 2002:a5d:5f48:0:b0:435:6c8d:d017 with SMTP id
 ffacd0b85a97d-4379db8cfd2mr20877046f8f.32.1771314708640; Mon, 16 Feb 2026
 23:51:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126190755.78475-1-clamor95@gmail.com> <20260126190755.78475-6-clamor95@gmail.com>
 <6f143fdd-1e2d-428d-9b05-cf1124b179e8@kernel.org>
In-Reply-To: <6f143fdd-1e2d-428d-9b05-cf1124b179e8@kernel.org>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 17 Feb 2026 09:51:37 +0200
X-Gm-Features: AaiRm51IeOIsA6AqkVaK6iPPT9QH4S7S_5NZ3l1jeQjgRc_Aq6MIBy9_f8SWdqk
Message-ID: <CAPVz0n0Ep_YAJfm0R_PexKo5WwrTDbJfFKUbLVKtG5q1qLONUg@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] memory: tegra: Add Tegra114 EMC driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Sumit Gupta <sumitg@nvidia.com>, 
	Dmitry Osipenko <digetx@gmail.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265992-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,nvidia.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: A0260149582
X-Rspamd-Action: no action

=D0=B2=D1=82, 17 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 09:21 Krzy=
sztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 26/01/2026 20:07, Svyatoslav Ryhel wrote:
> > Introduce driver for the External Memory Controller (EMC) found in
> > Tegra114 SoC. It controls the external DRAM on the board. The purpose o=
f
> > this driver is to program memory timing for external memory on the EMC
> > clock rate change.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
> > ---
> >  drivers/memory/tegra/Kconfig        |   12 +
> >  drivers/memory/tegra/Makefile       |    1 +
> >  drivers/memory/tegra/tegra114-emc.c | 1463 +++++++++++++++++++++++++++
>
> Please rebase on top of Mikko's patch removing duplicated code.
>
> >  3 files changed, 1476 insertions(+)
> >  create mode 100644 drivers/memory/tegra/tegra114-emc.c
> >
> > diff --git a/drivers/memory/tegra/Kconfig b/drivers/memory/tegra/Kconfi=
g
> > index fc5a27791826..11e7cc357d39 100644
> > --- a/drivers/memory/tegra/Kconfig
> > +++ b/drivers/memory/tegra/Kconfig
> > @@ -35,6 +35,18 @@ config TEGRA30_EMC
> >         This driver is required to change memory timings / clock rate f=
or
> >         external memory.
> >
> > +config TEGRA114_EMC
> > +     tristate "NVIDIA Tegra114 External Memory Controller driver"
> > +     default y
> > +     depends on ARCH_TEGRA_114_SOC || COMPILE_TEST
> > +     select TEGRA124_CLK_EMC if ARCH_TEGRA
> > +     select PM_OPP
> > +     help
> > +       This driver is for the External Memory Controller (EMC) found o=
n
> > +       Tegra114 chips. The EMC controls the external DRAM on the board=
.
> > +       This driver is required to change memory timings / clock rate f=
or
> > +       external memory.
> > +
> >  config TEGRA124_EMC
> >       tristate "NVIDIA Tegra124 External Memory Controller driver"
> >       default ARCH_TEGRA_124_SOC
> > diff --git a/drivers/memory/tegra/Makefile b/drivers/memory/tegra/Makef=
ile
> > index 6334601e6120..6b9156de4b66 100644
> > --- a/drivers/memory/tegra/Makefile
> > +++ b/drivers/memory/tegra/Makefile
> > @@ -16,6 +16,7 @@ obj-$(CONFIG_TEGRA_MC) +=3D tegra-mc.o
> >
> >  obj-$(CONFIG_TEGRA20_EMC)  +=3D tegra20-emc.o
> >  obj-$(CONFIG_TEGRA30_EMC)  +=3D tegra30-emc.o
> > +obj-$(CONFIG_TEGRA114_EMC) +=3D tegra114-emc.o
> >  obj-$(CONFIG_TEGRA124_EMC) +=3D tegra124-emc.o
> >  obj-$(CONFIG_TEGRA210_EMC_TABLE) +=3D tegra210-emc-table.o
> >  obj-$(CONFIG_TEGRA210_EMC) +=3D tegra210-emc.o
> > diff --git a/drivers/memory/tegra/tegra114-emc.c b/drivers/memory/tegra=
/tegra114-emc.c
> > new file mode 100644
> > index 000000000000..789b8e959a68
> > --- /dev/null
> > +++ b/drivers/memory/tegra/tegra114-emc.c
> > @@ -0,0 +1,1463 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Tegra114 External Memory Controller driver
> > + *
> > + * Based on downstream driver from NVIDIA and tegra124-emc.c
> > + * Copyright (C) 2011-2014 NVIDIA Corporation
> > + *
> > + * Copyright (C) 2024 Svyatoslav Ryhel <clamor95@gmail.com>
> > + */
> > +
> > +#include <linux/clk-provider.h>
>
> Where is it used?
>
> > +#include <linux/clk.h>
> > +#include <linux/clkdev.h>
>
> Where is it used?
>
> > +#include <linux/clk/tegra.h>
>
> Where is it used?
>

All 4 by tegra124_clk_set_emc_callbacks

> > +#include <linux/debugfs.h>
> > +#include <linux/delay.h>
> > +#include <linux/interconnect-provider.h>
>
> Where is it used?
>

tegra_emc_interconnect_init

> > +#include <linux/interrupt.h>
> > +#include <linux/io.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/module.h>
> > +#include <linux/mutex.h>
> > +#include <linux/of_address.h>
> > +#include <linux/of_platform.h>
>
> I don't see these used. OTOH, I see you use other of_ which needs their
> header.
>

fair

> > +#include <linux/platform_device.h>
> > +#include <linux/pm_opp.h>
> > +#include <linux/sort.h>
> > +#include <linux/string.h>
> > +
> > +#include <soc/tegra/common.h>
> > +#include <soc/tegra/fuse.h>
> > +#include <soc/tegra/mc.h>
> > +
> > +#include "mc.h"
> > +
> > +#define EMC_INTSTATUS                                0x0
> > +#define EMC_INTSTATUS_REFRESH_OVERFLOW               BIT(3)
> > +#define EMC_INTSTATUS_CLKCHANGE_COMPLETE     BIT(4)
> > +
> > +#define EMC_INTMASK                          0x4
> > +
> > +#define EMC_DBG                                      0x8
> > +#define EMC_DBG_READ_MUX_ASSEMBLY            BIT(0)
> > +#define EMC_DBG_WRITE_MUX_ACTIVE             BIT(1)
> > +#define EMC_DBG_FORCE_UPDATE                 BIT(2)
> > +#define EMC_DBG_CFG_PRIORITY                 BIT(24)
> > +
>
> ...
>
> > +
> > +static int tegra_emc_debug_available_rates_show(struct seq_file *s,
> > +                                             void *data)
> > +{
> > +     struct tegra_emc *emc =3D s->private;
> > +     const char *prefix =3D "";
> > +     unsigned int i;
> > +
> > +     for (i =3D 0; i < emc->num_timings; i++) {
> > +             seq_printf(s, "%s%lu", prefix, emc->timings[i].rate);
> > +             prefix =3D " ";
> > +     }
> > +
> > +     seq_puts(s, "\n");
> > +
> > +     return 0;
> > +}
> > +
> > +DEFINE_SHOW_ATTRIBUTE(tegra_emc_debug_available_rates);
>
> Where is the ABI documented for all these?
>

Debugfs does not require ABI documentation, provided comment in the
driver is sufficient.

> > +
> > +static int tegra_emc_debug_min_rate_get(void *data, u64 *rate)
> > +{
> > +     struct tegra_emc *emc =3D data;
> > +
> > +     *rate =3D emc->debugfs.min_rate;
> > +
> > +     return 0;
> > +}
> > +
> > +static int tegra_emc_debug_min_rate_set(void *data, u64 rate)
> > +{
> > +     struct tegra_emc *emc =3D data;
> > +     int err;
> > +
> > +     if (!tegra_emc_validate_rate(emc, rate))
> > +             return -EINVAL;
> > +
> > +     err =3D emc_set_min_rate(emc, rate, EMC_RATE_DEBUG);
> > +     if (err < 0)
> > +             return err;
> > +
> > +     emc->debugfs.min_rate =3D rate;
> > +
> > +     return 0;
> > +}
> > +
> > +DEFINE_DEBUGFS_ATTRIBUTE(tegra_emc_debug_min_rate_fops,
> > +                      tegra_emc_debug_min_rate_get,
> > +                      tegra_emc_debug_min_rate_set, "%llu\n");
> > +
>
> ...
>
> > +
> > +static int tegra_emc_probe(struct platform_device *pdev)
> > +{
> > +     struct tegra_core_opp_params opp_params =3D {};
> > +     struct device_node *np;
> > +     struct tegra_emc *emc;
> > +     u32 ram_code;
> > +     int err;
> > +
> > +     emc =3D devm_kzalloc(&pdev->dev, sizeof(*emc), GFP_KERNEL);
> > +     if (!emc)
> > +             return -ENOMEM;
> > +
> > +     mutex_init(&emc->rate_lock);
> > +     emc->dev =3D &pdev->dev;
> > +
> > +     emc->regs =3D devm_platform_ioremap_resource(pdev, 0);
> > +     if (IS_ERR(emc->regs))
> > +             return PTR_ERR(emc->regs);
> > +
> > +     emc->mc =3D devm_tegra_memory_controller_get(&pdev->dev);
> > +     if (IS_ERR(emc->mc))
> > +             return PTR_ERR(emc->mc);
> > +
> > +     ram_code =3D tegra_read_ram_code();
> > +
> > +     np =3D tegra_emc_find_node_by_ram_code(pdev->dev.of_node, ram_cod=
e);
> > +     if (np) {
> > +             err =3D tegra_emc_load_timings_from_dt(emc, np);
> > +             of_node_put(np);
> > +             if (err)
> > +                     return err;
> > +     } else {
> > +             dev_info_once(&pdev->dev,
> > +                           "no memory timings for RAM code %u found in=
 DT\n",
> > +                           ram_code);
> > +     }
> > +
> > +     err =3D emc_init(emc);
> > +     if (err) {
> > +             dev_err(&pdev->dev, "EMC initialization failed: %d\n", er=
r);
> > +             return err;
> > +     }
> > +
> > +     platform_set_drvdata(pdev, emc);
> > +
> > +     tegra124_clk_set_emc_callbacks(tegra_emc_prepare_timing_change,
> > +                                    tegra_emc_complete_timing_change);
> > +
> > +     err =3D devm_add_action_or_reset(&pdev->dev, devm_tegra_emc_unset=
_callback,
> > +                                    NULL);
> > +     if (err)
> > +             return err;
> > +
> > +     err =3D platform_get_irq(pdev, 0);
> > +     if (err < 0)
> > +             return err;
> > +
> > +     emc->irq =3D err;
> > +
> > +     err =3D devm_request_irq(&pdev->dev, emc->irq, tegra_emc_isr, 0,
> > +                            dev_name(&pdev->dev), emc);
> > +     if (err) {
> > +             dev_err(&pdev->dev, "failed to request irq: %d\n", err);
> > +             return err;
> > +     }
> > +
> > +     emc->clk =3D devm_clk_get(&pdev->dev, "emc");
> > +     if (IS_ERR(emc->clk)) {
> > +             err =3D PTR_ERR(emc->clk);
> > +             dev_err(&pdev->dev, "failed to get EMC clock: %d\n", err)=
;
>
> Syntax is return dev_err_probe. Since some years and all the existing
> code was already fixed, no?
>

fair


> > +             return err;
> > +     }
> > +
> > +     opp_params.init_state =3D true;
> > +
> > +     err =3D devm_tegra_core_dev_init_opp_table(&pdev->dev, &opp_param=
s);
> > +     if (err)
> > +             return err;
> > +
> > +     tegra_emc_rate_requests_init(emc);
> > +
> > +     if (IS_ENABLED(CONFIG_DEBUG_FS))
> > +             emc_debugfs_init(&pdev->dev, emc);
> > +
> > +     tegra_emc_interconnect_init(emc);
> > +
> > +     /*
> > +      * Don't allow the kernel module to be unloaded. Unloading adds s=
ome
> > +      * extra complexity which doesn't really worth the effort in a ca=
se of
> > +      * this driver.
> > +      */
> > +     try_module_get(THIS_MODULE);
> > +
> > +     return 0;
> > +};
> > +
> > +static const struct of_device_id tegra_emc_of_match[] =3D {
> > +     { .compatible =3D "nvidia,tegra114-emc" },
> > +     {}
> > +};
> > +MODULE_DEVICE_TABLE(of, tegra_emc_of_match);
> > +
> > +static struct platform_driver tegra_emc_driver =3D {
> > +     .probe =3D tegra_emc_probe,
> > +     .driver =3D {
> > +             .name =3D "tegra114-emc",
> > +             .of_match_table =3D tegra_emc_of_match,
> > +             .suppress_bind_attrs =3D true,
> > +             .sync_state =3D icc_sync_state,
> > +     },
> > +};
> > +module_platform_driver(tegra_emc_driver);
> > +
> > +MODULE_AUTHOR("Svyatoslav Ryhel <clamor95@gmail.com>");
> > +MODULE_DESCRIPTION("NVIDIA Tegra114 EMC driver");
> > +MODULE_LICENSE("GPL");
>
>
> Best regards,
> Krzysztof

