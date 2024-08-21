Return-Path: <devicetree+bounces-95561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3C5959F62
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 16:11:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53BA11F24B57
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 14:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E34CC1B1D58;
	Wed, 21 Aug 2024 14:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Lhq1tPwL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B021C1AF4FA
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 14:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724249498; cv=none; b=ZJKyvazaXjJaEbTxgcPhrWJGKfUnK7QKyQRMaaz85oQNR7POmtlABA7C70eocojIfOS3Jkrs9+nQQc/8gyVuQPKtHCbyo7Kdgp07PSgUlwia/by0dXk3iU0WDL/iYPBlFb9Aq7gbqY4HjWhcPn1joqLP1BkpIU17Y0ElDDidSCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724249498; c=relaxed/simple;
	bh=lp556fCuqH/R513eqRQMxr+5lieSaZy/LymjmbvXEPE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ck5jJ/3CdzGIDFD5ah9CtvHWkobOANS7HkYWUg4xM3hB3gz92+n5xShTPeyK1IDBOtUv2VBHJiIUPqDcw5rWFTLHNIvVXaI+3OOnJUuMx+J8zGgptSAWrv3ntZgVnKX5v0YxFV4Kzk48F0PLV1T3P87+qrxf/XtPAjICzIgcUPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Lhq1tPwL; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5bec78c3f85so6145357a12.1
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 07:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1724249495; x=1724854295; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XBOHL837jA2B59cJ9N1CVTAML3ruQr41aXO6bANSxRE=;
        b=Lhq1tPwLBYzlmt50dmJXKhBc55HgZR6HO7sS8j03xx48vtpeSehmEPwuvMcVrIDWyj
         94V14FGO8wEOhOFoqW/xLOTgfniBwrfpUnhV0iNUboiAiuN6YPgZ66tX8bn38eiWDBhl
         Ldgz0Q6Pu4y/pyXLDp3reK1XMCCp8S1v/pCEKD3PUdU6F0MYtd/wZkT5g0PdXd+h2vff
         O3yOGfIPrJ316HbfqUS6TkKSA1UiDozFjMvnuyj84Nq5TVOyvpdo94h6poPoewaMraws
         zml+iZSZnU34OtgZlKmbvPdbdlPm7wf0UhrIduGHJd3/4us1YDHxa8PfYZuqKgwkAM1Y
         cpLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724249495; x=1724854295;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XBOHL837jA2B59cJ9N1CVTAML3ruQr41aXO6bANSxRE=;
        b=Qexdu3o25U0PE546YncVGrkCk0fiDfVgwwaVXkyzeMUl6Lfwd9SWZpH5zncfGlmYTn
         tsmTgoTJKthSJ8yZlO8+HjIHjO/Ky8PacST53woKCMG8DKOwuqC9oVn6SkEhec5SojVM
         hMoalVAMSNlzHVTxlb6g1IQDcHaMr0ISmRN2RIjMdM0PhcXN49WkY5Vg8mzytwAHgmT1
         ZbzUzu7lTATr1SwPUYywcDmSc31A6MIg3m2IMLD4H53mYdkICLSVl3FPUPEymQMB3o4o
         cVstkkonv2YGmSxB3r9jVLbg5p9fG/MnVAcL+c5tAiP4c4CYE3lEXzLGy5ubbKg3wAMn
         Kr2A==
X-Forwarded-Encrypted: i=1; AJvYcCUXivm54qUZM6k0joXZWqsCrKUY0lmxRsO1T6kOYicXBxZ5PGmQcD/vmGk3VKLVxOOG++ERuc1uSreM@vger.kernel.org
X-Gm-Message-State: AOJu0YyCA/MIRhQIoAa5mJkXVVrlW7Xzdy+NLkFwzy/6eqz5P3A3qnkF
	butRjYxRSrFt7UOyrM74JGPESaZ7wikqOSkcbyRuKGaSGRTFyUVJZZZwteZLLco=
X-Google-Smtp-Source: AGHT+IG0kyQofIzbQK74kuC8mV6f7JGisMMjMYnCb2XVNIyD0azrMDsyQFGQgXYRauDuPTktDhBa4g==
X-Received: by 2002:a17:907:9490:b0:a7a:a892:8e05 with SMTP id a640c23a62f3a-a866f359158mr186667266b.33.1724249494018;
        Wed, 21 Aug 2024 07:11:34 -0700 (PDT)
Received: from localhost (cst2-173-13.cust.vodafone.cz. [31.30.173.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8679a8e3f9sm86081266b.1.2024.08.21.07.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 07:11:33 -0700 (PDT)
Date: Wed, 21 Aug 2024 16:11:32 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Alexandre Ghiti <alexghiti@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Andrea Parri <parri.andrea@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Leonardo Bras <leobras@redhat.com>, Guo Ren <guoren@kernel.org>, linux-doc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arch@vger.kernel.org
Subject: Re: [PATCH v5 02/13] riscv: Do not fail to build on byte/halfword
 operations with Zawrs
Message-ID: <20240821-ab85a511044c72f0511f7a1e@orel>
References: <20240818063538.6651-1-alexghiti@rivosinc.com>
 <20240818063538.6651-3-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240818063538.6651-3-alexghiti@rivosinc.com>

On Sun, Aug 18, 2024 at 08:35:27AM GMT, Alexandre Ghiti wrote:
> riscv does not have lr instructions on byte and halfword but the
> qspinlock implementation actually uses such atomics provided by the
> Zabha extension, so those sizes are legitimate.
> 
> Then instead of failing to build, just fallback to the !Zawrs path.
> 
> Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
> ---
>  arch/riscv/include/asm/cmpxchg.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
> index ebbce134917c..ac1d7df898ef 100644
> --- a/arch/riscv/include/asm/cmpxchg.h
> +++ b/arch/riscv/include/asm/cmpxchg.h
> @@ -245,6 +245,11 @@ static __always_inline void __cmpwait(volatile void *ptr,
>  		 : : : : no_zawrs);
>  
>  	switch (size) {
> +	case 1:
> +		fallthrough;
> +	case 2:
> +		/* RISC-V doesn't have lr instructions on byte and half-word. */
> +		goto no_zawrs;
>  	case 4:
>  		asm volatile(
>  		"	lr.w	%0, %1\n"
> -- 
> 2.39.2
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

