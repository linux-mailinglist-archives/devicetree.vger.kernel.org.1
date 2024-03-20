Return-Path: <devicetree+bounces-52040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F6F881A28
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 00:27:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9CEFF1F21FC6
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 23:27:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F9BF8624D;
	Wed, 20 Mar 2024 23:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="i2cfZ1FE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FB58624B
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 23:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710977237; cv=none; b=ujM6YwNKEsFooGst4qRCpdi/uaAwCIF/jMhByVkUuT05bFjC3tXgb4+EMF9EXt5KcqjVcjF2Fv9aD48ZQ8ux0UmaTUiVxz2Lgaowg23Cn2ii/W7B5q4oU9u8BsGAe2kDUOM2KK5iDV5zf/XoKTH+K8jogYSsZekvry6PuCaL61Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710977237; c=relaxed/simple;
	bh=LEtK8/Irn1SeDDdEPxmXnIY2M7EQZz0VFSkinrgsrwQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CcXCI2QfkzLdrkuRCX9Y+Tgz+7McSqvosbnXajVScqipyjxD48pQTYJk7+iXjeeq2aUKQLeYbXGg6gCO4upCuOb3J91YF+WvY2YeQGAFBZSd3Tz7xDyqiiNRqyX9U5CE4pO9sudi58ylvboXl0l99qsVpD6DSZOC2y2J70SLUFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=i2cfZ1FE; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dc74435c428so331952276.2
        for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 16:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1710977234; x=1711582034; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q6wHVvQOpEVBe9GN/RDfS0/7UHobpz6yHjFxam80y4A=;
        b=i2cfZ1FErcW8hCzBGKpd9pYxgNJhFAwgd/1gylI00ZqWOPtatYoERChojvyPGaJUDJ
         KORISgCBpbhzHikyJbc1IYBkxzBQ8BcO/mlXlnFkLlyggMgK8T7skSAYuwg9fZyaAnAo
         s8SFdjh3MXJstRfqjYWLHEwqc2XZ9wGNANTFdEMPN5G/P1Yt/q+zBSttQ8adsnRMn9Yp
         Df0+e6IFyIYn/3aU6EacXIt/FBgjfm1L8nMYFlHi02fz7A+GVqqikkCi95hzqxpQDp04
         V66A7Cuqsq8WVYyUKBHl0SI9YmnNj41eO7I1Mi+lNsVVgo3bmmFW+lyhNMrLzVqLS8fb
         QSFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710977234; x=1711582034;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q6wHVvQOpEVBe9GN/RDfS0/7UHobpz6yHjFxam80y4A=;
        b=ltTFiKSVNkoEuEiQimg90a6xlErgI9JCPD8XRH40U9QF36FWHoKmfCH3F3ypPD5k+N
         bl/+V1Qjz4jLOhFLn1dQbT/e58NoxTLfJMffZbJ4DaI/6k57BLzRX4OR1S26pOyAaw6r
         PER/begvCTyLuH2mJB7iRHturSWB+Q+VHXiRAD5X3B+YPMYTlypz04PeQDUlCensEuYZ
         bLSD6LKpR7+JU+FKueFHsauAUlqVRFUO0kQ0t4O30y0928rVHUivUQMtc9DqAJJlLj0y
         5+Oy1pI2PP8N5rXsKKEU7gQWC31gILh8H1bjZluiT09HA21yNYAqCcXWL7WeNEZMvheM
         BSzg==
X-Forwarded-Encrypted: i=1; AJvYcCWdR+Wcpe3wBGDWevhYOmGlKqAddrYIfEh9ogwKwo7wRJBmon/a5AbYAyYjnw+hGQeeGbOSSeqL2rOYkolO9R+pPZglVVv5PHI9NA==
X-Gm-Message-State: AOJu0Ywd0D+ygcu1w4EF+vsFKTrbYpK9+5evFgOw1JepRCbqH5eY99Qt
	mEVZMnBtrp0hlRx9LntjtvMgdAd3XdyI/UzlFEDOH10B+oDIYHpHNxzbuUf7HmHN4RrA2rbaQWi
	ufy+Qel4vdRRpvtzIWuzEzsAy3BZEnIG57B1SGw==
X-Google-Smtp-Source: AGHT+IHMZiJ7GkUOJyGqjV4avkqTTAvlzqr7ytyomStzfgostSKHBO29LXnvCAgrpDc5T+ElSP6cMdrouh2QdUXOToE=
X-Received: by 2002:a25:b847:0:b0:dc6:da83:88e6 with SMTP id
 b7-20020a25b847000000b00dc6da8388e6mr3262598ybm.32.1710977234540; Wed, 20 Mar
 2024 16:27:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319215915.832127-1-samuel.holland@sifive.com>
 <20240319215915.832127-6-samuel.holland@sifive.com> <CAKC1njSg9-hJo6hibcM9a-=FUmMWyR39QUYqQ1uwiWhpBZQb9A@mail.gmail.com>
 <40ab1ce5-8700-4a63-b182-1e864f6c9225@sifive.com> <17BE5F38AFE245E5.29196@lists.riscv.org>
In-Reply-To: <17BE5F38AFE245E5.29196@lists.riscv.org>
From: Deepak Gupta <debug@rivosinc.com>
Date: Wed, 20 Mar 2024 16:27:03 -0700
Message-ID: <CAKC1njTnheUHs44qUE2sTdr4N=pwUiOc2H1VEMYzYM84JMwe9w@mail.gmail.com>
Subject: Re: [RISC-V] [tech-j-ext] [RFC PATCH 5/9] riscv: Split per-CPU and
 per-thread envcfg bits
To: debug@rivosinc.com
Cc: Samuel Holland <samuel.holland@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org, 
	tech-j-ext@lists.risc-v.org, Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com, 
	Evgenii Stepanov <eugenis@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Guo Ren <guoren@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"

> > >
> > > And instead of context switching in `_switch_to`,
> > > In `entry.S` pick up `envcfg` from `thread_info` and write it into CSR.
> >
> > The immediate reason is that writing envcfg in ret_from_exception() adds cycles
> > to every IRQ and system call exit, even though most of them will not change the
> > envcfg value. This is especially the case when returning from an IRQ/exception
> > back to S-mode, since envcfg has zero effect there.
> >
> > The CSRs that are read/written in entry.S are generally those where the value
> > can be updated by hardware, as part of taking an exception. But envcfg never
> > changes on its own. The kernel knows exactly when its value will change, and
> > those places are:
> >
> >  1) Task switch, i.e. switch_to()
> >  2) execve(), i.e. start_thread() or flush_thread()
> >  3) A system call that specifically affects a feature controlled by envcfg
>
> Yeah I was optimizing for a single place to write instead of
> sprinkling at multiple places.
> But I see your argument. That's fine.
>

Because this is RFC and we are discussing it. I thought a little bit
more about this.

If we were to go with the above approach that essentially requires
whenever a envcfg bit changes, `sync_envcfg`
has to be called to reflect the correct value.

What if some of these features enable/disable are exposed to `ptrace`
(gdb, etc use cases) for enable/disable.
How will syncing work then ?

I can see the reasoning behind saving some cycles during trap return.
But `senvcfg` is not actually a user state, it
controls the execution environment configuration for user mode. I
think the best place for this CSR to be written is
trap return and writing at a single place from a single image on stack
reduces chances of bugs and errors. And allows
`senvcfg` features to be exposed to other kernel flows (like `ptrace`)

We can figure out ways on how to optimize in trap return path to avoid
writing it if we entered and exiting on the same
task.

