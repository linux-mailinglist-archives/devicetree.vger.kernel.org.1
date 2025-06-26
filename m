Return-Path: <devicetree+bounces-189810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D66AE99CD
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 11:21:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50A9017FB02
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 09:21:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7536D29ACF3;
	Thu, 26 Jun 2025 09:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="OAwwd5bz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02F820D4FF
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 09:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750929676; cv=none; b=E7BHsw17SnSccGnVw9sdI2XNUKMKC/pfVFxSt35pxPRrlhrAekMmTwFYfXbm/2E5pwtElMflI72oQ+UNqBS0xWjQoljxDwzshzes0ciL/emTWkWnhgqnJoKyuZFJ+nzI+Qx0cyD2XcAeqBx0ofTPraHGR73nlUMZM+omPQjxY3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750929676; c=relaxed/simple;
	bh=MC1tqkx0dq6JIK9w+hRVAVYH7jcS4hbI5NItNUnwQKc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qPR7t/US/UlU0iPAM9yP1+VbN/McXv+AGgQoPbJ1Cm2y3AknUnPhcqgnEywxO9BoUOLSKRUsf29M5BroQZ4ukSUdAoMUbTYNmjFOOi6ox+0A2P25TwFLlA64ApaDJaC2Ct97FZgLFdAUnEVJ+v1OFxOA1/QGXUYJznb2t3JCjiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=OAwwd5bz; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-450cfb790f7so5876075e9.0
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 02:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1750929672; x=1751534472; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l110quEZgWrA+tUVqx7bwejOA2gGYkFrBUl+v3tOblQ=;
        b=OAwwd5bz6PxrI0EmaU816U3tsZkj5ubuvtYa6+oJ13PBGM9gjvHtZcHueuOqGIeoEx
         zw3MVbtTof0bOVrBEr63/FAZNHN5bpQs4vaafxZs7b3XIwqULym74hk7B4L0TL/7Zz9F
         JutzlplNEPmG7Jhs42RRrjVjJI8RhQXkOmhc/OL2Doo/FxvK2cgX5wc06Un1BtECTgzg
         5YNKnntsBgJHYRq7sAcdKm8+eOabJsi4Yv2c2HmS6LryGF9h1Yvxfrd7ZB1Ba+TJH82u
         0tmYuV3NcTGV3UlBr5f4AxDLLXlxnOFGqhk1xPNyB6RN6PY+KZGmNv76i6vpixCoY+Gi
         q/YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750929672; x=1751534472;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l110quEZgWrA+tUVqx7bwejOA2gGYkFrBUl+v3tOblQ=;
        b=O4bPiPwjhzdBDQhg+UWJpLwxYLSwpwIle0rjpRAqpNMJ5IYAUnY5NKJxn27pUoTEFH
         8D+PdNKBNY8rXOpROKozIUA1pZ01jdbVk02hlAbyaVgzP6qHs1OEePHbQTk53sZ5NKyB
         4evAbFtWtASQVIupqYXNMOjnwCMdOOytfXpEtHO6Nlb+ydm05Wom4U4FMdmB2YcmAzC0
         8zcVUNuS15YakcvlcMQLMwKxbnUlFWrHPvkuFWfj5XUGr0q+/QtbQpskp8/XGV2vDIzz
         2b17elNSXtuExD4QNCVqPncoO+W0pggVbcMYt1T65WRgZvA4N7E9YjHDUTQ8CElqnAfb
         zTzg==
X-Forwarded-Encrypted: i=1; AJvYcCW2VCjsMOhtsCXlvW6AQ1nMOV8GmkQVdiybeM11PqYJk7Vg1gRPHS/rqYNNSCukqiELE9LJXcmo7EiE@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1ai/NKamRT3+VWLi43qcEKOVHv5K+bkqSNWfbn2JInBTO30vE
	yNcywLnttbCovRyivKmhAsT0ypOa4/CmpSchkWHaXME6TYqtzwncSEovZGkWlnjQXuQ=
X-Gm-Gg: ASbGnct4160CliHTFQq2Fb+Sk6aQRFkc/j5/JC5SW90ox6RHE3j4k46Dik9rXc5kwGa
	c9pz4qxflUzfG+jRVgwV/j15/zH+gpLElhoHOldxswF9QQxFO5N8mXIoUvZAui0E+pXpyvgVSzL
	Ej/TBK3dRM/HKF1UITLoyhhJm75daUKDT3LWwpUNoLRTEiIqDMOn0bXUU+3KW4Qq26QhC+7STQd
	h4b3rJGV1/JdI8IeLZ7Wl/h7cz1ietzMQHXH6Y7UkKI4esfYrKb5wYFJXRibQy4nkL7nPejtZpH
	XGdPBW5z8oKSFIPk0rE7SQAU2Wzz9mFs36tFNtyvduf5quV+Ig==
X-Google-Smtp-Source: AGHT+IHeq7BmdkNC1QZmLNEvB/p5lyP1vBsXS+C4YxORLxnk7NCsQMhF/36QZ4+0Ss1Q61RwIEK+Ag==
X-Received: by 2002:a05:600c:a44:b0:453:9b7:c214 with SMTP id 5b1f17b1804b1-45381b2155cmr60602115e9.29.1750929672028;
        Thu, 26 Jun 2025 02:21:12 -0700 (PDT)
Received: from localhost ([2a02:8308:a00c:e200::5485])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a3fe587sm13667895e9.19.2025.06.26.02.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 02:21:11 -0700 (PDT)
Date: Thu, 26 Jun 2025 11:21:10 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Aleksa Paunovic via B4 Relay <devnull+aleksa.paunovic.htecgroup.com@kernel.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Jonathan Corbet <corbet@lwn.net>, Palmer Dabbelt <palmer@sifive.com>, 
	Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
Subject: Re: [PATCH v4 6/7] riscv: Add tools support for xmipsexectl
Message-ID: <20250626-a1aca9887bbf5410741e17c4@orel>
References: <20250625-p8700-pause-v4-0-6c7dd7f85756@htecgroup.com>
 <20250625-p8700-pause-v4-6-6c7dd7f85756@htecgroup.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250625-p8700-pause-v4-6-6c7dd7f85756@htecgroup.com>

On Wed, Jun 25, 2025 at 04:21:01PM +0200, Aleksa Paunovic via B4 Relay wrote:
> From: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
> 
> Use the hwprobe syscall to decide which PAUSE instruction to execute in
> userspace code.
> 
> Signed-off-by: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
> ---
>  tools/arch/riscv/include/asm/vdso/processor.h | 27 +++++++++++++++++----------
>  1 file changed, 17 insertions(+), 10 deletions(-)
> 
> diff --git a/tools/arch/riscv/include/asm/vdso/processor.h b/tools/arch/riscv/include/asm/vdso/processor.h
> index 662aca03984817f9c69186658b19e9dad9e4771c..027219a486b7b93814888190f8224af29498707c 100644
> --- a/tools/arch/riscv/include/asm/vdso/processor.h
> +++ b/tools/arch/riscv/include/asm/vdso/processor.h
> @@ -4,26 +4,33 @@
>  
>  #ifndef __ASSEMBLY__
>  
> +#include <asm/hwprobe.h>
> +#include <sys/hwprobe.h>
> +#include <asm/vendor/mips.h>
>  #include <asm-generic/barrier.h>
>  
>  static inline void cpu_relax(void)
>  {
> +	struct riscv_hwprobe pair;
> +	bool has_mipspause;
>  #ifdef __riscv_muldiv
>  	int dummy;
>  	/* In lieu of a halt instruction, induce a long-latency stall. */
>  	__asm__ __volatile__ ("div %0, %0, zero" : "=r" (dummy));
>  #endif
>  
> -#ifdef CONFIG_TOOLCHAIN_HAS_ZIHINTPAUSE
> -	/*
> -	 * Reduce instruction retirement.
> -	 * This assumes the PC changes.
> -	 */
> -	__asm__ __volatile__ ("pause");
> -#else
> -	/* Encoding of the pause instruction */
> -	__asm__ __volatile__ (".4byte 0x100000F");
> -#endif
> +	pair.key = RISCV_HWPROBE_KEY_VENDOR_EXT_MIPS_0;
> +	__riscv_hwprobe(&pair, 1, 0, NULL, 0);
> +	has_mipspause = pair.value & RISCV_HWPROBE_VENDOR_EXT_XMIPSEXECTL;
> +
> +	if (has_mipspause) {
> +		/* Encoding of the mips pause instruction */
> +		__asm__ __volatile__(".4byte 0x00501013");
> +	} else {
> +		/* Encoding of the pause instruction */
> +		__asm__ __volatile__(".4byte 0x100000F");
> +	}
> +

cpu_relax() is used in places where we cannot afford the overhead nor call
arbitrary functions which may take locks, etc. We've even had trouble
using a static key here in the past since this is inlined and it bloated
the size too much. You'll need to use ALTERNATIVE().

Thanks,
drew


>  	barrier();
>  }
>  
> 
> -- 
> 2.34.1
> 
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

