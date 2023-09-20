Return-Path: <devicetree+bounces-1544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 342517A6FC9
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:12:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6422D1C208E5
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 00:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B90BC196;
	Wed, 20 Sep 2023 00:12:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A22193
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:12:13 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 841B59D
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 17:12:11 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2bfb12b24e5so100841831fa.0
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 17:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google; t=1695168730; x=1695773530; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1CviEhhoBlZKiA8T16gFI1fJMTl09yzCTO8KzCGSqRk=;
        b=hYWcC2IGPnNYvnqdaw67I8Vv39Vgo+M0I2LOUt9NM/Uxj/k4EYFtf4+pwnp9w7RqxS
         fGtuxenfZBJoR66WL+70p8rCJDOdWxtHZdsTmaXT/5WL3qnm4iu3JBrpLRBde88HXnh3
         kCMy5ntUhv1ATGGuHh9igu0rs4e9rKLctQLgo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695168730; x=1695773530;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1CviEhhoBlZKiA8T16gFI1fJMTl09yzCTO8KzCGSqRk=;
        b=WWYipUJR0rQ8x3Gm9FUSW0ifafvLf4nd3yOzmw5no/+2FLST9CtUApzEZJjY1tZqYJ
         Q5urBeVkU+SFi0ljN2xOE1frg2IkWUVAar60eQzxhcurF+78bk5q/4tMDTcJbDhUaIVa
         qZDlxakZo7uJlOaiw4rHHzdBjzEDzgYXzvUGSa+QDMXcVcnfEDpvXti3D25q0p5gDb7b
         5/Pw8ufTdT5nFvT7003mgy6xb17gtLA2GIFj/qh1CYdbWJjrJAIvU+UvQaHSWvfvfHN3
         7HxpaCIVJKi4Itor6pLwypjbptLpK16dYam8B7sZYuyrG2zScQilOcaOW3C4CSkSbfTP
         GKlQ==
X-Gm-Message-State: AOJu0YwmBUR84I4kmkGZq1Cjp0FlG0I8x+CDMwSKPuGNPPFDbG6omSuD
	P4hMUl6KFyCsepQoBV0HG2Lfe1MiESsK/NfvKUOn
X-Google-Smtp-Source: AGHT+IE8zP3BzZusNhL+aAwkiDwCmIGdHT4wX12zJCKO252ijdL/DxCfHuNz/3MG+5CSLu9l+w9+0x7JLX8hmpsYVXk=
X-Received: by 2002:a05:6512:3ca6:b0:501:c1d4:cf68 with SMTP id
 h38-20020a0565123ca600b00501c1d4cf68mr1309878lfv.15.1695168729533; Tue, 19
 Sep 2023 17:12:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912174928.528414-1-apatel@ventanamicro.com> <20230912174928.528414-2-apatel@ventanamicro.com>
In-Reply-To: <20230912174928.528414-2-apatel@ventanamicro.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Tue, 19 Sep 2023 17:11:58 -0700
Message-ID: <CAOnJCU+0iUR+ziwkPnEykoS+Ym8zkG-Afs_XyyCSD4fi8wjP6w@mail.gmail.com>
Subject: Re: [PATCH v8 01/16] RISC-V: Don't fail in riscv_of_parent_hartid()
 for disabled HARTs
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 12, 2023 at 10:50=E2=80=AFAM Anup Patel <apatel@ventanamicro.co=
m> wrote:
>
> The riscv_of_processor_hartid() used by riscv_of_parent_hartid() fails
> for HARTs disabled in the DT. This results in the following warning
> thrown by the RISC-V INTC driver for the E-core on SiFive boards:
>
> [    0.000000] riscv-intc: unable to find hart id for /cpus/cpu@0/interru=
pt-controller
>
> The riscv_of_parent_hartid() is only expected to read the hartid from
> the DT so we should directly call of_get_cpu_hwid() instead of calling
> riscv_of_processor_hartid().
>
> Fixes: ad635e723e17 ("riscv: cpu: Add 64bit hartid support on RV64")
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  arch/riscv/kernel/cpu.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> index c17dacb1141c..157ace8b262c 100644
> --- a/arch/riscv/kernel/cpu.c
> +++ b/arch/riscv/kernel/cpu.c
> @@ -125,13 +125,14 @@ int __init riscv_early_of_processor_hartid(struct d=
evice_node *node, unsigned lo
>   */
>  int riscv_of_parent_hartid(struct device_node *node, unsigned long *hart=
id)
>  {
> -       int rc;
> -
>         for (; node; node =3D node->parent) {
>                 if (of_device_is_compatible(node, "riscv")) {
> -                       rc =3D riscv_of_processor_hartid(node, hartid);
> -                       if (!rc)
> -                               return 0;
> +                       *hartid =3D (unsigned long)of_get_cpu_hwid(node, =
0);
> +                       if (*hartid =3D=3D ~0UL) {
> +                               pr_warn("Found CPU without hart ID\n");
> +                               return -ENODEV;
> +                       }
> +                       return 0;
>                 }
>         }
>
> --
> 2.34.1
>

LGTM.

Reviewed-by: Atish Patra <atishp@rivosinc.com>

--=20
Regards,
Atish

