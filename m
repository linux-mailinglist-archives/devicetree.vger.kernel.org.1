Return-Path: <devicetree+bounces-118696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0229BB443
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 13:11:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD3751C21315
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73541B6CE9;
	Mon,  4 Nov 2024 12:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="mJ88Vh8f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6611B5ED0
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 12:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730722283; cv=none; b=hSkVzsZfZWm7hcaTbFS7ESgcVczl9zymTs3oAjfJNG4FdSPp3aweX4Nh6+Q2P10Hs+RJ340uz2D3MwrkoIT8lqXNRIrWhBmC75WrdXWrZbEHf9HZXkS2u04Fs/ACedgFLDCb5/eI7WnLOnYnhJtq1NoBtK+VTMjP18rZ26B2Miw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730722283; c=relaxed/simple;
	bh=EW/+kcRIbtWGNG3/HSSUqqzHxBuvplmY1+As85O/USI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kp4oIneUsZ5W1JUehAM7isFVLRVv34hRQVqTbkErUopHlsQ+9ITVuk3I6zns97Pg3yppcklvDzqs3/EUo87Mb60fewoROQuXQZA23zxLTdunoBEWaDt8vbsxvIR1jRnrdZVfOvutV53O+OlAc5jzcmM2jpc2yCtPzJGq5RWtVXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=mJ88Vh8f; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-431688d5127so32018135e9.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 04:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1730722279; x=1731327079; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TZ56fmXjiTYLxN4xJpDGh5ZMZmSWUVoHQN6nZMrXMmc=;
        b=mJ88Vh8f4AgqdZfk6jOIOxM/mqdr9htX0xvZa6bK5j/v/qP1gv7qRBKwsfXaA4j3Nq
         2pBlTY/M2TgbIMc4M/kwFFQL+dqv/Iu/dSJ+ETnMXZDq7nriS1JUUrEsRryGE2hPSt9S
         7PTbgZsfMwW6StKBNNUsOhh0hDbY6E5UrP5FhN/hLG7byRh5Yy53XLfiVg+8qzr+A1Bv
         k+3ZeN+ZsX7Xieyg9jCRZeT+JCgookHmAvD6uqAzWiYljoiC1QFOoVlgoVex37l60Z9G
         cU3qe6kYYaWsCryBHQBpc1WZR0O3VXM7NgrcsD1snktUZVEmxniQ+Nl4H5WFX+gBf9XU
         +bZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730722279; x=1731327079;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TZ56fmXjiTYLxN4xJpDGh5ZMZmSWUVoHQN6nZMrXMmc=;
        b=MvFAvwyPL09h58UNk46dFf8FWOwMflgOlM/w/erc1uMx+TzV56sMenImkGg9JmhU17
         LjFO4NAym4o4sPkzigV3HCfIrZCOZBRMB6ElXLl2HqfSBgGS9jNQ/RQobfYbbx6p8syi
         IGcaQx1vGzokSp9f/SZg4tHp82cpwWr1eeQj8ovlfexoNFftrkpSxaVtFJ/pl2H1fQ03
         Jt7msNkW+zZp7HB6lZ7Qhmlu1IfQklRM62HzeDHVaK/WgcsMV49KeluGwcsDEKdGhe9+
         37W/WbniUN6+QrOBPDcRpnWuI4bXmpbbHE9A21u82tHYxxiPkqYPxOBvlFYyWmS6w5ES
         85og==
X-Forwarded-Encrypted: i=1; AJvYcCVtF8eV6oUX/puDso3F9Mo9QCVXsXQVcdTeq6tK3DDNoYsFSoM6DtKjvOrgl7voJk6sJNN0shVa3irS@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0epSr2KeuBtnDGC3OQ8YDvvt5O53Sklj+sv3+iiyLxtiGOWgm
	cDBKMGkD7dVTV9AHX79ENnKyqgWG2Ta/mDddrU80GDYYcvvDWspeQq8ney0HSVo=
X-Google-Smtp-Source: AGHT+IG0KNeictXp2keg0xKTrwSw2dpZ3byLRxQUDBWwUtsFo73cuCa8JZLWaGjBv/Dn/iKV+Gzl5g==
X-Received: by 2002:a05:600c:1f0e:b0:431:5ba2:2450 with SMTP id 5b1f17b1804b1-4319ad253ecmr271545645e9.33.1730722278899;
        Mon, 04 Nov 2024 04:11:18 -0800 (PST)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d698144sm156541575e9.39.2024.11.04.04.11.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 04:11:18 -0800 (PST)
Message-ID: <b823ad91-af5c-43a7-bf16-78d683937e0e@rivosinc.com>
Date: Mon, 4 Nov 2024 13:11:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] riscv: hwprobe: export bfloat16 ISA extension
To: Inochi Amaoto <inochiama@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Evan Green <evan@rivosinc.com>,
 Charlie Jenkins <charlie@rivosinc.com>,
 Andrew Jones <ajones@ventanamicro.com>, Andy Chiu <andybnac@gmail.com>,
 Xiao Wang <xiao.w.wang@intel.com>, Samuel Holland <samuel.holland@sifive.com>
Cc: linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
References: <20241103074959.1135240-1-inochiama@gmail.com>
 <20241103074959.1135240-4-inochiama@gmail.com>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20241103074959.1135240-4-inochiama@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 03/11/2024 08:49, Inochi Amaoto wrote:
> Export Zfbmin, Zvfbfmin, Zvfbfwma ISA extension through hwprobe.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  Documentation/arch/riscv/hwprobe.rst  | 12 ++++++++++++
>  arch/riscv/include/uapi/asm/hwprobe.h |  3 +++
>  arch/riscv/kernel/sys_hwprobe.c       |  3 +++
>  3 files changed, 18 insertions(+)
> 
> diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
> index 85b709257918..8c30dd06f3c0 100644
> --- a/Documentation/arch/riscv/hwprobe.rst
> +++ b/Documentation/arch/riscv/hwprobe.rst
> @@ -239,6 +239,18 @@ The following keys are defined:
>         ratified in commit 98918c844281 ("Merge pull request #1217 from
>         riscv/zawrs") of riscv-isa-manual.
>  
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZFBFMIN`: The Zfbfmin extension is supported as
> +       defined in the RISC-V ISA manual starting from commit 4dc23d6229de
> +       ("Added Chapter title to BF16").
> +
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZVFBFMIN`: The Zvfbfmin extension is supported as
> +       defined in the RISC-V ISA manual starting from commit 4dc23d6229de
> +       ("Added Chapter title to BF16").
> +
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZVFBFWMA`: The Zvfbfwma extension is supported as
> +       defined in the RISC-V ISA manual starting from commit 4dc23d6229de
> +       ("Added Chapter title to BF16").
> +
>  * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: Deprecated.  Returns similar values to
>       :c:macro:`RISCV_HWPROBE_KEY_MISALIGNED_SCALAR_PERF`, but the key was
>       mistakenly classified as a bitmask rather than a value.
> diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
> index 1e153cda57db..95d00a065b4e 100644
> --- a/arch/riscv/include/uapi/asm/hwprobe.h
> +++ b/arch/riscv/include/uapi/asm/hwprobe.h
> @@ -72,6 +72,9 @@ struct riscv_hwprobe {
>  #define		RISCV_HWPROBE_EXT_ZCF		(1ULL << 46)
>  #define		RISCV_HWPROBE_EXT_ZCMOP		(1ULL << 47)
>  #define		RISCV_HWPROBE_EXT_ZAWRS		(1ULL << 48)
> +#define		RISCV_HWPROBE_EXT_ZFBFMIN	(1ULL << 49)
> +#define		RISCV_HWPROBE_EXT_ZVFBFMIN	(1ULL << 50)
> +#define		RISCV_HWPROBE_EXT_ZVFBFWMA	(1ULL << 51)
>  #define RISCV_HWPROBE_KEY_CPUPERF_0	5
>  #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
>  #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
> diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
> index cea0ca2bf2a2..de1966bd1776 100644
> --- a/arch/riscv/kernel/sys_hwprobe.c
> +++ b/arch/riscv/kernel/sys_hwprobe.c
> @@ -131,6 +131,8 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
>  			EXT_KEY(ZVE64D);
>  			EXT_KEY(ZVE64F);
>  			EXT_KEY(ZVE64X);
> +			EXT_KEY(ZVFBFMIN);
> +			EXT_KEY(ZVFBFWMA);
>  			EXT_KEY(ZVFH);
>  			EXT_KEY(ZVFHMIN);
>  			EXT_KEY(ZVKB);
> @@ -147,6 +149,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
>  			EXT_KEY(ZCD);
>  			EXT_KEY(ZCF);
>  			EXT_KEY(ZFA);
> +			EXT_KEY(ZFBFMIN);
>  			EXT_KEY(ZFH);
>  			EXT_KEY(ZFHMIN);
>  		}


Looks good to me !

Reviewed-by: Clément Léger <cleger@rivosinc.com>

Thanks

