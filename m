Return-Path: <devicetree+bounces-77149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC4590D7F5
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 18:01:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AA8F1F2306C
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:01:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7DAA4437F;
	Tue, 18 Jun 2024 16:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="JlXSdu2D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C861CAB3
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 16:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718726469; cv=none; b=Kav79Ae+Z1dNpKKensIAaW8zh+9q+jww2Y64B0hCO9iYIyDRnZTNqit0yU7rkXcP1QjbiYWFPEt4y2XjI5waOTiei9pASID/qqsMcxUTIbJycGUiA4IKpAkg963oio1h/Nox3NrgUS3fuMRainvG6NXg+Mvgy+ley5fPNwT0kPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718726469; c=relaxed/simple;
	bh=Kr+mpgkFzhgcN2nbg6yc92bgCnksPgG4sYwCq1No1bc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kd2RdTNc3pEFtzuss+1durr5mLCkaAFbKBCiaNKTHqidh74/jf4JU9D4KGHz4r8JTHhSF2LGaE/iyYHIdwiLMxSgMGZMhocdXUBcoDBW3LVCq65vKIo1N30pYWU9aLc5PyczQgS91KWnZucCH28q/ZhwLQbh6AKJKqpoK12ZZ0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=JlXSdu2D; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ec17eb4493so67107691fa.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 09:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1718726466; x=1719331266; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fyzfPw7nPta0nrq7+bn54u/zAMzgFZf2R3n+jsxGbyE=;
        b=JlXSdu2DV0XlfGecqKq4GeSpcQruhVWpCo+9XmjrlDA7SEhfVHYmN+6zTCLxuxdBX/
         qOqHACAYTxMehV1Tg+m1A0g99LVXObZcwRRwh3SukoWE2+O7PDTE3c1NyKCHqddZHmL4
         /QknMoi891Q1wm0KbF/hvrXGauemhFG5L2PxqCG/51gaZcsUcpUHwGzZSE0ZMqlfyvMU
         cbCadmD9hogC5x8SGeY1ZIeTic2IExB23noMkYqk7MlOZixl0fCkRvJHeb4MNOc/tceF
         JnG5BiR7YYNA9d6c3GDg3NyPrbMJhr369RNFvjMGw3jNWN/U2nUC+lnyVbn4zNxC3i9E
         w8Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718726466; x=1719331266;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fyzfPw7nPta0nrq7+bn54u/zAMzgFZf2R3n+jsxGbyE=;
        b=N+3189u+nGwLbKStrbXxmQZOHOpAF8Hq3SmNGy5Kbgddhhf2KpTuhYBAPada9d0Pbc
         e+WB5YiqSyArpZPUvR4u+iOJtgr4B9CcDUZ9MNYw7BtX4/8shFaLuDtDWi6FitqlsMUM
         9lOQf2mX1JUElgyFuDGAICT+K/hIESUlf6ZIL3hOLXVkYOCE+v0VcWFB7baL/BXXrn5r
         xNimeOcOKwjeG28/Pqfo79h49w4m+T41DBxFe3N0qoB8Q2DImeLvT/oc3sLu+q3UocML
         tH0ysIBbML8u/9WFC6i7XzjBzOGEu0m9w9f/wh5zNEhL1Dc0vI/0Q4bHHRlAvkMbeEgX
         pe6A==
X-Forwarded-Encrypted: i=1; AJvYcCWt2ob3NXLm/PQxwq0n0k7HjG4O6G08chgtGjOtM6gco/wuDlvDAOEA07OBpy5qmvBFtmxhZuAvSDPfF2aI+tZ/KCXnMveh6UkqBA==
X-Gm-Message-State: AOJu0Yw3gvDnyLn/A+6ajiX0pKX9XX9B82nzKL/jJnwdUrsk77GsaT4p
	F/QTOFyEwG0sDYQzqwbInvnX0Q/UaPyDtNqB61pyZwo1bgvqyi30+5kC9Y85sCQ=
X-Google-Smtp-Source: AGHT+IFmf/CsJAFZdTKuErQLaJl7XiTQDH7Dq7mcT8jSDcNOvwHuMJ/sgNY5CXbzTxSRvpqJhpeLHQ==
X-Received: by 2002:a2e:9210:0:b0:2de:8697:e08b with SMTP id 38308e7fff4ca-2ec3ced12bdmr2211131fa.26.1718726465742;
        Tue, 18 Jun 2024 09:01:05 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422874e6b63sm231018715e9.39.2024.06.18.09.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 09:01:05 -0700 (PDT)
Date: Tue, 18 Jun 2024 18:01:04 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, conor.dooley@microchip.com, anup@brainfault.org, 
	atishp@atishpatra.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, christoph.muellner@vrull.eu, heiko@sntech.de, 
	charlie@rivosinc.com, David.Laight@aculab.com, parri.andrea@gmail.com, 
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v3 4/6] riscv: hwprobe: export Zawrs ISA extension
Message-ID: <20240618-581fb4c20b4fe05d76eafa44@orel>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
 <20240426100820.14762-12-ajones@ventanamicro.com>
 <d0abe3e0-af0f-4693-b943-57ea3fc2189f@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d0abe3e0-af0f-4693-b943-57ea3fc2189f@rivosinc.com>

On Tue, Jun 18, 2024 at 03:48:59PM GMT, Clément Léger wrote:
> 
> 
> On 26/04/2024 12:08, Andrew Jones wrote:
> > Export Zawrs ISA extension through hwprobe.
> > 
> > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > ---
> >  Documentation/arch/riscv/hwprobe.rst  | 4 ++++
> >  arch/riscv/include/uapi/asm/hwprobe.h | 1 +
> >  arch/riscv/kernel/sys_hwprobe.c       | 1 +
> >  3 files changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
> > index b2bcc9eed9aa..e072ce8285d8 100644
> > --- a/Documentation/arch/riscv/hwprobe.rst
> > +++ b/Documentation/arch/riscv/hwprobe.rst
> > @@ -188,6 +188,10 @@ The following keys are defined:
> >         manual starting from commit 95cf1f9 ("Add changes requested by Ved
> >         during signoff")
> >  
> > +  * :c:macro:`RISCV_HWPROBE_EXT_ZAWRS`: The Zawrs extension is supported as
> > +       ratified in commit 98918c844281 ("Merge pull request #1217 from
> > +       riscv/zawrs") of riscv-isa-manual.
> > +
> >  * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
> >    information about the selected set of processors.
> >  
> > diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
> > index 9f2a8e3ff204..a5fca3878a32 100644
> > --- a/arch/riscv/include/uapi/asm/hwprobe.h
> > +++ b/arch/riscv/include/uapi/asm/hwprobe.h
> > @@ -59,6 +59,7 @@ struct riscv_hwprobe {
> >  #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
> >  #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
> >  #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
> > +#define		RISCV_HWPROBE_EXT_ZAWRS		(1ULL << 36)
> >  #define RISCV_HWPROBE_KEY_CPUPERF_0	5
> >  #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
> >  #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
> > diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
> > index 8cae41a502dd..b86e3531a45a 100644
> > --- a/arch/riscv/kernel/sys_hwprobe.c
> > +++ b/arch/riscv/kernel/sys_hwprobe.c
> > @@ -111,6 +111,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
> >  		EXT_KEY(ZTSO);
> >  		EXT_KEY(ZACAS);
> >  		EXT_KEY(ZICOND);
> > +		EXT_KEY(ZAWRS);
> >  
> >  		if (has_vector()) {
> >  			EXT_KEY(ZVBB);
> 
> AFAIU, when used in userspace, this will actually "stall" the processor
> until an interrupt/timeout happens, so the current process will keep
> occupying the processor doing nothing (up to the next interrupt/timeout)
> right ?

Yes, but of course the OS can always preempt the task as well.

> 
> BTW, the spec also states that "When the TW (Timeout Wait) bit in
> mstatus is set and WRS.NTO is executed in any privilege mode other than
> M mode, and it does not complete within an implementation-specific
> bounded time limit, the WRS.NTO instruction will cause an illegal
> instruction exception." so I guess the process will be killed in this case ?

We don't expect mstatus.TW to be set. If it is, then wfi would likely kill
the kernel before wrs.nto gets a chance to, but one or the other will
certainly ensure usermode never gets a chance to try it :-)

We have a handful of these assumptions about how M-mode has configured
things prior to Linux starting. It'd be good if we documented them all
somewhere.

> 
> If this is not a concern:
> 
> Reviewed-by: Clément Léger <cleger@rivosinc.com>

Thanks,
drew

