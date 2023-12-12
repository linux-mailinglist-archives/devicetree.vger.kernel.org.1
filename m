Return-Path: <devicetree+bounces-24117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B408980E11F
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 02:56:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 60D5A1F21B71
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 01:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B580EDC;
	Tue, 12 Dec 2023 01:55:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00331D1;
	Mon, 11 Dec 2023 17:55:50 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 4495024E28F;
	Tue, 12 Dec 2023 09:55:49 +0800 (CST)
Received: from EXMBX072.cuchost.com (172.16.6.82) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 12 Dec
 2023 09:55:49 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX072.cuchost.com
 (172.16.6.82) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 12 Dec
 2023 09:55:45 +0800
From: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
To: <robh+dt@kernel.org>
CC: <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	<jisheng.teoh@starfivetech.com>, <krzysztof.kozlowski+dt@linaro.org>,
	<leyfoon.tan@starfivetech.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <mark.rutland@arm.com>,
	<peterz@infradead.org>, <tglx@linutronix.de>, <will@kernel.org>
Subject: Re: [PATCH v4 1/2] perf: starfive: Add StarLink PMU support
Date: Tue, 12 Dec 2023 09:55:38 +0800
Message-ID: <20231212015538.2310705-1-jisheng.teoh@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAL_Jsq+AMbwR64YwtugJ=WC-No0eBUejf3v4YbSB8h7x+uf3wA@mail.gmail.com>
References: <CAL_Jsq+AMbwR64YwtugJ=WC-No0eBUejf3v4YbSB8h7x+uf3wA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX072.cuchost.com
 (172.16.6.82)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

On Mon, 11 Dec 2023 11:54:25 -0600
Rob Herring <robh+dt@kernel.org> wrote:

> On Thu, Nov 16, 2023 at 10:24=E2=80=AFAM Ji Sheng Teoh
> <jisheng.teoh@starfivetech.com> wrote:
> >
> > This patch adds support for StarFive's StarLink PMU (Performance
> > Monitor Unit). StarLink PMU integrates one or more CPU cores with
> > a shared L3 memory system. The PMU supports overflow interrupt,
> > up to 16 programmable 64bit event counters, and an independent
> > 64bit cycle counter. StarLink PMU is accessed via MMIO.
> >
> > Example Perf stat output:
> > [root@user]# perf stat -a -e /starfive_starlink_pmu/cycles/ \
> >         -e /starfive_starlink_pmu/read_miss/ \
> >         -e /starfive_starlink_pmu/read_hit/ \
> >         -e /starfive_starlink_pmu/release_request/  \
> >         -e /starfive_starlink_pmu/write_hit/ \
> >         -e /starfive_starlink_pmu/write_miss/ \
> >         -e /starfive_starlink_pmu/write_request/ \
> >         -e /starfive_starlink_pmu/writeback/ \
> >         -e /starfive_starlink_pmu/read_request/ \
> >         -- openssl speed rsa2048
> > Doing 2048 bits private rsa's for 10s: 5 2048 bits private RSA's in
> > 2.84s
> > Doing 2048 bits public rsa's for 10s: 169 2048 bits public RSA's in
> > 2.42s
> > version: 3.0.11
> > built on: Tue Sep 19 13:02:31 2023 UTC
> > options: bn(64,64)
> > CPUINFO: N/A
> >                   sign    verify    sign/s verify/s
> > rsa 2048 bits 0.568000s 0.014320s      1.8     69.8
> > /////////
> >  Performance counter stats for 'system wide':
> >
> >          649991998      starfive_starlink_pmu/cycles/
> >            1009690      starfive_starlink_pmu/read_miss/
> >            1079750      starfive_starlink_pmu/read_hit/
> >            2089405      starfive_starlink_pmu/release_request/
> >                129      starfive_starlink_pmu/write_hit/
> >                 70      starfive_starlink_pmu/write_miss/
> >                194      starfive_starlink_pmu/write_request/
> >             150080      starfive_starlink_pmu/writeback/
> >            2089423      starfive_starlink_pmu/read_request/
> >
> >       27.062755678 seconds time elapsed
> >
> > Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> > ---
> >  drivers/perf/Kconfig                 |   9 +
> >  drivers/perf/Makefile                |   1 +
> >  drivers/perf/starfive_starlink_pmu.c | 654
> > +++++++++++++++++++++++++++ include/linux/cpuhotplug.h           |
> >  1 + 4 files changed, 665 insertions(+)
> >  create mode 100644 drivers/perf/starfive_starlink_pmu.c
> >
> > diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
> > index 273d67ecf6d2..41278742ef88 100644
> > --- a/drivers/perf/Kconfig
> > +++ b/drivers/perf/Kconfig
> > @@ -86,6 +86,15 @@ config RISCV_PMU_SBI
> >           full perf feature support i.e. counter overflow,
> > privilege mode filtering, counter configuration.
> >
> > +config STARFIVE_STARLINK_PMU
> > +       depends on ARCH_STARFIVE
> > +       bool "StarFive StarLink PMU"
> > +       help
> > +          Provide support for StarLink Performance Monitor Unit.
> > +          StarLink Performance Monitor Unit integrates one or more
> > cores with
> > +          an L3 memory system. The L3 cache events are added into
> > perf event
> > +          subsystem, allowing monitoring of various L3 cache perf
> > events. +
> >  config ARM_PMU_ACPI
> >         depends on ARM_PMU && ACPI
> >         def_bool y
> > diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
> > index 16b3ec4db916..e2153aee1e04 100644
> > --- a/drivers/perf/Makefile
> > +++ b/drivers/perf/Makefile
> > @@ -15,6 +15,7 @@ obj-$(CONFIG_QCOM_L3_PMU) +=3D qcom_l3_pmu.o
> >  obj-$(CONFIG_RISCV_PMU) +=3D riscv_pmu.o
> >  obj-$(CONFIG_RISCV_PMU_LEGACY) +=3D riscv_pmu_legacy.o
> >  obj-$(CONFIG_RISCV_PMU_SBI) +=3D riscv_pmu_sbi.o
> > +obj-$(CONFIG_STARFIVE_STARLINK_PMU) +=3D starfive_starlink_pmu.o
> >  obj-$(CONFIG_THUNDERX2_PMU) +=3D thunderx2_pmu.o
> >  obj-$(CONFIG_XGENE_PMU) +=3D xgene_pmu.o
> >  obj-$(CONFIG_ARM_SPE_PMU) +=3D arm_spe_pmu.o
> > diff --git a/drivers/perf/starfive_starlink_pmu.c
> > b/drivers/perf/starfive_starlink_pmu.c new file mode 100644
> > index 000000000000..272896ab1ade
> > --- /dev/null
> > +++ b/drivers/perf/starfive_starlink_pmu.c
> > @@ -0,0 +1,654 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * StarFive's StarLink PMU driver
> > + *
> > + * Copyright (C) 2023 StarFive Technology Co., Ltd.
> > + *
> > + * Author: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> > + *
> > + */
> > +
> > +#define STARLINK_PMU_PDEV_NAME "starfive_starlink_pmu"
> > +#define pr_fmt(fmt)    STARLINK_PMU_PDEV_NAME ": " fmt
> > +
> > +#include <linux/bitmap.h>
> > +#include <linux/cpu_pm.h>
> > +#include <linux/io.h>
> > +#include <linux/irq.h>
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/of_device.h> =20
>=20
> You probably don't need this header and the implicit includes it makes
> are dropped now in linux-next. Please check what you actually need and
> make them explicit.
>=20
> Rob

Thanks Rob, this has changed to '#include <linux/mod_devicetable.h>' in
v5 submitted recently.
https://lore.kernel.org/lkml/20231207142940.1794032-1-jisheng.teoh@starfi=
vetech.com/T/#Z2e.:..:20231207142940.1794032-2-jisheng.teoh::40starfivete=
ch.com:1drivers:perf:starfive_starlink_pmu.c


