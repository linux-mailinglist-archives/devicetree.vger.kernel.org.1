Return-Path: <devicetree+bounces-18647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B151C7F773E
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 16:07:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D55041C20A0B
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 15:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 547B62E631;
	Fri, 24 Nov 2023 15:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HHTPYCXa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AB09D72;
	Fri, 24 Nov 2023 07:07:08 -0800 (PST)
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-58d4e32ea2fso5432eaf.3;
        Fri, 24 Nov 2023 07:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700838428; x=1701443228; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9/dTev5nHvONcZhOqL01hgn/Q4opZ1thPfAJg2rBUFo=;
        b=HHTPYCXaxY962yr/HKFltzi4t0aS+dgZHjk4cdKQ3TBsuPKWdi/DoVaEXCs3wYcb8L
         EL0dCBtEKsDZ8n0EjhFFhnr9eytZ/3l6UMU6sJjNoKSckSCkPb/JezhYTzGHf2ZH9+7o
         D0tL61sEy9xfaGe6YKRHLUTTztZ1opuXn+NxcpuczHJM1wubqoJ9IpWCR+02RTqB/1m9
         O+a43AksOMLjH6ijHrkMkMpSK4OmbIPoR85LZb3OpghfNqKouqnHxiBYIQeRSX4sCp38
         G/S9VMP9p5UWDhOW24gzqPbw49/vdOM31atv2pkkxWndOsJ0SsQV8vM4FolDQLeR3F+2
         VU8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700838428; x=1701443228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9/dTev5nHvONcZhOqL01hgn/Q4opZ1thPfAJg2rBUFo=;
        b=FPBQPnMsjvexLDQXSah+Mwurxr3Z/qgeHf5aa4tz8C6ITjhzEB5PkmZfF8d3QM7Pqz
         yMViZ58fawGDB6zVOckybq/k0hZfkWqbJT8Qdl5mtMgA9vaAt4WGSB2fzgARp0wSc8hZ
         kPTplEDJgfgWeVSHMt+Q3I5u5WTz7QiM/4A0fZDw8/OZA3nZiBdwaxLrqMnYIDjI5M34
         Ygn/jYeU/4wNwR6GDT0c9p9aGjMDNeC8ks63rHuJmJiPOe6AQzZ+VaxUsZG52mJHDigE
         2Wa8VSRRsgYpjlggPXX9Kv5cVH5X2EzBxCRSchBCCUL1qT/9iOXkDKdQE5pIGrTZ81R2
         vIHg==
X-Gm-Message-State: AOJu0YyjsFqRANbsj6Gya7zQwY9QXr6f/5UFw1509kEgIQmYwRsijvMV
	BEaHeylzVC+zoYn9v9neZeear1lZNoCg5gp5JVE=
X-Google-Smtp-Source: AGHT+IHX4a1mFAHgj6zlYZqw6+PVp9C5SmPB9wJoYRmcX9dAcMGzzMzXgdrp6shAUIbgNyHCgSK8VqBzakNW9Y4zfMs=
X-Received: by 2002:a05:6358:7e47:b0:16d:e1d6:e822 with SMTP id
 p7-20020a0563587e4700b0016de1d6e822mr3552796rwm.4.1700838427639; Fri, 24 Nov
 2023 07:07:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231122121235.827122-1-peterlin@andestech.com> <20231122121235.827122-9-peterlin@andestech.com>
In-Reply-To: <20231122121235.827122-9-peterlin@andestech.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 24 Nov 2023 15:06:41 +0000
Message-ID: <CA+V-a8sdaNeCjZNpfGuxB1rZ9EXGFmepE4-2TKuk9RsBcpgvJg@mail.gmail.com>
Subject: Re: [PATCH v4 08/13] perf: RISC-V: Introduce Andes PMU for perf event sampling
To: Yu Chien Peter Lin <peterlin@andestech.com>
Cc: acme@kernel.org, adrian.hunter@intel.com, ajones@ventanamicro.com, 
	alexander.shishkin@linux.intel.com, andre.przywara@arm.com, 
	anup@brainfault.org, aou@eecs.berkeley.edu, atishp@atishpatra.org, 
	conor+dt@kernel.org, conor.dooley@microchip.com, conor@kernel.org, 
	devicetree@vger.kernel.org, dminus@andestech.com, evan@rivosinc.com, 
	geert+renesas@glider.be, guoren@kernel.org, heiko@sntech.de, 
	irogers@google.com, jernej.skrabec@gmail.com, jolsa@kernel.org, 
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-perf-users@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	locus84@andestech.com, magnus.damm@gmail.com, mark.rutland@arm.com, 
	mingo@redhat.com, n.shubin@yadro.com, namhyung@kernel.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, peterz@infradead.org, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, rdunlap@infradead.org, 
	robh+dt@kernel.org, samuel@sholland.org, sunilvl@ventanamicro.com, 
	tglx@linutronix.de, tim609@andestech.com, uwu@icenowy.me, wens@csie.org, 
	will@kernel.org, ycliang@andestech.com, inochiama@outlook.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 22, 2023 at 12:18=E2=80=AFPM Yu Chien Peter Lin
<peterlin@andestech.com> wrote:
>
> The Andes PMU extension provides the same mechanism as Sscofpmf,
> allowing us to reuse the SBI PMU driver to support event sampling
> and mode filtering.
>
> To make use of this custom PMU extension, "xandespmu" needs
> to be appended to the riscv,isa-extensions for each cpu node
> in device-tree, and enable CONFIG_ANDES_CUSTOM_PMU.
>
> Signed-off-by: Yu Chien Peter Lin <peterlin@andestech.com>
> Reviewed-by: Charles Ci-Jyun Wu <dminus@andestech.com>
> Reviewed-by: Leo Yu-Chi Liang <ycliang@andestech.com>
> Co-developed-by: Locus Wei-Han Chen <locus84@andestech.com>
> Signed-off-by: Locus Wei-Han Chen <locus84@andestech.com>
> ---
> Changes v1 -> v2:
>   - New patch
> Changes v2 -> v3:
>   - Reordered list in riscv_isa_ext[]
>   - Removed mvendorid check in pmu_sbi_setup_irqs()
> Changes v3 -> v4:
>   - No change
> ---
>  arch/riscv/include/asm/hwcap.h |  1 +
>  arch/riscv/kernel/cpufeature.c |  1 +
>  drivers/perf/Kconfig           | 14 ++++++++++++++
>  drivers/perf/riscv_pmu_sbi.c   | 30 +++++++++++++++++++++++++-----
>  4 files changed, 41 insertions(+), 5 deletions(-)
>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Tested-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Cheers,
Prabhakar

> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwca=
p.h
> index c85ee34c78d9..cbfbc3505d2c 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -58,6 +58,7 @@
>  #define RISCV_ISA_EXT_SMSTATEEN                43
>  #define RISCV_ISA_EXT_ZICOND           44
>  #define RISCV_ISA_EXT_XTHEADPMU                45
> +#define RISCV_ISA_EXT_XANDESPMU                46
>
>  #define RISCV_ISA_EXT_MAX              64
>
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeatur=
e.c
> index e606f588d366..42fda134c4a3 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -185,6 +185,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] =3D {
>         __RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),
>         __RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
>         __RISCV_ISA_EXT_DATA(svpbmt, RISCV_ISA_EXT_SVPBMT),
> +       __RISCV_ISA_EXT_DATA(xandespmu, RISCV_ISA_EXT_XANDESPMU),
>         __RISCV_ISA_EXT_DATA(xtheadpmu, RISCV_ISA_EXT_XTHEADPMU),
>  };
>
> diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
> index c71b6f16bdfa..c1a490829d15 100644
> --- a/drivers/perf/Kconfig
> +++ b/drivers/perf/Kconfig
> @@ -86,6 +86,20 @@ config RISCV_PMU_SBI
>           full perf feature support i.e. counter overflow, privilege mode
>           filtering, counter configuration.
>
> +config ANDES_CUSTOM_PMU
> +       bool "Andes custom PMU support"
> +       depends on RISCV_ALTERNATIVE && RISCV_PMU_SBI
> +       default y
> +       help
> +         The Andes cores implement a PMU overflow extension very
> +         similar to the core SSCOFPMF extension.
> +
> +         This will patch the overflow/pending CSR and handle the
> +         non-standard behaviour via the regular SBI PMU driver and
> +         interface.
> +
> +         If you don't know what to do here, say "Y".
> +
>  config THEAD_CUSTOM_PMU
>         bool "T-Head custom PMU support"
>         depends on RISCV_ALTERNATIVE && RISCV_PMU_SBI
> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
> index 31ca79846399..1e0c709efbfc 100644
> --- a/drivers/perf/riscv_pmu_sbi.c
> +++ b/drivers/perf/riscv_pmu_sbi.c
> @@ -19,6 +19,7 @@
>  #include <linux/of.h>
>  #include <linux/cpu_pm.h>
>  #include <linux/sched/clock.h>
> +#include <linux/soc/andes/irq.h>
>
>  #include <asm/sbi.h>
>  #include <asm/cpufeature.h>
> @@ -27,14 +28,26 @@
>  #define THEAD_C9XX_CSR_SCOUNTEROF      0x5c5
>
>  #define ALT_SBI_PMU_OVERFLOW(__ovl)                                    \
> -asm volatile(ALTERNATIVE(                                              \
> +asm volatile(ALTERNATIVE_2(                                            \
>         "csrr %0, " __stringify(CSR_SSCOUNTOVF),                        \
>         "csrr %0, " __stringify(THEAD_C9XX_CSR_SCOUNTEROF),             \
>                 0, RISCV_ISA_EXT_XTHEADPMU,                             \
> -               CONFIG_THEAD_CUSTOM_PMU)                                \
> +               CONFIG_THEAD_CUSTOM_PMU,                                \
> +       "csrr %0, " __stringify(ANDES_CSR_SCOUNTEROF),                  \
> +               0, RISCV_ISA_EXT_XANDESPMU,             \
> +               CONFIG_ANDES_CUSTOM_PMU)                                \
>         : "=3Dr" (__ovl) :                                               =
 \
>         : "memory")
>
> +#define ALT_SBI_PMU_OVF_CLEAR_PENDING(__irq_mask)                      \
> +asm volatile(ALTERNATIVE(                                              \
> +       "csrc " __stringify(CSR_IP) ", %0\n\t",                         \
> +       "csrc " __stringify(ANDES_CSR_SLIP) ", %0\n\t",                 \
> +               0, RISCV_ISA_EXT_XANDESPMU,                             \
> +               CONFIG_ANDES_CUSTOM_PMU)                                \
> +       : : "r"(__irq_mask)                                             \
> +       : "memory")
> +
>  #define SYSCTL_NO_USER_ACCESS  0
>  #define SYSCTL_USER_ACCESS     1
>  #define SYSCTL_LEGACY          2
> @@ -72,6 +85,7 @@ static int sysctl_perf_user_access __read_mostly =3D SY=
SCTL_USER_ACCESS;
>  static union sbi_pmu_ctr_info *pmu_ctr_list;
>  static bool riscv_pmu_use_irq;
>  static unsigned int riscv_pmu_irq_num;
> +static unsigned int riscv_pmu_irq_mask;
>  static unsigned int riscv_pmu_irq;
>
>  /* Cache the available counters in a bitmask */
> @@ -705,7 +719,7 @@ static irqreturn_t pmu_sbi_ovf_handler(int irq, void =
*dev)
>
>         event =3D cpu_hw_evt->events[fidx];
>         if (!event) {
> -               csr_clear(CSR_SIP, BIT(riscv_pmu_irq_num));
> +               ALT_SBI_PMU_OVF_CLEAR_PENDING(riscv_pmu_irq_mask);
>                 return IRQ_NONE;
>         }
>
> @@ -719,7 +733,7 @@ static irqreturn_t pmu_sbi_ovf_handler(int irq, void =
*dev)
>          * Overflow interrupt pending bit should only be cleared after st=
opping
>          * all the counters to avoid any race condition.
>          */
> -       csr_clear(CSR_SIP, BIT(riscv_pmu_irq_num));
> +       ALT_SBI_PMU_OVF_CLEAR_PENDING(riscv_pmu_irq_mask);
>
>         /* No overflow bit is set */
>         if (!overflow)
> @@ -791,7 +805,7 @@ static int pmu_sbi_starting_cpu(unsigned int cpu, str=
uct hlist_node *node)
>
>         if (riscv_pmu_use_irq) {
>                 cpu_hw_evt->irq =3D riscv_pmu_irq;
> -               csr_clear(CSR_IP, BIT(riscv_pmu_irq_num));
> +               ALT_SBI_PMU_OVF_CLEAR_PENDING(riscv_pmu_irq_mask);
>                 enable_percpu_irq(riscv_pmu_irq, IRQ_TYPE_NONE);
>         }
>
> @@ -823,8 +837,14 @@ static int pmu_sbi_setup_irqs(struct riscv_pmu *pmu,=
 struct platform_device *pde
>                    IS_ENABLED(CONFIG_THEAD_CUSTOM_PMU)) {
>                 riscv_pmu_irq_num =3D THEAD_C9XX_RV_IRQ_PMU;
>                 riscv_pmu_use_irq =3D true;
> +       } else if (riscv_isa_extension_available(NULL, XANDESPMU) &&
> +                  IS_ENABLED(CONFIG_ANDES_CUSTOM_PMU)) {
> +               riscv_pmu_irq_num =3D ANDES_SLI_CAUSE_BASE + ANDES_RV_IRQ=
_PMU;
> +               riscv_pmu_use_irq =3D true;
>         }
>
> +       riscv_pmu_irq_mask =3D BIT(riscv_pmu_irq_num % BITS_PER_LONG);
> +
>         if (!riscv_pmu_use_irq)
>                 return -EOPNOTSUPP;
>
> --
> 2.34.1
>
>

