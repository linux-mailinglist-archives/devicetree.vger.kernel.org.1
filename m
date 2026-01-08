Return-Path: <devicetree+bounces-252600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9943FD01502
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 07:56:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A5533066295
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 06:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1970D272E6D;
	Thu,  8 Jan 2026 06:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i4akPVMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9B53A0B2D
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 06:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767855149; cv=none; b=AuooEq9fNmBDpSpEvypqmjJpqtUOnJyi+uhPj8eC8WXoIcFsxXZ1nTxwCLUvr91k4EPSiZa1j5xQ+fsjSRSAR/lzYsxYmW1zIaZY4l1tiYDIn6w89tQyYpqZ1e2BNK/4K5q/Iw8Bv/RDhg7Py0zVffQ+thfK+dW7nEcmgdFDfuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767855149; c=relaxed/simple;
	bh=KYWavFhptYq/+KkoSSqiFI0kX9Ue8uzJ7XFMKzMqwLU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mSPlcthRgWIKcO83rAwCjPgI+5vCsDoFF8SoeGqeSWSy6lGGHvQvABw0YdOptIomwbrY/rWnXPJsZxtXzQ+u1mbp/mdOMZHNPidcCNUs9b8VdLTHwb/vWs9QgqYlRJSrm5wiubizFWQINa2AMQK8Q6JVyaJ6wE0G3hyyFNwhuwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i4akPVMu; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a0a33d0585so20962415ad.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 22:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767855147; x=1768459947; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ui1md6GLIAbVR5qdoR2S2qe4tIaQfGaBLcdNaqS2s2A=;
        b=i4akPVMuOlkc5FLrbMsC1p8ePrESAVd3UprZl9C0bzyEll7PtPqTEtaOmilkduk+1m
         I3ORqypWAraplHoiBO+ZbnOP6UmDoCg3LeptkmL9p4okHe4QahnumOgYRhbHQ2+XKL8U
         orL7j6Ve44WCe1JYRzKQPfm+vF78mJKq3D8aJhK+SGzgyDfI+6byusB5H1N2PJjAZFrI
         L+ZpoHkVv3XmhESJGDydzaw4+y/aXXABEMpVyTXZqOlxiJE46blCAA8wkDehyv/M0QTC
         lSguA6b9Jeb6xt94GI6e7NFS68cWE5y72lVOs3VsptniwNeTl5vjJGCQOfKfAbcLp7w7
         K1oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767855147; x=1768459947;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ui1md6GLIAbVR5qdoR2S2qe4tIaQfGaBLcdNaqS2s2A=;
        b=BX4y6ApBNjiqJZ6XZNrWkR7/9BvXGgU0pCjaADRqS23IR5K+u8FnFJwTsXdL13lnsI
         Qjv+9YEb910uGXMijrpJzA7F8qPy5Vl3F3h+ad4sw33gs1j6AfowSxuHUn9SNDV9s7cR
         k/DOlE0oIaqDacvqYjvGAIIxsoipb8leYeWhaojM9O2Itlqz0tE7/L3PFGrZoLjGqr7m
         G+SvqbU+fA838twybr6mDS5L2J9ndNAVslfuZ5wsUS0Dbd6MNkOQx5SeHPoAgIm4G7fd
         AdWpYvzDkLqd2g7PXJ+n78oQ1k4B2npCtX54CILdqBvtryitRAJVNiBsgX593x4GVjsD
         p4Ig==
X-Forwarded-Encrypted: i=1; AJvYcCXaYayh/BJEvzLoqPTLOVgxQMlTix/zCyFR6uxRCvo7u7EIcoFGcQR/kjCTL333qtnm22cjdpWEXZNd@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8bWuonFOgVjJCsUELfKFQirCw2i53zDeQPBxaQ6npVnD4A0ws
	rkxPNbsrdwVwJvgwRkyeMU9wfQ1kQF1PiK4brwiMbVF1Vg1ACben+I7MIvnHbZAS7Qc=
X-Gm-Gg: AY/fxX6icSq7fI80txp+9z2N4h8sVzJSQ8UvFTBQv8NFrDGvs8asZpH4cYbsYChhRoL
	XRpBZKpvkhiQaeM0SDURwS3EQXIAE2ekVEV4SKa7Zk0hS1kIntuke9leLtAqC3P6yqmFbKmiOc3
	+n4BDhjEZjhLPCaX/PTojMDPdEBS2ZAE/zPfL8ChjegvcJagox3RugYTT/DFpnGagzT+kduOipZ
	V6+WxdiOw0fp8a14nS7xc99/AsSthSkFJJ4rrJ0Rx9jdzLeZqUs0eWTrlv85xAOgUM/dfRfCdKI
	DehvJhnugxVvZhFdBATK18DgJr8sgQLTQK+0j5EIWC3Uipn+8M8+KT16j6BlZjdboVI8wzXxYMP
	W0o0q/+dZUK+XuAdhaTFCpIWhJMTnNtS0ETabOtEps1SFpv80xgAiATJM1BDuZmYlKW2+j8PfJp
	B4FMmd33/djPI=
X-Google-Smtp-Source: AGHT+IHDhLngCXk0+vr5I8WQ83ajbpSXd1J3uu2NiCef0XJDNyI8VNxhq7B1GWkAhONpFP7xS/AZaQ==
X-Received: by 2002:a17:90b:3e43:b0:34c:cb3c:f544 with SMTP id 98e67ed59e1d1-34f68c50868mr4787427a91.14.1767855146587;
        Wed, 07 Jan 2026 22:52:26 -0800 (PST)
Received: from localhost ([122.172.80.63])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c5302c61sm6658548b3a.42.2026.01.07.22.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 22:52:25 -0800 (PST)
Date: Thu, 8 Jan 2026 12:22:23 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Joshua Yeong <joshua.yeong@starfivetech.com>
Cc: "rahul@summations.net" <rahul@summations.net>, 
	"anup@brainfault.org" <anup@brainfault.org>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "pjw@kernel.org" <pjw@kernel.org>, 
	"palmer@dabbelt.com" <palmer@dabbelt.com>, "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, 
	"alex@ghiti.fr" <alex@ghiti.fr>, "rafael@kernel.org" <rafael@kernel.org>, 
	"sboyd@kernel.org" <sboyd@kernel.org>, "jms@oss.tenstorrent.com" <jms@oss.tenstorrent.com>, 
	"darshan.prajapati@einfochips.com" <darshan.prajapati@einfochips.com>, "charlie@rivosinc.com" <charlie@rivosinc.com>, 
	"dfustini@oss.tenstorrent.com" <dfustini@oss.tenstorrent.com>, "michal.simek@amd.com" <michal.simek@amd.com>, 
	"cyy@cyyself.name" <cyy@cyyself.name>, "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>, 
	"andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>
Subject: Re: [PATCH 4/5] cpufreq: Add cpufreq driver for the RISC-V RPMI
 performance service group
Message-ID: <paq3iilgrnuhf4aia7umhc6m26ghusyibptutvrpfm4wmoew3i@repcvxossgot>
References: <20260106092117.3727152-1-joshua.yeong@starfivetech.com>
 <20260106092117.3727152-5-joshua.yeong@starfivetech.com>
 <5nfljdaewlmafydt5a3jijjlr2krszbnadmjkpkgo7in364yzy@tiejhive2siv>
 <SH0PR01MB084174DCDA011CDD9D6557FFF9852@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SH0PR01MB084174DCDA011CDD9D6557FFF9852@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>

On 08-01-26, 06:48, Joshua Yeong wrote:
> On Thursday, January 8, 2026 11:27 AM, Viresh Kumar <viresh.kumar@linaro.org> wrote:
> 
> > On 06-01-26, 17:21, Joshua Yeong wrote:
> > > diff --git a/drivers/cpufreq/Kconfig b/drivers/cpufreq/Kconfig index 
> > > 78702a08364f..9aaa1f71000e 100644
> > > --- a/drivers/cpufreq/Kconfig
> > > +++ b/drivers/cpufreq/Kconfig
> > > @@ -4,8 +4,8 @@ menu "CPU Frequency scaling"
> > >  config CPU_FREQ
> > >  	bool "CPU Frequency scaling"
> > >  	help
> > > -	  CPU Frequency scaling allows you to change the clock speed of 
> > > -	  CPUs on the fly. This is a nice method to save power, because 
> > > +	  CPU Frequency scaling allows you to change the clock speed of
> > > +	  CPUs on the fly. This is a nice method to save power, because
> > >  	  the lower the CPU clock speed, the less power the CPU consumes.
> > >  
> > >  	  Note that this driver doesn't automatically change the CPU @@ 
> > > -65,7 +65,7 @@ config CPU_FREQ_DEFAULT_GOV_USERSPACE
> > >  	select CPU_FREQ_GOV_USERSPACE
> > >  	help
> > >  	  Use the CPUFreq governor 'userspace' as default. This allows
> > > -	  you to set the CPU frequency manually or when a userspace 
> > > +	  you to set the CPU frequency manually or when a userspace
> > >  	  program shall be able to set the CPU dynamically without having
> > >  	  to enable the userspace governor manually.
> > >  
> > > @@ -134,7 +134,7 @@ config CPU_FREQ_GOV_USERSPACE
> > >  	help
> > >  	  Enable this cpufreq governor when you either want to set the
> > >  	  CPU frequency manually or when a userspace program shall
> > > -	  be able to set the CPU dynamically, like on LART 
> > > +	  be able to set the CPU dynamically, like on LART
> > >  	  <http://www.lartmaker.nl/>.
> > >  
> > >  	  To compile this driver as a module, choose M here: the @@ -147,11 
> > > +147,11 @@ config CPU_FREQ_GOV_ONDEMAND
> > >  	select CPU_FREQ_GOV_COMMON
> > >  	help
> > >  	  'ondemand' - This driver adds a dynamic cpufreq policy governor.
> > > -	  The governor does a periodic polling and 
> > > +	  The governor does a periodic polling and
> > >  	  changes frequency based on the CPU utilization.
> > >  	  The support for this governor depends on CPU capability to
> > >  	  do fast frequency switching (i.e, very low latency frequency
> > > -	  transitions). 
> > > +	  transitions).
> > >  
> > >  	  To compile this driver as a module, choose M here: the
> > >  	  module will be called cpufreq_ondemand.
> > > @@ -367,4 +367,18 @@ config ACPI_CPPC_CPUFREQ_FIE
> > >  
> > >  endif
> >
> > Unrelated changes ?
> 
> Will remove the blank space in V2 patch.

You actually removed the unnecessary blank spaces at the end of many lines,
which is a good change but in a wrong patch. If you want to fix that, send it
separately.

-- 
viresh

