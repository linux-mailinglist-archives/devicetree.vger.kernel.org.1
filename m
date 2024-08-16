Return-Path: <devicetree+bounces-94262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 468AA954828
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 13:40:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE0D21F24FCE
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 11:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E82971A0B1E;
	Fri, 16 Aug 2024 11:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="A9mVoNJM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AE91A01AE
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 11:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723808442; cv=none; b=DxZHED3Ohqpmj5HxAljp/M8643REmeobbFIC2VPQ9bFou2JY8LpyNsTAgOm3m+rWaI6jd4+LPFVe1n4pXhKiwcNEUvNThrt0h3NGjlFoHw4ldP1qF++/H7Slc/CDmHNtOHvAkHK1NqGxuBI40WHrpC0edo8zgCxO8O8IcClPTtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723808442; c=relaxed/simple;
	bh=mEsIO8V6up7gYjyHAq+L8R4/6Ah5bm4nH/yj6kGEISs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GLwns6jfPcFfC8ZqN/BMHefmoeo3H2ryBsH6t/y2bE9Au/u5taU4mSW3lOrIirPIUFtM4ObfLV7EFTNk3oqBahxVkudcuhGhM3w+tW3QcGVFSwMr6iO3am4TNm2V9ddFbEh/66KrbZ2nEV8NKLsEszNEQhHc/X2whVvCBpGdSDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=A9mVoNJM; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2f01e9f53e3so29643611fa.1
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 04:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1723808439; x=1724413239; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BpxzkK3UKTxghQc+n3gc+K3CuWVs47t1vTAqsGCdLNg=;
        b=A9mVoNJM+GbCmLd8PAckA2pAlbb7W+gRa8BezRw2Gufq67l8dNR9ygVHiJxubGbvkw
         J+w6wU2iV1j6JXhbhPK0QPNjuNgU92v4L7bQJ1+lc7XvPvk9nlAPUcg9sccvq82FjUb8
         fENHs/pTcFKLqqfW0DvxPlfealer7wCYHb1v2goMOPbxCzwXSuR/S2zUN4wLj5UO5J4o
         9rozl05MytjagqYcZOZA/748Axmq+GAgZHlEUkdObVkyOL/DxxZmYy3O0MfE0MobTxZN
         CpbgbYMVN2aUpF7/NqhV/tkQoJtxpmD8JAEesiJ0rHe1c9bBJTsE47hbyNs4hsPnBNc4
         SzMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723808439; x=1724413239;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BpxzkK3UKTxghQc+n3gc+K3CuWVs47t1vTAqsGCdLNg=;
        b=QKBRLQ+cCLDmEclW7lKmAKhLk5R2KruozjtVkfYlhzL/LuTGA6NxDPQluZ3erw2jIp
         pBVqBJRdly+B+9HK3ApJPudu3IF2iCSI4qo1nBfes/zD/73Yb/JPr29IbCaX9RHAv6mr
         qFSCEPvD4qgfmiStTnkDSY8zPmhGT1fLgsBoH1BwKcMvihu0QZCZagL70F7WS9RD13VZ
         cOpgEqCMiIIQotbYCe4dBBFFAJNTM1SU0ATRon5NOIuuRdUkIDL4b5sfDH+bBj52QMCi
         iTtc26bvle/9n6ASuzd1cb4HJMdeThx9lZqn1YOw5yocPzV1oW5cyGhAQpkn6HR+5Nnt
         u2SQ==
X-Gm-Message-State: AOJu0YxFkpDvf+a1ewVHj3nZLeVuk1gT2LzDIj/8b1OpL7DH7o/rrkL+
	PnSZZ0oMU5tThDfW7mY15qLZWyQa71PTzeQJ0d/HUnz530j1vDEdj1Qyk0t/mfg=
X-Google-Smtp-Source: AGHT+IFK0XlavC2ASBQwNlu5VWovN1G7tk/Vc3gjrKwPR0rZkWiyoOFZOREKvMWyOZrRdt5yv7L0VQ==
X-Received: by 2002:a2e:3809:0:b0:2f0:27da:6864 with SMTP id 38308e7fff4ca-2f3be5851b4mr21142821fa.17.1723808438254;
        Fri, 16 Aug 2024 04:40:38 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a838393560bsm241591966b.139.2024.08.16.04.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2024 04:40:37 -0700 (PDT)
Date: Fri, 16 Aug 2024 13:40:36 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <anup@brainfault.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, loongarch@lists.linux.dev, 
	linux-mips@vger.kernel.org, maz@kernel.org, mark.rutland@arm.com, robh@kernel.org, 
	saravanak@google.com, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, Anup Patel <apatel@ventanamicro.com>
Subject: Re: [PATCH] of/irq: Support #msi-cells=<0> in of_msi_get_domain
Message-ID: <20240816-e5563ca888e15bb00e2652ab@orel>
References: <20240816095520.96348-2-ajones@ventanamicro.com>
 <CAAhSdy0wxpDXoUmGyuQOeMfNCubdp9_iYdBOSN=EcweG1nkwwg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAAhSdy0wxpDXoUmGyuQOeMfNCubdp9_iYdBOSN=EcweG1nkwwg@mail.gmail.com>

On Fri, Aug 16, 2024 at 04:14:52PM GMT, Anup Patel wrote:
> On Fri, Aug 16, 2024 at 3:25 PM Andrew Jones <ajones@ventanamicro.com> wrote:
> >
> > An 'msi-parent' property with a single entry and no accompanying
> > '#msi-cells' property is considered the legacy definition as opposed
> > to its definition after being expanded with commit 126b16e2ad98
> > ("Docs: dt: add generic MSI bindings"). However, the legacy
> > definition is completely compatible with the current definition and,
> > since of_phandle_iterator_next() tolerates missing and present-but-
> > zero *cells properties since commit e42ee61017f5 ("of: Let
> > of_for_each_phandle fallback to non-negative cell_count"), there's no
> > need anymore to special case the legacy definition in
> > of_msi_get_domain().
> >
> > Indeed, special casing has turned out to be harmful, because, as of
> > commit 7c025238b47a ("dt-bindings: irqchip: Describe the IMX MU block
> > as a MSI controller"), MSI controller DT bindings have started
> > specifying '#msi-cells' as a required property (even when the value
> > must be zero) as an effort to make the bindings more explicit. But,
> > since the special casing of 'msi-parent' only uses the existence of
> > '#msi-cells' for its heuristic, and not whether or not it's also
> > nonzero, the legacy path is not taken. Furthermore, the path to
> > support the new, broader definition isn't taken either since that
> > path has been restricted to the platform-msi bus.
> >
> > But, neither the definition of 'msi-parent' nor the definition of
> > '#msi-cells' is platform-msi-specific (the platform-msi bus was just
> > the first bus that needed '#msi-cells'), so remove both the special
> > casing and the restriction. This not only simplifies the code but
> > also resolves an issue with PCI devices finding their MSI controllers
> > on riscv, as the riscv,imsics binding requires '#msi-cells=<0>'.
> >
> > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > ---
> >  drivers/of/irq.c | 37 +++++++++++--------------------------
> >  1 file changed, 11 insertions(+), 26 deletions(-)
> >
> > diff --git a/drivers/of/irq.c b/drivers/of/irq.c
> > index c94203ce65bb..026b52c8ee63 100644
> > --- a/drivers/of/irq.c
> > +++ b/drivers/of/irq.c
> > @@ -709,8 +709,7 @@ struct irq_domain *of_msi_map_get_device_domain(struct device *dev, u32 id,
> >   * @np: device node for @dev
> >   * @token: bus type for this domain
> >   *
> > - * Parse the msi-parent property (both the simple and the complex
> > - * versions), and returns the corresponding MSI domain.
> > + * Parse the msi-parent property and returns the corresponding MSI domain.
> >   *
> >   * Returns: the MSI domain for this device (or NULL on failure).
> >   */
> > @@ -718,33 +717,19 @@ struct irq_domain *of_msi_get_domain(struct device *dev,
> >                                      struct device_node *np,
> >                                      enum irq_domain_bus_token token)
> >  {
> > -       struct device_node *msi_np;
> > +       struct of_phandle_args args;
> >         struct irq_domain *d;
> > +       int index = 0;
> >
> > -       /* Check for a single msi-parent property */
> > -       msi_np = of_parse_phandle(np, "msi-parent", 0);
> > -       if (msi_np && !of_property_read_bool(msi_np, "#msi-cells")) {
> > -               d = irq_find_matching_host(msi_np, token);
> > -               if (!d)
> > -                       of_node_put(msi_np);
> > -               return d;
> > -       }
> 
> Dropping this special case of single msi-parent property breaks
> RISC-V KVM guest created using KVMTOOl with AIA available
> on the host.

Ouch. This is a paperbag moment as I can easily reproduce that.

> 
> Let's not drop this special case.

I'll work out a [much better tested] v2 now.

Thanks,
drew

