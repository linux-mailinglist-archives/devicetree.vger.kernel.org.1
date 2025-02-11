Return-Path: <devicetree+bounces-145153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C452A30869
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 11:22:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90A863A626D
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 10:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91C951F3BB1;
	Tue, 11 Feb 2025 10:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="w2xdc/kg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9906F1F03E8
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 10:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739269339; cv=none; b=Zlq3D5vIoQdAqvFWIStmNNRaDJhhfrWa4EqBrHadwdUyT8KpSI6nQ3LSDuwcuYGZShSpBKvvMpN4abZ0eSxfIlVViUBnWSPdilMVvXqMqpHd/astkZ0FLeMnMdMfsK1Y0fPYjPSEhy9v84Vj0ybfDv2VuSeKoR64r4XSi5ezOrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739269339; c=relaxed/simple;
	bh=YV/Lxx7PD68CWkaMFDlwQ/kjhqOH+TSOYo3gqkpsfr4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UjF/EctgBqZF+MKjhZ3ftRusvjur0hFF5BCTAROi78qnvEJFs/ZXMNUXsX4pwpGwazucmrbOMnb7DFbXz3AXmazAPgG9ph88ahtbgjVDApfF3oYWNOElhQ5Omna5yrNKmmQkA0fwewl0IJJACj6RPC3nbAwgirfDH9HR3kpIGlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=w2xdc/kg; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38dcb33cba1so1983665f8f.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 02:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1739269336; x=1739874136; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mbTkI137Y14wF/SYmxqIN/canr7i5I0Hovyc00mQ21Q=;
        b=w2xdc/kgHtDoa0VibbjnGrYGn5g5M81S4DVJUX2gq/hIy8AkAfID2m5XMNRNjV6CE+
         5ZRtOIrcNVx/tflSe41gI7NaZ+V0KatGHdJuEy0P4S1U0znjMvFME84KOD5S1B8GmDOD
         ttJB7Azjg2u/KgGRgHSYe2O8P7iIXVEHRpYYzAEiIFCQj1wNI35AZSfOTJC/mq49fX1o
         FpCR4qAVYDXvBFsgs2sNl1KUPOj2fq36M2DQRPItuy3pGwOAXy8/T1RWGIhFljLCDji4
         dsertxnlrlarTXFfyyhGDtUhu8BCf9MNjzOjCP9zSDp+BPvVubPn9bKOI+x68qYEeDbz
         AKBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739269336; x=1739874136;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mbTkI137Y14wF/SYmxqIN/canr7i5I0Hovyc00mQ21Q=;
        b=hSh14ym6bzywLu3mM+ezu5yG3I0eWA6RH2BVO8ezyzNbT5GzTWEjqv2hk87f2PDUhD
         ilug4NjxHWZiogx4R6gzaX5ZPYfrUlmXjWrOb5PIGmw6mxfbOK5iqwiorql6/K9eFApA
         FzqGMrov61SM0uEVt0G56g+Ekvh/fM69jSVHfzO8KASGti2DkPeS/mgA2OEXJYK19D8f
         a+41BOXcmoBXkLDS+DWx5AI5HLbQkRF2EKba3AHW0zhT4onlNVeoOJLRIL6TZCRY4ruF
         Ho+SHQDkUPMOjYvT8Qz3mywpb9JaaFOipCfE5UgC/BTzYyVLlsjKUcFJpp9WN4nOI2kO
         EiLg==
X-Forwarded-Encrypted: i=1; AJvYcCW3jNosgNbaPkM7pHZFh4W+r5dLt3ktO9Gyd7wLnnRAhuRfXwWr+VynTg76VZK6AS5jTq/yB9orY+0T@vger.kernel.org
X-Gm-Message-State: AOJu0YwCcMwYnBSeWRxKe678N3PazgyUaur50vf5ys6gJ030lOewRPKU
	Z6bPinWC+OjI2Jxrkek/vZLdMt0In3apDM/UwDdlNLGf0hx3PMAR4jBMeMmAm/Q=
X-Gm-Gg: ASbGncsEWQi7QOtOwzHH23Edg6w+Vt2L4ySMAR/0K7htcrR3jImw4OOkWr42vcxvkBh
	5BzH5tZnU/VPMU8hDLsCiw1MWXk5hUkK8XMZQNV9pwtYQpbM//CaapmTdFZBoTe1eDvTBuyGDzF
	E68jd8ZgmXc9ZKj0T2o58aK6AnY++a7Jpnm7dupICQ4/H+5aLtzZHnU3MKa8mZMCMdWWyaBHJtk
	VDdc2gtgOw1nHRvottcKTFoYbJaVxG8CV8hHNoIv4XGhStPhARoD9rMMI31o+k56put1pTB2lIh
	zHo5WCqX7QwYwDf70ZSQk8NhLWvPIiGC9lE44XMqD9GFFa4gQvCXbHJFXy2X
X-Google-Smtp-Source: AGHT+IE/VDZ/kthICpSFub15CIFFhymKXrELJBlE9QL1p52esUXfeUro+7ZTlxdosY1on0C+EDMpQQ==
X-Received: by 2002:a05:6000:186d:b0:385:e1eb:a7af with SMTP id ffacd0b85a97d-38dc9491e85mr14386986f8f.48.1739269334365;
        Tue, 11 Feb 2025 02:22:14 -0800 (PST)
Received: from ?IPV6:2a01:e0a:e17:9700:16d2:7456:6634:9626? ([2a01:e0a:e17:9700:16d2:7456:6634:9626])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc73c2e00sm12529611f8f.57.2025.02.11.02.22.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 02:22:13 -0800 (PST)
Message-ID: <cfd0a7d1-464f-468d-9302-46d6b28efe5f@rivosinc.com>
Date: Tue, 11 Feb 2025 11:22:13 +0100
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

While I tested to remove the RISCV_ISA_EXT_d from the input isa bitmap
and it worked, I didn't realized that it was due to the probe order of
single letter extensions. D is probed before F so that works as
expected. But returning -EPROBEDEFER would not allow to display the
warn_once or wrongly display it if D was not yet probed. So I'm inclined
to keep it as is and rely on probe order (a bit fragile but for single
letter extensions, that seems acceptable).

> +
> +	if (!IS_ENABLED(CONFIG_FPU))
> +		return -EINVAL;

I would have actually move that chunk before the
__riscv_isa_extension_available() check so that the whole function body
is elided if FPU is disabled.

Clément

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


