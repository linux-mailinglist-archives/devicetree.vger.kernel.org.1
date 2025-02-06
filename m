Return-Path: <devicetree+bounces-143541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B2FA2A58C
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 11:08:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0198D7A2865
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 10:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9756D226552;
	Thu,  6 Feb 2025 10:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="pQ8kA1PY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA1C226540
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 10:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738836529; cv=none; b=KMsH2rLIJdQuVYz5sqCfJfPckoRrKd/1Y+CC9ZExf+TvhLDRcgr0UDU+sO7p1BpEa6cnoI2gHhx8zeaA+X2h0+AFsVUXKlGQ122h1oDAS9b6eJmVTsZD8NdITbGWhCQYel/vgDRP+ZxwhtsFf7x9WjtV+T1dC3vUmzyxTy1DjYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738836529; c=relaxed/simple;
	bh=YMQMwDEVeYKi3hCf58cs7qHmyhZLq29AiyJgS2tL2M0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hid0A3RlPegeHEWOdD9Na1eBUO5QmYrrRCAKVlKQ9nwWhbStDqX62kqr1WxaZYo1l4PGjL3DpjqUcsPvVp1WlXPKiiQ8poBXMjo+/J2Oe0/B5+bndZaf03TvAyhOVmb99hpNm2nMEKYafMSuQOZAxD5udHpPkYmAlRS39IvSQ0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=pQ8kA1PY; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4363ae65100so7651215e9.0
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 02:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738836526; x=1739441326; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O95g61PF532xlL2QESo99vnXziiwui859ZgTSUP0Xv8=;
        b=pQ8kA1PY81YisqmQwoztTPQ7X43YzMSQZQxymypdKUjGbJXLVvE1uhdpc9CRRFCjqG
         klfXizBWTqsGiXPeV8/HYnGp0KyVZZXYUWZmycXOonUSdqvbuSM8b5EdG4wqlD8OycFl
         /4SQPYQDwmzI23RPLM6NMI6UephYB9vjkyq/+OeEUXUWgebqeXa742lqiiOr3uA2/kRa
         x3sVre7CIhV/ZUqXrP8NDBY/OXcZzf/wJdIRh3n83fLO+V3xkusxwsxluDv35K0p8uOX
         n1oVpwoIejzzLwrQEuVA7qxva3DrXbs4WGF/KGYXO2PghN3L3KmfmCKQaeG0K+D8yt5c
         G99A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738836526; x=1739441326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O95g61PF532xlL2QESo99vnXziiwui859ZgTSUP0Xv8=;
        b=d7KERRdf++PASXm1hQEnKt4V0+ZoQ2Pol06C60TguT8CR/cGOUWnzsA/X9lbAO6Ius
         MWS6xNHEjK7IVOEroLJQzyCOt17PtMzbjpakHrLK4QMg7tKIb0j0pRWodnoCsb6ahw8T
         XH61S8EyRBFW7IEUa8stuwDqjFT/M5ik+njelIHtl8kw82WX0OhSYlldqSyHVZ4Losct
         JHcCss1gBUBZHmIXAElAoHwmEBhPNGJHUF4hsv/+XznvGEYNO6d6ckhbQ9wIwUI6oEo/
         r2dWZ0MulLoDZIIrB2usrUK/J5iRdVw4ElpluF5ijuObcOdkafO5+WaVMaro5ouBGhsD
         qMOA==
X-Forwarded-Encrypted: i=1; AJvYcCXxFyzAs94z6gP3e0OZwPhaP4bfGZ6jFa9h4ke6/YV0kxkvLoXZebfn5l6V7SWvcd0LbDsBXp+rM83z@vger.kernel.org
X-Gm-Message-State: AOJu0YzgSa1x3faSj8h+wLmukeLnGYDHIM4NdJK2saDf2DkYNzs3tcrk
	Jux4GOhVsPhwhZZdJrNECdFQeuXWFrDv+zPVhWTh3x/npl5dK0/9o553Ys7G3jI=
X-Gm-Gg: ASbGncvc3eCKdMj5Az6677yspUIMSkhBV10D2dzWGbWxpUVyk9Qi6PUQjIhVoIljr72
	+67zORhO9usTCqY0ux/y0hNulb2p3rdSGNx1Bdf4Dk/+bYAjQELQMmn3ydMAvWNcfTrJ3AxI1hY
	pxDdOydISggwzGElbiI2JC1iI/hMCFGBHXK2FtZlN8lZH4HkGd4d6VabyrxtQcJy5Yrx/RvC65l
	6u3ooX+7FB0Wkd7SCG6zXa6U2MqprJz23th1GdJpZZTOEql9xjq6xoJdtvi59/gkTnvcSSe925q
	k/FU0kmO0RrkHFnMK5jhpOkqz+e3v2j6JJJS1Ay9SDRzzkAAyCP9M/ABxEDG
X-Google-Smtp-Source: AGHT+IHMDkfvCNUK/HIby3h6OMSh5D9fHxMUbwPxuCzdxDPyzd/Hn7eK8DsebYDd9x3rCNunIDakxg==
X-Received: by 2002:a05:600c:3108:b0:434:f753:6012 with SMTP id 5b1f17b1804b1-4390d43e981mr55033545e9.17.1738836525625;
        Thu, 06 Feb 2025 02:08:45 -0800 (PST)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390d93369fsm50606545e9.3.2025.02.06.02.08.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 02:08:45 -0800 (PST)
Message-ID: <b8e6a496-c0ff-444b-8dd0-f1768ef89e4d@rivosinc.com>
Date: Thu, 6 Feb 2025 11:08:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] RISC-V: add f & d extension validation checks
To: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Eric Biggers <ebiggers@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Andy Chiu <andybnac@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250205-cobbler-unpadded-5580c1f5d946@spud>
 <20250205-stifle-remake-4e497e96fd66@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20250205-stifle-remake-4e497e96fd66@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 05/02/2025 17:05, Conor Dooley wrote:
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
>  arch/riscv/kernel/cpufeature.c | 27 +++++++++++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index 1c148ecea612..ad4fbaa4ff0d 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -109,6 +109,29 @@ static int riscv_ext_zicboz_validate(const struct riscv_isa_ext_data *data,
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
> +	if (!IS_ENABLED(CONFIG_FPU))
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static int riscv_ext_d_validate(const struct riscv_isa_ext_data *data,
> +				const unsigned long *isa_bitmap)
> +{
> +	if (!IS_ENABLED(CONFIG_FPU))
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
>  static int riscv_ext_vector_x_validate(const struct riscv_isa_ext_data *data,
>  				       const unsigned long *isa_bitmap)
>  {
> @@ -368,8 +391,8 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
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

Hi Conor,

Tested-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Clément Léger <cleger@rivosinc.com>

Thanks,

Clément




