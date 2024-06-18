Return-Path: <devicetree+bounces-77187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A30590DA4D
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 19:06:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2167E286BBA
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 17:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C915813B79B;
	Tue, 18 Jun 2024 17:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="lCv6vKfU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E578D39AEC
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 17:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718730346; cv=none; b=orI5V0/rKRKAnoab1p+HHp/CdyMFCVTDQTEQUi7wkTFsqQ3M/IgbIAiZpknpcEs737JpjAGA/0WXUzQpwEkFI0Qhdal+kxI1TX00WhA7h2Fg0cQC/CUJRt5lI8VYWAtnzbgj0d3888Kw2QT4nGUPqa0xm5Yp0s6L1G/VJKmm1P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718730346; c=relaxed/simple;
	bh=Tgike1COKL2p+zrX5uK4Fhu/vuI9ukJ8Lk1R69DbO1I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EaFwNDy20eCMBqwV+WvaJcfYtIgNXanjOG4I+E6obt7WyOwKdsXEIKKaJBkvUFLjsQzp9pTpbhpfTOV2a6sqxdNpO1+MwJixQxHwbK+2xndx49/5ZPhQLLxrc0iH/uJKWLk5wlsY6Oyo2SliVLFkICt7qcVQ1TDGBVIF/s3nVVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=lCv6vKfU; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-421798185f0so44658605e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 10:05:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1718730343; x=1719335143; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SYNcnoNjdw3Dmz7yiOb+Ni+97jdkSaslp62J9wV4gr0=;
        b=lCv6vKfUScXl0MYQSIlHh2v88BBDrO9nFgG6B6WBKJuZWEMTduOvmKaERoowxro+JK
         O6fSAav7sPiJRM9QVeESbm79SLB/GGOkuO8goWaCUJMTb8lrzX7dHUs55mcyBA6bbo53
         fNnDJ9KWvTG6LEqxPpVnEicO0PvvmcYuyVNTe79/DNs7x9rc5ceFXTlQNKY8NEct4vw4
         HysLffgF4q4qRru9Hjdj7NKcnpdZaztz80BSYeIijsGCA/dyokbIXSnlIJxGKvDEphGn
         1x5zruZssPzUIl2YZIrjcRD6WrcBXF+8q8SpX8787tX9+/g/alwZIDK2LCtx/oaG0eOH
         sEXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718730343; x=1719335143;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SYNcnoNjdw3Dmz7yiOb+Ni+97jdkSaslp62J9wV4gr0=;
        b=BOI9FEbCX3chI/Q98z82ZhBxM0uhUKbD5OwRD/FUelOGmeBnWO6dAxg9ymzTrz0mHg
         45pPz8Tf2qLNHZH9FzRpUBzm4YqzA9cwDEyE6N75y4z7M/Jj9uv328I/qGFTG+gLYDZ0
         amIbGdwLGzgQbSVQpJg8Hw9BYB+SwdC/j1A3ifMkrUtZ0Jwhl8CKX7rEDWS1qFGwqpL4
         HcGY9oCLv+akqZZ6aRTmwQLEAP9VpObeYuyQPUFXRT4jrU4SfZTPOKHZ73dRUfbXw3jY
         QPoq/Jnz7vM5uNkgIhoq3vbVPHVbxEWbHjk0urxZMQpUkLiGc6vwF6vN4uuueaPz0eul
         h4VQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTYeStKw34AoveLM8jf1HFJRF/1p4IszlSwlHXD10GVB6VMkaTzvTdGWLuw4xikirzahFO4DNyVcctsAxHVmpu3wYoyQtDhvRTSA==
X-Gm-Message-State: AOJu0Yw+6sYaIodpmilVrT9rCSxnQGVOUiWOF+4Qds9GyBhE3xswJq/W
	knzcJxLrzYoXWJua42gCaf/jl6Y3VpxDT3/rQq4PQLoZbm1yh9XJ7yQJXhtXhINsC5OQqueKqLW
	ls5M=
X-Google-Smtp-Source: AGHT+IF3Ra7H5kFJPU+893esfPClG/Ot0pmNrmz14TeqiAwd7BVwhpE3vpo2I+VSSM0L8KlYHJTV7Q==
X-Received: by 2002:a7b:cc9a:0:b0:422:aca:f887 with SMTP id 5b1f17b1804b1-42475293575mr749435e9.28.1718730343123;
        Tue, 18 Jun 2024 10:05:43 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f641a64bsm194996655e9.46.2024.06.18.10.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 10:05:42 -0700 (PDT)
Date: Tue, 18 Jun 2024 19:05:41 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Conor Dooley <conor@kernel.org>
Cc: =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>, 
	linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	conor.dooley@microchip.com, anup@brainfault.org, atishp@atishpatra.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, christoph.muellner@vrull.eu, 
	heiko@sntech.de, charlie@rivosinc.com, David.Laight@aculab.com, 
	parri.andrea@gmail.com, luxu.kernel@bytedance.com
Subject: Re: [PATCH v3 4/6] riscv: hwprobe: export Zawrs ISA extension
Message-ID: <20240618-e898082d22cbc508c5655f84@orel>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
 <20240426100820.14762-12-ajones@ventanamicro.com>
 <d0abe3e0-af0f-4693-b943-57ea3fc2189f@rivosinc.com>
 <20240618-581fb4c20b4fe05d76eafa44@orel>
 <20240618-deftly-operation-de4f8ac260d5@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240618-deftly-operation-de4f8ac260d5@spud>

On Tue, Jun 18, 2024 at 05:59:22PM GMT, Conor Dooley wrote:
> On Tue, Jun 18, 2024 at 06:01:04PM +0200, Andrew Jones wrote:
> > On Tue, Jun 18, 2024 at 03:48:59PM GMT, Clément Léger wrote:
> > > 
> > > 
> > > On 26/04/2024 12:08, Andrew Jones wrote:
> > > > Export Zawrs ISA extension through hwprobe.
> > > > 
> > > > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > > > ---
> > > >  Documentation/arch/riscv/hwprobe.rst  | 4 ++++
> > > >  arch/riscv/include/uapi/asm/hwprobe.h | 1 +
> > > >  arch/riscv/kernel/sys_hwprobe.c       | 1 +
> > > >  3 files changed, 6 insertions(+)
> > > > 
> > > > diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
> > > > index b2bcc9eed9aa..e072ce8285d8 100644
> > > > --- a/Documentation/arch/riscv/hwprobe.rst
> > > > +++ b/Documentation/arch/riscv/hwprobe.rst
> > > > @@ -188,6 +188,10 @@ The following keys are defined:
> > > >         manual starting from commit 95cf1f9 ("Add changes requested by Ved
> > > >         during signoff")
> > > >  
> > > > +  * :c:macro:`RISCV_HWPROBE_EXT_ZAWRS`: The Zawrs extension is supported as
> > > > +       ratified in commit 98918c844281 ("Merge pull request #1217 from
> > > > +       riscv/zawrs") of riscv-isa-manual.
> > > > +
> > > >  * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
> > > >    information about the selected set of processors.
> > > >  
> > > > diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
> > > > index 9f2a8e3ff204..a5fca3878a32 100644
> > > > --- a/arch/riscv/include/uapi/asm/hwprobe.h
> > > > +++ b/arch/riscv/include/uapi/asm/hwprobe.h
> > > > @@ -59,6 +59,7 @@ struct riscv_hwprobe {
> > > >  #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
> > > >  #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
> > > >  #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
> > > > +#define		RISCV_HWPROBE_EXT_ZAWRS		(1ULL << 36)
> > > >  #define RISCV_HWPROBE_KEY_CPUPERF_0	5
> > > >  #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
> > > >  #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
> > > > diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
> > > > index 8cae41a502dd..b86e3531a45a 100644
> > > > --- a/arch/riscv/kernel/sys_hwprobe.c
> > > > +++ b/arch/riscv/kernel/sys_hwprobe.c
> > > > @@ -111,6 +111,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
> > > >  		EXT_KEY(ZTSO);
> > > >  		EXT_KEY(ZACAS);
> > > >  		EXT_KEY(ZICOND);
> > > > +		EXT_KEY(ZAWRS);
> > > >  
> > > >  		if (has_vector()) {
> > > >  			EXT_KEY(ZVBB);
> > > 
> > > AFAIU, when used in userspace, this will actually "stall" the processor
> > > until an interrupt/timeout happens, so the current process will keep
> > > occupying the processor doing nothing (up to the next interrupt/timeout)
> > > right ?
> > 
> > Yes, but of course the OS can always preempt the task as well.
> > 
> > > 
> > > BTW, the spec also states that "When the TW (Timeout Wait) bit in
> > > mstatus is set and WRS.NTO is executed in any privilege mode other than
> > > M mode, and it does not complete within an implementation-specific
> > > bounded time limit, the WRS.NTO instruction will cause an illegal
> > > instruction exception." so I guess the process will be killed in this case ?
> > 
> > We don't expect mstatus.TW to be set. If it is, then wfi would likely kill
> > the kernel before wrs.nto gets a chance to, but one or the other will
> > certainly ensure usermode never gets a chance to try it :-)
> > 
> > We have a handful of these assumptions about how M-mode has configured
> > things prior to Linux starting. It'd be good if we documented them all
> > somewhere.
> 
> Boot.rst :) If you're adding a new assumption, I think it should go
> there.

It's an old assumption (wfi has been counting on it since the beginning of
time). But documenting it, along with anything else similar to it, in
boot.rst is a good idea. I've added that to my TODO.

Thanks,
drew

