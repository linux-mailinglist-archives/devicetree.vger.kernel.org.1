Return-Path: <devicetree+bounces-112227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 542C09A1764
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 02:58:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BC8BBB23AEE
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 00:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57E7B1CAA4;
	Thu, 17 Oct 2024 00:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="yPxScOC6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13282538A
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 00:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729126687; cv=none; b=Gy4Y1JxsPpPpIJ6KW3ko4szeVniKhlEVrBrApcYViLSqIKtB/T12d7SMCKQkRHX9xaEzAoJi0s1hXOsJaoMNs+d/juBEyF21LHJxwqMm02LTP9DzyOZOGt01FJ7E2gZJoP1+eIFZqStrfWmRebo9FRrOKe3q/SsPt+OuMiN/k0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729126687; c=relaxed/simple;
	bh=/4RUeLr+et2XGCUbuzy/59HVyDqinnzOiuWr/pyQ8Pk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P/gaTjChRL1Muek3/atTVEEU4b5rX4ErGmqo1F/m5JxiNhADmKYRX4o7Dcl9L7Uc0xwwZKQgs/2Zs/5H5m+iwcOWLg1q5YypqBPuqPy95Ua1DX907VjjC3B2tVVwXZnPPMkC9tV5s1JNfvmqUyUWV2LRGvcSNHOLOh90BwlfFt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=yPxScOC6; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-71e8235f0b6so285299b3a.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 17:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1729126683; x=1729731483; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+xzsoLjsBfwusEklaj61R5Uo3anocunfPETWtAtlm4w=;
        b=yPxScOC6rOS4h7TflgY7lvn/kzD8BbsbmRCn+eOBDnqxQOHV0uKSuFOWQ2Dwr0vhKL
         wZa9b87jfQtphzRWokEqMfE4YV2kbbmh3lt9/Jm1f4d8pDeMLn8fXXJmAoA5WNnSU3uw
         VXub5yPFbYSghs39pcrPzQpJuJ7z7PrainXJZj7qa45d1TAOTLbJgKXpH3yIr1/LMi5Y
         eS7wcPdRvCgLmfM2Swc28gdFVT8VHGgiIKHDjKRkXL28dqjLnypNi682Dq5WyLYzQcHK
         u7Q0z0rIMLhkOUSo0RpNEQT5/PIC/XUUHoCwN+dWZZJlRF+q/vZZWWF4p/as0ZXpGdhu
         wE/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729126683; x=1729731483;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+xzsoLjsBfwusEklaj61R5Uo3anocunfPETWtAtlm4w=;
        b=bWHSTsC5qN+p6jOK6S3zv39ot6lLdBu8ij/TmjccVu+N15GYl7cYFY9kTLWmfBc+37
         aWbM6mOVa6I03KQXNXBD9GOUH3uHb+tHKAsvD/KvY5JV9AJlhGxtIvT2eZNr+n7/NU7U
         dqGh8XbHJT7Bh2+LOFR4WzmUGE7JhW+GpC6sl+u61u8GwZV90Gku/ooIXNH0O0VRebVY
         UL+J8x80yJ+5Zq4xN3RADobaNWTr1BILyR4OtNmMBh17wmqXEQo2TuChTemR6OyvOt6b
         4theqQAsm8bUtFRSVUj0Xl0SvCdnieaTp3g7YdUk3XLEu2fbvwsK7i959kcKWXfAVFg9
         7oZw==
X-Forwarded-Encrypted: i=1; AJvYcCVvqHiRvE3F/MU3IA0DsRt1eClf6761TiLg+now+dpufZOo8IMx791Z14QiKMgUZhI0ssLI2UW89K0E@vger.kernel.org
X-Gm-Message-State: AOJu0YxEppllkZjrzO8Nz1jgV10QiTJZa9XAmre4OdCGpBf7wyqyOsEy
	HJPuam9CcT3QaPUO2Bqa3ANwuntF96pt8ijK4XD1fWuSgXof/WwrokNACCsarjk=
X-Google-Smtp-Source: AGHT+IFI5+8g1IH2PEm3dnUF8kWImgREgaaIoBfaxKZbuFwo/Iq7b+tVuBUdCdwUiID1rBG7ZmL/ig==
X-Received: by 2002:a05:6a00:10c9:b0:71e:5f2c:c019 with SMTP id d2e1a72fcca58-71e5f2ccbadmr19417242b3a.9.1729126683343;
        Wed, 16 Oct 2024 17:58:03 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e7737178bsm3678688b3a.36.2024.10.16.17.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 17:58:02 -0700 (PDT)
Date: Wed, 16 Oct 2024 17:58:00 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org, Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Subject: Re: [PATCH v4 06/10] riscv: Allow ptrace control of the tagged
 address ABI
Message-ID: <ZxBhGJ0-hir0gFor@ghost>
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
 <20240829010151.2813377-7-samuel.holland@sifive.com>
 <ZuOoqTfKs/7G075O@ghost>
 <2e25597c-6278-4bc6-a0c2-3826841c2ac0@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2e25597c-6278-4bc6-a0c2-3826841c2ac0@sifive.com>

On Wed, Oct 16, 2024 at 12:50:32PM -0500, Samuel Holland wrote:
> Hi Charlie,
> 
> On 2024-09-12 9:51 PM, Charlie Jenkins wrote:
> > On Wed, Aug 28, 2024 at 06:01:28PM -0700, Samuel Holland wrote:
> >> This allows a tracer to control the ABI of the tracee, as on arm64.
> >>
> >> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> >> ---
> > 
> > Since this code is identical to the arm64 port, could it be extracted
> > out into the generic ptrace.c and ifdef on either CONFIG_RISCV_ISA_SUPM
> > or CONFIG_ARM64_TAGGED_ADDR_ABI by adding some generic flag like
> > CONFIG_HAVE_ARCH_TAGGED_ADDR_ABI?
> 
> Yes, it could be factored out, though I don't know if it is worth the overhead
> for these two trivial functions. I don't see any other code like this outside of
> arch/.

In my ideal world there is just a generic header somewhere so the only
"overhead" is creating the generic header. But I will defer to you on
whether it is worthwhile.

- Charlie

> 
> Regards,
> Samuel
> 
> >>
> >> (no changes since v1)
> >>
> >>  arch/riscv/kernel/ptrace.c | 42 ++++++++++++++++++++++++++++++++++++++
> >>  include/uapi/linux/elf.h   |  1 +
> >>  2 files changed, 43 insertions(+)
> >>
> >> diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
> >> index 92731ff8c79a..ea67e9fb7a58 100644
> >> --- a/arch/riscv/kernel/ptrace.c
> >> +++ b/arch/riscv/kernel/ptrace.c
> >> @@ -28,6 +28,9 @@ enum riscv_regset {
> >>  #ifdef CONFIG_RISCV_ISA_V
> >>  	REGSET_V,
> >>  #endif
> >> +#ifdef CONFIG_RISCV_ISA_SUPM
> >> +	REGSET_TAGGED_ADDR_CTRL,
> >> +#endif
> >>  };
> >>  
> >>  static int riscv_gpr_get(struct task_struct *target,
> >> @@ -152,6 +155,35 @@ static int riscv_vr_set(struct task_struct *target,
> >>  }
> >>  #endif
> >>  
> >> +#ifdef CONFIG_RISCV_ISA_SUPM
> >> +static int tagged_addr_ctrl_get(struct task_struct *target,
> >> +				const struct user_regset *regset,
> >> +				struct membuf to)
> >> +{
> >> +	long ctrl = get_tagged_addr_ctrl(target);
> >> +
> >> +	if (IS_ERR_VALUE(ctrl))
> >> +		return ctrl;
> >> +
> >> +	return membuf_write(&to, &ctrl, sizeof(ctrl));
> >> +}
> >> +
> >> +static int tagged_addr_ctrl_set(struct task_struct *target,
> >> +				const struct user_regset *regset,
> >> +				unsigned int pos, unsigned int count,
> >> +				const void *kbuf, const void __user *ubuf)
> >> +{
> >> +	int ret;
> >> +	long ctrl;
> >> +
> >> +	ret = user_regset_copyin(&pos, &count, &kbuf, &ubuf, &ctrl, 0, -1);
> >> +	if (ret)
> >> +		return ret;
> >> +
> >> +	return set_tagged_addr_ctrl(target, ctrl);
> >> +}
> >> +#endif
> >> +
> >>  static const struct user_regset riscv_user_regset[] = {
> >>  	[REGSET_X] = {
> >>  		.core_note_type = NT_PRSTATUS,
> >> @@ -182,6 +214,16 @@ static const struct user_regset riscv_user_regset[] = {
> >>  		.set = riscv_vr_set,
> >>  	},
> >>  #endif
> >> +#ifdef CONFIG_RISCV_ISA_SUPM
> >> +	[REGSET_TAGGED_ADDR_CTRL] = {
> >> +		.core_note_type = NT_RISCV_TAGGED_ADDR_CTRL,
> >> +		.n = 1,
> >> +		.size = sizeof(long),
> >> +		.align = sizeof(long),
> >> +		.regset_get = tagged_addr_ctrl_get,
> >> +		.set = tagged_addr_ctrl_set,
> >> +	},
> >> +#endif
> >>  };
> >>  
> >>  static const struct user_regset_view riscv_user_native_view = {
> >> diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
> >> index b54b313bcf07..9a32532d7264 100644
> >> --- a/include/uapi/linux/elf.h
> >> +++ b/include/uapi/linux/elf.h
> >> @@ -448,6 +448,7 @@ typedef struct elf64_shdr {
> >>  #define NT_MIPS_MSA	0x802		/* MIPS SIMD registers */
> >>  #define NT_RISCV_CSR	0x900		/* RISC-V Control and Status Registers */
> >>  #define NT_RISCV_VECTOR	0x901		/* RISC-V vector registers */
> >> +#define NT_RISCV_TAGGED_ADDR_CTRL 0x902	/* RISC-V tagged address control (prctl()) */
> >>  #define NT_LOONGARCH_CPUCFG	0xa00	/* LoongArch CPU config registers */
> >>  #define NT_LOONGARCH_CSR	0xa01	/* LoongArch control and status registers */
> >>  #define NT_LOONGARCH_LSX	0xa02	/* LoongArch Loongson SIMD Extension registers */
> >> -- 
> >> 2.45.1
> >>
> >>
> >> _______________________________________________
> >> linux-riscv mailing list
> >> linux-riscv@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 

