Return-Path: <devicetree+bounces-111823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 875AC9A01B9
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:50:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABB8B1C20BCF
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A4FA192588;
	Wed, 16 Oct 2024 06:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="sOwQ1ZIt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38E418C32E
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729061401; cv=none; b=gl98Vid5BftcK6q/goZl2ErlZRD2uYfGokbh2XxJdR1bGS6xBzdunMDXScVL0Pn4aWQ/8aKt77wCtydjbn2sfsXa++x9GZ7RPum1qE9x+CVTrehqQZBcTK6OUBy1bgLy3wRewyHpOK0hf3w0OVK1RUqxKBEOPvzxnKFrKIO/6Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729061401; c=relaxed/simple;
	bh=rRhNbgxDbHoTGblJsjtteoTssjVJ96IBqykNoFh/vww=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HfY+9qsrlm1KYDPdGGgGNdKCS4rXp3SONeM9iGY/xpNGNM3k9jQ2FHMkOH7dT5VHXk4XBLj3bTrZscANJAvfteUQp9eUg++gBmc5yvcpDGUS8VHSnDOnFqYl83ztJBU2OBvp4fbBqyx5y582HYj6aiuw96CGVaJQ6WtOGCJJa+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=sOwQ1ZIt; arc=none smtp.client-ip=209.85.166.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-83a9630eeb2so36783639f.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1729061399; x=1729666199; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LuvWiWzGwPfPen/TP7UxW2wIuKmmBLuM/D7bBxMmtuI=;
        b=sOwQ1ZItWCZAn9nlgm1krlr0DIaiMJBzONHKi7CZpZBiUHAitC/h4wI0NeB+To6+Aw
         3aMpqwDbuGTJy95z7xGFkYi0xPlTTuOvd6P2OHPV2P3WGVXH3GfGBekxkmpz3iK0fAhs
         38KamMhdepWydZ30j7Ph3/LMI1x4IX8GTEVid7n57gNHxHFMvPIJubg3Lbvm1HZo0sN+
         rThEGXfcCLH/Xxa0eKw/jMHNf22xUP72TNwgYO/tK9o0afaGGw11FK/HnUBpEqGTbvIq
         EVqm9tefe3Pl0NegROJ93dZY7pywIEtOOX2MCmwICDx/dOuQJ1pGVETSxX+traficapw
         714g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729061399; x=1729666199;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LuvWiWzGwPfPen/TP7UxW2wIuKmmBLuM/D7bBxMmtuI=;
        b=oJvXzJ5KdhFI/vxxxTTdqIbENxwswV9km6hEp2hb62I5UbIvTpfrHV9F2j/USL+fBm
         E53LxBH+Bq+HChB0r7cbZzkHJ7QEiJppfGprgDGrO2XwcEvOnJJ+SQyfinbBWktIZiHt
         TsaQO6oH2f1Tl+jvCeEazsp9YV29gzb27KDYkneem9e2hrcGCd7wFAC+inxs9WT+vYzh
         KUUEEYVDNvFdwXqVXBAP1t/6gfNZxkpNL8N3X0emjn4JciVIV/VgJLYSb2xaacini6Yi
         lbEv+N438b4CpnzjkmhzN6bhFXZ6tQJ68IcQXOrbMnkcNjWGs3AE9vuQKg1iuvVlj49V
         oieg==
X-Forwarded-Encrypted: i=1; AJvYcCUsU40R+xOWi3XcB1Ind8k7pEWE/ga8/mbXrXYOJ4RAC2rUNJxqhVPQzcqkiwt5N0VQePiK7cAHtzth@vger.kernel.org
X-Gm-Message-State: AOJu0Yysgh4USN4KVtN0DQVqwkeJjpl9lMGas2keWkw31NODGzmRQDpB
	w5ifvjE9PhQ5SGvlttFVnlq/w0VnGXcCj6B5NfgWOw28QjSbZ2O8Zb9297wBmjomcp9UkHoJ5Zi
	6f+zwequnQz76yx1ZAmZ2fpMT5nsR2Bni70Ec/Q==
X-Google-Smtp-Source: AGHT+IFNJEtM2qSm9Q8EfSRdRlQdHW4tYyXrD+ovJ8ZHMJJ/SIGchnJLPemWmR8X+ZItdkgt/8/Gty81UCalEdYkjjw=
X-Received: by 2002:a05:6e02:1a4f:b0:3a3:b254:ca2c with SMTP id
 e9e14a558f8ab-3a3bce11c80mr131491775ab.25.1729061399011; Tue, 15 Oct 2024
 23:49:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1728579958.git.tjeznach@rivosinc.com> <6916f5308478013c7b4cda77403c1e9aa9982384.1728579958.git.tjeznach@rivosinc.com>
 <20241015085814.GB19110@willie-the-truck>
In-Reply-To: <20241015085814.GB19110@willie-the-truck>
From: Tomasz Jeznach <tjeznach@rivosinc.com>
Date: Tue, 15 Oct 2024 23:49:48 -0700
Message-ID: <CAH2o1u5YLDuMNAy573ZrxS+Z8qqc0y1W9QoLyJ7P=AwcQ8LsxA@mail.gmail.com>
Subject: Re: [PATCH v9 6/7] iommu/riscv: Command and fault queue support
To: Will Deacon <will@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>, Robin Murphy <robin.murphy@arm.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <apatel@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Nick Kossifidis <mick@ics.forth.gr>, 
	Sebastien Boeuf <seb@rivosinc.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux@rivosinc.com, 
	Lu Baolu <baolu.lu@linux.intel.com>, Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 15, 2024 at 1:58=E2=80=AFAM Will Deacon <will@kernel.org> wrote=
:
>
> On Thu, Oct 10, 2024 at 12:48:09PM -0700, Tomasz Jeznach wrote:
> > Introduce device command submission and fault reporting queues,
> > as described in Chapter 3.1 and 3.2 of the RISC-V IOMMU Architecture
> > Specification.
> >
> > Command and fault queues are instantiated in contiguous system memory
> > local to IOMMU device domain, or mapped from fixed I/O space provided
> > by the hardware implementation. Detection of the location and maximum
> > allowed size of the queue utilize WARL properties of queue base control
> > register. Driver implementation will try to allocate up to 128KB of
> > system memory, while respecting hardware supported maximum queue size.
> >
> > Interrupts allocation is based on interrupt vectors availability and
> > distributed to all queues in simple round-robin fashion. For hardware
> > Implementation with fixed event type to interrupt vector assignment
> > IVEC WARL property is used to discover such mappings.
> >
> > Address translation, command and queue fault handling in this change
> > is limited to simple fault reporting without taking any action.
> >
> > Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> > Reviewed-by: Zong Li <zong.li@sifive.com>
> > Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
> > ---
> >  drivers/iommu/riscv/iommu-bits.h |  75 +++++
> >  drivers/iommu/riscv/iommu.c      | 507 ++++++++++++++++++++++++++++++-
> >  drivers/iommu/riscv/iommu.h      |  21 ++
> >  3 files changed, 601 insertions(+), 2 deletions(-)
>
> [...]
>
> > +/* Enqueue an entry and wait to be processed if timeout_us > 0
> > + *
> > + * Error handling for IOMMU hardware not responding in reasonable time
> > + * will be added as separate patch series along with other RAS feature=
s.
> > + * For now, only report hardware failure and continue.
> > + */
> > +static unsigned int riscv_iommu_queue_send(struct riscv_iommu_queue *q=
ueue,
> > +                                        void *entry, size_t entry_size=
)
> > +{
> > +     unsigned int prod;
> > +     unsigned int head;
> > +     unsigned int tail;
> > +     unsigned long flags;
> > +
> > +     /* Do not preempt submission flow. */
> > +     local_irq_save(flags);
> > +
> > +     /* 1. Allocate some space in the queue */
> > +     prod =3D atomic_inc_return(&queue->prod) - 1;
> > +     head =3D atomic_read(&queue->head);
> > +
> > +     /* 2. Wait for space availability. */
> > +     if ((prod - head) > queue->mask) {
> > +             if (readx_poll_timeout(atomic_read, &queue->head,
> > +                                    head, (prod - head) < queue->mask,
> > +                                    0, RISCV_IOMMU_QUEUE_TIMEOUT))
> > +                     goto err_busy;
> > +     } else if ((prod - head) =3D=3D queue->mask) {
> > +             const unsigned int last =3D Q_ITEM(queue, head);
> > +
> > +             if (riscv_iommu_readl_timeout(queue->iommu, Q_HEAD(queue)=
, head,
> > +                                           !(head & ~queue->mask) && h=
ead !=3D last,
> > +                                           0, RISCV_IOMMU_QUEUE_TIMEOU=
T))
> > +                     goto err_busy;
> > +             atomic_add((head - last) & queue->mask, &queue->head);
> > +     }
> > +
> > +     /* 3. Store entry in the ring buffer. */
> > +     memcpy(queue->base + Q_ITEM(queue, prod) * entry_size, entry, ent=
ry_size);
> > +
> > +     /* 4. Wait for all previous entries to be ready */
> > +     if (readx_poll_timeout(atomic_read, &queue->tail, tail, prod =3D=
=3D tail,
> > +                            0, RISCV_IOMMU_QUEUE_TIMEOUT))
> > +             goto err_busy;
> > +
> > +     /* 5. Complete submission and restore local interrupts */
> > +     dma_wmb();
> > +     riscv_iommu_writel(queue->iommu, Q_TAIL(queue), Q_ITEM(queue, pro=
d + 1));
>
> Please explain why a dma_wmb() is sufficient to order the memcpy() stores
> before the tail update.
>

Thanks, comment added in v10

> > +     atomic_inc(&queue->tail);
>
> I think this can be reordered before the relaxed MMIO write to tail,
> causing other CPUs to exit their polling early.
>

Very valid point, thank you! Should be fixed in v10

Best,
- Tomasz

> Will

