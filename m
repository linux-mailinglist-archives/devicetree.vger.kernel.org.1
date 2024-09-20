Return-Path: <devicetree+bounces-104217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D01B97DA23
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 23:01:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A2D01B21B28
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 21:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97A702E634;
	Fri, 20 Sep 2024 21:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="pP+12XK+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7A11CFB9
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 21:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726866079; cv=none; b=NFT5jD13kv8e34YCUuw3W34Ag6yXzIlA57RoUY2/HYLyYx4e2sWVMdNPBHH2PWXU7THwy8wr9dZHGfmf8tTnbY1fIvxk9ASb4kUu7NUdmXlglFxXtbcJTraMl+136j1c2HS0u/9MkScaeYzGKcT9iKV8kl8ue5sLSt1xnY/MPm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726866079; c=relaxed/simple;
	bh=G+719tl7SzvbLWjElYC0luKqEbiS8grCgsrMvzK1D0I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E3CtZyH9Ag0w7ovhF/cnZr7pFSHaXNippscMVdPu+7F4FgBqWL4KSbGe4gRXHm0GW2VTeG9bxIo8iU6E6sfnJEMJ9ob4DQa+loFNRkkpjNqWVKI/wJ226K/gChIXfrpn54jMULlNO16LKKLf7+/yOH99lqoqQYVQTBUbyM2pNV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=pP+12XK+; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a8d0d82e76aso321722066b.3
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 14:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726866076; x=1727470876; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SHq5Ybd77fru22LRWAFMH7LcFDb7LOvBsmtZa3/3WKE=;
        b=pP+12XK+yTSuKEzzYriLmbHIyx2/bQGx7OhA+guwzD64b9a3TWlzvUukswRdfRsFk3
         BAkjw/sO7Oth3FDd+7uFR2tYQ/21qPSS5N7oaojbJ/X+k/1sIKzZhS/KTbX+R17aTqTN
         4SigdiQZwY31FEPLBoLjt18kEC2EAy/nThM2K6kGcsoYbDDKl50ahCv+w5GjDuCu43Is
         OUmLRleGUvz2stkAvZfrA0ySyPbZ6ggDWPIIkpZDGddWJuHYlbBHB3yCZb8otHhHsG7L
         YZiAny+yTJppRsTLNBOrbCZtf3Vs3ufZukBGyIKHX6Rhw2NQruMDkmWMvDEs0Pi4tgcD
         /cEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726866076; x=1727470876;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SHq5Ybd77fru22LRWAFMH7LcFDb7LOvBsmtZa3/3WKE=;
        b=Iq5dc43kNBVCikAS4paX/fn5XrrXHZ7VkRMYu0+RSDb9s28E5SlDL+eunUI0f6V5q4
         /psdGHndEhpi6SEqDSc0UeBbYH9ZmU2r5yHVJ0bOfTFvOcsBFOoRXEhHvfOnbivti7ML
         uGUV61XKisFtjZu2y0SX/F5ZhF8ySFIrhp0GYFDq8tuK82jdVlrNKqhBGZFtRnC+FSmu
         5s36JIut2y++v2JVI0z0TeUB13xOw1u8GuhMz4PW7CVsvEgHe6Iha01jbTIqaqSAob1k
         jGcwdL0/wKlloZ5nDbFbiQRAfhgVL3ygI9SVN46ewNAYRuJat9VRtSikzdxfxjjEel3+
         WUQA==
X-Forwarded-Encrypted: i=1; AJvYcCVt/NTgnzl5cSY+s3JOhEypv3o8M9IgLaAN0SgVBCyg5AAR0IFR0dPiOiaXLtgkk9yhdW2TYTElpjZn@vger.kernel.org
X-Gm-Message-State: AOJu0YyW7+3PuqBik/63T17/uw1bOdCb8b6BcUfQj2+xlec+eFf7Z8z/
	kPTA4oj4HXnZpG/v9oiI6eR+XMVgWrtor+evS0uKb6F2CUAHNwJeRKG1ZOGL49A=
X-Google-Smtp-Source: AGHT+IFvZutMv3hAi7GK/HNuGy//IeO1PNm9K5DKXlfZOUXeDoDuBbV9l54Y+bWxkkeq8g13dd//OA==
X-Received: by 2002:a17:906:bc08:b0:a7a:a892:8e05 with SMTP id a640c23a62f3a-a90d56bcc1cmr337567866b.33.1726866076039;
        Fri, 20 Sep 2024 14:01:16 -0700 (PDT)
Received: from ghost (93-43-80-122.ip91.fastwebnet.it. [93.43.80.122])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9061116d67sm898128166b.94.2024.09.20.14.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 14:01:14 -0700 (PDT)
Date: Fri, 20 Sep 2024 23:01:10 +0200
From: Charlie Jenkins <charlie@rivosinc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: jesse@rivosinc.com, linux-riscv@lists.infradead.org, corbet@lwn.net,
	Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
	Conor Dooley <conor@kernel.org>, robh@kernel.org,
	krzk+dt@kernel.org, cleger@rivosinc.com,
	Evan Green <evan@rivosinc.com>, ajones@ventanamicro.com,
	xiao.w.wang@intel.com, andy.chiu@sifive.com, ebiggers@google.com,
	greentime.hu@sifive.com, Bjorn Topel <bjorn@rivosinc.com>,
	Heiko Stuebner <heiko@sntech.de>, costa.shul@redhat.com,
	akpm@linux-foundation.org, bhe@redhat.com, apatel@ventanamicro.com,
	zong.li@sifive.com, samitolvanen@google.com,
	ben.dooks@codethink.co.uk, alexghiti@rivosinc.com,
	gustavoars@kernel.org, erick.archer@gmx.com, j.granados@samsung.com,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v9 0/6] RISC-V: Detect and report speed of unaligned
 vector accesses
Message-ID: <Zu3illShBOscs+zN@ghost>
References: <20240820152424.1973078-1-jesse@rivosinc.com>
 <mhng-07137536-28ef-4262-a165-6388fffd2599@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mhng-07137536-28ef-4262-a165-6388fffd2599@palmer-ri-x1c9>

On Fri, Sep 20, 2024 at 05:57:22AM -0700, Palmer Dabbelt wrote:
> On Tue, 20 Aug 2024 08:24:18 PDT (-0700), jesse@rivosinc.com wrote:
> > Adds support for detecting and reporting the speed of unaligned vector
> > accesses on RISC-V CPUs. Adds vec_misaligned_speed key to the hwprobe
> > adds Zicclsm to cpufeature and fixes the check for scalar unaligned
> > emulated all CPUs. The vec_misaligned_speed key keeps the same format
> > as the scalar unaligned access speed key.
> > 
> > This set does not emulate unaligned vector accesses on CPUs that do not
> > support them. Only reports if userspace can run them and speed of
> > unaligned vector accesses if supported.
> > 
> > The Zicclsm is patches are no longer related to this set.
> > 
> > Changes in v6:
> >  Added ("RISC-V: Scalar unaligned access emulated on hotplug CPUs")
> > 
> > Changes in V8:
> >  Dropped Zicclsm
> >  s/RISCV_HWPROBE_VECTOR_MISALIGNED/RISCV_HWPROBE_MISALIGNED_VECTOR/g
> >   to match RISCV_HWPROBE_MISALIGNED_SCALAR_*
> >  Rebased onto palmer/fixes (32d5f7add080a936e28ab4142bfeea6b06999789)
> > 
> > Changes in V9:
> >  Missed a RISCV_HWPROBE_VECTOR_MISALIGNED...
> > 
> > Jesse Taube (6):
> >   RISC-V: Check scalar unaligned access on all CPUs
> >   RISC-V: Scalar unaligned access emulated on hotplug CPUs
> >   RISC-V: Replace RISCV_MISALIGNED with RISCV_SCALAR_MISALIGNED
> >   RISC-V: Detect unaligned vector accesses supported
> >   RISC-V: Report vector unaligned access speed hwprobe
> >   RISC-V: hwprobe: Document unaligned vector perf key
> > 
> >  Documentation/arch/riscv/hwprobe.rst       |  16 +++
> >  arch/riscv/Kconfig                         |  57 +++++++-
> >  arch/riscv/include/asm/cpufeature.h        |  10 +-
> >  arch/riscv/include/asm/entry-common.h      |  11 --
> >  arch/riscv/include/asm/hwprobe.h           |   2 +-
> >  arch/riscv/include/asm/vector.h            |   2 +
> >  arch/riscv/include/uapi/asm/hwprobe.h      |   5 +
> >  arch/riscv/kernel/Makefile                 |   3 +-
> >  arch/riscv/kernel/copy-unaligned.h         |   5 +
> >  arch/riscv/kernel/fpu.S                    |   4 +-
> >  arch/riscv/kernel/sys_hwprobe.c            |  41 ++++++
> >  arch/riscv/kernel/traps_misaligned.c       | 131 +++++++++++++++--
> >  arch/riscv/kernel/unaligned_access_speed.c | 156 +++++++++++++++++++--
> >  arch/riscv/kernel/vec-copy-unaligned.S     |  58 ++++++++
> >  arch/riscv/kernel/vector.c                 |   2 +-
> >  15 files changed, 465 insertions(+), 38 deletions(-)
> >  create mode 100644 arch/riscv/kernel/vec-copy-unaligned.S
> > 
> > base-commit: 32d5f7add080a936e28ab4142bfeea6b06999789
> 
> I get a
> 
> arch/riscv/kernel/traps_smisaligned.c: In function 'check_vector_unaligned_access_emulated':
> arch/riscv/kernel/traps_misaligned.c:591:9: error: unknown register name 'v0' in 'asm'
>  591 |         __asm__ __volatile__ (
>      |         ^~~~~~~
> 
> on rv32/defconfig.  Looks like just a missing Kconfg guard as this depends
> on V support in the toolchain.

There was an interesting iteraction here!
RISCV_PROBE_VECTOR_UNALIGNED_ACCESS was selecting
RISCV_VECTOR_MISALIGNED but that bypasses the depends on check of
RISCV_ISA_V. I'll send an update for Jesse with the fix for that one
patch.

- Charlie


