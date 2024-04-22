Return-Path: <devicetree+bounces-61377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F221F8AC732
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:36:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A931D285DD5
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 08:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7E14AEC1;
	Mon, 22 Apr 2024 08:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="bPcNsbiv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE27179AB
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 08:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713774967; cv=none; b=hMfl3uHsZLwimNJ7gGygTReihzrEf+8M+wq9KkkJ5xAaEn74Hiq55hEyi8mKNwxqGECR52r/oNJlacGHCoqHh+TBrCgf6DDcagUJGgv3Rw3iTLd5sntKZYNkGw738bcEOo09aKhT4Y+9b3/lcQ8+gNkm9y7BYnnvS78V+y7unM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713774967; c=relaxed/simple;
	bh=UKtPplNQHMi8I1IwiRie/AvYDnG4rZG5m+j4VYNUn4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O3fE1JMDnXPEy2029pfzV38iHAJvGEWdTB0Uf7hYIYwCei0eFirIOnz7w2Z9AbIHqk2oL4UI/AV9Otvt+COvC9MKMkFC/Fl2/+dHmZxiS52NDinXH5HF7CVvQz8I50quLJTeFoYPYxqadg/kp5JlQG5Mc/4o/4k6lfD0YGsowUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=bPcNsbiv; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-417e327773cso27714805e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 01:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713774964; x=1714379764; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VBzKYSZ8M382Gw3Mpbo+Hjy3YjNSp2OmuE1UXjfeuZA=;
        b=bPcNsbivyufoLqhEI+uCtL5BQUVR+aeTH8A1XdaH3UO67JHBh94Yngn1qwxtk68A1K
         Gvj+j4LrIFAcxZtg1QwiyIebGK7AsjJ1lHuJsXjYRJkrveuIIbSzanTwD/XoOkxtpBDP
         OVjS+tzdloVfr3GQMayqvRmnC4HA7gCW+MFdPK29MdQ/K5KlJb+Jb4BZonNHNSnN8mkn
         qZfzaSLBcdZ3VI5p9jmk5Ex8m3MCI1MS+Gs+bN9BYo3056IzOeOOkSYNLgeirbBUszwa
         Oc1uAHHykYENlJsi65nLlZBPbFOydx0lXKhAjf+yf9g5yUVQBU+h8dG12K638fhsBZ/O
         lZOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713774964; x=1714379764;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VBzKYSZ8M382Gw3Mpbo+Hjy3YjNSp2OmuE1UXjfeuZA=;
        b=Gjx1ZbW86H0BcnzKd6nl1geEKpcEdb5FrQf7R1LlkBexd9jV9M9tffclE2mVPH7/gk
         vdfpQwWqe1kLiA0c+HYp6WmRmkDYhiBBF6R7n9xLd2drv5Phx0Yjj42jg/o9KpT2Jse+
         vUzZn7JgqIr9oB822NOxI7K0L1YXUP2/NW9qiR+hd/o5t75eOMyy1asSMfZ9UeuCK4j4
         DWoRXewqa15DdMUG4H/ILJzHepswJgrxgUKu24n13lH16YYQY6RWO9OCqciDyBGoY0xf
         i9RNNVTK3aJxn+GkW66LORe4sxtFwjyP3ZYBhivRyK5Y1Uf8m9u18Bzpn+hvO54CvA2S
         zd7A==
X-Forwarded-Encrypted: i=1; AJvYcCVhtuRyNemtFyZRRD9kpScMdxYT2xmpBfNZgUzhM//l4wHE7gkmF2RaAplY2IVXLYu/qKJ8JN9IHPxoFkFOLfZsLIz+7RWKEmioZw==
X-Gm-Message-State: AOJu0YxbuGgd2yJltXes4rAd6AmrTjofmkzNJZNDJ4UjRZTEykNDomrs
	fMme2FhRmn8i+G5stvXf6V9DvdCDL7ygCXwzxJiRiaYsXW9OWvM2A81BSCEBv5Y=
X-Google-Smtp-Source: AGHT+IFhy5bPbMLwyziz6VsrU6byy5TIqllo/g3dOSSggWm8NTvoG2OcCFhhK56F2HASPigLSiOq6w==
X-Received: by 2002:a05:6000:b8c:b0:346:f830:db09 with SMTP id dl12-20020a0560000b8c00b00346f830db09mr6393629wrb.31.1713774963808;
        Mon, 22 Apr 2024 01:36:03 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id x5-20020a5d6b45000000b003472489d26fsm11448472wrw.19.2024.04.22.01.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 01:36:03 -0700 (PDT)
Date: Mon, 22 Apr 2024 10:36:02 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Andrea Parri <parri.andrea@gmail.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, conor.dooley@microchip.com, anup@brainfault.org, 
	atishp@atishpatra.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, christoph.muellner@vrull.eu, heiko@sntech.de, 
	charlie@rivosinc.com, David.Laight@aculab.com, luxu.kernel@bytedance.com
Subject: Re: [PATCH v2 3/6] riscv: Add Zawrs support for spinlocks
Message-ID: <20240422-97341bd5e6f69d54eeaba632@orel>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
 <20240419135321.70781-11-ajones@ventanamicro.com>
 <ZiWCP6f6zZ3dKXfN@andrea>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiWCP6f6zZ3dKXfN@andrea>

On Sun, Apr 21, 2024 at 11:16:47PM +0200, Andrea Parri wrote:
> On Fri, Apr 19, 2024 at 03:53:25PM +0200, Andrew Jones wrote:
> > From: Christoph M??llner <christoph.muellner@vrull.eu>
> > 
> > RISC-V code uses the generic ticket lock implementation, which calls
> > the macros smp_cond_load_relaxed() and smp_cond_load_acquire().
> > Introduce a RISC-V specific implementation of smp_cond_load_relaxed()
> > which applies WRS.NTO of the Zawrs extension in order to reduce power
> > consumption while waiting and allows hypervisors to enable guests to
> > trap while waiting. smp_cond_load_acquire() doesn't need a RISC-V
> > specific implementation as the generic implementation is based on
> > smp_cond_load_relaxed() and smp_acquire__after_ctrl_dep() sufficiently
> > provides the acquire semantics.
> > 
> > This implementation is heavily based on Arm's approach which is the
> > approach Andrea Parri also suggested.
> > 
> > The Zawrs specification can be found here:
> > https://github.com/riscv/riscv-zawrs/blob/main/zawrs.adoc
> > 
> > Signed-off-by: Christoph M??llner <christoph.muellner@vrull.eu>
> > Co-developed-by: Andrew Jones <ajones@ventanamicro.com>
> > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > ---
> >  arch/riscv/Kconfig                | 13 ++++++++
> >  arch/riscv/include/asm/barrier.h  | 45 ++++++++++++++++++---------
> >  arch/riscv/include/asm/cmpxchg.h  | 51 +++++++++++++++++++++++++++++++
> >  arch/riscv/include/asm/hwcap.h    |  1 +
> >  arch/riscv/include/asm/insn-def.h |  2 ++
> >  arch/riscv/kernel/cpufeature.c    |  1 +
> >  6 files changed, 98 insertions(+), 15 deletions(-)
> 
> Doesn't apply to riscv/for-next (due to, AFAIU,
> 
>   https://lore.kernel.org/all/171275883330.18495.10110341843571163280.git-patchwork-notify@kernel.org/ ).

I based it on -rc1. We recently discussed what we should base on, but
I couldn't recall the final decision, so I fell back to the old approach.
I can rebase on for-next or the latest rc if that's the new, improved
approach.

> 
> But other than that, this LGTM.  One nit below.
> 
> 
> > -#define __smp_store_release(p, v)					\
> > -do {									\
> > -	compiletime_assert_atomic_type(*p);				\
> > -	RISCV_FENCE(rw, w);						\
> > -	WRITE_ONCE(*p, v);						\
> > -} while (0)
> > -
> > -#define __smp_load_acquire(p)						\
> > -({									\
> > -	typeof(*p) ___p1 = READ_ONCE(*p);				\
> > -	compiletime_assert_atomic_type(*p);				\
> > -	RISCV_FENCE(r, rw);						\
> > -	___p1;								\
> > -})
> > -
> >  /*
> >   * This is a very specific barrier: it's currently only used in two places in
> >   * the kernel, both in the scheduler.  See include/linux/spinlock.h for the two
> > @@ -70,6 +56,35 @@ do {									\
> >   */
> >  #define smp_mb__after_spinlock()	RISCV_FENCE(iorw, iorw)
> >  
> > +#define __smp_store_release(p, v)					\
> > +do {									\
> > +	compiletime_assert_atomic_type(*p);				\
> > +	RISCV_FENCE(rw, w);						\
> > +	WRITE_ONCE(*p, v);						\
> > +} while (0)
> > +
> > +#define __smp_load_acquire(p)						\
> > +({									\
> > +	typeof(*p) ___p1 = READ_ONCE(*p);				\
> > +	compiletime_assert_atomic_type(*p);				\
> > +	RISCV_FENCE(r, rw);						\
> > +	___p1;								\
> > +})
> 
> Unrelated/unmotivated changes.

The relation/motivation was to get the load/store macros in one part of
the file with the barrier macros in another. With this change we have

 __mb
 __rmb
 __wmb

 __smp_mb
 __smp_rmb
 __smp_wmb

 smp_mb__after_spinlock

 __smp_store_release
 __smp_load_acquire
 smp_cond_load_relaxed

Without the change, smp_mb__after_spinlock is either after all the
load/stores or in between them.

I didn't think the reorganization was worth its own patch, but I could
split it out (or just drop it).

Thanks,
drew

