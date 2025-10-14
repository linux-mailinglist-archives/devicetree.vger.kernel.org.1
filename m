Return-Path: <devicetree+bounces-226705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AF3BDA9C4
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 18:29:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C128D58114D
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 16:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A615A2EAD09;
	Tue, 14 Oct 2025 16:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="jARyU5oW"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50F62D876F
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 16:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760459342; cv=none; b=A4D7cmcDSZvL9F2Npcfm61/i3yAcSTJgFNENTF7Xum9ZZgLne179ZMrIRNOtb3Ijk6RZl3ZOPj/t/Vl/HbCbgQVzdKrFKVqiStsth/REpYiBd1xxF6abfQp5Joh8rwmUycloAgrdSaA5p0aAKfNyAGkk7NfiXoA4XC5SGVHoTkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760459342; c=relaxed/simple;
	bh=Vs1nki12EZXQcNoK1Ao1NnDBhFMt9HIpiON3QP06fh8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r/YGljKurnfGXvkJOjU3W6LkSNIK8EtC+PF+xeSHKJaFvvzgLgeFI9af6PHyXJsKguKd1gzZGnh26m6wlYb11khDz6i6fXtN4YhKMMbHLTJXkM39wkvc0oZZ+P8qc4DMTgQCA1E9/DP70fB1axfaS4b4hEw5axkI0Dgqii/USw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=jARyU5oW; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760459339;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RgeNF7pf8iWqr9/7Z5AFVCCtIIdDHbMFCiOyfrwx3Hk=;
	b=jARyU5oWWQn3+qN60yowrzNVUr8GD8g81ZG3MBEkkGcXDBaZVBk/zAbiDQpvGDicEVnMSs
	0z1A7AEpe2GYBRs92rZyLUmRyR5FyKILGK+sffMcydtuiB4vUvNXm0m9j22Pe67dYCxlDi
	IhdIHXkJhPn19oc+EahwXo5ZBOXutSw=
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com
 [209.85.221.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-251-bWpaZvulP66PVwcm70dUnQ-1; Tue, 14 Oct 2025 12:28:58 -0400
X-MC-Unique: bWpaZvulP66PVwcm70dUnQ-1
X-Mimecast-MFC-AGG-ID: bWpaZvulP66PVwcm70dUnQ_1760459338
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-54aa5401327so3854337e0c.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:28:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760459338; x=1761064138;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RgeNF7pf8iWqr9/7Z5AFVCCtIIdDHbMFCiOyfrwx3Hk=;
        b=oW/GTA3WNU31+yz7q+Fs2lT9uPH/UYY9aa++pMSHoRAjVB2pOsWxk6yQckXLCsnk3v
         6iEqRDaXWfCqMquxHINbRv47scybjCgqYSXfMVFIVoCeNgU6Ogu8kerOavHLw0N26ECo
         0K7vZVFn+2ni6viS8/EcQTu+knzBuam13q7AbZflMwHeAPAEa10NmnTwEZe5cZGDKrrr
         F3eILaRLBn3LOFcewUvTmefQbZHXJTOQBANmf09dQVorW5dUfdbsNt1HQlWjYVcpvOXA
         oRss+KhACzfb1ptaObr0nQ3Zs2Y6+/hhxjwxy3uQHLkHkOTEciLieSKb3J09wHqCT4HS
         c0DQ==
X-Forwarded-Encrypted: i=1; AJvYcCUe0AamAcXH0qSC68L2Y8NCsRTxOEDrHl07UV1YVyvrtcf2mFznZEDGPf4PWc1f18ZUt3hlLnw0y0wM@vger.kernel.org
X-Gm-Message-State: AOJu0YwRAb4qtYPyOCNbvO26dcFqfeR9NhhVBvvY89g6oEQbp8KSGtqk
	ncMXoB0982Wy4n+ltoGe3XSNGzJ+wpQXu5fZ0/JgCLWNuzy8i0RA69vk5toqH5hFM8pq45YOC5R
	8p0DhPCKJ2p7riOleiBOy7oiF6fSDj/pwwhDvpRkueX/VEKJC3aY8MqvFEm+xMcBmm+S0UElaPe
	Ok1Rj4DCh0ju/JWX6Q7uYwsIdCusGVUckkAd05Rg==
X-Gm-Gg: ASbGncsnVkt4N9IAsOLZl19v/Izk8ZfZnxYFmS20QnYBmIRZOT4fZoBvhyRd0KSBfLX
	EG+Kjkk/VSHVXtR5Hm4lnCCC3qyx5j8nkEtfiHsuJKpsnB0zzB5F4ZVAbRsK96o9lqYbtt7h8Ax
	WJJA80GqxBPj6b5Cha6/O78OwpCqXgkQ==
X-Received: by 2002:a05:6122:1820:b0:54a:a178:3c9f with SMTP id 71dfb90a1353d-554b8d1e2femr9107111e0c.15.1760459337746;
        Tue, 14 Oct 2025 09:28:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIgCFPisoR/eJJ+Yow6KCcgCAbVsO7K6k2j+0Duakw8zDme6ZYgvlxrrFRKsN044axmdNL6Aef+dDSHxgXXlI=
X-Received: by 2002:a05:6122:1820:b0:54a:a178:3c9f with SMTP id
 71dfb90a1353d-554b8d1e2femr9107093e0c.15.1760459337155; Tue, 14 Oct 2025
 09:28:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014154100.168236-1-lzampier@redhat.com> <20251014154100.168236-4-lzampier@redhat.com>
 <b58b2705-a1b4-4d71-8b76-e2bba4df6987@sifive.com>
In-Reply-To: <b58b2705-a1b4-4d71-8b76-e2bba4df6987@sifive.com>
From: Charles Mirabile <cmirabil@redhat.com>
Date: Tue, 14 Oct 2025 12:28:46 -0400
X-Gm-Features: AS18NWDhKUJ63im4MGS_aonH4VCcpg2Al_ovONGvC1-Sh9LwEhqbRt0Fv_a-Xlk
Message-ID: <CABe3_aECh-d9=O7yJjKuCffBMQ4c2XBYOoqAZa8vqR-PSfWnbA@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] irqchip/plic: add support for UltraRISC DP1000 PLIC
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Lucas Zampieri <lzampier@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Vivian Wang <dramforever@live.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Zhang Xincheng <zhangxincheng@ultrarisc.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 12:09=E2=80=AFPM Samuel Holland
<samuel.holland@sifive.com> wrote:
>
> On 2025-10-14 10:40 AM, Lucas Zampieri wrote:
> > From: Charles Mirabile <cmirabil@redhat.com>
> >
> > Add a new compatible for the plic found in UltraRISC DP1000 with a quir=
k to
> > work around a known hardware bug with IRQ claiming in the UR-CP100 core=
s.
> >
> > When claiming an interrupt on UR-CP100 cores, all other interrupts must=
 be
> > disabled before the claim register is accessed to prevent incorrect
> > handling of the interrupt. This is a hardware bug in the CP100 core
> > implementation, not specific to the DP1000 SoC.
> >
> > When the PLIC_QUIRK_CLAIM_REGISTER is present, a specialized handler
>
> You may want to name this something a bit more specific. Every PLIC has a=
 claim
> register, so it seems a bit weird saying that this is a quirk :)

Something like `PLIC_QUIRK_CLAIM_REGISTER_ERRATA`? Or
`PLIC_QUIRK_CP100_CLAIM_REGISTER`? Or
`PLIC_QUIRK_MULTIPLE_PENDING_CLAIM`? I guess the trouble is that they
get pretty long pretty quick. Hard to summarize the issue concisely.

>
> Anyway, the code looks good, so:
>
> Acked-by: Samuel Holland <samuel.holland@sifive.com>

Thanks!

>
> > (plic_handle_irq_cp100) saves the enable state of all interrupts, disab=
les
> > all interrupts except for the first pending one before reading the clai=
m
> > register, and then restores the interrupts before further processing of
> > the claimed interrupt continues.
> >
> > The driver matches on "ultrarisc,cp100-plic" to apply the quirk to all
> > SoCs using UR-CP100 cores, regardless of the specific SoC implementatio=
n.
> > This has no impact on other platforms.
> >
> > Co-developed-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
> > Signed-off-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
> > Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
> > Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 94 ++++++++++++++++++++++++++++++-
> >  1 file changed, 93 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-si=
five-plic.c
> > index bf69a4802b71..1d528904b353 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -49,6 +49,8 @@
> >  #define CONTEXT_ENABLE_BASE          0x2000
> >  #define     CONTEXT_ENABLE_SIZE              0x80
> >
> > +#define PENDING_BASE                    0x1000
> > +
> >  /*
> >   * Each hart context has a set of control registers associated with it=
.  Right
> >   * now there's only two: a source priority threshold over which the ha=
rt will
> > @@ -63,6 +65,7 @@
> >  #define      PLIC_ENABLE_THRESHOLD           0
> >
> >  #define PLIC_QUIRK_EDGE_INTERRUPT    0
> > +#define PLIC_QUIRK_CLAIM_REGISTER    1
> >
> >  struct plic_priv {
> >       struct fwnode_handle *fwnode;
> > @@ -394,6 +397,89 @@ static void plic_handle_irq(struct irq_desc *desc)
> >       chained_irq_exit(chip, desc);
> >  }
> >
> > +static bool cp100_isolate_pending_irq(int nr_irq_groups, u32 ie[],
> > +                                    void __iomem *pending,
> > +                                    void __iomem *enable)
> > +{
> > +     u32 pending_irqs =3D 0;
> > +     int i, j;
> > +
> > +     /* Look for first pending interrupt */
> > +     for (i =3D 0; i < nr_irq_groups; i++) {
> > +             pending_irqs =3D ie[i] & readl_relaxed(pending + i * size=
of(u32));
> > +             if (pending_irqs)
> > +                     break;
> > +     }
> > +
> > +     if (!pending_irqs)
> > +             return false;
> > +
> > +     /* Disable all interrupts but the first pending one */
> > +     for (j =3D 0; j < nr_irq_groups; j++) {
> > +             u32 new_mask =3D 0;
> > +
> > +             if (j =3D=3D i)
> > +                     /* Extract mask with lowest set bit */
> > +                     new_mask =3D (pending_irqs & -pending_irqs);
> > +
> > +             writel_relaxed(new_mask, enable + j * sizeof(u32));
> > +     }
> > +
> > +     return true;
> > +}
> > +
> > +static irq_hw_number_t cp100_get_hwirq(struct plic_handler *handler,
> > +                                     void __iomem *claim)
> > +{
> > +     void __iomem *enable =3D handler->enable_base;
> > +     void __iomem *pending =3D handler->priv->regs + PENDING_BASE;
> > +     int nr_irqs =3D handler->priv->nr_irqs;
> > +     int nr_irq_groups =3D DIV_ROUND_UP(nr_irqs, 32);
> > +     int i;
> > +     irq_hw_number_t hwirq =3D 0;
> > +
> > +     raw_spin_lock(&handler->enable_lock);
> > +
> > +     /* Save current interrupt enable state */
> > +     for (i =3D 0; i < nr_irq_groups; i++)
> > +             handler->enable_save[i] =3D readl_relaxed(enable + i * si=
zeof(u32));
> > +
> > +     if (!cp100_isolate_pending_irq(nr_irq_groups, handler->enable_sav=
e, pending, enable))
> > +             goto out;
> > +
> > +     hwirq =3D readl(claim);
> > +
> > +     /* Restore previous state */
> > +     for (i =3D 0; i < nr_irq_groups; i++)
> > +             writel_relaxed(handler->enable_save[i], enable + i * size=
of(u32));
> > +out:
> > +     raw_spin_unlock(&handler->enable_lock);
> > +     return hwirq;
> > +}
> > +
> > +static void plic_handle_irq_cp100(struct irq_desc *desc)
> > +{
> > +     struct plic_handler *handler =3D this_cpu_ptr(&plic_handlers);
> > +     struct irq_chip *chip =3D irq_desc_get_chip(desc);
> > +     void __iomem *claim =3D handler->hart_base + CONTEXT_CLAIM;
> > +     irq_hw_number_t hwirq;
> > +
> > +     WARN_ON_ONCE(!handler->present);
> > +
> > +     chained_irq_enter(chip, desc);
> > +
> > +     while ((hwirq =3D cp100_get_hwirq(handler, claim))) {
> > +             int err =3D generic_handle_domain_irq(handler->priv->irqd=
omain,
> > +                                                 hwirq);
> > +             if (unlikely(err)) {
> > +                     pr_warn_ratelimited("%pfwP: can't find mapping fo=
r hwirq %lu\n",
> > +                                         handler->priv->fwnode, hwirq)=
;
> > +             }
> > +     }
> > +
> > +     chained_irq_exit(chip, desc);
> > +}
> > +
> >  static void plic_set_threshold(struct plic_handler *handler, u32 thres=
hold)
> >  {
> >       /* priority must be > threshold to trigger an interrupt */
> > @@ -430,6 +516,8 @@ static const struct of_device_id plic_match[] =3D {
> >         .data =3D (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
> >       { .compatible =3D "thead,c900-plic",
> >         .data =3D (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
> > +     { .compatible =3D "ultrarisc,cp100-plic",
> > +       .data =3D (const void *)BIT(PLIC_QUIRK_CLAIM_REGISTER) },
> >       {}
> >  };
> >
> > @@ -664,12 +752,16 @@ static int plic_probe(struct fwnode_handle *fwnod=
e)
> >               }
> >
> >               if (global_setup) {
> > +                     void (*handler_fn)(struct irq_desc *) =3D plic_ha=
ndle_irq;
> > +                     if (test_bit(PLIC_QUIRK_CLAIM_REGISTER, &handler-=
>priv->plic_quirks))
> > +                             handler_fn =3D plic_handle_irq_cp100;
> > +
> >                       /* Find parent domain and register chained handle=
r */
> >                       domain =3D irq_find_matching_fwnode(riscv_get_int=
c_hwnode(), DOMAIN_BUS_ANY);
> >                       if (domain)
> >                               plic_parent_irq =3D irq_create_mapping(do=
main, RV_IRQ_EXT);
> >                       if (plic_parent_irq)
> > -                             irq_set_chained_handler(plic_parent_irq, =
plic_handle_irq);
> > +                             irq_set_chained_handler(plic_parent_irq, =
handler_fn);
> >
> >                       cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTI=
NG,
> >                                         "irqchip/sifive/plic:starting",
>


