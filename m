Return-Path: <devicetree+bounces-43328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 825BD859FC4
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 10:35:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FEBC1F20F18
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B457523763;
	Mon, 19 Feb 2024 09:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="HVtrs0Wg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087C6224DA
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 09:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708335342; cv=none; b=LcdhuTKQSrlHNqJ1gY0yozvyF76R5w9dBpqb63CaupzgMOyw9pFiQdKdOcwNMBpk0LufY+E+B+QhJctljBtMkeXkqEvB3DtOW8V+W/HY++RcZrf0/slwoe8osQko/SVc7SZtuupomv4VB+QDMvSTeAX3pv5RlJDCH58fNKjXPBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708335342; c=relaxed/simple;
	bh=DV1eMWrP1yHwvBkjma46GQoQqytaGvsplBfPvrYl2BU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f6you6aCw0FGb6o7YNQxz0b62DvBxBuGD0wXTVXVRGGIDx+11wAZCVPreVmLET4u5TkAiwVVtbJWTli3ZYJ5lvMx9nZ+XSp9QFsnsBH2NzTqEEf/RdAk9O3T6iOeCY2oXmqyx0u0UbrqFyf8zEeKuWXsD0wYAnNA4BqmomTxTWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=HVtrs0Wg; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-511570b2f49so4232905e87.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 01:35:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708335339; x=1708940139; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+YXFCVZu0xeTYReG8iTx+B6CeSN2wh50vnPVuE5JAz4=;
        b=HVtrs0WgnjOmb9TeV0Zb8SWODXohlylAuhVcnYv0CU5JX9w988yxn5VU/Kb/oyaoSw
         t8Nz2zKjMcESweRQBqHJeqhvu2RbSj81jdjSCwv8TVmJ/V6DSJIRZiI6QDHTs96QKHbd
         BNeDyzMN0qMzMARzNNaoYUC/FKOdKEhOr7Opr/A9InlUz6wxepa7HFMPGmFfcKrBt9IM
         omaKtUsPMNpu8RuxFHrHZKd1yPdIRCYIA8FR2g05UzyueZci9XGiW0EgkDY70v0lQ7kw
         P+29GIgaDbcmpmv2Aj2ygdkqdaeJQo6e0ucYHT87m98KTGiNcokn/kNKDk5mvNX+QeXx
         KmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708335339; x=1708940139;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+YXFCVZu0xeTYReG8iTx+B6CeSN2wh50vnPVuE5JAz4=;
        b=P3cgMYM7Ru0jqA7t9aFPPfsFvNVBrtX/Tz+paH1lR6NXFW3DBiXSLZtL5rGKZm60Zs
         F9eOFbNI/RhOdbXz5yB257p5sW5cK4vR9/z8TyCZ6kLxjEF9wScs8osIl3JanBOOZkOE
         sEteLCPrG7bM3fF2xN1R9h9KINuRtTxcmYYBHlt6gciiQyZoDu8w5XajjPYeHOBzf0e0
         XbdG3Wt78+G49BCcr4GUkw7pKb7NWwEgrljx6/oPnDjRDCpRNY4O38C+sFZGVciuV85Z
         5cIO4TtHGp2IeyjWlV9PL8a4jHcYMjHgltd0u1NKfdhpSMMnpk/T4+sZuJ22Yo98ZRel
         0MTw==
X-Forwarded-Encrypted: i=1; AJvYcCW/SoduZyGBxAM+sz8YMaddcyz0kcCJa5rNzxZHyUVsdAzWfpsMt0gBKEojtiz2RlF+G2z0SkwaQ4Dl3U+De6dfiBwV+YcyDcOH9Q==
X-Gm-Message-State: AOJu0YydAqkOIPFnEVAZDnBBwnltKeK5w3OIpDh4VBSwuTlBT4mMhhjR
	dUfVEC/n+fL0Ur7V9noGT5nBiLUaeY4mbuskZHwHLhtfiyQgPyvFWu7CncQMd0nwqebbX545mnR
	oxCV1pSk0P+FhyjgfcO/xEMadj9O3cY/NyXt9tQ==
X-Google-Smtp-Source: AGHT+IHKBoXvqDfBDeOhzuqjW0NvaEpjXXu31tio9dyFtOxU3tQdArUbgNnkiYg2tcU8DAO0JGXTtbfHK108EupdJdU=
X-Received: by 2002:a05:6512:3254:b0:512:bb2c:9221 with SMTP id
 c20-20020a056512325400b00512bb2c9221mr306467lfr.34.1708335339012; Mon, 19 Feb
 2024 01:35:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127161753.114685-1-apatel@ventanamicro.com>
 <20240127161753.114685-23-apatel@ventanamicro.com> <875xyocewt.ffs@tglx>
In-Reply-To: <875xyocewt.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Mon, 19 Feb 2024 15:05:27 +0530
Message-ID: <CAK9=C2UO4=H9jPXFjJhS5b9kPezVutto1aReAmH3rU_uUhf9=g@mail.gmail.com>
Subject: Re: [PATCH v12 22/25] irqchip: Add RISC-V advanced PLIC driver for direct-mode
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

On Sat, Feb 17, 2024 at 2:20=E2=80=AFAM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Sat, Jan 27 2024 at 21:47, Anup Patel wrote:
> > +static int aplic_direct_irqdomain_translate(struct irq_domain *d,
> > +                                      struct irq_fwspec *fwspec,
> > +                                      unsigned long *hwirq,
> > +                                      unsigned int *type)
>
> Please align the arguments to the first argument of the first line and
> use the 100 characters, i.e.
>
> static int aplic_direct_irqdomain_translate(struct irq_domain *d, struct =
irq_fwspec *fwspec,
>                                             unsigned long *hwirq, unsigne=
d int *type)
> {
>
> All over the place.

Okay, I will update.

>
> > +{
> > +     struct aplic_priv *priv =3D d->host_data;
> > +
> > +     return aplic_irqdomain_translate(fwspec, priv->gsi_base,
> > +                                      hwirq, type);
> > +}
> > +
> > +static int aplic_direct_irqdomain_alloc(struct irq_domain *domain,
> > +                                  unsigned int virq, unsigned int nr_i=
rqs,
> > +                                  void *arg)
> > +{
> > +     int i, ret;
> > +     unsigned int type;
> > +     irq_hw_number_t hwirq;
> > +     struct irq_fwspec *fwspec =3D arg;
> > +     struct aplic_priv *priv =3D domain->host_data;
> > +     struct aplic_direct *direct =3D
> > +                     container_of(priv, struct aplic_direct, priv);
>
> Variable ordering. Please make this consistent according to documentation=
.

Okay, I will update.

>
> > +     ret =3D aplic_irqdomain_translate(fwspec, priv->gsi_base,
> > +                                     &hwirq, &type);
> > +     if (ret)
> > +             return ret;
> > +
> > +     for (i =3D 0; i < nr_irqs; i++) {
> > +             irq_domain_set_info(domain, virq + i, hwirq + i,
> > +                                 &aplic_direct_chip, priv,
> > +                                 handle_fasteoi_irq, NULL, NULL);
> > +             irq_set_affinity(virq + i, &direct->lmask);
> > +             /* See the reason described in aplic_msi_irqdomain_alloc(=
) */
>
> I still have to understand that "reason". :)

Like mentioned on another patch, I will drop it for now. If required
then we can bring it back as a separate patch with clear reasoning.

>
> > +             irq_set_status_flags(virq + i, IRQ_DISABLE_UNLAZY);
> > +     }
>
> Thanks,
>
>         tglx

Regards,
Anup

