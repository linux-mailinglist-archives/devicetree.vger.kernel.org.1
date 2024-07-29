Return-Path: <devicetree+bounces-88941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAEA93F727
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 16:01:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCB8D282513
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 14:01:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EF1A145335;
	Mon, 29 Jul 2024 14:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="PB5zOvt6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE76548F7
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 14:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722261668; cv=none; b=ZplCkGBvajFPoLLvcucnYjnsDDDo/s4q5RSmfq8raveZNM0aiiXhFyhRQMQAFAXPZ7Nu4vhdbDlKEh2xKoUPTrvfkUIZ6iGSjpdMjGpKTtixMBxPVGG5a2sZzeBiDHm1z/m6YQ7FgwL5D5i4x1zIPtz+FesVP0Fp0/RP9lH80vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722261668; c=relaxed/simple;
	bh=NSFc3gxNwK7FMT/kaA4IXSoywULkso6dyC02uoXVt3U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ApazPUZbTPIHnfubA8u0CKm/vC2biwjThib7HEm2SMchYR6aEgOq2UvirxdV1HKZTH2dSI6phBlb+kafvmNXaeKarO1j3T5m40v27GnqUkSwq8eFYTi6ZrurjlR+KXZkwM1k3M9EXaM6KOiQaX9XirIzzKjdnGsyzHAC4vxuhFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=PB5zOvt6; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a7a9a369055so394681366b.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 07:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1722261665; x=1722866465; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NRx42WidhCHa/mOy4csLusW89dVnuN3R4QUa7EpMhXY=;
        b=PB5zOvt6Vv296+Y0t8fBRH7ugTjr3IIca1cZSFoJsaezb1cD8dNu8p7LA5KAZg4coO
         x6jxOaL2sSckr3BJLgwLLbetPE12ikoA5uC5Ei+Hhr694wy8sa78zLvOs/zp7fBNFwSI
         1rnczyOXtrU+UBRkGkOYYIyE4F+f9rYniAIIGwpKXETwVo99zV0RuSdifZHWonslFOi2
         +3gWIN0U2aFwc/TsQvh/q/HZ++wI5HR70wCmHIuEMy0G12OMz8t8jtaQxKwqEGoqshHP
         zMeMQq8itYBYuL5NAZKgkpkyFKUg4QTZgNVj+A2xCXmMCrAZs9OMJepPJMEHNwIzH7wl
         NWtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722261665; x=1722866465;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NRx42WidhCHa/mOy4csLusW89dVnuN3R4QUa7EpMhXY=;
        b=Hc9yt5EP2ZfCLsWu1ox6nPYBw4DlZU7AZ3WIXbJrrKrPWl9+enEP4nlmhbcE4KuetG
         580w4HXykL9Z8js4bHSpm4TCCSJEiv6zsjTGTcnYTYs/0vCmRxIKrbh7nvuhVYQ+owdv
         FmX+QZbQmw+nLt0LPrwkwW1QwhSiUYfySHcgN22xSnZ5o39F83LqpURewsGNoWBx4rJw
         4FYxmXtHnl/m9Vlp4Nn+seAbagOlL2PUXCfOQsFlAYSqxYS2l5syvxyjta7jJFpMlKkL
         HDPfOctST/ycCwFrtuJRHdN5bTcNlp7WvBAzYTKGAhcz8GgxTW2Ms1iNBGhXsxo44Z/B
         P2+w==
X-Forwarded-Encrypted: i=1; AJvYcCUS47bKj6FxLaqlb9SFdycFOzMcRKyCFDTQn8GXFuBWi7DtWevFQB+UWYUHFWOTWfXr0LKG3C/99+fBvFtWjMUBkahw35hw5S1JFQ==
X-Gm-Message-State: AOJu0YyY2FB9/5nj2od+lN5ywVaqYRirlOCdLgHUIGPG5+HtwbYwLrQf
	GSX1a0HrI0QyaFDOQ3gyRFWEOCzs9D4qCMXo+FY1r2U3R+Z4ZUozAY9yM+99UKU=
X-Google-Smtp-Source: AGHT+IEs0VcMT4QB/MhAZGUOY8bNgDqk49Prk5XfVDB64dnU5cyUVB6q+XHAXkY75Nv9kZUVsvmUSg==
X-Received: by 2002:a17:906:c142:b0:a77:e48d:bae with SMTP id a640c23a62f3a-a7d3ffe7145mr665969766b.28.1722261664647;
        Mon, 29 Jul 2024 07:01:04 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acadb807dsm511195366b.201.2024.07.29.07.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 07:01:03 -0700 (PDT)
Date: Mon, 29 Jul 2024 16:01:02 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, conor.dooley@microchip.com, anup@brainfault.org, 
	atishp@atishpatra.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, christoph.muellner@vrull.eu, heiko@sntech.de, 
	charlie@rivosinc.com, David.Laight@aculab.com, parri.andrea@gmail.com, 
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v3 3/6] riscv: Add Zawrs support for spinlocks
Message-ID: <20240729-b6707d037c0546c2c2f8da25@orel>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
 <20240426100820.14762-11-ajones@ventanamicro.com>
 <4de22b20-8a6a-47d0-a4e9-74343c45411c@ghiti.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4de22b20-8a6a-47d0-a4e9-74343c45411c@ghiti.fr>

On Mon, Jul 29, 2024 at 03:43:30PM GMT, Alexandre Ghiti wrote:
...
> > +static __always_inline void __cmpwait(volatile void *ptr,
> > +				      unsigned long val,
> > +				      int size)
> > +{
> > +	unsigned long tmp;
> > +
> > +	asm goto(ALTERNATIVE("j %l[no_zawrs]", "nop",
> > +			     0, RISCV_ISA_EXT_ZAWRS, 1)
> > +		 : : : : no_zawrs);
> > +
> > +	switch (size) {
> > +	case 4:
> > +		asm volatile(
> > +		"	lr.w	%0, %1\n"
> > +		"	xor	%0, %0, %2\n"
> > +		"	bnez	%0, 1f\n"
> > +			ZAWRS_WRS_NTO "\n"
> > +		"1:"
> > +		: "=&r" (tmp), "+A" (*(u32 *)ptr)
> > +		: "r" (val));
> > +		break;
> > +#if __riscv_xlen == 64
> > +	case 8:
> > +		asm volatile(
> > +		"	lr.d	%0, %1\n"
> > +		"	xor	%0, %0, %2\n"
> > +		"	bnez	%0, 1f\n"
> > +			ZAWRS_WRS_NTO "\n"
> > +		"1:"
> > +		: "=&r" (tmp), "+A" (*(u64 *)ptr)
> > +		: "r" (val));
> > +		break;
> > +#endif
> > +	default:
> > +		BUILD_BUG();
> > +	}
> > +
> > +	return;
> > +
> > +no_zawrs:
> > +	asm volatile(RISCV_PAUSE : : : "memory");
> 
> 
> Shouldn't we fallback to the previous implementation (cpu_relax()) here? Not
> sure this is really important, but I want to make sure it was not an
> oversight.
>

Hi Alex,

It was intentional. We can't easily call cpu_relax() from here because
asm/vdso/processor.h includes asm/barrier.h which includes asm/cmpxchg.h.
We've mostly reproduced cpu_relax() here since we're only skipping the
div, and, as __cmpwait will be used in loops which load memory for the
comparison, I didn't think we needed the extra div stalls.

Thanks,
drew

