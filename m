Return-Path: <devicetree+bounces-143542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 390F2A2A58E
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 11:09:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 801A97A3E01
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 10:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A61C6226552;
	Thu,  6 Feb 2025 10:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="mmIMn+ze"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F67D213240
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 10:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738836542; cv=none; b=NWUkOW1epWF+ztQ9mX/slxTEJ011zG41ATlGC/YySgEQIAh0KpTxF2YBQu9HF6x/Xg1P/n8Ke4lzFp3/6k3C0kz+Db0s6MpU/BPPkW4WSonQNXi6/1KojBYp5hdZ3eeg7ZV7kASxf0eTKRtrR56XalQTyTbUfJ9tBHakOQ/pyoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738836542; c=relaxed/simple;
	bh=AG5HGOPPpK/xRwYgRtNd0CZY8zni0LAr4PUd85ba/Vg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R71fE+pgWfTN2+zKqD8lRguMdd15P5la7zJyqOn6iAJuq3iljDS8NI7XdrJVYIXS4PjEbna862++cwlMRmZDYH8vCd2djCwaKLoUynWQhMwWmdSq0ATlhlBf4cVfOkoWc5SXdKbjO0QuPmsipZhpOxXnzyJ3UTNYLfdbebYqnZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=mmIMn+ze; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-436ce2ab251so4232465e9.1
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 02:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738836539; x=1739441339; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HHNWXRaZn35IBHeh9gLStj7vRKvHzbcw+Ykh7peDMJo=;
        b=mmIMn+zepJCYFWww01Ww1XO7InjCdG2EMCjZ8lV1a4VdCcbxIoZwro9BQNaW587eBA
         BlN3sBYEFIU0GEWZMmfCJCiWDlBhehZinXixMFbtUGZ2a7Qt87ZPiLYpyedMJ0+JdFDc
         iZuWE1y2A14ZfN9fYDKa/2G3W4Ro4QeRh6ZiFgGNNKk33BjJKvcW0WvMgsOy2uIxH/Bi
         UodjIDwyIK5Fbovb4hZXRhGLsAtpVVwfdPN2nrL3cq5PJx2vp+5JKoMaQA0Xwzp1KUmJ
         egIqzEExVyUZnSiJu+b0xhP6+4+pT55Wi/VEtOWuuaBWPh3Vp5tJ1S5POaLK+fpqLyWC
         32Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738836539; x=1739441339;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HHNWXRaZn35IBHeh9gLStj7vRKvHzbcw+Ykh7peDMJo=;
        b=jfXWR1tCRt4kziEOxZ4yWMQexFVW5CKfqGF0KspwqWi+hIXL/cYt5slo/sF6HlRUdD
         RvC/LEmZEejwrQTTEimP2cEH545ysZlzG8CS994CdMnGTZC+trrYaCang7kF6NMLUHr2
         RTJdoYL1OkyooHf1kWKRTTScUyesLxML7B1sDY2pM40WYuPG2xmGW02YHtXEC5Vhh6vI
         ao3xI0iSXH7stD6Ao5xpbIFPMJjN+U7gs3eJPuMcwC+2LNKZ9D+LunOcSf7aEDVNXuVT
         lxZzhrRuQoLDKo75sSVofZ1L0YGjx0qDqxIosI+AkBs2ulEjxW1Y16RMiWRbuzGnet85
         otrQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/wusL1NCi2/WZgXSXIhY62G3UFoaMxMeFIEioqqYp/4DringhZBl8sRMlPug9XeLrSpG4veEb7IEO@vger.kernel.org
X-Gm-Message-State: AOJu0YzL9SjY/JY8JTWx+lYrtgEYdgfnUxqUc5u3BilPuDYiHOXjNmyH
	+jtBobyoglppnYYBvXhSVcr4TYVesG+EKLNIBNmjl9laTA+gew65PQO6YIs0ctc=
X-Gm-Gg: ASbGncuXSPTuIrS4E/obdJNCYCHe9tUC09W0zILgczeYqw3s8VAP0HwWKcS01UbigFh
	RmJjEFDgq+cQ2CPyGf5e2Zj8+mu0jN94BLzpBv5NgIjQEAk4tZeBCqHzQIlVpnXvHDhJSX0NZB2
	NYy3aK7oZuII84tuR2hbEOrYqYGAT+uQ/TwT5R0E1wQQzDJtdKsPJjYo0f0qcDxCmwQI2oRFn58
	fEGB6/Pn1Eg/c/NFmPFHRCHZ6jJ7nBVsbQ32UrKhg50DVyYuHpnjZbIH1Tyz/LxppfDKOWURk4t
	VNKfaqffdWuk5AwR+/2cvLEM9MxrrsRMP+1za7lNCpfInwS3rz6+r+X5zeVv
X-Google-Smtp-Source: AGHT+IEPRHxanM+T5eT9IVRe1kwymDZy+oedZwXm5TLIzbZUEi4iRfkFJCBFo3lzCe7x+J94vw/6zg==
X-Received: by 2002:a05:6000:1886:b0:38d:b2bd:aef with SMTP id ffacd0b85a97d-38db48ca7f6mr5156444f8f.41.1738836538830;
        Thu, 06 Feb 2025 02:08:58 -0800 (PST)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dc9ffd8sm13929015e9.10.2025.02.06.02.08.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 02:08:58 -0800 (PST)
Message-ID: <0df559c7-920d-4d89-b1c8-75380750e7e1@rivosinc.com>
Date: Thu, 6 Feb 2025 11:08:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] RISC-V: add vector extension validation checks
To: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Eric Biggers <ebiggers@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Andy Chiu <andybnac@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250205-cobbler-unpadded-5580c1f5d946@spud>
 <20250205-defensive-lent-04936dac6bdd@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20250205-defensive-lent-04936dac6bdd@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 05/02/2025 17:05, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Using Clement's new validation callbacks, support checking that
> dependencies have been satisfied for the vector extensions. From the
> kernel's perfective, it's not required to differentiate between the
> conditions for all the various vector subsets - it's the firmware's job
> to not report impossible combinations. Instead, the kernel only has to
> check that the correct config options are enabled and to enforce its
> requirement of the d extension being present for FPU support.
> 
> Since vector will now be disabled proactively, there's no need to clear
> the bit in elf_hwcap in riscv_fill_hwcap() any longer.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/include/asm/cpufeature.h |  3 ++
>  arch/riscv/kernel/cpufeature.c      | 57 +++++++++++++++++++----------
>  2 files changed, 40 insertions(+), 20 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
> index 569140d6e639..5d9427ccbc7a 100644
> --- a/arch/riscv/include/asm/cpufeature.h
> +++ b/arch/riscv/include/asm/cpufeature.h
> @@ -56,6 +56,9 @@ void __init riscv_user_isa_enable(void);
>  #define __RISCV_ISA_EXT_BUNDLE(_name, _bundled_exts) \
>  	_RISCV_ISA_EXT_DATA(_name, RISCV_ISA_EXT_INVALID, _bundled_exts, \
>  			    ARRAY_SIZE(_bundled_exts), NULL)
> +#define __RISCV_ISA_EXT_BUNDLE_VALIDATE(_name, _bundled_exts, _validate) \
> +	_RISCV_ISA_EXT_DATA(_name, RISCV_ISA_EXT_INVALID, _bundled_exts, \
> +			    ARRAY_SIZE(_bundled_exts), _validate)
>  
>  /* Used to declare extensions that are a superset of other extensions (Zvbb for instance) */
>  #define __RISCV_ISA_EXT_SUPERSET(_name, _id, _sub_exts) \
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index c6ba750536c3..40a24b08d905 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -109,6 +109,35 @@ static int riscv_ext_zicboz_validate(const struct riscv_isa_ext_data *data,
>  	return 0;
>  }
>  
> +static int riscv_ext_vector_x_validate(const struct riscv_isa_ext_data *data,
> +				       const unsigned long *isa_bitmap)
> +{
> +	if (!IS_ENABLED(CONFIG_RISCV_ISA_V))
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static int riscv_ext_vector_float_validate(const struct riscv_isa_ext_data *data,
> +					   const unsigned long *isa_bitmap)
> +{
> +	if (!IS_ENABLED(CONFIG_RISCV_ISA_V))
> +		return -EINVAL;
> +
> +	if (!IS_ENABLED(CONFIG_FPU))
> +		return -EINVAL;
> +
> +	/*
> +	 * The kernel doesn't support systems that don't implement both of
> +	 * F and D, so if any of the vector extensions that do floating point
> +	 * are to be usable, both floating point extensions need to be usable.
> +	 */
> +	if (!__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_d))
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
>  static int riscv_ext_zca_depends(const struct riscv_isa_ext_data *data,
>  				 const unsigned long *isa_bitmap)
>  {
> @@ -326,12 +355,10 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>  	__RISCV_ISA_EXT_DATA(d, RISCV_ISA_EXT_d),
>  	__RISCV_ISA_EXT_DATA(q, RISCV_ISA_EXT_q),
>  	__RISCV_ISA_EXT_SUPERSET(c, RISCV_ISA_EXT_c, riscv_c_exts),
> -	__RISCV_ISA_EXT_SUPERSET(v, RISCV_ISA_EXT_v, riscv_v_exts),
> +	__RISCV_ISA_EXT_SUPERSET_VALIDATE(v, RISCV_ISA_EXT_v, riscv_v_exts, riscv_ext_vector_float_validate),
>  	__RISCV_ISA_EXT_DATA(h, RISCV_ISA_EXT_h),
> -	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicbom, RISCV_ISA_EXT_ZICBOM, riscv_xlinuxenvcfg_exts,
> -					  riscv_ext_zicbom_validate),
> -	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicboz, RISCV_ISA_EXT_ZICBOZ, riscv_xlinuxenvcfg_exts,
> -					  riscv_ext_zicboz_validate),
> +	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicbom, RISCV_ISA_EXT_ZICBOM, riscv_xlinuxenvcfg_exts, riscv_ext_zicbom_validate),
> +	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicboz, RISCV_ISA_EXT_ZICBOZ, riscv_xlinuxenvcfg_exts, riscv_ext_zicboz_validate),

Hey Conor,

This chunk seems to just remove line wrapping for existing code, not
sure if this is intended.

Thanks,

Clément


>  	__RISCV_ISA_EXT_DATA(ziccrse, RISCV_ISA_EXT_ZICCRSE),
>  	__RISCV_ISA_EXT_DATA(zicntr, RISCV_ISA_EXT_ZICNTR),
>  	__RISCV_ISA_EXT_DATA(zicond, RISCV_ISA_EXT_ZICOND),
> @@ -372,11 +399,11 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>  	__RISCV_ISA_EXT_DATA(ztso, RISCV_ISA_EXT_ZTSO),
>  	__RISCV_ISA_EXT_SUPERSET(zvbb, RISCV_ISA_EXT_ZVBB, riscv_zvbb_exts),
>  	__RISCV_ISA_EXT_DATA(zvbc, RISCV_ISA_EXT_ZVBC),
> -	__RISCV_ISA_EXT_SUPERSET(zve32f, RISCV_ISA_EXT_ZVE32F, riscv_zve32f_exts),
> -	__RISCV_ISA_EXT_DATA(zve32x, RISCV_ISA_EXT_ZVE32X),
> -	__RISCV_ISA_EXT_SUPERSET(zve64d, RISCV_ISA_EXT_ZVE64D, riscv_zve64d_exts),
> -	__RISCV_ISA_EXT_SUPERSET(zve64f, RISCV_ISA_EXT_ZVE64F, riscv_zve64f_exts),
> -	__RISCV_ISA_EXT_SUPERSET(zve64x, RISCV_ISA_EXT_ZVE64X, riscv_zve64x_exts),
> +	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zve32f, RISCV_ISA_EXT_ZVE32F, riscv_zve32f_exts, riscv_ext_vector_float_validate),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(zve32x, RISCV_ISA_EXT_ZVE32X, riscv_ext_vector_x_validate),
> +	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zve64d, RISCV_ISA_EXT_ZVE64D, riscv_zve64d_exts, riscv_ext_vector_float_validate),
> +	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zve64f, RISCV_ISA_EXT_ZVE64F, riscv_zve64f_exts, riscv_ext_vector_float_validate),
> +	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zve64x, RISCV_ISA_EXT_ZVE64X, riscv_zve64x_exts, riscv_ext_vector_x_validate),
>  	__RISCV_ISA_EXT_DATA(zvfh, RISCV_ISA_EXT_ZVFH),
>  	__RISCV_ISA_EXT_DATA(zvfhmin, RISCV_ISA_EXT_ZVFHMIN),
>  	__RISCV_ISA_EXT_DATA(zvkb, RISCV_ISA_EXT_ZVKB),
> @@ -960,16 +987,6 @@ void __init riscv_fill_hwcap(void)
>  		riscv_v_setup_vsize();
>  	}
>  
> -	if (elf_hwcap & COMPAT_HWCAP_ISA_V) {
> -		/*
> -		 * ISA string in device tree might have 'v' flag, but
> -		 * CONFIG_RISCV_ISA_V is disabled in kernel.
> -		 * Clear V flag in elf_hwcap if CONFIG_RISCV_ISA_V is disabled.
> -		 */
> -		if (!IS_ENABLED(CONFIG_RISCV_ISA_V))
> -			elf_hwcap &= ~COMPAT_HWCAP_ISA_V;
> -	}
> -
>  	memset(print_str, 0, sizeof(print_str));
>  	for (i = 0, j = 0; i < NUM_ALPHA_EXTS; i++)
>  		if (riscv_isa[0] & BIT_MASK(i))


