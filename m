Return-Path: <devicetree+bounces-1545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF54B7A6FD0
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:19:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1D941C209A4
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 00:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB16B19A;
	Wed, 20 Sep 2023 00:19:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0E1193
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:19:49 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D062AF
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 17:19:47 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-502b0d23f28so10220752e87.2
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 17:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google; t=1695169185; x=1695773985; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kJ4mXuVIJcPrYgZpolnkEKTjROnXJTN+OmYwBkYq8uA=;
        b=tTxvCuMSTx5yjh0lQS6OdiJ0VJIPRLB2KsEZAHUbA25R35dWi2fsSzoDmy1T9DfeQV
         28pEHJPz9dX2XeHoHZ4eDDDdYRfmnSfv5996rA90CYjL6q61KvgCjPcjnBTpp4gow64f
         yhHLJVNO4RACUJFZGIAims2lnU4J/pgr44/Ck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695169185; x=1695773985;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kJ4mXuVIJcPrYgZpolnkEKTjROnXJTN+OmYwBkYq8uA=;
        b=NZCO1frsKl23x6tFj1KPI61Q3GwWskrL90OevuH2tVvDtGXlhlYho/gVN4EWUQ1FR0
         XUNghZbB+so0Jqjk4lhDRb8XGzwSgEDXrvkKauZFPGTFb4H2tkLBXTL0+nPbz/rj9OI0
         5QLS/DXDm7X+NXVaDVxgfPq4BcImFQhrLB7+Y8Bjr9exUhkaG83VGlTySbYOpaDHlfS8
         Gfc1EgzaXEYp5aNSwRO2dOiwE/PFhMvkgP2PVeRdNLfj+MqrqexB+u94E53nUuP3fQRe
         ZKV/bsRoWr/j49/yoXmngCHSV4rKaf2gO5rBtn+sxiAyKBiWH6/xhvHiN7P6sBY95/g9
         YEVw==
X-Gm-Message-State: AOJu0YwaFo3DFEKls5eJlbU6EjddZmmn9k0XXWc0bHShGAHEqfXfB44p
	G01kTtovBukBvmbepURRcDJOtXJz2j7GgmPI0sJU
X-Google-Smtp-Source: AGHT+IEpUPTF3j7A1L7I2qDVT0o7NVOf4rvfF+ax99OrxxyusJ79xBsaXVhrYj5sQlBYb0CBvAjXQzBPk8dwZHINET8=
X-Received: by 2002:a19:7716:0:b0:503:1875:5ae5 with SMTP id
 s22-20020a197716000000b0050318755ae5mr840402lfc.38.1695169185184; Tue, 19 Sep
 2023 17:19:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912174928.528414-1-apatel@ventanamicro.com> <20230912174928.528414-3-apatel@ventanamicro.com>
In-Reply-To: <20230912174928.528414-3-apatel@ventanamicro.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Tue, 19 Sep 2023 17:19:32 -0700
Message-ID: <CAOnJCUK3M4AfLeg1J5AvRt_P413kU-EPNzt1sQ8B9iubOsS_yQ@mail.gmail.com>
Subject: Re: [PATCH v8 02/16] RISC-V: Add riscv_get_intc_hartid() function
To: Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 12, 2023 at 10:50=E2=80=AFAM Anup Patel <apatel@ventanamicro.co=
m> wrote:
>
> We add a common riscv_get_intc_hartid() which help device drivers to
> get hartid of the HART associated with a INTC (i.e. local interrupt
> controller) fwnode. This new function is more generic compared to
> the existing riscv_of_parent_hartid() function hence we also replace
> use of riscv_of_parent_hartid() with riscv_get_intc_hartid().
>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  arch/riscv/include/asm/processor.h |  4 +++-
>  arch/riscv/kernel/cpu.c            | 13 ++++++++++++-
>  drivers/irqchip/irq-riscv-intc.c   |  2 +-
>  drivers/irqchip/irq-sifive-plic.c  |  3 ++-
>  4 files changed, 18 insertions(+), 4 deletions(-)
>
> diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/=
processor.h
> index 3e23e1786d05..3ce64b3bea4e 100644
> --- a/arch/riscv/include/asm/processor.h
> +++ b/arch/riscv/include/asm/processor.h
> @@ -119,7 +119,9 @@ static inline void wait_for_interrupt(void)
>  struct device_node;
>  int riscv_of_processor_hartid(struct device_node *node, unsigned long *h=
artid);
>  int riscv_early_of_processor_hartid(struct device_node *node, unsigned l=
ong *hartid);
> -int riscv_of_parent_hartid(struct device_node *node, unsigned long *hart=
id);
> +
> +struct fwnode_handle;
> +int riscv_get_intc_hartid(struct fwnode_handle *node, unsigned long *har=
tid);
>
>  extern void riscv_fill_hwcap(void);
>  extern int arch_dup_task_struct(struct task_struct *dst, struct task_str=
uct *src);
> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> index 157ace8b262c..ee583eac3c5b 100644
> --- a/arch/riscv/kernel/cpu.c
> +++ b/arch/riscv/kernel/cpu.c
> @@ -123,7 +123,8 @@ int __init riscv_early_of_processor_hartid(struct dev=
ice_node *node, unsigned lo
>   * To achieve this, we walk up the DT tree until we find an active
>   * RISC-V core (HART) node and extract the cpuid from it.
>   */
> -int riscv_of_parent_hartid(struct device_node *node, unsigned long *hart=
id)
> +static int riscv_of_parent_hartid(struct device_node *node,
> +                                 unsigned long *hartid)
>  {
>         for (; node; node =3D node->parent) {
>                 if (of_device_is_compatible(node, "riscv")) {
> @@ -139,6 +140,16 @@ int riscv_of_parent_hartid(struct device_node *node,=
 unsigned long *hartid)
>         return -1;
>  }
>
> +/* Find hart ID of the INTC fwnode. */
> +int riscv_get_intc_hartid(struct fwnode_handle *node, unsigned long *har=
tid)
> +{
> +       /* Extend this function ACPI in the future. */
> +       if (!is_of_node(node))
> +               return -ENODEV;
> +
> +       return riscv_of_parent_hartid(to_of_node(node), hartid);
> +}
> +
>  DEFINE_PER_CPU(struct riscv_cpuinfo, riscv_cpuinfo);
>
>  unsigned long riscv_cached_mvendorid(unsigned int cpu_id)
> diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv=
-intc.c
> index 4adeee1bc391..65f4a2afb381 100644
> --- a/drivers/irqchip/irq-riscv-intc.c
> +++ b/drivers/irqchip/irq-riscv-intc.c
> @@ -143,7 +143,7 @@ static int __init riscv_intc_init(struct device_node =
*node,
>         int rc;
>         unsigned long hartid;
>
> -       rc =3D riscv_of_parent_hartid(node, &hartid);
> +       rc =3D riscv_get_intc_hartid(of_fwnode_handle(node), &hartid);
>         if (rc < 0) {
>                 pr_warn("unable to find hart id for %pOF\n", node);
>                 return 0;
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifi=
ve-plic.c
> index e1484905b7bd..56b0544b1f27 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -477,7 +477,8 @@ static int __init __plic_init(struct device_node *nod=
e,
>                         continue;
>                 }
>
> -               error =3D riscv_of_parent_hartid(parent.np, &hartid);
> +               error =3D riscv_get_intc_hartid(of_fwnode_handle(parent.n=
p),
> +                                             &hartid);
>                 if (error < 0) {
>                         pr_warn("failed to parse hart ID for context %d.\=
n", i);
>                         continue;
> --
> 2.34.1
>


Reviewed-by: Atish Patra <atishp@rivosinc.com>
--=20
Regards,
Atish

