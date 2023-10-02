Return-Path: <devicetree+bounces-5136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A08BB7B562A
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:18:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 53050281881
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 15:18:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AAB81BDC0;
	Mon,  2 Oct 2023 15:18:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B80E1B271
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 15:18:27 +0000 (UTC)
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6FDFAC
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 08:18:25 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-277550774e5so9061341a91.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 08:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1696259905; x=1696864705; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xw7QdnIT6pMfMgjKXoJDij3f+XvSgPQK38vQOQ+QTs8=;
        b=klPhw9Bm8vgVDO0dWydxfcKwpHtRbEtdcRCfn8x3FWlrl3sbC+MdEkaQMKd6aebPyK
         FQBs1fmvKiKrWUKmEAc/X9kkNO9cfq5a2IDy2NcgsXiAqwA1CNYzGkokkQB5xd9h5ESR
         DA5pgj+AM6rgb+t4dbtWyh7gFKXYKCHqjvy+xFGi5UZnU9XoECWmuUuxtNDi/ntSNfJD
         JqbMPQvq3ZvlQL3lUgyUZzx9psED8LJnGKTg3p2KOnuXLETVkiBDsgJDnLuaOEfLgk9o
         R6Q+EVXlaoibexbOKsrz1bH1nKas4mJ1UBgZmU378U4Rp41MaE0xWPSA7SiP+k3+UfDB
         C7Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696259905; x=1696864705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xw7QdnIT6pMfMgjKXoJDij3f+XvSgPQK38vQOQ+QTs8=;
        b=EpfQe41UAak53pCntqSGaET7diYOImQwjpho/SLd2mPoVgW3Zd8EURZDjZb6hCaPTj
         X89CkCtwP4B1CuFi2C+zN3uoIYCGoDBd3V6ObpcpSXI4LqhD4Dv8uGZXYmfua82/1PvW
         592NVbzIBL658lslBHjAqfOHsxQ26e+jHrPkocodbapyloRglIY9aURDCRnBEaeUFD/C
         EaA3gI2cu6u6rMPOkIVTdLlruVDgX9cfD8Al34JED3Kqe7zvK6BxJgRuwDucdoyYYeYi
         XSoFZVt87+3/t6hl/BxOxYurYiuU8mXi6uQ/bvAOkHxTC4ZWlnqnWfpXV5J8/hp1B2J4
         QiDw==
X-Gm-Message-State: AOJu0Yw6fOgwzBC4o9CRhIZEEjvBncHsnSuRNHHGkn4V45aLSBtL/dtG
	3wqHIYd4HWjh4/5+Mwzo1eM4tLK6JIAzSlvWc+uH8Q==
X-Google-Smtp-Source: AGHT+IExQzqmMZpcgxUYWYYZRO3DyThsJv/MhEoZGi6g+28XkYKxTqNm3icOqRRCLuljZY21JBxxTIp2JmHSnkkcNF0=
X-Received: by 2002:a17:90a:5ac6:b0:268:93d:b936 with SMTP id
 n64-20020a17090a5ac600b00268093db936mr8611041pji.18.1696259904904; Mon, 02
 Oct 2023 08:18:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230928061207.1841513-1-apatel@ventanamicro.com>
 <20230928061207.1841513-6-apatel@ventanamicro.com> <87bkdlma6j.wl-maz@kernel.org>
In-Reply-To: <87bkdlma6j.wl-maz@kernel.org>
From: Anup Patel <apatel@ventanamicro.com>
Date: Mon, 2 Oct 2023 20:48:12 +0530
Message-ID: <CAK9=C2VfsSMaawuTRcrbSFGE9yYBDO1Q0oBksD-NKmrz8WynMw@mail.gmail.com>
Subject: Re: [PATCH v9 05/15] irqchip/sifive-plic: Convert PLIC driver into a
 platform driver
To: Marc Zyngier <maz@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Atish Patra <atishp@atishpatra.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Saravana Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 6:02=E2=80=AFPM Marc Zyngier <maz@kernel.org> wrote=
:
>
> On Thu, 28 Sep 2023 07:11:57 +0100,
> Anup Patel <apatel@ventanamicro.com> wrote:
> >
> > The PLIC driver does not require very early initialization so let
> > us convert it into a platform driver.
>   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> >
> > As part of the conversion, the PLIC probing undergoes the following
> > changes:
> > 1. Use dev_info(), dev_err() and dev_warn() instead of pr_info(),
> >    pr_err() and pr_warn()
> > 2. Use devm_xyz() APIs wherever applicable
> > 3. PLIC is now probed after CPUs are brought-up so we have to
> >    setup cpuhp state after context handler of all online CPUs
> >    are initialized otherwise we see crash on multi-socket systems
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 242 +++++++++++++++++++-----------
> >  1 file changed, 154 insertions(+), 88 deletions(-)
> >
>
> [...]
>
> > +core_initcall(plic_init);
>
> Or not. There are only two choices: either you absolutely require
> early init, and you stick with the current situation, or you don't,
> and you can rely on dependencies.
>
> I'm not prepared to have a third option.

This is not required for DT based platform driver probing so
I will use builtin_platform_driver() over here and in APLIC
as well as IMSIC platform drivers.

Regards,
Anup

>
>         M.
>
> --
> Without deviation from the norm, progress is not possible.

