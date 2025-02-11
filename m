Return-Path: <devicetree+bounces-145119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1787DA30632
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 09:46:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 835053A3B13
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 08:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51D541F0E34;
	Tue, 11 Feb 2025 08:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="sZ0beSTR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED871F03F0
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 08:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739263551; cv=none; b=I2qcL99ZuThzwHOMfMz5M7Pfze7Lt7+wEmLZS4Fx5iVdjiOQfHT3K8XZsY7/1/Y3Ox559KXF/PaxILOzDIBSpKtGd1BWxP55B4jV0kIMj1v+28Vy2E97wIaXFoZHCVAzYodw/0q2UthUuy9Xl8OxxqUFTlxrdfKbOxFum1/1N2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739263551; c=relaxed/simple;
	bh=8t4cGCz3NnbpxYs66KaHyja9JlE3mJSfzjdIyhtAp5c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=do53ZtrW5z/YeDytwHo/zOTimVco+HWhC5GiRtVFjGdk06LHrHqENzzh4cP83gwVRO9H/r+2mQl0Xmvcyr/yFw6zGpaC2kmr0XBycsP3R80Vc0ergQfMUwvKOClT29+RnqreNBpvkG/qRN6kBMl1+EwkQLU61uQtiMmI4QsB6Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=sZ0beSTR; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4393f6a2c1bso12359175e9.1
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 00:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1739263546; x=1739868346; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CjaMyifJmxRVCZcsee8t2l5V7O9x/XFbm7eqaPh0L0A=;
        b=sZ0beSTRW+zLsqi42L6tmfhZZ2wpD9edTCmAwwOCA1ySVtcx7zVCAfuV3kFNGNmlyE
         ofqCeRP4qN5eCHdm9owMYvr2l0/PZsARNheQxdCnA7LMU27mnOCAvoRv1fH8Zvs5SYP5
         p3vbDRSVmIy0qBADYHeWx0zlC2ITfkLJcb7Jpr+5Tp15MmtvswZKS7UIlpUq6I9pE8Di
         JBj1UfH+4ELM7I82c79uOwOjo8PmduTU+NA8iqXFyXnMwjRQMXIreVRI1/+CBds8P+oV
         j6Y/gV/7M4+2gr586r9nSEixo+Csehpb0H5xN49ySOCUh2Tgd3dQ2BSDYHlscvVDlMre
         vxxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739263546; x=1739868346;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CjaMyifJmxRVCZcsee8t2l5V7O9x/XFbm7eqaPh0L0A=;
        b=PaEyh0vc3SHWbnNe9SYDTFCH8Q9F+qP5sklKML4zH3EnQuo1r70/y8uTZ12L31INdI
         z86zNjNjWbFB4EQ/pXHdca76axTcSgDnG7naMb5jYP+6dHzvhHWnIQUQJvzfwRiyZY8H
         BUHEMEeAZktFO7pjc911rmXhD8U/CUz9Nz3xt56CDyzzsCJDiMGHZNvVC6d3I22UlYr2
         6mvb/rVgtZWekhjTisKh2f0qMxywEpD1cuuhFTCmRy3tiB6mGLmozJq8vDJ9E08h+C4t
         O6vFdt3yymci+94l/SBdLGaMntUsDdgcDQRxZKNWwkshP0yRgZEP5Ry/w+zmwQmilcOY
         dw8g==
X-Forwarded-Encrypted: i=1; AJvYcCWgQZax8tvd3WLevx7mAq1a+uEKIsb9ejkkoKIOOfyY/RYpDdIsDBQMeGHN9mCWJeysfOSB/dm79utr@vger.kernel.org
X-Gm-Message-State: AOJu0YyZAeKHialjPilMdhDgTdz5M675H/GHuPnUFfdr171YCbb16OUV
	2XCBGyvK7J7GAqPIF63MWkt8ECT66Y5oD2fNN7upMwJ8WeLaQgwUv5Fv/dvchQ4=
X-Gm-Gg: ASbGncuj3HwuBLyvb8d32VzV4aOt6dctLyFiYeGNNf79RY771vYNfnLtuwilwF4g34Y
	7TDALPQvXyofsgsSvW2YNztSzdhwWLkbgHwyN79Kz+vURFULn0MIija7ymFIzKAjJUarNddmje0
	UntIioqapZPVlwi830Uv+87bf0Hl7L1wd8ZyRzZt0Kzs7Jxrvp7GLTFZjPOYihj7ztXk6Ae7ilN
	dPfMb7tCzv1EXvXPaUwoqm6M4JUs6lLS01lhXGTmWtH0uGyP6tsD52IxDNtZMgq3tdEpUsQ0IaR
	NNM4MubfePGNPYqG7Ny4NnrkUwCl9UzIKk5WqTDTbt5l0nr4MM+r0YGjUhf+
X-Google-Smtp-Source: AGHT+IG+SmfGJVYOShNgqHCPCd07PbXxZneGcwo88AcQulZIQpXxaJaOeME1U8Vd0E5f2m5egCZc7A==
X-Received: by 2002:a05:6000:1f85:b0:38d:d8c0:1f7f with SMTP id ffacd0b85a97d-38de439d6aamr1776720f8f.9.1739263546052;
        Tue, 11 Feb 2025 00:45:46 -0800 (PST)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc565d62dsm13024751f8f.93.2025.02.11.00.45.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 00:45:45 -0800 (PST)
Message-ID: <f1ce7aa9-63e3-41bd-9bb0-a54ebc714dff@rivosinc.com>
Date: Tue, 11 Feb 2025 09:45:44 +0100
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

After a second thought, I think it should be this:

if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZVE32X))
	return 0;

return -EPROBEDEFER;

Extensions can be enabled later (but can not be "reverted") so check for
the extension to be present (in which case it's ok), or wait for it to
be (potentially) enabled.

Thanks,

Clément

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
>  	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
>  	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
>  	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),


