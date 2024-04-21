Return-Path: <devicetree+bounces-61234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D7F8AC141
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 23:17:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5BCBFB209A6
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 21:17:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E82C44C97;
	Sun, 21 Apr 2024 21:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AqTdHsPg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E62383BD
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 21:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713734216; cv=none; b=Z4C6QrfnX4MiMLAztG1kLpcspt1qLy6fle6jxQb/a9YLnd+OY6zL4YRAtxBTIlskeA5k+Juzuhj4G1O02uCJCKCM3+O3sbVXx9wbfiteJHVCL5j3jkTxiQWmiUoQcR1YGGoni9fkT+gQcO8zKPEDPozLp16Cwkjz25F+8mpaEbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713734216; c=relaxed/simple;
	bh=IOocQYYqtgQtpSock/NXyVT93zBEhceUWpIDMnClmTU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dc/lOeluGaGp0G32c9OjHCeSlprS53lIQw7ulNnYJE2FQLwhjD2hmc0tT7nfgUOGtA8BFmuGaOSzVKttLN68LYEEiAzFN/tEJ8I+oW+BxrKexPxAFocFloK0pRe5gI+yUpibhvSWPe+NNdWnubMCvoxEDPvMSOaMTe1I9OZ+TgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AqTdHsPg; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-345522f7c32so1655132f8f.0
        for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 14:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713734213; x=1714339013; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=C3XD0aGyobZQu9vXJb1rWcoNhZJ6ku9NSVnNpSmzHD8=;
        b=AqTdHsPgdFDG2LZarVYyzcVY186AplBODs647lvuMNIUS8Vieuza0Jgm6FAH/hhRbd
         WLfSRbxU47k+sb1T7/kaSJcDQZXhvxmT0H7ywK9KNV7MN6vyf5SwG0bKJFGRUmnXbnEv
         FoQYGKq5J+9zb97iJ3duZIwB04xf8TnLUgp7kXufKeaL7oYb6kppWHCROLYDipjgLrH+
         iTC5RvT3qNyprAy9SBOClDcB3QVNCgm+zUm+BxyM5VxYZ+dnqWVEXBLoYV/4DAEy3ghn
         MlfomtVqspYzVPmxMsxS46mVOZsJTRd5gEZfbWa7RojPHqB38Yyn3Km8VFha1ItW7/NU
         ZBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713734213; x=1714339013;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C3XD0aGyobZQu9vXJb1rWcoNhZJ6ku9NSVnNpSmzHD8=;
        b=MoUyrDjBjWl6gJdsDd1zN5QS3WmQeij/z3p7gCfmxINIH68eGBYuYArgDRjQHmbxWf
         bpCDROfTvwm62N3kGcjRv3xbth7igHrL3No7XM3sqeLNNTTAq1mQJR02R3nJbgo1UYma
         aLuHd6rEah4+VsWWKRoEi0pYZXoMsLgsudwE/0s8iiQq1qsaeRKDcI3NXvJDXIJOy1nY
         x+LiH5NInFU4AMJ64RGBW/LlNDlXw7Ki+2Oj6gPVYcmgOcbc+gcP02MjLZBM7QTI7yBM
         wCFApL5UozGkQpxivfY4M8wQeK712ZxZ4LXX8ki6hqY7qzvgJcS2GaZ4yvCP+c+HsB51
         0jHA==
X-Forwarded-Encrypted: i=1; AJvYcCUb5QBnOD4G1Hq/G2YaDLOmxdUeO7zUNzPTMD6BTSgOVJjuIb4E0ZaFPJ81f9tY9xDxGtJDpU5QMqUDMO/c5UT1wfUuffY1ohuSjA==
X-Gm-Message-State: AOJu0YwWOQD+O3QLXSMb8TGGfluZ/NqVZ4f6JlRz19EO/Amk3bHUILHn
	NN/5kBpKmcAzdyREzOvRj5FjSLLbHLDdPUA73HUpZYRsOKdrgfM8
X-Google-Smtp-Source: AGHT+IHDnjdZhBKZ/N8qotjF8wfVr8PE8appA8t34tqhSKSbaxo3xaKZxkRcR1Kc49r1HaArvS4mCg==
X-Received: by 2002:a5d:59a8:0:b0:343:7b6b:dcc6 with SMTP id p8-20020a5d59a8000000b003437b6bdcc6mr7249290wrr.30.1713734212622;
        Sun, 21 Apr 2024 14:16:52 -0700 (PDT)
Received: from andrea ([31.189.47.123])
        by smtp.gmail.com with ESMTPSA id n12-20020a5d67cc000000b0034a51283404sm7734635wrw.72.2024.04.21.14.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Apr 2024 14:16:52 -0700 (PDT)
Date: Sun, 21 Apr 2024 23:16:47 +0200
From: Andrea Parri <parri.andrea@gmail.com>
To: Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	conor.dooley@microchip.com, anup@brainfault.org,
	atishp@atishpatra.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com,
	David.Laight@aculab.com, luxu.kernel@bytedance.com
Subject: Re: [PATCH v2 3/6] riscv: Add Zawrs support for spinlocks
Message-ID: <ZiWCP6f6zZ3dKXfN@andrea>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
 <20240419135321.70781-11-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240419135321.70781-11-ajones@ventanamicro.com>

On Fri, Apr 19, 2024 at 03:53:25PM +0200, Andrew Jones wrote:
> From: Christoph M??llner <christoph.muellner@vrull.eu>
> 
> RISC-V code uses the generic ticket lock implementation, which calls
> the macros smp_cond_load_relaxed() and smp_cond_load_acquire().
> Introduce a RISC-V specific implementation of smp_cond_load_relaxed()
> which applies WRS.NTO of the Zawrs extension in order to reduce power
> consumption while waiting and allows hypervisors to enable guests to
> trap while waiting. smp_cond_load_acquire() doesn't need a RISC-V
> specific implementation as the generic implementation is based on
> smp_cond_load_relaxed() and smp_acquire__after_ctrl_dep() sufficiently
> provides the acquire semantics.
> 
> This implementation is heavily based on Arm's approach which is the
> approach Andrea Parri also suggested.
> 
> The Zawrs specification can be found here:
> https://github.com/riscv/riscv-zawrs/blob/main/zawrs.adoc
> 
> Signed-off-by: Christoph M??llner <christoph.muellner@vrull.eu>
> Co-developed-by: Andrew Jones <ajones@ventanamicro.com>
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> ---
>  arch/riscv/Kconfig                | 13 ++++++++
>  arch/riscv/include/asm/barrier.h  | 45 ++++++++++++++++++---------
>  arch/riscv/include/asm/cmpxchg.h  | 51 +++++++++++++++++++++++++++++++
>  arch/riscv/include/asm/hwcap.h    |  1 +
>  arch/riscv/include/asm/insn-def.h |  2 ++
>  arch/riscv/kernel/cpufeature.c    |  1 +
>  6 files changed, 98 insertions(+), 15 deletions(-)

Doesn't apply to riscv/for-next (due to, AFAIU,

  https://lore.kernel.org/all/171275883330.18495.10110341843571163280.git-patchwork-notify@kernel.org/ ).

But other than that, this LGTM.  One nit below.


> -#define __smp_store_release(p, v)					\
> -do {									\
> -	compiletime_assert_atomic_type(*p);				\
> -	RISCV_FENCE(rw, w);						\
> -	WRITE_ONCE(*p, v);						\
> -} while (0)
> -
> -#define __smp_load_acquire(p)						\
> -({									\
> -	typeof(*p) ___p1 = READ_ONCE(*p);				\
> -	compiletime_assert_atomic_type(*p);				\
> -	RISCV_FENCE(r, rw);						\
> -	___p1;								\
> -})
> -
>  /*
>   * This is a very specific barrier: it's currently only used in two places in
>   * the kernel, both in the scheduler.  See include/linux/spinlock.h for the two
> @@ -70,6 +56,35 @@ do {									\
>   */
>  #define smp_mb__after_spinlock()	RISCV_FENCE(iorw, iorw)
>  
> +#define __smp_store_release(p, v)					\
> +do {									\
> +	compiletime_assert_atomic_type(*p);				\
> +	RISCV_FENCE(rw, w);						\
> +	WRITE_ONCE(*p, v);						\
> +} while (0)
> +
> +#define __smp_load_acquire(p)						\
> +({									\
> +	typeof(*p) ___p1 = READ_ONCE(*p);				\
> +	compiletime_assert_atomic_type(*p);				\
> +	RISCV_FENCE(r, rw);						\
> +	___p1;								\
> +})

Unrelated/unmotivated changes.

  Andrea

