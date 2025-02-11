Return-Path: <devicetree+bounces-145151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4A5A30845
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 11:16:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD8C07A3D8A
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 10:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15FBA1F3FE2;
	Tue, 11 Feb 2025 10:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Q62/+kWo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325C51F03D9
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 10:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739269011; cv=none; b=dSYoql47SzYOOZiBa/iRM/xdc7HlRRUvUyfavZX1qIZq20TiM46YKFctczIyc8LxPku4x6KU6RcWQ1bexY4hbiYjDeSKIxdONgX8htjG8biQkIuVM/oeOaabfXyPiRJdSPP6MdH7O5tsVjNx/cWzbW1N4TowbGi24IcUIfMbWiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739269011; c=relaxed/simple;
	bh=cJ/GORcIqWt0nlHx5g6cmifZnHNhKYJlIHw+PIuhUVg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BywnaGTh51vtAuGUtZh0W5/22tpgMQXfBT6YBYG6Mc4qcwOVWNiXHwQBtQnwB58r1hnS47nm0OcOM8CBCU/6MtExA8NGyJ8BATOpY44iSHk7eMeuYdxwcN98dcqhvPUIjlyul+bE40b1qFyrQ/xNX3V87C6T5MapDd42wqhhb00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Q62/+kWo; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4395561ab71so2833255e9.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 02:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1739269006; x=1739873806; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hr+txc8S3MhukU4OHB0qTW/XNv1EfGTILRmXGQLaiSY=;
        b=Q62/+kWoPHKMyrjWvUjVl2PPJFppRy3eCJk0eP+KETJlUvtX3UgIbv8XXrl5LN+r6n
         yI8qaI6Tvjv7XRW0IjQTsbwBiz1QZvB6JmtbPqlv2tRsjOGlw69cvatUl8tEpTtrQzFN
         LshhFZVWKvXTlTf+9/3zAtrbZo9R5XQSIt3ykSSFt6XxlHjS1CWcjD0gl6qWGsP/rjI8
         m4qTx80Oux4CJeYTxAEVgJbbbohZfaUt7vBPOKUh6Rsrf6qLuCOjs74iQTpPPdV6PV1f
         cchxFTfXSAUPIgs3NiqUYoH/XfW5aG9zapzaCf73InwCKflhMsPgi0kZuE/tmSOuaeHh
         TdzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739269006; x=1739873806;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hr+txc8S3MhukU4OHB0qTW/XNv1EfGTILRmXGQLaiSY=;
        b=FuNQVDqkRvYso7sCCHlXKlDuDUCFT0TzrzDEQZuYB3U3elfo5c+ey+lcp+5PQH1f2u
         jYIgU+h1dbWuvslnJaw10vJf/GB5HeOEjKBeJfFO/8dGzoGVBqIFQjiW13iJLreVw3Jf
         sZ9c4KmaR5FFPDX0YWpL3zO0EY4Vb5cozzeiIDnYGK6Yv8BeznRo0o+J2jnvRNRAvSxK
         0BO2hWlDWtQjxhZVdIZjF/Xa8tm0xXD5IeOfNr3g6gdD2mXb9C4NvFaVi7LkKbE26BcE
         Ek8VikopvOqxbz8W31Y4bZTVv7KMmc/KZcVhitAsOO28n6CvdGgJhzweL6eys0re3sps
         0+Ww==
X-Forwarded-Encrypted: i=1; AJvYcCUilDwzM+SG+dwmQcmkpNaUiAznHDgrgKfnk94Q+jpSuSPlyHWOJzY9hbEpNJyq0CqrmPQTH7vXqQr6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9M987t/K93DPqkUpbXSIxvjCy7iNE45yoUMwWCC39qTrIBMq6
	07z6T7c9SftxzI0JisFoPIwd2jzpR4S1wUZbzs3Fkd/SmN/6T4xFOLnxU+kfzwc=
X-Gm-Gg: ASbGncvKnlqEJxRftUrwRQtx3VfktlbotzWivDwzXXGmMd9S8/DklUydiRku/CNAFSX
	cx2u+JzTGbTBtzyVkjJd32MIgiYeHfiAZ2GuNO+69cg1isHzzaZzhRBaYJ9F1pjSkW+wzI4bjHx
	wiShWzZs8xObvgGEm8TgKTkiJ6DAMGXxyK6zAsqw5NExiD4yveRPVYiVXiH14DeySV4MqOMzJg+
	QAe5cVM9AW8lnPi+OJOYK6kWTnDs9aXvTlSr0kRJO/dfFNsNmsncKTgyZanu0U/Zqv9zfezkg6v
	myTDd0RY5CwJNTnwfWALv6sqRxbHCZRR6x0PQHY1aS5CgNhUakOVOuE0aRJL
X-Google-Smtp-Source: AGHT+IGe51XhBA8uvfOTpS5Ph4IB3kPeaqWEJ9W+ri8AzVo+M6m3GEUiQubnnboCCLNrcCU4WSijCg==
X-Received: by 2002:a05:600c:4588:b0:439:55fc:81ad with SMTP id 5b1f17b1804b1-43955fc8df7mr5867695e9.7.1739269006486;
        Tue, 11 Feb 2025 02:16:46 -0800 (PST)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dca0179sm170069325e9.11.2025.02.11.02.16.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 02:16:45 -0800 (PST)
Message-ID: <579dbdce-e61e-48ed-8685-a2cda9d753c3@rivosinc.com>
Date: Tue, 11 Feb 2025 11:16:45 +0100
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

I think this should also be modified to be like this:

  if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_d))
	  return 0;

  return -EPROBEDEFER;

That won't actually change the way it works since RISCV_ISA_EXT_d (and
all single letter extensions) is always probed before the others though.

Clément

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


