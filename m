Return-Path: <devicetree+bounces-107430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E596898EAC3
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4184280E33
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 07:49:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 405EA12C549;
	Thu,  3 Oct 2024 07:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="NY5AGyPf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E303FB8B
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 07:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727941796; cv=none; b=CeTz9caqrKTP97Gq1ztFzdT0Jy2p905w55a3xUE4oC4ob7KY6AL7V+y+lrCG91MWC7yc/W/j+5OtnrXMtcpLWkqBmasAQwkHjT3mz/uwmQZSPQNAhG28+ZNjEbhPIdy0RsJP6ukTnA5syxx6GjutlMdAhhOzKp7e5t6+DC5aqHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727941796; c=relaxed/simple;
	bh=KrsnW3KRAU1JoynmwJH5u2a/eU+TzfBlvEJS/tdrM3M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YPV9ZkVrATiyNsDMzL1PRtIW7CMqwcT/e3k0DJMvwsCUrZQ18S/XVwdc0Ao7CnHxGYU36NAJPlGibKW7WcoN7kb7wXROr8yr0af13DGSS0ifRlIQQUAlA7fqETlhLUjtPjrNGCHDHODaCVOSJD/jQwCKUT3K8YnYZC4GgtT9GGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=NY5AGyPf; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37cd8a5aac9so375006f8f.2
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 00:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1727941793; x=1728546593; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u1YwTr9h8LtbzMOl0TrTDXIEzjgLgPj2qUkc0qSTvso=;
        b=NY5AGyPfts8ukv9a4Itka6xJaXvDEWU4q9mVM5kt5ZJ0qeXpFaIfxK7vf+bDcg3Jr3
         9ZzE3u0sbQ2XLpiOQAsuF4U033FrtnFQJXVvM9BkskF0f14Y5roIGSiCR9GkbS8LZauy
         K2kKjppKnZZmPSxcxGOBwYtDfAyoZz68iKNhh1Z7N+cSghmxRbXDMdS7edqktELig3RV
         YH3y+SoauCTbg0ZBfFrrlHX9tAL+2pSHvXJKApT5Sxj7RoTiDyw6bKeVeTWRICD/VkbC
         dYKmcySNFIQOdIWF4fKegSAe7esV/1ItMW5jSY+viKAv0nAbH7H7G/uXO6rh0Dptc1fV
         bWfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727941793; x=1728546593;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u1YwTr9h8LtbzMOl0TrTDXIEzjgLgPj2qUkc0qSTvso=;
        b=mePwoBajbOatmBdSjUp42xGQhedn5bznIwvKzs8/2JabdP0GE3SUY5LA3iIKM+Z2kA
         MUynFmpWseBgnZdu0gBtPkMsKpt+2yezM4g32/5WoFob0AnA+UJL1psWbKaeYMWim/Ym
         kqktRWaY9g9bdqdvZ5IBgHrRi7Fa2y+ldAQGcCX3nHTq2r9mmT90bcCLb3tE3o/bRVtE
         EIbUnt5u9X4BI/X8eYKBrxwM7Z6gBG+WT/rZPH44vSYmyBcYFPNIDHlpcTd2grHhl5jh
         OTej5KEIcE5iATZQopgYU4geKBW05ExBQae1iPvEF50huIS0z2EtOYeBypMcZv1xdQdw
         Y5oA==
X-Forwarded-Encrypted: i=1; AJvYcCXkIChiPUU5ZK2nIayRQcmxOnscpASO87ahv+34SAeGAbEoOHxxYhVfjQhSyqt1OF8UHENRRWuwuu5h@vger.kernel.org
X-Gm-Message-State: AOJu0YzkQepTUkfhcLSE9UKWiywSCxQ2ULytPPSQjHqQ1FTE0pieKPFd
	pz3sTHyrF0TWVsM0qRlWoDF/q+rZd5sCYJXy07S0pVsTZh/bT2qE+8yOtPdZIrw=
X-Google-Smtp-Source: AGHT+IGLcxSI9tvWu0h1tUW6RfGSAAByFwWwvbEAOy5Bn8EDCgNaJ6vYB5LX4/TpSeyYiKyDH03HuA==
X-Received: by 2002:a5d:504e:0:b0:37c:d26c:8dc4 with SMTP id ffacd0b85a97d-37cfba03ea9mr4035595f8f.36.1727941792805;
        Thu, 03 Oct 2024 00:49:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d0823ed00sm657222f8f.49.2024.10.03.00.49.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2024 00:49:52 -0700 (PDT)
Message-ID: <6b735be2-93d2-4cc2-b690-438f6e71cf0b@rivosinc.com>
Date: Thu, 3 Oct 2024 09:49:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v1 2/5] RISC-V: add f & d extension validation checks
To: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Andy Chiu <andybnac@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241002-defeat-pavestone-73d712895f0b@spud>
 <20241002-stuffed-trance-1323386dd80b@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20241002-stuffed-trance-1323386dd80b@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 02/10/2024 18:10, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Using Clement's new validation callbacks, support checking that
> dependencies have been satisfied for the floating point extensions.
> 
> The check for "d" might be slightly confusingly shorter than that of "f",
> despite "d" depending on "f". This is because the requirement that a
> hart supporting double precision must also support single precision,
> should be validated by dt-bindings etc, not the kernel but lack of
> support for single precision only is a limitation of the kernel.
> 
> Since vector will now be disabled proactively, there's no need to clear
> the bit in elf_hwcap in riscv_fill_hwcap() any longer.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/kernel/cpufeature.c | 36 +++++++++++++++++++++++-----------
>  1 file changed, 25 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index 84a2ad2581cb0..b8a22ee76c2ef 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -101,6 +101,29 @@ static int riscv_ext_zicboz_validate(const struct riscv_isa_ext_data *data,
>  	return 0;
>  }
>  
> +static int riscv_ext_f_validate(const struct riscv_isa_ext_data *data,
> +				const unsigned long *isa_bitmap)
> +{
> +	if (!__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_d)) {
> +		pr_warn_once("This kernel does not support systems with F but not D\n");
> +		return -EINVAL;
> +	}
> +
> +	if (IS_ENABLED(CONFIG_FPU))
> +		return -EINVAL;

Hey Conor,

Shouldn't this be !IS_ENABLED(CONFIG_FPU)) ? I mean, if the f extension
is enabled but not CONFIG_FPU, then disable it.

Clément

> +
> +	return 0;
> +}
> +
> +static int riscv_ext_d_validate(const struct riscv_isa_ext_data *data,
> +				const unsigned long *isa_bitmap)
> +{
> +	if (IS_ENABLED(CONFIG_FPU))
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
>  static int riscv_ext_vector_x_validate(const struct riscv_isa_ext_data *data,
>  				     const unsigned long *isa_bitmap)
>  {
> @@ -351,8 +374,8 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>  	__RISCV_ISA_EXT_DATA(i, RISCV_ISA_EXT_i),
>  	__RISCV_ISA_EXT_DATA(m, RISCV_ISA_EXT_m),
>  	__RISCV_ISA_EXT_DATA(a, RISCV_ISA_EXT_a),
> -	__RISCV_ISA_EXT_DATA(f, RISCV_ISA_EXT_f),
> -	__RISCV_ISA_EXT_DATA(d, RISCV_ISA_EXT_d),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(f, RISCV_ISA_EXT_f, riscv_ext_f_validate),
> +	__RISCV_ISA_EXT_DATA_VALIDATE(d, RISCV_ISA_EXT_d, riscv_ext_d_validate),
>  	__RISCV_ISA_EXT_DATA(q, RISCV_ISA_EXT_q),
>  	__RISCV_ISA_EXT_SUPERSET(c, RISCV_ISA_EXT_c, riscv_c_exts),
>  	__RISCV_ISA_EXT_SUPERSET_VALIDATE(v, RISCV_ISA_EXT_v, riscv_v_exts, riscv_ext_vector_float_validate),
> @@ -912,15 +935,6 @@ void __init riscv_fill_hwcap(void)
>  		}
>  	}
>  
> -	/*
> -	 * We don't support systems with F but without D, so mask those out
> -	 * here.
> -	 */
> -	if ((elf_hwcap & COMPAT_HWCAP_ISA_F) && !(elf_hwcap & COMPAT_HWCAP_ISA_D)) {
> -		pr_info("This kernel does not support systems with F but not D\n");
> -		elf_hwcap &= ~COMPAT_HWCAP_ISA_F;
> -	}
> -
>  	if (__riscv_isa_extension_available(NULL, RISCV_ISA_EXT_ZVE32X)) {
>  		/*
>  		 * This cannot fail when called on the boot hart


