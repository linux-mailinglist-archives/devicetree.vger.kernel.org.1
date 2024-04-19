Return-Path: <devicetree+bounces-60814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A348AA755
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 05:44:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C11912822AB
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 03:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DAD4748E;
	Fri, 19 Apr 2024 03:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ElDNLoUc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B491179F9
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 03:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713498274; cv=none; b=Dzau6U0X+QYpKgBaoC0+YCLQmYqvN3IsdopAxjv6lnzQoUt62D/xlHCqjrdRvMeJD++j1tCh23/JIxyBXzDw8OOP4XnBhykndUxx5feQ9HjYXy6jZQh7eG5csBXB/QjaHZJ0Irn7ceCUyVQzMHBwKcZWqSiZehjR5LKU69adNB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713498274; c=relaxed/simple;
	bh=C6EZh+baNJYYYswqfCxlPtbSynZ4kMsvgTtW3MPmXyo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ph72oTC2xnLIoWozPZ+A2NHiiRCFJhJ/fVkkc+GPmC9O4VO5Y09OttBlmusr5/hy8slloDccrYlAQb3MXYiRvKnzgj373rRtOHzpqH+cK9LMtg6KRbzWt3crmJhoh9fxi4C4bFDQwleokXPCRCPQpEnouZb/gbl1ZJOX9tIkOfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ElDNLoUc; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d858501412so21088651fa.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 20:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713498271; x=1714103071; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=59eYF0u+KHXci6ueGoBTWn76Rd/IwCXlgjf8EG+Fo2M=;
        b=ElDNLoUcj1ekvwZtGHDwB2ByvhBpjVxNSWsDshvPKfu1Mwpjpd4REzk19r7YXKtDQm
         PGk5OQToHiF4aFc+kBauroF1EmMT2RpN8ahfTm1CvJrGDtNL+IoO1N8i0HW7A/ForW+d
         n7q1A7nN+gpZZJRUe3Sx/z7PRJWS0+tdSnddfG7Lbrw/qI+DMFKEOAJI2PYc1Yk11Bov
         Ynt2XcjohbgeHWXy+lETcarCUM+ppiQ/q6M7VExtw/Fai1vUTxP2jhr0MvkZ/YzxKv+g
         ruL0jQbCu7izTZngXTeYoZwynG/Znlp91x1IHYorX9fG2smQhhhxPdl16ItbU476HSrn
         oZ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713498271; x=1714103071;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=59eYF0u+KHXci6ueGoBTWn76Rd/IwCXlgjf8EG+Fo2M=;
        b=HD24uq4YDuWCjwr+nRRIYlvSPvC3VOAKDNVNWwzqa9Czzbjl06lzEKOaCyLWBdOq2Q
         lokvg2aFZXSRvtGDuIZUQWYrLUFpj7X/kUrGLAFP0gFuywsmqjeA4bJRmkQPRL0kBKTZ
         d6IQQjfMAerZZlfSBLcX6s1ogethYHt6QMctAoFWbdiPvrjNWJoPxYh8HgEC3/M8NiGn
         Baf7owyAvZQx5N6J2CD+Jutb/disntun+cEXU8cGn6rili4t3VcM1nOThxGAbnuMj9/G
         uvzLp14HXtyoTOjq6ONsTJvQplIesF6422C9jb34bnK46wx9JiDVGdhCyWT1USv6nOtL
         p3Zg==
X-Forwarded-Encrypted: i=1; AJvYcCVtMK8tBye7jMomEKJKcGnOm8RsPSrgRZ1+/htKedGYEvVfcnsaBBjW0330/ptUmlCV/2+oeb0jU6NrOC3cVDD02P8nnG913YXlLQ==
X-Gm-Message-State: AOJu0Yx1iQxQAbnF3WZWLp3fx5y7gijrPvU+n7T4qGF6ZdLo+t27VBKj
	dQ9kNkUOrAwADm9GY4OoACKAA2yeyBOnC0TGj9dQSr0XGexGWW+hKwHkC6TzJzuGqgqOYUMti9q
	N7GjHHnpGNG04w5oYLv05MrIfYfc0dPvjhHxk7w==
X-Google-Smtp-Source: AGHT+IEQ1nOTIaXbh09m8UHlh64BO9dHozTEjgG2j/nOYUiToab5kcFClQw0X6CWz9u70VD9qgte/ljjyg+KRIaCWds=
X-Received: by 2002:a2e:9a99:0:b0:2d6:ff04:200f with SMTP id
 p25-20020a2e9a99000000b002d6ff04200fmr430328lji.33.1713498270564; Thu, 18 Apr
 2024 20:44:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240307140307.646078-1-apatel@ventanamicro.com>
 <20240307140307.646078-3-apatel@ventanamicro.com> <8738cb85-fac1-4a15-9666-eb05316f5368@gmail.com>
In-Reply-To: <8738cb85-fac1-4a15-9666-eb05316f5368@gmail.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 19 Apr 2024 09:14:18 +0530
Message-ID: <CAK9=C2X+Aovid=AFXP-EOj3-f6xDYiGsMMNOqknFr58nu5dgbw@mail.gmail.com>
Subject: Re: [PATCH v16 2/9] irqchip: Add RISC-V incoming MSI controller early driver
To: Eric Cheng <eric.cheng.linux@gmail.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2024 at 8:53=E2=80=AFAM Eric Cheng <eric.cheng.linux@gmail.=
com> wrote:
>
> On 3/7/2024 10:03 PM, Anup Patel wrote:
>
> > +static int __init imsic_parse_fwnode(struct fwnode_handle *fwnode,
> > +                                  struct imsic_global_config *global,
> > +                                  u32 *nr_parent_irqs,
> > +                                  u32 *nr_mmios)
> > +{
>
> ...
>
> > +     /*
> > +      * Find first bit position of group index.
> > +      * If not specified assumed the default APLIC-IMSIC configuration=
.
> > +      */
> > +     rc =3D of_property_read_u32(to_of_node(fwnode), "riscv,group-inde=
x-shift",
> > +                               &global->group_index_shift);
> > +     if (rc)
> > +             global->group_index_shift =3D IMSIC_MMIO_PAGE_SHIFT * 2;
> > +
> > +     /* Find number of interrupt identities */
> > +     rc =3D of_property_read_u32(to_of_node(fwnode), "riscv,num-ids",
> > +                               &global->nr_ids);
>
> Will here check if the pass-in interrupt identity number is (multi-64 -1)=
 &&
> between [63, 2047]?
> Per spec AIA v1.0, Sec. 3.1 Interrupt files and interrupt identities:
> "The number of interrupt identities supported by an interrupt file (and h=
ence
> the number of active
> bits in each array) is one less than a multiple of 64, and may be a minim=
um of
> 63 and a maximum
> of 2047."

There is already a check on global->nr_ids to ensure the above is satisfied=
.
Please see further below in imsic_parse_fwnode() function.

>
> > +     if (rc) {
> > +             pr_err("%pfwP: number of interrupt identities not found\n=
", fwnode);
> > +             return rc;
> > +     }
> > +
> ...
>
>

Regards,
Anup

