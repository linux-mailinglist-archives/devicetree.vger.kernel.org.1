Return-Path: <devicetree+bounces-43997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E0885C17F
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:33:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A96DB28550B
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C727640E;
	Tue, 20 Feb 2024 16:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="WwmlLA9j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCB676C64
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708446827; cv=none; b=DmR2SOGKKKq4wneOcEF/SNb+TsEXBRLiCG8EZHCYtengdSk9FhVZ43oPyF/W9tG462soGbdSBrNejtfaCchlY5J8jDea010RlqWZn8qUmVw23nKaI6/lakO6wdpG+cnzuYuazNb9oUNdznuxzz46vKKzIsHTmZ52HdFaqZ+ywHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708446827; c=relaxed/simple;
	bh=0st9GrLo9qneJ1X2cozJb/8z7udFJ6bJ5TuG75oNHDA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l3My8TjEqN6p/IGKuRCDqZBSpMO/tD7Jh/DxjTyS0gRzjwtsu8Ac1aD767hP7wYYsyn8LJWzsxhn7mLGQxEz247N6uvLAc3YI/06XN4NApVI2t8poUu6Y2DhOFr3ZhSY8sCqfoFJdRzEj0zztu78X74CYghDTjrbCso5VdTsGvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=WwmlLA9j; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d09cf00214so62173381fa.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 08:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708446823; x=1709051623; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p25ro1Z6UmFNJOpkPhd7azDHdv/Ire7OveuzPMEDrco=;
        b=WwmlLA9jZb5v0d5c4Vmtnl8Qkl03eeUEDz9LJfmEMLoUKMMmsKNA18ERuFuPpabzA3
         sAfyNxCa/MNnaF/63fq9LwLelH6SmFLlbaHdWCWGvrHQr8/tBiN9WhY0D99d7aqL9Fzg
         WMVe89PUv0k2RQe6kLm8+ENXfArymm6xsg7njj1Osuavn7wiP3ZOCJY3RtnEudpFG+UK
         N+56snCkV0g6Eibs3060vnoM2LuGTzU5XaDRIOBcCGonL3RdfqrxzcjR8kcG7tMqzx5i
         7Hqm7RZRgS524kU82/LlO1onLkDMocmHu7NE0sC5+2ONpQ6DOSCkyjhvgH9ysWzHX1Zz
         Kk7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708446823; x=1709051623;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p25ro1Z6UmFNJOpkPhd7azDHdv/Ire7OveuzPMEDrco=;
        b=d67zpVmJmI1w/y38DxcNXG+R5Lku37YEcwX/2f18dVmiG/Hat6N4/CZfpXG27CC1vq
         +vSPmeAoD28A+VARHic1EDvddN6HkaA59QdmO1IhmMXOtbCnKVR7y4nKEne6Yf0o1UQr
         TDnqX0SgOQrCqHH60Rtk3h685rDO60Rvyv/Ejrv/MybwEr1K9CgZrNN7580FTWNfGfMR
         cPt1zXQi68NeJcgAHZPdBPs/hFDpx/0PSV5cmxK+t1tEhkTCFI684ajTkRRwnDxa8sXe
         CJSPtTlcZzRpe9q1503mI5wzoTqkxEly6y8ZwtX3+KXZqEL4n7aHh9Mg6qhsNEOyGA8Y
         WsvA==
X-Forwarded-Encrypted: i=1; AJvYcCWoPf5gfE9+Nn91GOEkIi17kF6BNSJg2el9cv28FM7Q+IfvvbHliRxa5F9BDYPZJnzDdm1UNjlnpmo34l2W4E4e8UGa9QSYuX6bpQ==
X-Gm-Message-State: AOJu0Yz9CIezwokNwJz8dYJwg4B1T/LBdP5Vm9pJZieCFmH9lyAYq5Tp
	Ya1kC7J6j8aDMLBDJY9L6cIPSj0E9z4YnCjAUPpbc86EbxhGy8yyZq+TrcEhJmU/xoosibaemz5
	H6HOMzYHcs2Eeaj/9eTWiW02yQFybAeTdR8Wh8Q==
X-Google-Smtp-Source: AGHT+IFEg/QXz9A3XAObYPJXzmoOxIf/e+fzIofGOJqhDrldapT9nC1GUC4P6dVl9adY5fSs8xH8AWe5ez3rD0APoiA=
X-Received: by 2002:a05:6512:3d91:b0:512:9d11:ae00 with SMTP id
 k17-20020a0565123d9100b005129d11ae00mr9428461lfv.52.1708446822973; Tue, 20
 Feb 2024 08:33:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220060718.823229-1-apatel@ventanamicro.com>
 <20240220060718.823229-7-apatel@ventanamicro.com> <87a5nvi8dv.ffs@tglx>
In-Reply-To: <87a5nvi8dv.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 20 Feb 2024 22:03:31 +0530
Message-ID: <CAK9=C2XQVnoEEzjwnb7ZSM90vbdTU=9yteAYXOhbkSoDcEGnKg@mail.gmail.com>
Subject: Re: [PATCH v13 06/13] irqchip: Add RISC-V incoming MSI controller
 early driver
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 6:45=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Tue, Feb 20 2024 at 11:37, Anup Patel wrote:
> > The RISC-V advanced interrupt architecture (AIA) specification
> > defines a new MSI controller called incoming message signalled
> > interrupt controller (IMSIC) which manages MSI on per-HART (or
> > per-CPU) basis. It also supports IPIs as software injected MSIs.
> > (For more details refer https://github.com/riscv/riscv-aia)
> >
> > Let us add an early irqchip driver for RISC-V IMSIC which sets
> > up the IMSIC state and provide IPIs.
>
> s/Let us add/Add/

Okay, I will update.

>
> > +#else
> > +static void imsic_ipi_starting_cpu(void)
> > +{
> > +}
> > +
> > +static void imsic_ipi_dying_cpu(void)
> > +{
> > +}
> > +
> > +static int __init imsic_ipi_domain_init(void)
> > +{
> > +     return 0;
> > +}
>
> Please condense this into
>
> static void imsic_ipi_starting_cpu(void) { }
> static void imsic_ipi_dying_cpu(void) { }
> static int __init imsic_ipi_domain_init(void) { return 0; }
>
> No point in wasting space for these stubs.

Sure, I will update.

>
> > + * To handle an interrupt, we read the TOPEI CSR and write zero in one
> > + * instruction. If TOPEI CSR is non-zero then we translate TOPEI.ID to
> > + * Linux interrupt number and let Linux IRQ subsystem handle it.
> > + */
> > +static void imsic_handle_irq(struct irq_desc *desc)
> > +{
> > +     struct irq_chip *chip =3D irq_desc_get_chip(desc);
> > +     int err, cpu =3D smp_processor_id();
> > +     struct imsic_vector *vec;
> > +     unsigned long local_id;
> > +
> > +     chained_irq_enter(chip, desc);
> > +
> > +     while ((local_id =3D csr_swap(CSR_TOPEI, 0))) {
> > +             local_id =3D local_id >> TOPEI_ID_SHIFT;
> > +
> > +             if (local_id =3D=3D IMSIC_IPI_ID) {
> > +#ifdef CONFIG_SMP
>
>         if (IS_ENABLED(CONFIG_SMP))

Okay, I will update.

>
> > +                     ipi_mux_process();
> > +#endif
> > +                     continue;
> > +             }
>
> > +
> > +/* MUST be called with lpriv->lock held */
>
> Instead of a comment which cannot be enforced just have
>
>         lockdep_assert_held(&lpriv->lock);
>
> right at the top of the function. That documents the requirement and
> lets lockdep yell if not followed.
>
> > +#ifdef CONFIG_SMP
> > +static void imsic_local_timer_callback(struct timer_list *timer)
> > +{
> > +     struct imsic_local_priv *lpriv =3D this_cpu_ptr(imsic->lpriv);
> > +     unsigned long flags;
> > +
> > +     raw_spin_lock_irqsave(&lpriv->lock, flags);
> > +     __imsic_local_sync(lpriv);
> > +     raw_spin_unlock_irqrestore(&lpriv->lock, flags);
> > +}
> > +
> > +/* MUST be called with lpriv->lock held */
>
> Ditto
>
> > +static void __imsic_remote_sync(struct imsic_local_priv *lpriv, unsign=
ed int cpu)
>
> > +void imsic_vector_mask(struct imsic_vector *vec)
> > +{
> > +     struct imsic_local_priv *lpriv;
> > +
> > +     lpriv =3D per_cpu_ptr(imsic->lpriv, vec->cpu);
> > +     if (WARN_ON(&lpriv->vectors[vec->local_id] !=3D vec))
> > +             return;
>
> WARN_ON_ONCE(), no?
>
> > +bool imsic_vector_isenabled(struct imsic_vector *vec)
> > +{
> > +     struct imsic_local_priv *lpriv =3D per_cpu_ptr(imsic->lpriv, vec-=
>cpu);
> > +     unsigned long flags;
> > +     bool ret;
> > +
> > +     raw_spin_lock_irqsave(&lpriv->lock, flags);
> > +     ret =3D vec->enable;
> > +     raw_spin_unlock_irqrestore(&lpriv->lock, flags);
>
> I'm not sure what you are trying to protect here. vec->enable can
> obviously change right after the lock is dropped. So that's just a
> snapshot, which is not any better than using
>
>           READ_ONCE(vec->enable);
>
> and a corresponding WRITE_ONCE() at the update site, which obviously
> needs serialization.
>
> > +static void __init imsic_local_cleanup(void)
> > +{
> > +     int cpu;
> > +     struct imsic_local_priv *lpriv;
>
>         struct imsic_local_priv *lpriv;
>         int cpu;
>
> Please.
>
> > +void imsic_state_offline(void)
> > +{
> > +#ifdef CONFIG_SMP
> > +     struct imsic_local_priv *lpriv =3D this_cpu_ptr(imsic->lpriv);
> > +#endif
>
> You can move that into the #ifdef below.
>
> > +     unsigned long flags;
> > +
> > +     raw_spin_lock_irqsave(&imsic->matrix_lock, flags);
> > +     irq_matrix_offline(imsic->matrix);
> > +     raw_spin_unlock_irqrestore(&imsic->matrix_lock, flags);
> > +
> > +#ifdef CONFIG_SMP
> > +     raw_spin_lock_irqsave(&lpriv->lock, flags);
> > +     WARN_ON_ONCE(try_to_del_timer_sync(&lpriv->timer) < 0);
> > +     raw_spin_unlock_irqrestore(&lpriv->lock, flags);
> > +#endif
> > +}
>
>
> Thanks,
>
>         tglx

