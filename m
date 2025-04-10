Return-Path: <devicetree+bounces-165323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6285A83F37
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 11:46:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B872E1B64A3C
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 09:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B150E25E818;
	Thu, 10 Apr 2025 09:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="iOKdyDnc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56E6267F7D
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744278363; cv=none; b=n7p6mGH1KXECzHc+QMexochJqBAKih/s8Nw9GV2cyue2FOGg4LfwExfnhJp4B3dRua9EWp/FRUER7+E3IrNN6uVZywonbYqaVTEPCQLd+ZF24BEqNsUsx4AEkBvyWLVNrThrwWS6VT5Y4tgF6uPlGmMg4vwBlyM+JLums3mVlSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744278363; c=relaxed/simple;
	bh=cWjCm2K3mXJ4hsQfSC0tAiTyj6UZ6wJSPp2mVTIRSAE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=MqsCAjcRRZ/axwRaB3qFmp6pNVbm9mX49JLmk00LXbi5KyzL4ljTJrBGoHOk9thPD+/DesNg8zwP5BR7qNNSPVIODNr2RgbSavhV7EwhkDf+lxYitnQKiTkA4wJtb/QQjet8Vv55E9oeKfBKZQJk1Ypdxh/wK7r9Q8aVlVz9C8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=iOKdyDnc; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cf861f936so956245e9.3
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 02:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1744278360; x=1744883160; darn=vger.kernel.org;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T8i8GZtfdY75DsuPGV8mdkCHtexeE8J8QTGC238f61s=;
        b=iOKdyDncUDwDoD5psxtgcxvM35zh6Zae+qpWAmKco41uJCREAZCoR7K8S7IA3unsVB
         ZLZJJ7O5A44WBkO0BpX9nDVjl2uYUmcHudz6SqaZBzP+UmPFVDzXhmJzGcaBiulFSx4I
         9M1YJse8NEmCU/uFhyoOzwMFwXj85VGsKg7zIVTE3wbX09wTNTKOnvWi6aGN5fDiyDdw
         yOJZpIPd6CZ/NhXDC5iqJUdzUxngSzfAIcoBCZOOy+ukcP/VHsScp2jtRoXVlaAQ+fU+
         EFkm2l7XqI6tRvYPXxgzLTNwsUOVxZfelavab8LBT3AVBrUbOVUh6tWtQ+T78MQr2/QN
         LEVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744278360; x=1744883160;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T8i8GZtfdY75DsuPGV8mdkCHtexeE8J8QTGC238f61s=;
        b=pi96Jftzv4PhZ1dF7eFv6W6iuNnHTHlQnkaLOKzu9AsgbI9lt+D5CTkiAdxCsYuCxE
         DMM+RTFy4bpWdRQdI3UJUUvofMCTtASsjTrRIskYTMpLl4Yo/eQZxZwpspcFYK50MrFB
         t1lsy/09flrNzSGX+/LAonNlVFJOPUFCjX2wohJCBuJC+WkQaDTv7Ybr1fy8mF/ugbJb
         pbqU/66o50Ka9zwubsse7Bncvq7ABtJ/zphffD0vVuKA41+J5dBq7JKEDKR2UM71+oj+
         nqGCc9X6c66Xy2xLbH/05vVARRle0EzgKUQrPcJy+3mgvlFAcOcIjL3Qg8Yy0vJ30DYK
         XtqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWO9D1rqOMVGtJxCMlxmaZsPomIS1ZExLlW4lrovvuGiMT2z8UpV0YIlUe2zfK4hXQ/Fq+AixO2bJEx@vger.kernel.org
X-Gm-Message-State: AOJu0YwnCxwdoxGwQj643jc8JPcbdQg7hST3HQNQ3mlyE5gezpdNHedI
	lxCqZiTySHqehTc3Yeoc48JzCKDg5PFGxo03VzltOZvKHMyxgTbNKZ/UjDdzokA=
X-Gm-Gg: ASbGncsn2v1AFVWSW+XovQqnhupsp29bjlXN7qNEPG77BEujWPb+IdL8DcDJPr0Q487
	FV1Os9YoqObP0A7hc1TXcnKfctGlR0GaTJ9GRnDKNV1efyHWjZZtK5T2nAOCYG0lCtIi023Zeo9
	92WMtJlQPd8IpD+J6yCf6yY5fNyiPIY9dxEVl+bGSb3QxsHD3fuKzV6vlWQufoOUBsvCxfjkbCV
	Mi5UCqfxXskFljN+fg5YCacNMZyvzC6ca//riA3Tn19g0Six7h5HiWzHpYgnHYNoK78E8Q0i7/l
	gd8BSXWaLTDV5r0kA6mhg0d7RFiHruEv0rryVic7J93cfOGG
X-Google-Smtp-Source: AGHT+IGtn4otBiHZ5rhpzGojxm7Tp3rcDjovrmZXPH6P8CvTrnSeGNCclbDgZlnTp+GpEEnuS4B3vQ==
X-Received: by 2002:a05:6000:430d:b0:39c:1258:32d4 with SMTP id ffacd0b85a97d-39d87ce1a29mr1909263f8f.16.1744278359773;
        Thu, 10 Apr 2025 02:45:59 -0700 (PDT)
Received: from localhost ([2a02:8308:a00c:e200:7d22:13bb:e539:15ee])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d893611dcsm4217671f8f.9.2025.04.10.02.45.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 02:45:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 10 Apr 2025 11:45:58 +0200
Message-Id: <D92V2NPNZYV0.136MJ2HOK48HE@ventanamicro.com>
Subject: Re: [PATCH v12 12/28] riscv: Implements arch agnostic shadow stack
 prctls
Cc: <linux-kernel@vger.kernel.org>, <linux-fsdevel@vger.kernel.org>,
 <linux-mm@kvack.org>, <linux-riscv@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-arch@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <linux-kselftest@vger.kernel.org>,
 <alistair.francis@wdc.com>, <richard.henderson@linaro.org>,
 <jim.shu@sifive.com>, <andybnac@gmail.com>, <kito.cheng@sifive.com>,
 <charlie@rivosinc.com>, <atishp@rivosinc.com>, <evan@rivosinc.com>,
 <cleger@rivosinc.com>, <alexghiti@rivosinc.com>, <samitolvanen@google.com>,
 <broonie@kernel.org>, <rick.p.edgecombe@intel.com>, "linux-riscv"
 <linux-riscv-bounces@lists.infradead.org>
To: "Deepak Gupta" <debug@rivosinc.com>, "Thomas Gleixner"
 <tglx@linutronix.de>, "Ingo Molnar" <mingo@redhat.com>, "Borislav Petkov"
 <bp@alien8.de>, "Dave Hansen" <dave.hansen@linux.intel.com>,
 <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, "Andrew Morton"
 <akpm@linux-foundation.org>, "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 "Vlastimil Babka" <vbabka@suse.cz>, "Lorenzo Stoakes"
 <lorenzo.stoakes@oracle.com>, "Paul Walmsley" <paul.walmsley@sifive.com>,
 "Palmer Dabbelt" <palmer@dabbelt.com>, "Albert Ou" <aou@eecs.berkeley.edu>,
 "Conor Dooley" <conor@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Arnd Bergmann"
 <arnd@arndb.de>, "Christian Brauner" <brauner@kernel.org>, "Peter Zijlstra"
 <peterz@infradead.org>, "Oleg Nesterov" <oleg@redhat.com>, "Eric Biederman"
 <ebiederm@xmission.com>, "Kees Cook" <kees@kernel.org>, "Jonathan Corbet"
 <corbet@lwn.net>, "Shuah Khan" <shuah@kernel.org>, "Jann Horn"
 <jannh@google.com>, "Conor Dooley" <conor+dt@kernel.org>
From: =?utf-8?q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@ventanamicro.com>
References: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
 <20250314-v5_user_cfi_series-v12-12-e51202b53138@rivosinc.com>
In-Reply-To: <20250314-v5_user_cfi_series-v12-12-e51202b53138@rivosinc.com>

2025-03-14T14:39:31-07:00, Deepak Gupta <debug@rivosinc.com>:
> diff --git a/arch/riscv/include/asm/usercfi.h b/arch/riscv/include/asm/us=
ercfi.h
> @@ -14,7 +15,8 @@ struct kernel_clone_args;
>  struct cfi_status {
>  	unsigned long ubcfi_en : 1; /* Enable for backward cfi. */
> -	unsigned long rsvd : ((sizeof(unsigned long) * 8) - 1);
> +	unsigned long ubcfi_locked : 1;
> +	unsigned long rsvd : ((sizeof(unsigned long) * 8) - 2);

The rsvd field shouldn't be necessary as the container for the bitfield
is 'unsigned long' sized.

Why don't we use bools here, though?
It might produce a better binary and we're not hurting for struct size.

> diff --git a/arch/riscv/kernel/usercfi.c b/arch/riscv/kernel/usercfi.c
> @@ -24,6 +24,16 @@ bool is_shstk_enabled(struct task_struct *task)
> +bool is_shstk_allocated(struct task_struct *task)
> +{
> +	return task->thread_info.user_cfi_state.shdw_stk_base ? true : false;

I think that the following is clearer:

  return task->thread_info.user_cfi_state.shdw_stk_base

(Similar for all other implicit conversion ternaries.)

> @@ -42,6 +52,26 @@ void set_active_shstk(struct task_struct *task, unsign=
ed long shstk_addr)
> +void set_shstk_status(struct task_struct *task, bool enable)
> +{
> +	if (!cpu_supports_shadow_stack())
> +		return;
> +
> +	task->thread_info.user_cfi_state.ubcfi_en =3D enable ? 1 : 0;
> +
> +	if (enable)
> +		task->thread.envcfg |=3D ENVCFG_SSE;
> +	else
> +		task->thread.envcfg &=3D ~ENVCFG_SSE;
> +
> +	csr_write(CSR_ENVCFG, task->thread.envcfg);

There is a new helper we could reuse for this:

  envcfg_update_bits(task, ENVCFG_SSE, enable ? ENVCFG_SSE : 0);

> +}
> @@ -262,3 +292,83 @@ void shstk_release(struct task_struct *tsk)
> +int arch_set_shadow_stack_status(struct task_struct *t, unsigned long st=
atus)
> +{
> +	/* Request is to enable shadow stack and shadow stack is not enabled al=
ready */
> +	if (enable_shstk && !is_shstk_enabled(t)) {
> +		/* shadow stack was allocated and enable request again
> +		 * no need to support such usecase and return EINVAL.
> +		 */
> +		if (is_shstk_allocated(t))
> +			return -EINVAL;
> +
> +		size =3D calc_shstk_size(0);
> +		addr =3D allocate_shadow_stack(0, size, 0, false);

Why don't we use the userspace-allocated stack?

I'm completely missing the design idea here...  Userspace has absolute
over the shadow stack pointer CSR, so we don't need to do much in Linux:

1. interface to set up page tables with -W- PTE and
2. interface to control senvcfg.SSE.

Userspace can do the rest.

> +int arch_lock_shadow_stack_status(struct task_struct *task,
> +				  unsigned long arg)
> +{
> +	/* If shtstk not supported or not enabled on task, nothing to lock here=
 */
> +	if (!cpu_supports_shadow_stack() ||
> +	    !is_shstk_enabled(task) || arg !=3D 0)
> +		return -EINVAL;

The task might want to prevent shadow stack from being enabled?

Thanks.

