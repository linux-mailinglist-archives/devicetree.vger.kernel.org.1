Return-Path: <devicetree+bounces-102539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BC3977641
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 03:09:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C92101C22D6C
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 01:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D49F61FBA;
	Fri, 13 Sep 2024 01:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Ak5uMv+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628A21373
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 01:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726189763; cv=none; b=et3Lq3sORC4wcDlZrvBVUcEyIZjDkHXLt6unGdO1czYrr8uoRzizcHaBLtUpxmD0ZlZPFkTBKtj1kq+WjtFIKEwn/PPX0IhsYKuVzKDlMkrSQgofdVcqQYIBqAmw8Qc1/GTmyuNDPn3wPiY9qZSycNjJtj/acFVPctm1IskhYFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726189763; c=relaxed/simple;
	bh=YSLZls5R8qL8i7SElvdKGND6pIroJ84Iwqr4C7qvHoE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DWJ5bRwIRqrzveeHFG1irtY7/CBegAWeye9OY2pO+pYVMAkNc7kXjZaabpFi8PWQ/p7noKtaHQnrShrpw6aiO4tQ0cuw+gsU66grXUE8CtGl8fpRfi2XiCe/J2HIw44Snkjmq2YupVxNPH/MOv7pwgGGynfi0s5wI7qY8HbmgxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Ak5uMv+v; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-7d4fa972cbeso1328177a12.2
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 18:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726189762; x=1726794562; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BBOQBRMmgRWLHrkPWadCkqX7dsfwA7uumaxy52Rb4Ds=;
        b=Ak5uMv+vfP3+0wy8N8gPtYcAH3GlbCc7ZssRpejAKw8yEdCUjpjPV6E4jTAyXDoSU3
         EYh9BA/PyNUZ7FXA4Sq64zLN3hfulqVQRW0a4biU7e40iPyd7fqvUzBlrXhT1nJq7i64
         MUxBS22avgqbrJM+UBgt+xOFypnlnbWN26WVlcHWZWOfTBDkNO7BvIwJYXmcJuYLu7Cp
         5BFP0msvzwz1IzYZR3UJExHcmraBpmtU7C2wAlmETTGsiyP/0+oHqkf8CHvrtMzBgxJc
         WA3ndgMBwQV4Oo6Xhk4sVT7GscEqZvjJrYv/0oWbZ0hmSkrR9ZJBiNJVXBW3ycZMFkNi
         8whg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726189762; x=1726794562;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BBOQBRMmgRWLHrkPWadCkqX7dsfwA7uumaxy52Rb4Ds=;
        b=DEYjau11o/M88GbQ3EFKZEf3WUJntm0fdGjwVR6OMnnTJXSqv1TawAbumoZu1soSxf
         /aYIZMZ3Vzz5vDTzRkjvY2VR6dAeDyjCtLAW/vXOQjP7CQvGX0NE6tnUK/rrDf/6DQpk
         3gA/FtMAQBJwNeNddgddt8HPOxC/Qa9d0C5TqrTjkxj1zuwUFd8Z7zi2jrysv6DSK7iD
         8MZW8FPkb9j0g7riJ3xR+jy+Uf7fbsq8D3SeohqwoALCiN+89eGA/7m3Jsom+8SUQ0VI
         UbchnVJ+9hLbpMo1NVoswQIVntC4AQ0K5lKNfLad+JPA1x2W6LTG2aNuZ9zc2l/x2ac4
         GoJA==
X-Forwarded-Encrypted: i=1; AJvYcCWC3BkFJS9zZU40OkB/Jt4nRh43kiMyCtMjsjrX/rHkFAsh0sZwziWoN8pkF7QV1Ag0274amQJ8fb6g@vger.kernel.org
X-Gm-Message-State: AOJu0YxsukSEFoMtbjpTnnQ3k7fWNetyYjge1Q3YfX6KTld6c4aYL9Xc
	AjVRuubRARs3fscRioIG8+GCevRpnTzHEYyeKJPokdMR/Wlo8CSCZXKmzCkGN1s=
X-Google-Smtp-Source: AGHT+IELZk/pD31FeS3VxS4fCTPtGC6V51tC6EAgDTBFOWR4aTgZsvwcoPf51FPsq0mK7JOIhy2Dkw==
X-Received: by 2002:a17:90a:d507:b0:2d3:b8d6:d041 with SMTP id 98e67ed59e1d1-2dba0064f94mr5074427a91.32.1726189761464;
        Thu, 12 Sep 2024 18:09:21 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dbb9ccc836sm374464a91.25.2024.09.12.18.09.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 18:09:20 -0700 (PDT)
Date: Thu, 12 Sep 2024 18:09:18 -0700
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
Subject: Re: [PATCH v4 02/10] riscv: Add ISA extension parsing for pointer
 masking
Message-ID: <ZuOQvmjywvvmo4Hd@ghost>
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
 <20240829010151.2813377-3-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240829010151.2813377-3-samuel.holland@sifive.com>

On Wed, Aug 28, 2024 at 06:01:24PM -0700, Samuel Holland wrote:
> The RISC-V Pointer Masking specification defines three extensions:
> Smmpm, Smnpm, and Ssnpm. Add support for parsing each of them. The
> specific extension which provides pointer masking support to userspace
> (Supm) depends on the kernel's privilege mode, so provide a macro to
> abstract this selection.
> 
> Smmpm implies the existence of the mseccfg CSR. As it is the only user
> of this CSR so far, there is no need for an Xlinuxmseccfg extension.
> 
> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>

Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>

> ---
> 
> (no changes since v3)
> 
> Changes in v3:
>  - Rebase on riscv/for-next (ISA extension list conflicts)
>  - Remove RISCV_ISA_EXT_SxPM, which was not used anywhere
> 
> Changes in v2:
>  - Provide macros for the extension affecting the kernel and userspace
> 
>  arch/riscv/include/asm/hwcap.h | 5 +++++
>  arch/riscv/kernel/cpufeature.c | 3 +++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> index 5a0bd27fd11a..aff21c6fc9b6 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -92,6 +92,9 @@
>  #define RISCV_ISA_EXT_ZCF		83
>  #define RISCV_ISA_EXT_ZCMOP		84
>  #define RISCV_ISA_EXT_ZAWRS		85
> +#define RISCV_ISA_EXT_SMMPM		86
> +#define RISCV_ISA_EXT_SMNPM		87
> +#define RISCV_ISA_EXT_SSNPM		88
>  
>  #define RISCV_ISA_EXT_XLINUXENVCFG	127
>  
> @@ -100,8 +103,10 @@
>  
>  #ifdef CONFIG_RISCV_M_MODE
>  #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SMAIA
> +#define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SMNPM
>  #else
>  #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SSAIA
> +#define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SSNPM
>  #endif
>  
>  #endif /* _ASM_RISCV_HWCAP_H */
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index b3b9735cb19a..ba3dc16e14dc 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -377,9 +377,12 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>  	__RISCV_ISA_EXT_BUNDLE(zvksg, riscv_zvksg_bundled_exts),
>  	__RISCV_ISA_EXT_DATA(zvkt, RISCV_ISA_EXT_ZVKT),
>  	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
> +	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
> +	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),
>  	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
>  	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
>  	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
> +	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_xlinuxenvcfg_exts),
>  	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
>  	__RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),
>  	__RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
> -- 
> 2.45.1
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

