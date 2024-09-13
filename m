Return-Path: <devicetree+bounces-102552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8049977714
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 04:51:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 11FABB231C7
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 02:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D501AE87C;
	Fri, 13 Sep 2024 02:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ZLl1fNrt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A28C82C95
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 02:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726195886; cv=none; b=pmtv8TfwFXQxoruCUtdTGaZBIjfRvcHkkfjShl1fBTccnsEUxINkeiJFJBSM8NGOKOBaWYMKgh6OS0p4KcfjH4qwnjn7OsXZ5tUhMzUW3YX37729c0HLEj17RRX2UvXgr6LRV0m6lHjx/toPUPmboHmEBP5YigPpSZw0g+m4aho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726195886; c=relaxed/simple;
	bh=AN4DtVKMFJj+Oka4ewoJjhlxUHL0Ou2WbvKruw5A9Vg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CvDqQLvccUdtYP7NGwCfKp/yqWxWOZ27x3GQF8fuyTbQXboqU0bCT+SgtlOraeKvWRFUN4F+O3tuxgAfKrI+K8BoLJIZB7S1B3Ludb80p0cyQBEGR/X0uTsbU9yhgvFIMq6l/ned7H3Ns3WvWEoe7Saj5euyR3CxkBi7NWUACo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ZLl1fNrt; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-718a3b8a2dcso364042b3a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 19:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726195884; x=1726800684; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7lucKHZRD1F8sNhQoF0GbULdmAnhRsrGT0LLKCZjQ8Q=;
        b=ZLl1fNrtCqmkdQ382N7VDZy2JOd14XjwPAbzHzgvUi+CeVt+f8zlsbo4Mp/pZvRGH8
         ns0tU92Jl+wKIBTMfPFbAeJGeZW3Ajv0HsBBazurcwNBkcgnuRFCV1hAj/S+8pL5bv8+
         DAiQD6+dPe/6DNJnJVRnd3I1+mySPREtjbUjBFzQlwMB8oHzPbGGnIBRpBiA0+u38j9b
         TIbXar+jbPPolb3OvP/mp2ushsDtnVB3vUARfha2mOSPJ6aHlNqMi960NUMvNKVh5tUp
         svQMjN2RpD5obnFzEb5UIf7veRBgJu8htMrnhJPF4pIly2Do6pAVOtdtcoGAEYhQ0HxS
         5udw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726195884; x=1726800684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7lucKHZRD1F8sNhQoF0GbULdmAnhRsrGT0LLKCZjQ8Q=;
        b=nf7VF/xnYt1wb9wjvkxnnfzqV6h22WNl57x1n0lCPNkmocmgQMgQb1FeE+863lCYEE
         jh7uAaC+o/cV1uKeJynVbzCHMYmY3NN6lMp8vEAhsyy/oUeVDhkMadPba8iykBBrfXLA
         WeKr09wyynChK3bKcSf1Nch4D6zdRupyicMGbmQ4XWKkIN9ZUpqQ06L4OKO83mLHtgjx
         GArMqXn/6YquB4IqpJLmdjpYPxJjXY1QY2RG2WBK0MVy36X6An0q3hrZXcXWzufZtaYi
         +RsObPT23ZwzRWZisob9Xz+4nyYtsIeSRfeK0EAEL3IF89mtNDlk4aodvHlnTixS/DPc
         INmw==
X-Forwarded-Encrypted: i=1; AJvYcCX1i8WYpwgmX6T0nKmK8Q1ntVeJURZ7otu/vKXHoxi+8A2Rx5iXYBAyJ8TV9WtvAsj+/Z6LD63A3+hY@vger.kernel.org
X-Gm-Message-State: AOJu0YyfbDmO4V8I2E+TasNqtU59DYLYTuOLZXANcUqb19g7+PSocRKV
	AsdH8hFmjzt7x/peD/aV4nbKYH4yUkBhI//sby9BZTvKnk0zAb0VAHbppO4o/K0=
X-Google-Smtp-Source: AGHT+IF0SPnqCcWggj+ZbMP5BdP/rIV8aCEiZw6gABT7Jq6B8FmEO+5IPUNs4ZDtOMOgvUeBHKH7Nw==
X-Received: by 2002:a05:6300:668a:b0:1cc:cdb6:c116 with SMTP id adf61e73a8af0-1d112db1368mr1881160637.24.1726195883833;
        Thu, 12 Sep 2024 19:51:23 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71908fc8febsm5398290b3a.19.2024.09.12.19.51.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 19:51:23 -0700 (PDT)
Date: Thu, 12 Sep 2024 19:51:21 -0700
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
Message-ID: <ZuOoqTfKs/7G075O@ghost>
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
 <20240829010151.2813377-7-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240829010151.2813377-7-samuel.holland@sifive.com>

On Wed, Aug 28, 2024 at 06:01:28PM -0700, Samuel Holland wrote:
> This allows a tracer to control the ABI of the tracee, as on arm64.
> 
> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> ---

Since this code is identical to the arm64 port, could it be extracted
out into the generic ptrace.c and ifdef on either CONFIG_RISCV_ISA_SUPM
or CONFIG_ARM64_TAGGED_ADDR_ABI by adding some generic flag like
CONFIG_HAVE_ARCH_TAGGED_ADDR_ABI?

- Charlie

>
> (no changes since v1)
> 
>  arch/riscv/kernel/ptrace.c | 42 ++++++++++++++++++++++++++++++++++++++
>  include/uapi/linux/elf.h   |  1 +
>  2 files changed, 43 insertions(+)
> 
> diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
> index 92731ff8c79a..ea67e9fb7a58 100644
> --- a/arch/riscv/kernel/ptrace.c
> +++ b/arch/riscv/kernel/ptrace.c
> @@ -28,6 +28,9 @@ enum riscv_regset {
>  #ifdef CONFIG_RISCV_ISA_V
>  	REGSET_V,
>  #endif
> +#ifdef CONFIG_RISCV_ISA_SUPM
> +	REGSET_TAGGED_ADDR_CTRL,
> +#endif
>  };
>  
>  static int riscv_gpr_get(struct task_struct *target,
> @@ -152,6 +155,35 @@ static int riscv_vr_set(struct task_struct *target,
>  }
>  #endif
>  
> +#ifdef CONFIG_RISCV_ISA_SUPM
> +static int tagged_addr_ctrl_get(struct task_struct *target,
> +				const struct user_regset *regset,
> +				struct membuf to)
> +{
> +	long ctrl = get_tagged_addr_ctrl(target);
> +
> +	if (IS_ERR_VALUE(ctrl))
> +		return ctrl;
> +
> +	return membuf_write(&to, &ctrl, sizeof(ctrl));
> +}
> +
> +static int tagged_addr_ctrl_set(struct task_struct *target,
> +				const struct user_regset *regset,
> +				unsigned int pos, unsigned int count,
> +				const void *kbuf, const void __user *ubuf)
> +{
> +	int ret;
> +	long ctrl;
> +
> +	ret = user_regset_copyin(&pos, &count, &kbuf, &ubuf, &ctrl, 0, -1);
> +	if (ret)
> +		return ret;
> +
> +	return set_tagged_addr_ctrl(target, ctrl);
> +}
> +#endif
> +
>  static const struct user_regset riscv_user_regset[] = {
>  	[REGSET_X] = {
>  		.core_note_type = NT_PRSTATUS,
> @@ -182,6 +214,16 @@ static const struct user_regset riscv_user_regset[] = {
>  		.set = riscv_vr_set,
>  	},
>  #endif
> +#ifdef CONFIG_RISCV_ISA_SUPM
> +	[REGSET_TAGGED_ADDR_CTRL] = {
> +		.core_note_type = NT_RISCV_TAGGED_ADDR_CTRL,
> +		.n = 1,
> +		.size = sizeof(long),
> +		.align = sizeof(long),
> +		.regset_get = tagged_addr_ctrl_get,
> +		.set = tagged_addr_ctrl_set,
> +	},
> +#endif
>  };
>  
>  static const struct user_regset_view riscv_user_native_view = {
> diff --git a/include/uapi/linux/elf.h b/include/uapi/linux/elf.h
> index b54b313bcf07..9a32532d7264 100644
> --- a/include/uapi/linux/elf.h
> +++ b/include/uapi/linux/elf.h
> @@ -448,6 +448,7 @@ typedef struct elf64_shdr {
>  #define NT_MIPS_MSA	0x802		/* MIPS SIMD registers */
>  #define NT_RISCV_CSR	0x900		/* RISC-V Control and Status Registers */
>  #define NT_RISCV_VECTOR	0x901		/* RISC-V vector registers */
> +#define NT_RISCV_TAGGED_ADDR_CTRL 0x902	/* RISC-V tagged address control (prctl()) */
>  #define NT_LOONGARCH_CPUCFG	0xa00	/* LoongArch CPU config registers */
>  #define NT_LOONGARCH_CSR	0xa01	/* LoongArch control and status registers */
>  #define NT_LOONGARCH_LSX	0xa02	/* LoongArch Loongson SIMD Extension registers */
> -- 
> 2.45.1
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

