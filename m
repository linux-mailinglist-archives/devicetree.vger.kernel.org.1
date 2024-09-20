Return-Path: <devicetree+bounces-104219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E864697DA49
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 23:33:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 825202831DC
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 21:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94210186E42;
	Fri, 20 Sep 2024 21:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="R3R8Rv99"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 967821862B3
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 21:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726867977; cv=none; b=Gr26uLY62VbTY6ykfEI9PjoOC8yGoozsbMIq0Yf+EIUk1GEO0u0JmtuvxRgUlwKHX30ih2H6c7N1JuuMeU1pHkcfBX5ehJwbcAZc6EcWeMQuqdh8OHkb1H7o4Q98/QQrENCwiH6mrDRYLZnl3mLQ5VYSZxIByv1NfFBAOee200k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726867977; c=relaxed/simple;
	bh=jJbw/9xzyIfVzZRQtRUX26vvhoN6sO9ID/AnJLHVApQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hxTlgcsybwEQRTk8RFGTAyn9sAsdUsfcBY5SPdKUQaH/jeljwmZxO/MXXO7cWDsA0jJsE/+/e+3RKvXdRzJ3vgmInwsPkxyKdtvrpJBw/q7RsBvxi4XxCDpkYQiPbQpsh8A1XRqGl/+O8KCcMe1TIZ28DjAGZvj6VbbCt6zXiQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=R3R8Rv99; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2f761461150so32668031fa.0
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 14:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726867974; x=1727472774; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yedMi0rr2m7jZhDqBPtfn8qdlTLdCHVXIS1wYbW0HHw=;
        b=R3R8Rv99nofduYuM29gb847cmF53/p/mS0C8zq5x677LNYsQAtL8tggxW1sd7SDlLF
         8cHZ4Go/4fBDNuBT5Bwa6WXrcCopZCpxhl3tFfPanZLfXEztph0b8/N5XD6T2bVEvEYn
         IIu7syvjkMddUo+OLP8d0efU0U6kCRlFpKIjirc49Thv4dizqVnItMxvwdiInDTvuMVI
         BAD3rm7r/C0fMmSov5JVVJNSL9xi9YOmDfmbh2Idmagnx5HWpcaFAQ6ab+vmNq42FXU/
         wwS3rMPMAnZJnBbIt8QN45t600UI/kpDSAJKYTRd86QF6wCUSRcoNe33L/gH1V0/U7PE
         gZ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726867974; x=1727472774;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yedMi0rr2m7jZhDqBPtfn8qdlTLdCHVXIS1wYbW0HHw=;
        b=OMKv7jb9+T36QRu8wEiwwU6jsDHZqfhQ6lJdevwiashwlN4a6vj8y5VcVUQHSlK1BV
         4zegd7t41UjrHlYku4Ms4zU0y7m2FwxhWfuckhTs4v0qQH9v1Yvv7Crsv8GS97+7gYNE
         l5qcfghdKLnLTN9+4RSVCpovJ+DCNMaxAZzTpeKFxvCotd5n9UwjwSJf4qE2Jv8pQXn0
         e+VIvfPAozRPxx8ysX9ps1iSQqJdCN7HSQSHjZDLOxFCw9McoMq02gAaNcIkmiM+IbW0
         QFEnKqulh1GQyZaQFeJ0tWEDoDvzLzgsR1/jB8StWJ1Hi0UuP3ql+AfqxgsLxppG9lVA
         963Q==
X-Forwarded-Encrypted: i=1; AJvYcCXx1p34gNQ1rDr11oZjnWbuxhZhnEdFetT8t5Dbuotqk9dNLRQg66C8Y11xtixeK88LYLf5UbaEM8vj@vger.kernel.org
X-Gm-Message-State: AOJu0YxaL6IboY4tBEaflaC9E3lRLmmydFXc5RqQuim1ZHDatqzlxSo9
	HEO89J6UijtpgAiw1/tpiK7ryrprfsQAB8v1OWq6hlSexFqBjxRaLS60fkVIxbo=
X-Google-Smtp-Source: AGHT+IEaFYnRpbuoQr3t3E0N+OSqX5dBzKegFela78N+6cNOl4laXXImQCFB5g8pd4nLbdJoGf0Uxw==
X-Received: by 2002:a2e:602:0:b0:2f7:6653:8053 with SMTP id 38308e7fff4ca-2f7cb31b975mr27279601fa.18.1726867973513;
        Fri, 20 Sep 2024 14:32:53 -0700 (PDT)
Received: from ghost (93-43-80-122.ip91.fastwebnet.it. [93.43.80.122])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90612b33d9sm887542066b.114.2024.09.20.14.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 14:32:52 -0700 (PDT)
Date: Fri, 20 Sep 2024 23:32:49 +0200
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
Message-ID: <Zu3qAdGYJfNPTK15@ghost>
References: <20240820152424.1973078-1-jesse@rivosinc.com>
 <mhng-07137536-28ef-4262-a165-6388fffd2599@palmer-ri-x1c9>
 <Zu3illShBOscs+zN@ghost>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zu3illShBOscs+zN@ghost>

On Fri, Sep 20, 2024 at 11:01:10PM +0200, Charlie Jenkins wrote:
> On Fri, Sep 20, 2024 at 05:57:22AM -0700, Palmer Dabbelt wrote:
> > On Tue, 20 Aug 2024 08:24:18 PDT (-0700), jesse@rivosinc.com wrote:
> > > Adds support for detecting and reporting the speed of unaligned vector
> > > accesses on RISC-V CPUs. Adds vec_misaligned_speed key to the hwprobe
> > > adds Zicclsm to cpufeature and fixes the check for scalar unaligned
> > > emulated all CPUs. The vec_misaligned_speed key keeps the same format
> > > as the scalar unaligned access speed key.
> > > 
> > > This set does not emulate unaligned vector accesses on CPUs that do not
> > > support them. Only reports if userspace can run them and speed of
> > > unaligned vector accesses if supported.
> > > 
> > > The Zicclsm is patches are no longer related to this set.
> > > 
> > > Changes in v6:
> > >  Added ("RISC-V: Scalar unaligned access emulated on hotplug CPUs")
> > > 
> > > Changes in V8:
> > >  Dropped Zicclsm
> > >  s/RISCV_HWPROBE_VECTOR_MISALIGNED/RISCV_HWPROBE_MISALIGNED_VECTOR/g
> > >   to match RISCV_HWPROBE_MISALIGNED_SCALAR_*
> > >  Rebased onto palmer/fixes (32d5f7add080a936e28ab4142bfeea6b06999789)
> > > 
> > > Changes in V9:
> > >  Missed a RISCV_HWPROBE_VECTOR_MISALIGNED...
> > > 
> > > Jesse Taube (6):
> > >   RISC-V: Check scalar unaligned access on all CPUs
> > >   RISC-V: Scalar unaligned access emulated on hotplug CPUs
> > >   RISC-V: Replace RISCV_MISALIGNED with RISCV_SCALAR_MISALIGNED
> > >   RISC-V: Detect unaligned vector accesses supported
> > >   RISC-V: Report vector unaligned access speed hwprobe
> > >   RISC-V: hwprobe: Document unaligned vector perf key
> > > 
> > >  Documentation/arch/riscv/hwprobe.rst       |  16 +++
> > >  arch/riscv/Kconfig                         |  57 +++++++-
> > >  arch/riscv/include/asm/cpufeature.h        |  10 +-
> > >  arch/riscv/include/asm/entry-common.h      |  11 --
> > >  arch/riscv/include/asm/hwprobe.h           |   2 +-
> > >  arch/riscv/include/asm/vector.h            |   2 +
> > >  arch/riscv/include/uapi/asm/hwprobe.h      |   5 +
> > >  arch/riscv/kernel/Makefile                 |   3 +-
> > >  arch/riscv/kernel/copy-unaligned.h         |   5 +
> > >  arch/riscv/kernel/fpu.S                    |   4 +-
> > >  arch/riscv/kernel/sys_hwprobe.c            |  41 ++++++
> > >  arch/riscv/kernel/traps_misaligned.c       | 131 +++++++++++++++--
> > >  arch/riscv/kernel/unaligned_access_speed.c | 156 +++++++++++++++++++--
> > >  arch/riscv/kernel/vec-copy-unaligned.S     |  58 ++++++++
> > >  arch/riscv/kernel/vector.c                 |   2 +-
> > >  15 files changed, 465 insertions(+), 38 deletions(-)
> > >  create mode 100644 arch/riscv/kernel/vec-copy-unaligned.S
> > > 
> > > base-commit: 32d5f7add080a936e28ab4142bfeea6b06999789
> > 
> > I get a
> > 
> > arch/riscv/kernel/traps_smisaligned.c: In function 'check_vector_unaligned_access_emulated':
> > arch/riscv/kernel/traps_misaligned.c:591:9: error: unknown register name 'v0' in 'asm'
> >  591 |         __asm__ __volatile__ (
> >      |         ^~~~~~~
> > 
> > on rv32/defconfig.  Looks like just a missing Kconfg guard as this depends
> > on V support in the toolchain.
> 
> There was an interesting iteraction here!
> RISCV_PROBE_VECTOR_UNALIGNED_ACCESS was selecting
> RISCV_VECTOR_MISALIGNED but that bypasses the depends on check of
> RISCV_ISA_V. I'll send an update for Jesse with the fix for that one
> patch.

I take it back, I am not able to reproduce this.
RISCV_PROBE_VECTOR_UNALIGNED_ACCESS is hidden behind "Vector unaligned
Accesses Support" which depends on RISCV_ISA_V. This function that is
erroring has the code:

#ifdef CONFIG_RISCV_VECTOR_MISALIGNED
void check_vector_unaligned_access_emulated(struct work_struct *work __always_unused)
...

Since it is hidden behind CONFIG_RISCV_VECTOR_MISALIGNED, I am unsure
how it is possible that this error is leaking through. The error you
posted is also kind of odd because the first file you have is
"arch/riscv/kernel/traps_smisaligned.c" but the actual file is
"arch/riscv/kernel/traps_misaligned.c".

> - Charlie
> 

