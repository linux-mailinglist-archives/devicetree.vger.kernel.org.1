Return-Path: <devicetree+bounces-179465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A48AC06E1
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 10:20:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E46E9E121C
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 08:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C3D226460B;
	Thu, 22 May 2025 08:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Ozt5v6zl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22DD263889
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 08:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747902020; cv=none; b=Bx1w5Th7U+4YqiQWXPGpYByBOanWiVpmdq4dd3jmxqlkyZ0ohr1f31qe3NePIstFQXJMYxyrwMuocF+om1A6hfwpSEPu1DzIdxtKwkZXjOjuC1alW8Nu/dvN3xwTzeK/wJUk+OvJP8YrIWNRLPC+/2VwDkR+S5M9t+gbL5ohgWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747902020; c=relaxed/simple;
	bh=H5WO4l0lMwPhufkFAFJJF+7x6CoP4lT7Mp9z3TVrCvk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MrRQY0jfT3CDZ1auP79b17+h2tDGKM+7ukecDIZYZXV3x3oSP9RGdqjZJZu73T5A+X4H2TROWN1k6F0igi6W/cqPWqCxNQa5yL9xkYHdceQHftZaK5eiFXaO3PVtzhPqXzQPRUSXkMRTQjvJZRsSCBC8Szuxf62ye8B2gBdHxjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Ozt5v6zl; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-23229fdaff4so52935805ad.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 01:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747902018; x=1748506818; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RcuFGqMF/ZgB6n2L9RXkll3Uqc1w8n3CtfrWdVWfP90=;
        b=Ozt5v6zlO/Sv87cmdyRoZXc2xsMAAXaw3oQcM3xMR31eisU4VCrEXCgLngL5qUCi4A
         4tzwrFrIIZMrUNt54iwAWtL52et+16H1mYeRnijwTzIRv1W9LMdOYEqbGzd7rfyiwqkA
         LJCz7zNPWWKBV67Mi0scgx4joex3sfeFYAfuSEmx8Gp3a2sxB41ako3RNyvdgjLbYJNf
         i7VyM6LgOTKhabSPnXDOJIVw7zGyxOBF5WIpeiEBzRfOZOPuwUa7supdF7KdlqKh5FUB
         /AsS31PWJQ5Wr5nlWg2o07cOS0xxKkHRZ7US3UTEqBf93D1XutWupNPBIoQluDqkw8HA
         OfuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747902018; x=1748506818;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RcuFGqMF/ZgB6n2L9RXkll3Uqc1w8n3CtfrWdVWfP90=;
        b=xPU9V5QqRw2iTCnVmQWmgWjEEP9A+cM6zChtFoqYnjqSuFKsDTHFSN1O/2KBXobnhF
         Ap2epi/YCW2qCQglcEexSrn8S9G+38TabXuQJaHSeBKuamSkE0aeBFB0568ErMggRmew
         hs6Sg5mHU+D8ufhT6h6RUvgVnKcfVSVpVM6w0w1/gIaUqpMJjzxKzNbkCGN/aDZum/eb
         PdyoBq1/v4qGWvmiDsJmljccfAF7A04mre2MZF3CTtukmBBCpqEn8cmPlb2tmwnQhggq
         cyeW2KIPm50Y4xoOMIS4yus2vzcFV9fbBuPSPi3+wSJNXtQGpsm1d7th56dMURkxLfDJ
         7/0g==
X-Forwarded-Encrypted: i=1; AJvYcCWI39SIyucTDcwKVchm9pnmdoc/fzBw9AuV+MO4xBaOA6j2eWpyZwQsonibpG0a4KZmBTyMO9KqgaF1@vger.kernel.org
X-Gm-Message-State: AOJu0YwSa09qlyx0RDHy2v7v0EDvIcmsbABtSH7xqkOz8R/HP5xgnzR1
	A9CQpkVAHbuxV3XMNHEin64VBBPtpj8xMxgCDOQ1P9OBRkLDYOehbnM8aXH59qyNDnk=
X-Gm-Gg: ASbGncuELpMWfO4FJrxz7ZrXKcBdG1y2zuRb1VGPXdEEqZxPhfzTHFNYlQ6VjVFBkD5
	w6YWHBCJ0PyYs+NmI062/LlwdUsTo/2BKAh8vyYcaVomRBroaPqqtXy4uxI7f3Ck47O87etkX9H
	xtJsCx0ghLdhD7bVosA9KJvYz+EutEwzouwgmnqIdKTNEak/leU/CF2/zMAm3QUppP2bSikHNW9
	KM78P2xnMV4Amwr4U4cFj2FcPj3okUaB8vHIdH1GNC4ScuEXRTq5W/4HjE3ecY+LtVqG2Ca2psW
	GD+uc00cDc8NxG2DXRQWSI/2kYDcU4sY2tRksuAlxvgyGrk0xvP1FsaBZ1vC
X-Google-Smtp-Source: AGHT+IGWUWoZ8nlB1v4QhGuyYjXUJIGpjeTdY9aoCLZrIG7jsg9/EnwS5AkAfpjE8UnXzW0/hfZx3Q==
X-Received: by 2002:a17:903:19c4:b0:220:e655:d77 with SMTP id d9443c01a7336-231d452d0e3mr353009895ad.36.1747902018137;
        Thu, 22 May 2025 01:20:18 -0700 (PDT)
Received: from cyan-mbp ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4adca4asm104828005ad.78.2025.05.22.01.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 01:20:17 -0700 (PDT)
Date: Thu, 22 May 2025 16:20:13 +0800
From: Cyan Yang <cyan.yang@sifive.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, samuel.holland@sifive.com,
	linux-doc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 02/12] riscv: Add SiFive xsfvqmaccdod and xsfvqmaccqoq
 vendor extensions
Message-ID: <aC7ePdD0bNhi48kz@cyan-mbp>
References: <20250516030310.16950-1-cyan.yang@sifive.com>
 <20250516030310.16950-3-cyan.yang@sifive.com>
 <CAMuHMdVoUx99rK3bZZnpTh699fQouVfmTfzvuM_UfGS=PAvW2Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdVoUx99rK3bZZnpTh699fQouVfmTfzvuM_UfGS=PAvW2Q@mail.gmail.com>

On Tue, May 20, 2025 at 11:26:39AM +0200, Geert Uytterhoeven wrote:
> Hi Cyan,
> 
> On Fri, 16 May 2025 at 05:07, Cyan Yang <cyan.yang@sifive.com> wrote:
> > Add SiFive vendor extension support to the kernel with the target of
> > "xsfvqmaccdod" and "xsfvqmaccqoq".
> >
> > Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
> 
> Thanks for your patch, which is now commit 2d147d77ae6e96c1 ("riscv:
> Add SiFive xsfvqmaccdod and xsfvqmaccqoq vendor extensions")
> in riscv/for-next.
> 
> > --- a/arch/riscv/Kconfig.vendor
> > +++ b/arch/riscv/Kconfig.vendor
> > @@ -16,6 +16,19 @@ config RISCV_ISA_VENDOR_EXT_ANDES
> >           If you don't know what to do here, say Y.
> >  endmenu
> >
> > +menu "SiFive"
> > +config RISCV_ISA_VENDOR_EXT_SIFIVE
> > +       bool "SiFive vendor extension support"
> > +       select RISCV_ISA_VENDOR_EXT
> > +       default y
> 
> I guess this has no dependency on ARCH_SIFIVE and does not default
> to ARCH_SIFIVE because this extension can be present on non-Sifive
> SoCs, too?
> 
> Probably I should have asked this when the other RISCV_ISA_VENDOR_EXT_*
> were introduced, but at least for ANDES I already know the answer.
> 

Yes, you are right.

ARCH_SIFIVE enables support for SiFive SoC platform.

RISCV_ISA_VENDOR_EXT_SIFIVE enables support for SiFive vendor
extensions, which are not limited to the SiFive SoC platform.

> > +       help
> > +         Say N here if you want to disable all SiFive vendor extension
> > +         support. This will cause any SiFive vendor extensions that are
> > +         requested by hardware probing to be ignored.
> > +
> > +         If you don't know what to do here, say Y.
> > +endmenu
> > +
> >  menu "T-Head"
> >  config RISCV_ISA_VENDOR_EXT_THEAD
> >         bool "T-Head vendor extension support"
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

Regards,
Cyan


