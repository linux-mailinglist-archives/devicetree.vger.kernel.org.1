Return-Path: <devicetree+bounces-76809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 772A790C1B6
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 04:10:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE42E1C21AAB
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 02:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 796F81804E;
	Tue, 18 Jun 2024 02:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="UO/xovo3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1AC17BD3
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 02:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718676607; cv=none; b=dvNFtOySUz2oHzbsCzRir9Vnm8JWGDMcy0EnuvJgNY5b+CIMK2DH6aawwwPOIYmyZg/s46b6IKaEd6x4n/rzQLioXa29MLJJsOQU5mS2LfX6H8chiP0sceQPV/Yy2WnawQDPI7SlEYqL66gl/9H9xhIAAeZjSe8DCtT6mLMqdrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718676607; c=relaxed/simple;
	bh=bNajcJzXx5/Wonkj829B/CDKnqaDfPWUTLbKJ2I68jM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pka4mwE2vCVk6zwCGmJw0srRBfHx05/Nbloi9JTZ5GElZUFypYzpFOJS7l3NkCpd39qgtHIaLjvHbMdNVnDwWfkPcF6ctCAxu2zZrszz8JKT+1zpH4G8DdaJ/8OVjgwLVIYR2gPhl/NBl3qBaq9laExsLnk7T3NbnSs8bFcZsbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=UO/xovo3; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1f862f7c7edso31412185ad.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 19:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718676604; x=1719281404; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5Xndy+93L0PvbblGx5ld+C08G6bhKG5gHb40mzbcxRA=;
        b=UO/xovo3Q7ByiARZdvI2VACLQKgw13+63HHiXC2Lm6gUqQxYqTm1RXkALhZk1P6lVO
         NQQ8rfLxvHy9ZrvU15y2zSxbRbqPEZVn51iZAWoC71JvnXDghOwisntrlEzhbWN9KZdY
         rjc/BRV31UlANmyMQX6LQKDcN5BcWVGxRYEYSKJeuB1DDU4tDZhtIkmqvB0v8sskX0/d
         +kOmftirpzA4Mrz6nQoasNc24ghVU0RiSolVacW+pqJhm7KjK+QjKbTMOYojzD7zZfuJ
         TSznBGVhGLMcezbZZoC9KSHeZxkHmHKIBgTdwnMFfJfrtynD1igw75L8qTV7TTGXqYNl
         Kpiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718676604; x=1719281404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Xndy+93L0PvbblGx5ld+C08G6bhKG5gHb40mzbcxRA=;
        b=Mggus/x18oCsBtZJP/HkqkcQPfvE6XP444BTcxHTNsMrbJJxXjVUIft+5J53FBOaEQ
         ntNDQ6eibzZBmB21qX0fa0rZ0wVgVysCpVeNYRbtF6GXQPdbhj2iOgoVUvWnZVL9p1No
         Q8VcTY10sA4VLLBu0eZIwm2k+1gzr/s5Q9IIhDRcwXJWZWzRPSNkOwVk9HRXmP2dsTxY
         i1M5dsJzYLvrlfImqEoDZR+e9F60stt8OjGHIX2jzqEqtDP7Smw4xkxnSjL2ADcEVlsk
         IUvA9Yybr7AnDCi0hrVpv9AwJP8RGZy0yr/Bu7gkR32qX2BMLbN0BY2k7QFSFu8EGkRx
         +D/A==
X-Forwarded-Encrypted: i=1; AJvYcCXiWvHhnYg4sqVyv4TU3LizBBSe/E46HIJbjNMSTitDbSwclS1HT3Ejb/+GzItEYU+klyt0nY8cRntZYLm/c6JdoM0i736cJEuzRw==
X-Gm-Message-State: AOJu0YzCd46FSzkjILVmkxdvlQC5RiC+wHK2Ck7MuxxLJpaTFf5NYze3
	bmI5LANs1LX5mTdW+9J6XmPqpRT2gk3CpzfGxgWxjDS5fLcISBwfQ5hWnWXDUtQ=
X-Google-Smtp-Source: AGHT+IEvMO4X4bVjGUZOb1RkdreP0PVhXHDgaQz4UqdogUXbWL7BKr7Z34uF5iwaC8AAhgklCafAVQ==
X-Received: by 2002:a17:902:cec1:b0:1f6:8235:dba7 with SMTP id d9443c01a7336-1f862a0cdedmr121557695ad.69.1718676603896;
        Mon, 17 Jun 2024 19:10:03 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:3b3e:f51e:252a:6811])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e73c3csm85770655ad.102.2024.06.17.19.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 19:10:02 -0700 (PDT)
Date: Mon, 17 Jun 2024 19:09:59 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Jesse Taube <jesse@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Xiao Wang <xiao.w.wang@intel.com>, Andy Chiu <andy.chiu@sifive.com>,
	Eric Biggers <ebiggers@google.com>,
	Greentime Hu <greentime.hu@sifive.com>,
	=?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@rivosinc.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Costa Shulyupin <costa.shul@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>, Anup Patel <apatel@ventanamicro.com>,
	Zong Li <zong.li@sifive.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ben Dooks <ben.dooks@codethink.co.uk>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Erick Archer <erick.archer@gmx.com>,
	Joel Granados <j.granados@samsung.com>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/6] RISC-V: Detect unaligned vector accesses
 supported.
Message-ID: <ZnDsdzv4o/Xz9kWm@ghost>
References: <20240613191616.2101821-1-jesse@rivosinc.com>
 <20240613191616.2101821-5-jesse@rivosinc.com>
 <ZnDmRK0ZtKzmWN5S@ghost>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZnDmRK0ZtKzmWN5S@ghost>

On Mon, Jun 17, 2024 at 06:43:32PM -0700, Charlie Jenkins wrote:
> On Thu, Jun 13, 2024 at 03:16:13PM -0400, Jesse Taube wrote:
> > Run a unaligned vector access to test if the system supports
> > vector unaligned access. Add the result to a new key in hwprobe.
> > This is useful for usermode to know if vector misaligned accesses are
> > supported and if they are faster or slower than equivalent byte accesses.
> > 
> > Signed-off-by: Jesse Taube <jesse@rivosinc.com>
> > ---
> > V1 -> V2:
> >  - Add Kconfig options
> >  - Add insn_is_vector
> >  - Add handle_vector_misaligned_load
> >  - Fix build
> >  - Seperate vector from scalar misaligned access
> >  - This patch was almost completely rewritten
> > ---
> >  arch/riscv/Kconfig                         |  41 +++++++
> >  arch/riscv/include/asm/cpufeature.h        |   7 +-
> >  arch/riscv/include/asm/entry-common.h      |  11 --
> >  arch/riscv/include/asm/hwprobe.h           |   2 +-
> >  arch/riscv/include/asm/vector.h            |   1 +
> >  arch/riscv/include/uapi/asm/hwprobe.h      |   5 +
> >  arch/riscv/kernel/Makefile                 |   4 +-
> >  arch/riscv/kernel/sys_hwprobe.c            |  41 +++++++
> >  arch/riscv/kernel/traps_misaligned.c       | 119 ++++++++++++++++++++-
> >  arch/riscv/kernel/unaligned_access_speed.c |   9 +-
> >  arch/riscv/kernel/vector.c                 |   2 +-
> >  11 files changed, 221 insertions(+), 21 deletions(-)
> > 
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index b94176e25be1..f12df0ca6c18 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -723,6 +723,12 @@ config RISCV_MISALIGNED
> >  	help
> >  	  Embed support for emulating misaligned loads and stores.
> >  
> > +config RISCV_VECTOR_MISALIGNED
> > +	bool
> > +	depends on RISCV_ISA_V
> > +	help
> > +	  Enable detecting support for vector misaligned loads and stores.
> > +
> >  choice
> >  	prompt "Unaligned Accesses Support"
> >  	default RISCV_PROBE_UNALIGNED_ACCESS
> > @@ -774,6 +780,41 @@ config RISCV_EFFICIENT_UNALIGNED_ACCESS
> >  
> >  endchoice
> >  
> > +choice
> > +	prompt "Vector unaligned Accesses Support"
> > +	depends on RISCV_ISA_V
> > +	default RISCV_PROBE_VECTOR_UNALIGNED_ACCESS
> > +	help
> > +	  This determines the level of support for vector unaligned accesses. This
> > +	  information is used by the kernel to perform optimizations. It is also
> > +	  exposed to user space via the hwprobe syscall. The hardware will be
> > +	  probed at boot by default.
> > +
> > +config RISCV_DETECT_VECTOR_UNALIGNED_ACCESS
> 
> This is not used anywhere, what is the reason for including it?
> 
> > +	bool "Detect support for vector unaligned accesses"
> > +	select RISCV_VECTOR_MISALIGNED
> > +	help
> > +	  During boot, the kernel will detect if the system supports vector
> > +	  unaligned accesses.
> > +
> > +config RISCV_PROBE_VECTOR_UNALIGNED_ACCESS
> > +	bool "Probe speed of vector unaligned accesses"
> > +	select RISCV_VECTOR_MISALIGNED
> > +	help
> > +	  During boot, the kernel will run a series of tests to determine the
> > +	  speed of vector unaligned accesses if they are supported. This probing
> > +	  will dynamically determine the speed of vector unaligned accesses on
> > +	  the underlying system if they are supported.
> > +
> > +config CONFIG_RISCV_UNALIGNED_ACCESS_UNSUPPORTED
> 
> This should not be prefixed with CONFIG and does not include VECTOR in
> the name. I assume you meant to put
> "RISCV_VEC_UNALIGNED_ACCESS_UNSUPPORTED" here?
> 
> This was also intentionally left out on the scalar side [1]. The
> implication here is that having this config will cause people to compile
> kernels without unaligned access support which really shouldn't be
> something we are explicitly supporting.
> 
> If somebody does want to support hardware that does not handle vector
> unaligned accesses, the solution should be to add emulation support to
> the kernel.
> 
> Link: https://lore.kernel.org/all/Zd4y5llkvTfKHf6b@ghost/ [1]
> 
> - Charlie
> 
> > +	bool "Assume the system does not support vector unaligned memory accesses"
> > +	help
> > +	  Assume that the system does not support vector unaligned memory accesses.
> > +	  The kernel and userspace programs may run them successfully on systems
> > +	  that do support vector unaligned memory accesses.
> > +
> > +endchoice
> > +
> >  endmenu # "Platform type"
> >  
> >  menu "Kernel features"
> > diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
> > index 347805446151..d0ea5921ab20 100644
> > --- a/arch/riscv/include/asm/cpufeature.h
> > +++ b/arch/riscv/include/asm/cpufeature.h
> > @@ -33,8 +33,8 @@ extern struct riscv_isainfo hart_isa[NR_CPUS];
> >  
> >  void riscv_user_isa_enable(void);
> >  
> > -#if defined(CONFIG_RISCV_MISALIGNED)
> >  bool check_unaligned_access_emulated_all_cpus(void);
> > +#if defined(CONFIG_RISCV_MISALIGNED)
> >  void unaligned_emulation_finish(void);
> >  bool unaligned_ctl_available(void);
> >  DECLARE_PER_CPU(long, misaligned_access_speed);
> > @@ -45,6 +45,11 @@ static inline bool unaligned_ctl_available(void)
> >  }
> >  #endif
> >  
> > +bool check_vector_unaligned_access_emulated_all_cpus(void);
> > +#if defined(CONFIG_RISCV_VECTOR_MISALIGNED)
> > +DECLARE_PER_CPU(long, vector_misaligned_access);
> > +#endif
> > +
> >  #if defined(CONFIG_RISCV_PROBE_UNALIGNED_ACCESS)
> >  DECLARE_STATIC_KEY_FALSE(fast_unaligned_access_speed_key);
> >  
> > diff --git a/arch/riscv/include/asm/entry-common.h b/arch/riscv/include/asm/entry-common.h
> > index 2293e535f865..7b32d2b08bb6 100644
> > --- a/arch/riscv/include/asm/entry-common.h
> > +++ b/arch/riscv/include/asm/entry-common.h
> > @@ -25,18 +25,7 @@ static inline void arch_exit_to_user_mode_prepare(struct pt_regs *regs,
> >  void handle_page_fault(struct pt_regs *regs);
> >  void handle_break(struct pt_regs *regs);
> >  
> > -#ifdef CONFIG_RISCV_MISALIGNED
> >  int handle_misaligned_load(struct pt_regs *regs);
> >  int handle_misaligned_store(struct pt_regs *regs);
> > -#else
> > -static inline int handle_misaligned_load(struct pt_regs *regs)
> > -{
> > -	return -1;
> > -}
> > -static inline int handle_misaligned_store(struct pt_regs *regs)
> > -{
> > -	return -1;
> > -}
> > -#endif
> >  
> >  #endif /* _ASM_RISCV_ENTRY_COMMON_H */
> > diff --git a/arch/riscv/include/asm/hwprobe.h b/arch/riscv/include/asm/hwprobe.h
> > index 150a9877b0af..ef01c182af2b 100644
> > --- a/arch/riscv/include/asm/hwprobe.h
> > +++ b/arch/riscv/include/asm/hwprobe.h
> > @@ -8,7 +8,7 @@
> >  
> >  #include <uapi/asm/hwprobe.h>
> >  
> > -#define RISCV_HWPROBE_MAX_KEY 7
> > +#define RISCV_HWPROBE_MAX_KEY 8
> >  
> >  static inline bool riscv_hwprobe_key_is_valid(__s64 key)
> >  {
> > diff --git a/arch/riscv/include/asm/vector.h b/arch/riscv/include/asm/vector.h
> > index be7d309cca8a..99b0f91db9ee 100644
> > --- a/arch/riscv/include/asm/vector.h
> > +++ b/arch/riscv/include/asm/vector.h
> > @@ -21,6 +21,7 @@
> >  
> >  extern unsigned long riscv_v_vsize;
> >  int riscv_v_setup_vsize(void);
> > +bool insn_is_vector(u32 insn_buf);
> >  bool riscv_v_first_use_handler(struct pt_regs *regs);
> >  void kernel_vector_begin(void);
> >  void kernel_vector_end(void);
> > diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
> > index 023b7771d1b7..2fee870e41bb 100644
> > --- a/arch/riscv/include/uapi/asm/hwprobe.h
> > +++ b/arch/riscv/include/uapi/asm/hwprobe.h
> > @@ -75,6 +75,11 @@ struct riscv_hwprobe {
> >  #define		RISCV_HWPROBE_MISALIGNED_MASK		(7 << 0)
> >  #define RISCV_HWPROBE_KEY_ZICBOZ_BLOCK_SIZE	6
> >  #define RISCV_HWPROBE_KEY_MISALIGNED_PERF	7
> > +#define RISCV_HWPROBE_KEY_VEC_MISALIGNED_PERF	8
> > +#define		RISCV_HWPROBE_VEC_MISALIGNED_UNKNOWN		0
> 
> I appreciate you leaving the key for EMULATED open!
> 
> > +#define		RISCV_HWPROBE_VEC_MISALIGNED_SLOW		2
> > +#define		RISCV_HWPROBE_VEC_MISALIGNED_FAST		3
> > +#define		RISCV_HWPROBE_VEC_MISALIGNED_UNSUPPORTED	4
> >  /* Increase RISCV_HWPROBE_MAX_KEY when adding items. */
> >  
> >  /* Flags */
> > diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> > index 5b243d46f4b1..62ac19c029f1 100644
> > --- a/arch/riscv/kernel/Makefile
> > +++ b/arch/riscv/kernel/Makefile
> > @@ -62,8 +62,8 @@ obj-y	+= probes/
> >  obj-y	+= tests/
> >  obj-$(CONFIG_MMU) += vdso.o vdso/
> >  
> > -obj-$(CONFIG_RISCV_MISALIGNED)	+= traps_misaligned.o
> > -obj-$(CONFIG_RISCV_MISALIGNED)	+= unaligned_access_speed.o
> > +obj-y	+= traps_misaligned.o
> > +obj-y	+= unaligned_access_speed.o
> >  obj-$(CONFIG_RISCV_PROBE_UNALIGNED_ACCESS)	+= copy-unaligned.o
> >  
> >  obj-$(CONFIG_FPU)		+= fpu.o
> > diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
> > index e910e2971984..c40df314058b 100644
> > --- a/arch/riscv/kernel/sys_hwprobe.c
> > +++ b/arch/riscv/kernel/sys_hwprobe.c
> > @@ -194,6 +194,43 @@ static u64 hwprobe_misaligned(const struct cpumask *cpus)
> >  }
> >  #endif
> >  
> > +#ifdef CONFIG_RISCV_VECTOR_MISALIGNED
> > +static u64 hwprobe_vec_misaligned(const struct cpumask *cpus)
> > +{
> > +	int cpu;
> > +	u64 perf = -1ULL;
> > +
> > +	if (IS_ENABLED(CONFIG_RISCV_UNALIGNED_ACCESS_UNSUPPORTED))
> > +		return RISCV_HWPROBE_VEC_MISALIGNED_UNSUPPORTED;
> > +
> > +	/* Return if supported or not even if speed wasn't probed */
> > +	for_each_cpu(cpu, cpus) {
> > +		int this_perf = per_cpu(vector_misaligned_access, cpu);
> > +
> > +		if (perf == -1ULL)
> > +			perf = this_perf;
> > +
> > +		if (perf != this_perf) {
> > +			perf = RISCV_HWPROBE_VEC_MISALIGNED_UNKNOWN;
> > +			break;
> > +		}
> > +	}
> > +
> > +	if (perf == -1ULL)
> > +		return RISCV_HWPROBE_VEC_MISALIGNED_UNKNOWN;
> > +
> > +	return perf;
> > +}
> > +#else
> > +static u64 hwprobe_vec_misaligned(const struct cpumask *cpus)
> > +{
> > +	if (IS_ENABLED(CONFIG_RISCV_UNALIGNED_ACCESS_UNSUPPORTED))
> > +		return RISCV_HWPROBE_VEC_MISALIGNED_UNSUPPORTED;
> > +
> > +	return RISCV_HWPROBE_VEC_MISALIGNED_UNKNOWN;
> > +}
> > +#endif
> > +
> >  static void hwprobe_one_pair(struct riscv_hwprobe *pair,
> >  			     const struct cpumask *cpus)
> >  {
> > @@ -222,6 +259,10 @@ static void hwprobe_one_pair(struct riscv_hwprobe *pair,
> >  		pair->value = hwprobe_misaligned(cpus);
> >  		break;
> >  
> > +	case RISCV_HWPROBE_KEY_VEC_MISALIGNED_PERF:
> > +		pair->value = hwprobe_vec_misaligned(cpus);
> > +		break;
> > +
> >  	case RISCV_HWPROBE_KEY_ZICBOZ_BLOCK_SIZE:
> >  		pair->value = 0;
> >  		if (hwprobe_ext0_has(cpus, RISCV_HWPROBE_EXT_ZICBOZ))
> > diff --git a/arch/riscv/kernel/traps_misaligned.c b/arch/riscv/kernel/traps_misaligned.c
> > index 8fadbe00dd62..6f0264a8c9de 100644
> > --- a/arch/riscv/kernel/traps_misaligned.c
> > +++ b/arch/riscv/kernel/traps_misaligned.c
> > @@ -16,6 +16,7 @@
> >  #include <asm/entry-common.h>
> >  #include <asm/hwprobe.h>
> >  #include <asm/cpufeature.h>
> > +#include <asm/vector.h>
> >  
> >  #define INSN_MATCH_LB			0x3
> >  #define INSN_MASK_LB			0x707f
> > @@ -322,12 +323,37 @@ union reg_data {
> >  	u64 data_u64;
> >  };
> >  
> > -static bool unaligned_ctl __read_mostly;
> > -
> >  /* sysctl hooks */
> >  int unaligned_enabled __read_mostly = 1;	/* Enabled by default */
> >  
> > -int handle_misaligned_load(struct pt_regs *regs)
> > +#ifdef CONFIG_RISCV_VECTOR_MISALIGNED
> > +static int handle_vector_misaligned_load(struct pt_regs *regs)
> > +{
> > +	unsigned long epc = regs->epc;
> > +	unsigned long insn;
> > +
> > +	if (get_insn(regs, epc, &insn))
> > +		return -1;
> > +
> > +	/* Only return 0 when in check_vector_unaligned_access_emulated */
> > +	if (*this_cpu_ptr(&vector_misaligned_access) == RISCV_HWPROBE_VEC_MISALIGNED_UNKNOWN) {
> > +		*this_cpu_ptr(&vector_misaligned_access) = RISCV_HWPROBE_VEC_MISALIGNED_UNSUPPORTED;
> > +		regs->epc = epc + INSN_LEN(insn);
> > +		return 0;
> > +	}
> > +
> > +	/* If vector instruction we don't emulate it yet */
> > +	regs->epc = epc;
> > +	return -1;
> > +}
> > +#else
> > +static int handle_vector_misaligned_load(struct pt_regs *regs)
> > +{
> > +	return -1;
> > +}
> > +#endif
> > +
> > +static int handle_scalar_misaligned_load(struct pt_regs *regs)
> >  {
> >  	union reg_data val;
> >  	unsigned long epc = regs->epc;
> > @@ -435,7 +461,7 @@ int handle_misaligned_load(struct pt_regs *regs)
> >  	return 0;
> >  }
> >  
> > -int handle_misaligned_store(struct pt_regs *regs)
> > +static int handle_scalar_misaligned_store(struct pt_regs *regs)
> >  {
> >  	union reg_data val;
> >  	unsigned long epc = regs->epc;
> > @@ -526,6 +552,85 @@ int handle_misaligned_store(struct pt_regs *regs)
> >  	return 0;
> >  }
> >  
> > +int handle_misaligned_load(struct pt_regs *regs)
> > +{
> > +	unsigned long epc = regs->epc;
> > +	unsigned long insn;
> > +
> > +	if (IS_ENABLED(CONFIG_RISCV_VECTOR_MISALIGNED)) {
> > +		if (get_insn(regs, epc, &insn))
> > +			return -1;
> > +
> > +		if (insn_is_vector(insn))
> > +			return handle_vector_misaligned_load(regs);
> > +	}
> > +
> > +	if (IS_ENABLED(CONFIG_RISCV_MISALIGNED))
> > +		return handle_scalar_misaligned_load(regs);
> > +
> > +	return -1;
> > +}
> > +
> > +int handle_misaligned_store(struct pt_regs *regs)
> > +{
> > +	if (IS_ENABLED(CONFIG_RISCV_MISALIGNED))
> > +		return handle_scalar_misaligned_store(regs);
> > +
> > +	return -1;
> > +}
> > +
> > +#ifdef CONFIG_RISCV_VECTOR_MISALIGNED
> > +static void check_vector_unaligned_access_emulated(struct work_struct *unused)
> > +{
> > +	long *mas_ptr = this_cpu_ptr(&vector_misaligned_access);
> > +	unsigned long tmp_var;
> > +
> > +	*mas_ptr = RISCV_HWPROBE_VEC_MISALIGNED_UNKNOWN;
> > +
> > +	local_irq_enable();
> > +	kernel_vector_begin();
> > +	__asm__ __volatile__ (
> > +		".balign 4\n\t"
> > +		".option push\n\t"
> > +		".option arch, +zve32x\n\t"
> > +		"       vsetivli zero, 1, e16, m1, ta, ma\n\t"	// Vectors of 16b
> > +		"       vle16.v v0, (%[ptr])\n\t"		// Load bytes
> > +		".option pop\n\t"
> > +		: : [ptr] "r" ((u8 *)&tmp_var + 1) : "v0");
> > +	kernel_vector_end();
> > +}
> > +
> > +bool check_vector_unaligned_access_emulated_all_cpus(void)

Hopefully I catch the final things I want to say in this email ;)

> > +{
> > +	int cpu;
> > +	bool ret = true;
> > +
> > +	if (!has_vector()) {
> > +		for_each_online_cpu(cpu)
> > +			per_cpu(vector_misaligned_access, cpu) = RISCV_HWPROBE_VEC_MISALIGNED_UNSUPPORTED;
> > +		return false;
> > +	}
> > +
> > +	schedule_on_each_cpu(check_vector_unaligned_access_emulated);
> > +
> > +	for_each_online_cpu(cpu)
> > +		if (per_cpu(vector_misaligned_access, cpu)
> > +		    != RISCV_HWPROBE_VEC_MISALIGNED_SLOW)
> > +			return false;

The default value of vector_misaligned_access is
RISCV_HWPROBE_VEC_MISALIGNED_UNSUPPORTED so when the hardware supports
unaligned accesses this will return false. If the hardware doesn't
support unaligned accesses, then the trap will happen and the kernel
will set this variable to UNSUPPORTED, causing this function to again
return false.

Having the default value be UNKNOWN and checking for UNKNOWN here and in
check_vector_unaligned_access() can remedy this issue.

- Charlie

> > +
> > +	return ret;
> > +}
> > +#else
> > +bool check_vector_unaligned_access_emulated_all_cpus(void)
> > +{
> > +	return false;
> > +}
> > +#endif
> > +
> > +#ifdef CONFIG_RISCV_MISALIGNED
> > +
> > +static bool unaligned_ctl __read_mostly;
> > +
> >  static void check_unaligned_access_emulated(struct work_struct *unused)
> >  {
> >  	int cpu = smp_processor_id();
> > @@ -563,3 +668,9 @@ bool unaligned_ctl_available(void)
> >  {
> >  	return unaligned_ctl;
> >  }
> > +#else
> > +bool check_unaligned_access_emulated_all_cpus(void)
> > +{
> > +	return false;
> > +}
> > +#endif
> > diff --git a/arch/riscv/kernel/unaligned_access_speed.c b/arch/riscv/kernel/unaligned_access_speed.c
> > index 70c1588fc353..c6106bd4a25a 100644
> > --- a/arch/riscv/kernel/unaligned_access_speed.c
> > +++ b/arch/riscv/kernel/unaligned_access_speed.c
> > @@ -19,7 +19,8 @@
> >  #define MISALIGNED_BUFFER_ORDER get_order(MISALIGNED_BUFFER_SIZE)
> >  #define MISALIGNED_COPY_SIZE ((MISALIGNED_BUFFER_SIZE / 2) - 0x80)
> >  
> > -DEFINE_PER_CPU(long, misaligned_access_speed);
> > +DEFINE_PER_CPU(long, misaligned_access_speed) = RISCV_HWPROBE_MISALIGNED_UNKNOWN;
> > +DEFINE_PER_CPU(long, vector_misaligned_access) = RISCV_HWPROBE_VEC_MISALIGNED_UNSUPPORTED;
> >  
> >  #ifdef CONFIG_RISCV_PROBE_UNALIGNED_ACCESS
> >  static cpumask_t fast_misaligned_access;
> > @@ -268,12 +269,18 @@ static int check_unaligned_access_all_cpus(void)
> >  
> >  	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_ZICCLSM)) {
> >  		for_each_online_cpu(cpu) {
> > +#ifdef CONFIG_RISCV_VECTOR_MISALIGNED
> > +			per_cpu(vector_misaligned_access, cpu) = RISCV_HWPROBE_VEC_MISALIGNED_FAST;
> > +#endif
> > +#ifdef CONFIG_RISCV_MISALIGNED
> >  			per_cpu(misaligned_access_speed, cpu) = RISCV_HWPROBE_MISALIGNED_FAST;
> > +#endif
> >  		}
> >  		return 0;
> 
> Since this function returns 0 in both cases, can you wrap the rest of
> the function with an else and remove this early return?
> 
> - Charlie
> 
> >  	}
> >  
> >  	all_cpus_emulated = check_unaligned_access_emulated_all_cpus();
> > +	check_vector_unaligned_access_emulated_all_cpus();
> >  
> >  #ifdef CONFIG_RISCV_PROBE_UNALIGNED_ACCESS
> >  	if (!all_cpus_emulated)
> > diff --git a/arch/riscv/kernel/vector.c b/arch/riscv/kernel/vector.c
> > index 682b3feee451..821818886fab 100644
> > --- a/arch/riscv/kernel/vector.c
> > +++ b/arch/riscv/kernel/vector.c
> > @@ -66,7 +66,7 @@ void __init riscv_v_setup_ctx_cache(void)
> >  #endif
> >  }
> >  
> > -static bool insn_is_vector(u32 insn_buf)
> > +bool insn_is_vector(u32 insn_buf)
> >  {
> >  	u32 opcode = insn_buf & __INSN_OPCODE_MASK;
> >  	u32 width, csr;
> > -- 
> > 2.43.0
> > 

