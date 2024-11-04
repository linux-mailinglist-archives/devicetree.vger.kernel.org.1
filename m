Return-Path: <devicetree+bounces-118616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFE59BAF65
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 10:16:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EBD71F21A4C
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 09:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28D3E1ABEA5;
	Mon,  4 Nov 2024 09:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="q55mNCKE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6598189BB1
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 09:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730711765; cv=none; b=q8BzoxZ+KTtieXGTqbbfIi2vDxydXLIYI3BjWIgIdSzqVVezQs+GtqInCCWJUJPoa6TQyduvK0g46wtNgCfi3n1/uqlwQ41C+ziXi0k/a/9lVKQNUmKGsUT1y1JSEDVdX9HSKK+VibTLPoFIsrrc7513aBdoZXh4rIMAQzU+iW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730711765; c=relaxed/simple;
	bh=z6GJ93yXRjyXplh2SP64pD8kWWUiAltxGKL0J8st/Ls=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GQZ4A8xd5gq25T3jCsVCJ3yVx0KTb/lRNTcpG/yxd+aMa9gfzew3rDHD3wVNMjZ5M4N27YW1hcuB4hrGhPwXHp1P1vbYTrsH8L4Ml/76x0YijO7T7LhtGFfKbXCpJ4eKWPmMExjn1YqrLOOmBx4YFLYOFrnm4lfdcGnx7kuYfwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=q55mNCKE; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4319399a411so34317465e9.2
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 01:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1730711761; x=1731316561; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BHNHWIYjHvkIzmcPqQT0+mDEdOP8FoTFnfjxUafDk0o=;
        b=q55mNCKEc14B3e9IhwmUwR3HosflLGppuPFP3M3TrK2t/JeuGl9WUUVfgAWWGP0+Eu
         TP6cYR7Ig7gNAjd5An1lQVoSz/9lyPCR/UBMHf5XTkNQZoanShX8ZHYk5WGqY3CHb3sx
         1jZVjCX45Iie4ieIox4TgAlOwUYVknqmGHdqZ4GRv2DYAWdHb5QW1HJ5vwvgSxP615le
         mRAwnfUuvWeRs+x8of0V49Tps25pVq+ndaeYyectG+Wr6riyxIT08hm2c0WKZYTy9Mef
         LfTmrHMP04+J2hL+ESeO8M4TJ4oju7SPn/1dl5+v0Laz9KcgnjLexXyoZX9+Dct18XPf
         UcZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730711761; x=1731316561;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BHNHWIYjHvkIzmcPqQT0+mDEdOP8FoTFnfjxUafDk0o=;
        b=tYSYaG17ZTg1wtNvNoZkrMu7PLAHLHw1mkp/E3QIg20prZFUak4a2d+58dbOagsXuP
         WTdo3mDNxxpk+kV6n/8ygbYXr6V/pX5LFWbt0fwGCjDPqV3P24xp2ZCmVDK1o5mDA8Zm
         vepDneR+94c7O+jzsBTGGj9C9WDa+KUJiliMGqGevGbKgtHQRrpGSaKojYWDPCS/cUyC
         Vw90ghMFw63d8vDfs69biprjDJYE1Z8OgbaD0jjXwmAtwg1eMcF9HNUDD4Ri574pJw1D
         SFKQrI0/EorkI3VrkpHcvvhLWZFzL8n3J315e5Ds5G6PCOk4qkcmqH6lELtCQp5Rh0Yv
         kgsg==
X-Forwarded-Encrypted: i=1; AJvYcCXIREyzrM7QOF7Oivttp9D08+oUxxVz88W6mFQK3FiGzwDjtJmWdkNY9kSPwbSFnOit7dsECG04Rm9d@vger.kernel.org
X-Gm-Message-State: AOJu0YwTFs31ABolvqbEecV/JY2u7E9zdF1X9oWXHFLmeV6MZMEpZpX9
	dM3ycJ5Rgggp/vfJpW2Ceo1+EJZwbpJDmR56KmvAHhFY4IIbbaJxUUlt8pZZHoQ=
X-Google-Smtp-Source: AGHT+IE4s+sASLiF+pi+exNOnX7ReBg009W7YiTR8d4XFS+TSr8/rXuH9ghRVqL/4nhzY++NrQ3GdQ==
X-Received: by 2002:a05:600c:428b:b0:432:7c08:d113 with SMTP id 5b1f17b1804b1-4327c08d232mr119169755e9.6.1730711759998;
        Mon, 04 Nov 2024 01:15:59 -0800 (PST)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd917f0bsm173335235e9.17.2024.11.04.01.15.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 01:15:59 -0800 (PST)
Message-ID: <2e775421-0c3e-48ef-8a8c-6734f7fcf298@rivosinc.com>
Date: Mon, 4 Nov 2024 10:15:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] riscv: add ISA extension parsing for bfloat16 ISA
 extension
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
 <20241103074959.1135240-3-inochiama@gmail.com>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20241103074959.1135240-3-inochiama@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 03/11/2024 08:49, Inochi Amaoto wrote:
> Add parsing for Zfbmin, Zvfbfmin, Zvfbfwma ISA extension which
> were ratified in 4dc23d62 ("Added Chapter title to BF16") of
> the riscv-isa-manual.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  arch/riscv/include/asm/hwcap.h | 3 +++
>  arch/riscv/kernel/cpufeature.c | 3 +++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> index 46d9de54179e..97657fb63af6 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -93,6 +93,9 @@
>  #define RISCV_ISA_EXT_ZCMOP		84
>  #define RISCV_ISA_EXT_ZAWRS		85
>  #define RISCV_ISA_EXT_SVVPTC		86
> +#define RISCV_ISA_EXT_ZFBFMIN		87
> +#define RISCV_ISA_EXT_ZVFBFMIN		88
> +#define RISCV_ISA_EXT_ZVFBFWMA		89
>  
>  #define RISCV_ISA_EXT_XLINUXENVCFG	127
>  
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index 3a8eeaa9310c..1b286f5bc591 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -325,6 +325,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>  	__RISCV_ISA_EXT_DATA(zacas, RISCV_ISA_EXT_ZACAS),
>  	__RISCV_ISA_EXT_DATA(zawrs, RISCV_ISA_EXT_ZAWRS),
>  	__RISCV_ISA_EXT_DATA(zfa, RISCV_ISA_EXT_ZFA),
> +	__RISCV_ISA_EXT_DATA(zfbfmin, RISCV_ISA_EXT_ZFBFMIN),
>  	__RISCV_ISA_EXT_DATA(zfh, RISCV_ISA_EXT_ZFH),
>  	__RISCV_ISA_EXT_DATA(zfhmin, RISCV_ISA_EXT_ZFHMIN),
>  	__RISCV_ISA_EXT_DATA(zca, RISCV_ISA_EXT_ZCA),
> @@ -357,6 +358,8 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>  	__RISCV_ISA_EXT_SUPERSET(zve64d, RISCV_ISA_EXT_ZVE64D, riscv_zve64d_exts),
>  	__RISCV_ISA_EXT_SUPERSET(zve64f, RISCV_ISA_EXT_ZVE64F, riscv_zve64f_exts),
>  	__RISCV_ISA_EXT_SUPERSET(zve64x, RISCV_ISA_EXT_ZVE64X, riscv_zve64x_exts),
> +	__RISCV_ISA_EXT_DATA(zvfbfmin, RISCV_ISA_EXT_ZVFBFMIN),
> +	__RISCV_ISA_EXT_DATA(zvfbfwma, RISCV_ISA_EXT_ZVFBFWMA),

@Conor,

Should we wait for your V/F validation support to be merged before this
one ?

Thanks,

Clément


>  	__RISCV_ISA_EXT_DATA(zvfh, RISCV_ISA_EXT_ZVFH),
>  	__RISCV_ISA_EXT_DATA(zvfhmin, RISCV_ISA_EXT_ZVFHMIN),
>  	__RISCV_ISA_EXT_DATA(zvkb, RISCV_ISA_EXT_ZVKB),


