Return-Path: <devicetree+bounces-24014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 870E680D4B9
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 18:54:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15763B214DE
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAE984EB3E;
	Mon, 11 Dec 2023 17:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plAAiuvh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED1F495C0
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 17:54:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 320BEC433CB;
	Mon, 11 Dec 2023 17:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702317279;
	bh=VhOZevBYxgpOhWMJVI4ylnjAowG5TlTM6iqFjlI60UU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=plAAiuvhB8/I/HPxx72m1izcox9S8pBBt35UwHguqzoFwLI8lT6AWPXQtjM3YcQ7e
	 IQ6M798PQHv8fJtJ1S8MQHLSR7eqgOnXATQJkABGwXZC9M4TMXyLdWCheSQ68tLQ6t
	 5G6cShOUObjmAXp+XyiJHSli+XrHhsHo9Vnk41+OslPs39tlRrHL8qI0Ice7X5eFhO
	 nLlao7XQrvHBpGMlMh9NYa4lxLNi9kizl5dY9ljwkBqmiXYuqDRjwizQfimr/5sUrA
	 YsgDBNJXVwJB8H10O91/mMutyhVKiVvBZBltG3Qc9CDRrwi5RRxwqj1FbzZgsgyUac
	 YEzXT3JzDcT1g==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ca0715f0faso65886241fa.0;
        Mon, 11 Dec 2023 09:54:39 -0800 (PST)
X-Gm-Message-State: AOJu0Yyl9yoeUlXOU3iiFrv7jMvYxmeANyN7eQKlyjO71yvg+CR8uPy+
	/e2DYvJuGCnkyQ0ua093GqpWFnQwVNb0kNKGBg==
X-Google-Smtp-Source: AGHT+IGDP8YJSUf3mRcHf/dTgho4Et9I/62IVaAx+3E12Y8YlqdA24xaDa0UutL0Xy9xotdWR0raSnVdzI5CVc2b2us=
X-Received: by 2002:a05:6512:32ac:b0:50b:e4a7:948 with SMTP id
 q12-20020a05651232ac00b0050be4a70948mr2241742lfe.126.1702317277404; Mon, 11
 Dec 2023 09:54:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231116162330.1144983-1-jisheng.teoh@starfivetech.com> <20231116162330.1144983-2-jisheng.teoh@starfivetech.com>
In-Reply-To: <20231116162330.1144983-2-jisheng.teoh@starfivetech.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 11 Dec 2023 11:54:25 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+AMbwR64YwtugJ=WC-No0eBUejf3v4YbSB8h7x+uf3wA@mail.gmail.com>
Message-ID: <CAL_Jsq+AMbwR64YwtugJ=WC-No0eBUejf3v4YbSB8h7x+uf3wA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] perf: starfive: Add StarLink PMU support
To: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
Cc: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, 
	Ley Foon Tan <leyfoon.tan@starfivetech.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 16, 2023 at 10:24=E2=80=AFAM Ji Sheng Teoh
<jisheng.teoh@starfivetech.com> wrote:
>
> This patch adds support for StarFive's StarLink PMU (Performance
> Monitor Unit). StarLink PMU integrates one or more CPU cores with
> a shared L3 memory system. The PMU supports overflow interrupt,
> up to 16 programmable 64bit event counters, and an independent
> 64bit cycle counter. StarLink PMU is accessed via MMIO.
>
> Example Perf stat output:
> [root@user]# perf stat -a -e /starfive_starlink_pmu/cycles/ \
>         -e /starfive_starlink_pmu/read_miss/ \
>         -e /starfive_starlink_pmu/read_hit/ \
>         -e /starfive_starlink_pmu/release_request/  \
>         -e /starfive_starlink_pmu/write_hit/ \
>         -e /starfive_starlink_pmu/write_miss/ \
>         -e /starfive_starlink_pmu/write_request/ \
>         -e /starfive_starlink_pmu/writeback/ \
>         -e /starfive_starlink_pmu/read_request/ \
>         -- openssl speed rsa2048
> Doing 2048 bits private rsa's for 10s: 5 2048 bits private RSA's in
> 2.84s
> Doing 2048 bits public rsa's for 10s: 169 2048 bits public RSA's in
> 2.42s
> version: 3.0.11
> built on: Tue Sep 19 13:02:31 2023 UTC
> options: bn(64,64)
> CPUINFO: N/A
>                   sign    verify    sign/s verify/s
> rsa 2048 bits 0.568000s 0.014320s      1.8     69.8
> /////////
>  Performance counter stats for 'system wide':
>
>          649991998      starfive_starlink_pmu/cycles/
>            1009690      starfive_starlink_pmu/read_miss/
>            1079750      starfive_starlink_pmu/read_hit/
>            2089405      starfive_starlink_pmu/release_request/
>                129      starfive_starlink_pmu/write_hit/
>                 70      starfive_starlink_pmu/write_miss/
>                194      starfive_starlink_pmu/write_request/
>             150080      starfive_starlink_pmu/writeback/
>            2089423      starfive_starlink_pmu/read_request/
>
>       27.062755678 seconds time elapsed
>
> Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> ---
>  drivers/perf/Kconfig                 |   9 +
>  drivers/perf/Makefile                |   1 +
>  drivers/perf/starfive_starlink_pmu.c | 654 +++++++++++++++++++++++++++
>  include/linux/cpuhotplug.h           |   1 +
>  4 files changed, 665 insertions(+)
>  create mode 100644 drivers/perf/starfive_starlink_pmu.c
>
> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
> index 273d67ecf6d2..41278742ef88 100644
> --- a/drivers/perf/Kconfig
> +++ b/drivers/perf/Kconfig
> @@ -86,6 +86,15 @@ config RISCV_PMU_SBI
>           full perf feature support i.e. counter overflow, privilege mode
>           filtering, counter configuration.
>
> +config STARFIVE_STARLINK_PMU
> +       depends on ARCH_STARFIVE
> +       bool "StarFive StarLink PMU"
> +       help
> +          Provide support for StarLink Performance Monitor Unit.
> +          StarLink Performance Monitor Unit integrates one or more cores=
 with
> +          an L3 memory system. The L3 cache events are added into perf e=
vent
> +          subsystem, allowing monitoring of various L3 cache perf events=
.
> +
>  config ARM_PMU_ACPI
>         depends on ARM_PMU && ACPI
>         def_bool y
> diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
> index 16b3ec4db916..e2153aee1e04 100644
> --- a/drivers/perf/Makefile
> +++ b/drivers/perf/Makefile
> @@ -15,6 +15,7 @@ obj-$(CONFIG_QCOM_L3_PMU) +=3D qcom_l3_pmu.o
>  obj-$(CONFIG_RISCV_PMU) +=3D riscv_pmu.o
>  obj-$(CONFIG_RISCV_PMU_LEGACY) +=3D riscv_pmu_legacy.o
>  obj-$(CONFIG_RISCV_PMU_SBI) +=3D riscv_pmu_sbi.o
> +obj-$(CONFIG_STARFIVE_STARLINK_PMU) +=3D starfive_starlink_pmu.o
>  obj-$(CONFIG_THUNDERX2_PMU) +=3D thunderx2_pmu.o
>  obj-$(CONFIG_XGENE_PMU) +=3D xgene_pmu.o
>  obj-$(CONFIG_ARM_SPE_PMU) +=3D arm_spe_pmu.o
> diff --git a/drivers/perf/starfive_starlink_pmu.c b/drivers/perf/starfive=
_starlink_pmu.c
> new file mode 100644
> index 000000000000..272896ab1ade
> --- /dev/null
> +++ b/drivers/perf/starfive_starlink_pmu.c
> @@ -0,0 +1,654 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * StarFive's StarLink PMU driver
> + *
> + * Copyright (C) 2023 StarFive Technology Co., Ltd.
> + *
> + * Author: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> + *
> + */
> +
> +#define STARLINK_PMU_PDEV_NAME "starfive_starlink_pmu"
> +#define pr_fmt(fmt)    STARLINK_PMU_PDEV_NAME ": " fmt
> +
> +#include <linux/bitmap.h>
> +#include <linux/cpu_pm.h>
> +#include <linux/io.h>
> +#include <linux/irq.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>

You probably don't need this header and the implicit includes it makes
are dropped now in linux-next. Please check what you actually need and
make them explicit.

Rob

