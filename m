Return-Path: <devicetree+bounces-49190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED29875318
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 16:25:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 545402854E5
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 15:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4746612EBF5;
	Thu,  7 Mar 2024 15:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="UWgxLFyk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706DE1E4A2
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 15:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709825137; cv=none; b=GS01KnZnPx36o+5SYlNII+KORk7whIhFTY3LdRM0O7OVbjtO+TUJ/Qk9cgTtM0tId5QplTVb7vukJubGYT4hFehDfZOJ02yCmTxKQ5qguUL4ZI2cG66kj4Py6vF6OzQulyoOO9oYu0aZ3jGPC/JBSAsU+xpxZTiljyYlIrTSF8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709825137; c=relaxed/simple;
	bh=V3t0OdhwzeOqBPCUhhWQ5AavYAM/iLtG7e8pxD9IM14=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FNZGMghW2Lwo7F9Izx1FwU5ghowMOYDHhozajibGpV4vbe2wXupov7ii4p7PzUnYfBBOTiy+VvNtx1xT2T6CAgbtxTuZC4SQ42chiFfw/wkkULrcHhn5QFwizhacX3fI5z4PtS+P4lU7takWfQSWw5RHbwi+hb/mpnWl+Ujo4QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=UWgxLFyk; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-513173e8191so1257069e87.1
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 07:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1709825133; x=1710429933; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/4QjOqiWioy7Z+s/XLgIt5Rc6ziLvdsXpnYEthSWbOk=;
        b=UWgxLFyk233ErdkJz4VNymkf2ST0jaw/fcRiyGFk5ELR3fOG7KRdx4H/asIZx2pex9
         jqvCzy2+4R1ut5BY61PEvqGd0xGdJSPKJAcSVhWykUzQOM1n4gIyg1aGR3k0pHLBBhoe
         S7izLgeJK5jaDXrbb5WYfRcnVd5IKJHrtisLx5bx9WzzLul6c/dZQKzRPD239ODRsJ9t
         L43fuQko+3r0H8dQ5Mr1pPDhetOoEx+qp93vhCYcTL+s8PWIOQOB2EPpM6sA6cTthpe1
         Ua3U+nt13rWC391zgA1mq9zGJtyjHkeWPpE4yyICY+fdvHv+U35DchKS9KYcMx/+vvKT
         T4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709825133; x=1710429933;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/4QjOqiWioy7Z+s/XLgIt5Rc6ziLvdsXpnYEthSWbOk=;
        b=IINQKYR2XnsRi7d3tMwG0JaNYZPYxt95vbNc0yZ4gMiDDOTZdtRKdiULhDE67mCz1G
         /DxEua+xq1COspo0FjVsC3sWwCyQjNVu7SpbecJ4drJqpfgD1xJGC2CcQOiq9THa7pDq
         3pejIeG8FNlqRLFEZqb0MhgcTR+UncnMVHiB/T9hRa/q6s3vEDG4y3MyC4gLDFEQE7ek
         +M5RDDy5C2J3lkOKmjK8WdULiqCbbf3UpPrdilAd1D6b2ml3kjWFRws9lv7n0piyAz0n
         6zItxY9F6mvVZejNXS1+DVtb2D4uS0/tFoEtqDfr2A3103ldtjVzU56A5ihV8833TbDN
         +Bfg==
X-Forwarded-Encrypted: i=1; AJvYcCUm0gj6eIoKkN+f0Mocx9wfX6FskefdljuGdWnFkvMuQPBcZb5Zd00gwuQlshc4DrT0g0GOqSNTNeAl1orTATAfn84sG7ut7plmKQ==
X-Gm-Message-State: AOJu0YyYkVNyB+RNkNe7x77GkbKOLrFR6jK3p+x7ywGT47uX4MUqOh3e
	T20jLHg9taVtDdaemQZ4J3nQIB8+qjy1dEMY6+XjzapwJCvChJBjohfL3vRqg69BX12uKXZXhBF
	Gru+eryusF8r8xoQGnDt/wuJpv0wJQ4MfM8/hZA==
X-Google-Smtp-Source: AGHT+IHni8UYaPdT07e1XtlA0mP9S9vuUEv4b9Fh2GsvReSwDcrJOqBGXFRA8/BIJlLaDhNaDP/WuGDOz3ZpmDlzkRU=
X-Received: by 2002:a05:6512:20c9:b0:513:ece:1fe1 with SMTP id
 u9-20020a05651220c900b005130ece1fe1mr1477863lfr.54.1709825133335; Thu, 07 Mar
 2024 07:25:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240226040746.1396416-1-apatel@ventanamicro.com>
 <20240226040746.1396416-9-apatel@ventanamicro.com> <87y1avbboj.fsf@all.your.base.are.belong.to.us>
 <CAK9=C2Ud+CJzWfY0Lp97OMt9QvJBFX=hHJidn_90XY5cEB9LHw@mail.gmail.com> <871q8mdr2i.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <871q8mdr2i.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 7 Mar 2024 20:55:21 +0530
Message-ID: <CAK9=C2UfpTtQ6DOSE7-EVsC+zyYAY6CvigQ6iDLuLgQNj2e5vw@mail.gmail.com>
Subject: Re: [PATCH v15 08/10] irqchip/riscv-aplic: Add support for MSI-mode
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>, 
	linux-kernel@vger.kernel.org, Atish Patra <atishp@atishpatra.org>, 
	linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 7, 2024 at 8:31=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel.=
org> wrote:
>
> Anup Patel <apatel@ventanamicro.com> writes:
>
> > On Wed, Mar 6, 2024 at 9:22=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@ker=
nel.org> wrote:
> >>
> >> Anup Patel <apatel@ventanamicro.com> writes:
> >>
> >> > diff --git a/drivers/irqchip/irq-riscv-aplic-msi.c b/drivers/irqchip=
/irq-riscv-aplic-msi.c
> >> > new file mode 100644
> >> > index 000000000000..b2a25e011bb2
> >> > --- /dev/null
> >> > +++ b/drivers/irqchip/irq-riscv-aplic-msi.c
> >> > +static void aplic_msi_write_msg(struct irq_data *d, struct msi_msg =
*msg)
> >> > +{
> >> > +     unsigned int group_index, hart_index, guest_index, val;
> >> > +     struct aplic_priv *priv =3D irq_data_get_irq_chip_data(d);
> >> > +     struct aplic_msicfg *mc =3D &priv->msicfg;
> >> > +     phys_addr_t tppn, tbppn, msg_addr;
> >> > +     void __iomem *target;
> >> > +
> >> > +     /* For zeroed MSI, simply write zero into the target register =
*/
> >> > +     if (!msg->address_hi && !msg->address_lo && !msg->data) {
> >> > +             target =3D priv->regs + APLIC_TARGET_BASE;
> >> > +             target +=3D (d->hwirq - 1) * sizeof(u32);
> >> > +             writel(0, target);
> >>
> >> Is the fence needed here (writel_relaxed())...
> >
> > The pci_write_msg_msix() (called via pci_msi_domain_write_msg())
> > uses writel() hence taking inspiration from that we use writel() over h=
ere
> > as well.
> >
> > If that's wrong then pci_write_msg_msix() must be fixed as well.
>
> Huh? The writel()s in pci_write_msg_msix() are because there's an
> ordering constraint, and code would be broken w/o it. My question was
> "what are the ordering constraints for this piece of code", because it
> looks like this is a single I/O write without any ordering constraints.

Whatever ordering constraints apply to pci_write_msg_msix() also
apply to APLIC MSI-mode because both create the leaf-level IRQ
domain for the client device driver (PCIe or Platform device) whose
parent is IMSIC base domain.

>
> I'm not a fan of sprinkling fences around "to be safe", but I don't want
> to delay the v16 because of it. It can be fixed later, if it's not
> needed.

I don't think there is a clear way of proving that using write_relaxed()
in aplic_msi_write_msg() is safe considering there is a vast variety
of platform drivers who would be clients of the APLIC MSI-mode
domain.

I agree that we should deal with this later.

Regards,
Anup

