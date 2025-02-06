Return-Path: <devicetree+bounces-143545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E03EA2A5B3
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 11:20:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECC46168A47
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 10:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31A42226863;
	Thu,  6 Feb 2025 10:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="EG9VlXBH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A86E622540F
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 10:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738837241; cv=none; b=h3/GBHBSeXRzKctgaZg6e15uPP40L/UFUyxxROdMhqRLaFvLPW4jt2ts07jKwE7NiYEXjcJYUXDCt3lklkMqvE4EXLpAkt7Pe80HUyd2rs2Dl2vaN7KfBDuBevgL2vQh1u7vm4ddQrghpf76KPyeK1LO+SIkHJKIU1q2xFVCnKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738837241; c=relaxed/simple;
	bh=DHDNQ38VGunviutybUTG4AXV3T+KGBHmXKCRbokHlCQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BO27OZQEbCm1v9Lt97kPeajXwiTilclj/SlB4eB2g3O/QHWuG9uv/sdwt8DCVRLTJNlbhNPNFqmkER4CvlIYrWgje8bqdiY/7WXD5ucQ5zbXYgOH/kyhWkB4HEiAVZSvF8TUKeV83HTzkz8GK/PHz19eFZO4Sb/5SQC3h5AbdBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=EG9VlXBH; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-437a92d7b96so6946805e9.2
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 02:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738837237; x=1739442037; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qYWLPuUcEyViHEWZl2OLoqFTH+F1AYzNF316tnzUCUk=;
        b=EG9VlXBHngH+nJul2ca+dj3mOS0pksL45mUmyN0skqDRBMtz3yDzTFoqe3FPZALj0h
         Hb+J+s9GJt6JcQgIuKpLZBMO/4YfbhoB1aLur4U9B3iJh0hwzLWuxth5ogqS4HtrbzgV
         vSkXHn4lLjPFyTtSwrInTpPtSIMwloTJ0T5rqFhnsiahefw1N8ELFi53zgd98iHE0wsY
         Wm6LN+6r4uVpCju/2aMCqq5l93f7S68n2c5FHdbplYU2UWieAY0nop7IppJ8kvR4sEyg
         mZLwiwn7LRjJWc18B7xl+mJHtEsdVeh02kUjkAyCPS67zuoVxLY53YzbqLrJcyy9hlay
         1rVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738837237; x=1739442037;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qYWLPuUcEyViHEWZl2OLoqFTH+F1AYzNF316tnzUCUk=;
        b=UWYNs+nWYz56bzLjTbxEfkiloYFTaBkV5TlmB3wqjgN21CN/RPYxt54YaPll6N+a4t
         9QOb8VeNjfWPa54hffMWDISYLWkkwdFl5/stnu2ejiHZtaKagOOExKwssHJ3lsjKlD8c
         MaahL9fqIfARLTItj1CA+5WMj3fRRMOi6fuJOnNOK10geGgIc8/bYoIpnzAPxHg9cv9s
         aKE6J1RhS69CxGTiAQOLiGYOhLf2fqsjHbwoRweg78E14EFB/LMYSNszDeOW6gF+fhrO
         hX1HjWJPhKP1MRmKwjxku75Hjea04FofsxEa0/m6YbvJK2H3D9qrDeBbRIaofWpn9Yaa
         caUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZ43MNfSLcoxjfhK6gtNp3enBlhivOHcn8/EL9vZyOw3cYm50uBakVay0LD8qWMVwwnKlXy2TdXirE@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg17bmiSDYdqhd3k6qEIzj9askyjmfOvTVBxQJikEV9k9w1XEq
	rTEbgrG1uhDb5d0yVwPJftJLdE4bHJ2z/4xP05OxIPzBfKWHg3wXCatgTfhRF+I=
X-Gm-Gg: ASbGnctM8nThOPviLGhulUNeFwdOZPbzDpR8HqgyzYehLz/VVLSqanOzx2rn4rpDbt6
	Lw74g3al1HM54wX4wKFD4sGBTdRZGYR2cauKnW7gWRHiRokRH9nT4I+MYXqqRGj0OPYdrof3ETU
	t+KnC7rD3P4GICAftBueeVwf8ibBZ5wSz134Jqroxh+ObW2QEgejhRpTewUZfgASXlLAf+SZpP7
	zBkgu+XZhGYF8bL9dM0pHkADVDz1kHyNFWwvsngcN2vR3+OInM6/O8fTWFgfkb4bI02AV0Qccij
	zfKOQmfZQlgh5x9qUg60KwvDd90II63ZH8xDHfFweX7Sj327KGkhHxqiyzgq
X-Google-Smtp-Source: AGHT+IF0A9SWlvxFTUWL4jBUWF4gwatSi74EHA8t1XR+t+JGyhlXqcyw5059y36rJQzknajfZ7Xdyg==
X-Received: by 2002:a05:600c:458f:b0:434:f623:a004 with SMTP id 5b1f17b1804b1-4390d43ddaamr60637135e9.16.1738837236812;
        Thu, 06 Feb 2025 02:20:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dfc87desm14027315e9.25.2025.02.06.02.20.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 02:20:36 -0800 (PST)
Message-ID: <00dc2fb7-da9b-42c3-9c3b-47d917df7cf6@rivosinc.com>
Date: Thu, 6 Feb 2025 11:20:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/6] RISC-V: add vector crypto extension validation
 checks
To: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Eric Biggers <ebiggers@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Andy Chiu <andybnac@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250205-cobbler-unpadded-5580c1f5d946@spud>
 <20250205-quench-entrench-09bed8c8c823@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20250205-quench-entrench-09bed8c8c823@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 05/02/2025 17:05, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Using Clement's new validation callbacks, support checking that
> dependencies have been satisfied for the vector crpyto extensions.
> Currently riscv_isa_extension_available(<vector crypto>) will return
> true on systems that support the extensions but vector itself has been
> disabled by the kernel, adding validation callbacks will prevent such a
> scenario from occuring and make the behaviour of the extension detection
> functions more consistent with user expectations - it's not expected to
> have to check for vector AND the specific crypto extension.
> 
> The 1.0.0 Vector crypto spec states:
> 	The Zvknhb and Zvbc Vector Crypto Extensions --and accordingly
> 	the composite extensions Zvkn and Zvks-- require a Zve64x base,
> 	or application ("V") base Vector Extension. All of the other
> 	Vector Crypto Extensions can be built on any embedded (Zve*) or
> 	application ("V") base Vector Extension.
> and this could be used as the basis for checking that the correct base
> for individual crypto extensions, but that's not really the kernel's job
> in my opinion and it is sufficient to leave that sort of precision to
> the dt-bindings. The kernel only needs to make sure that vector, in some
> form, is available.
> 
> Since vector will now be disabled proactively, there's no need to clear
> the bit in elf_hwcap in riscv_fill_hwcap() any longer.

Hey Conor,

To which part of the commit does this refer to ?

> 
> Link: https://github.com/riscv/riscv-crypto/releases/tag/v1.0.0
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/kernel/cpufeature.c | 49 +++++++++++++++++++++++-----------
>  1 file changed, 33 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index 40a24b08d905..1c148ecea612 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -138,6 +138,23 @@ static int riscv_ext_vector_float_validate(const struct riscv_isa_ext_data *data
>  	return 0;
>  }
>  
> +static int riscv_ext_vector_crypto_validate(const struct riscv_isa_ext_data *data,
> +					    const unsigned long *isa_bitmap)
> +{
> +	if (!IS_ENABLED(CONFIG_RISCV_ISA_V))
> +		return -EINVAL;
> +
> +	/*
> +	 * It isn't the kernel's job to check that the binding is correct, so
> +	 * it should be enough to check that any of the vector extensions are
> +	 * enabled, which in-turn means that vector is usable in this kernel
> +	 */
> +	if (!__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZVE32X))
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
>  static int riscv_ext_zca_depends(const struct riscv_isa_ext_data *data,
>  				 const unsigned long *isa_bitmap)
>  {
> @@ -397,8 +414,8 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>  	__RISCV_ISA_EXT_DATA(zksed, RISCV_ISA_EXT_ZKSED),
>  	__RISCV_ISA_EXT_DATA(zksh, RISCV_ISA_EXT_ZKSH),
>  	__RISCV_ISA_EXT_DATA(ztso, RISCV_ISA_EXT_ZTSO),
> -	__RISCV_ISA_EXT_SUPERSET(zvbb, RISCV_ISA_EXT_ZVBB, riscv_zvbb_exts),
> -	__RISCV_ISA_EXT_DATA(zvbc, RISCV_ISA_EXT_ZVBC),
> +	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zvbb, RISCV_ISA_EXT_ZVBB, riscv_zvbb_exts, riscv_ext_vector_x_validate),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(zvbc, RISCV_ISA_EXT_ZVBC, riscv_ext_vector_crypto_validate),
>  	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zve32f, RISCV_ISA_EXT_ZVE32F, riscv_zve32f_exts, riscv_ext_vector_float_validate),
>  	__RISCV_ISA_EXT_DATA_VALIDATE(zve32x, RISCV_ISA_EXT_ZVE32X, riscv_ext_vector_x_validate),
>  	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zve64d, RISCV_ISA_EXT_ZVE64D, riscv_zve64d_exts, riscv_ext_vector_float_validate),
> @@ -406,20 +423,20 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>  	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zve64x, RISCV_ISA_EXT_ZVE64X, riscv_zve64x_exts, riscv_ext_vector_x_validate),
>  	__RISCV_ISA_EXT_DATA(zvfh, RISCV_ISA_EXT_ZVFH),
>  	__RISCV_ISA_EXT_DATA(zvfhmin, RISCV_ISA_EXT_ZVFHMIN),
> -	__RISCV_ISA_EXT_DATA(zvkb, RISCV_ISA_EXT_ZVKB),
> -	__RISCV_ISA_EXT_DATA(zvkg, RISCV_ISA_EXT_ZVKG),
> -	__RISCV_ISA_EXT_BUNDLE(zvkn, riscv_zvkn_bundled_exts),
> -	__RISCV_ISA_EXT_BUNDLE(zvknc, riscv_zvknc_bundled_exts),
> -	__RISCV_ISA_EXT_DATA(zvkned, RISCV_ISA_EXT_ZVKNED),
> -	__RISCV_ISA_EXT_BUNDLE(zvkng, riscv_zvkng_bundled_exts),
> -	__RISCV_ISA_EXT_DATA(zvknha, RISCV_ISA_EXT_ZVKNHA),
> -	__RISCV_ISA_EXT_DATA(zvknhb, RISCV_ISA_EXT_ZVKNHB),
> -	__RISCV_ISA_EXT_BUNDLE(zvks, riscv_zvks_bundled_exts),
> -	__RISCV_ISA_EXT_BUNDLE(zvksc, riscv_zvksc_bundled_exts),
> -	__RISCV_ISA_EXT_DATA(zvksed, RISCV_ISA_EXT_ZVKSED),
> -	__RISCV_ISA_EXT_DATA(zvksh, RISCV_ISA_EXT_ZVKSH),
> -	__RISCV_ISA_EXT_BUNDLE(zvksg, riscv_zvksg_bundled_exts),
> -	__RISCV_ISA_EXT_DATA(zvkt, RISCV_ISA_EXT_ZVKT),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(zvkb, RISCV_ISA_EXT_ZVKB, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(zvkg, RISCV_ISA_EXT_ZVKG, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_BUNDLE_VALIDATE(zvkn, riscv_zvkn_bundled_exts, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_BUNDLE_VALIDATE(zvknc, riscv_zvknc_bundled_exts, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(zvkned, RISCV_ISA_EXT_ZVKNED, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_BUNDLE_VALIDATE(zvkng, riscv_zvkng_bundled_exts, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(zvknha, RISCV_ISA_EXT_ZVKNHA, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(zvknhb, RISCV_ISA_EXT_ZVKNHB, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_BUNDLE_VALIDATE(zvks, riscv_zvks_bundled_exts, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_BUNDLE_VALIDATE(zvksc, riscv_zvksc_bundled_exts, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(zvksed, RISCV_ISA_EXT_ZVKSED, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(zvksh, RISCV_ISA_EXT_ZVKSH, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_BUNDLE_VALIDATE(zvksg, riscv_zvksg_bundled_exts, riscv_ext_vector_crypto_validate),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(zvkt, RISCV_ISA_EXT_ZVKT, riscv_ext_vector_crypto_validate),

I'm not sure if I already made that comment, so here we go again.
Shouldn't Zvbb use riscv_ext_vector_crypto_validate() as well ?  The
spec states that Zvbb is a superset of Zvkb and Zvkb uses the
riscv_ext_vector_crypto_validate() validation callback. I guess Zvbc
should also use it based on your spec excerpt in the commmit log.

Thanks,

Clément

>  	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
>  	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
>  	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),


