Return-Path: <devicetree+bounces-157456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE204A60B67
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 09:28:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E21317F1EC
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 08:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3FD61C5F27;
	Fri, 14 Mar 2025 08:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="lXGyMbyJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08F81AD3E0
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 08:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741940870; cv=none; b=rybW8056PyeENx51jEVBBPL6aObgLYhSDb7IUJ3Dorlp4fEaLSCCpwbpCQGyMpfdjE5CmyE0dPBOM67CrlmFAChW7TwrJGLUSNL2ndXR/X4qoyPpHmd3SljTqF7LbxwIGJZRtAAycLZ7uDd5l8rNoARflolYA0K65kmlzaGSOkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741940870; c=relaxed/simple;
	bh=17a3PwSysj48lPS/+FE8SBsjkBQN0LxJJw0V3mx+3A4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cEDoIXEnK60WB3Q9G6zEIsx+fiROv36zanzXmJYtjOm4ZTeIjsAjJFQz4zL6BUlbB4e5QOghbxqI+EqUVyUevQSgVJMSgjWzTzroRiUsEW1b4DkFFi+X7zdEIDIWzEMZsEUkGgKsyiHyL6ErK7J5RqCJOh4t1XhTmsSULq8k8Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=lXGyMbyJ; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-85b4170f1f5so45495639f.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 01:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1741940868; x=1742545668; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8bj5T6m1yE9zyibPVyLAnvEMluIIdsT4MhqvG4OGMI=;
        b=lXGyMbyJVnHCblZg3g/JTyiTy4xoXLTEc0oty0KZixAAvLU/bphTStcqgha/sCs0Fb
         xadq/gaBwC77dVLpdE4XYn+F7x19BdpQSt93xPFbmbSnGSeB/O532yzM0Kk83kCfvwrB
         jislODgATcppurGUmYYvtwGLE1MruYvgApl8Q0s2f5mvVReOspKAdBpJfYTb5/6is4GU
         70A8zUnzj5H5ocxvoN0w0CFCXBd9YQUSIBQ7ONVpjCqc9HAY2/LKWDDrkSlTLwh0xBmV
         rCv95HgU/od27rWIgNJE4RXXqGP60EvIuiqujU9ls+04dhMgm4PIAEqXD0ZAvzZZ9gAz
         o5Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741940868; x=1742545668;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X8bj5T6m1yE9zyibPVyLAnvEMluIIdsT4MhqvG4OGMI=;
        b=doi+DV+wIu6AHE8YX6AAEAVh5x89Wq2Hbfm4ERY8BARqNg1cnppaCJiyQgAXxn8CiB
         ny4g6yA9Ajl/1fBMaMuEk9TJnvKAO8SE5rBBMf2LJQ8/M7NU5LxRBxi8ggLQVFFXfJx8
         iXe+2tGJLLj9rgg1ofrZ5RUWenSBFB/m2Hy/3A210C/hSSmQdmpZTrx4ReE7tLn6bp6K
         9PKArimKyxRrYUu2HFr4FrEF+kNBxrVdm1W/TSaPSkxjv5XGWLe0eMFT6je4YyGKJKLQ
         /doiirfZo9x/3fDkCKjR8IRaqDY1jKq3w6FbAhj9d4Glmm8xB1Dx6CYCL7Ec39VIRx76
         AuXQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/XROE4Dxqp/T3vuR7sLBbMXVDXYgvfau1bIRVMYjDsju79axnRVr11tFgwPMnySdrDUfkyWl0Dwpq@vger.kernel.org
X-Gm-Message-State: AOJu0YwicThCZ5p+Vq3rM4mA7wJCzBOpcXUvELBtWMH30+aG8e4XtnRK
	QKIGc6KSLvsUFtaHh8FNb2nJ1G8WtcvwzGGrijHyKdZ1vOxGj1bcBUG/G2hsFEjaRc18wwfqzBV
	SlGaGExNT7u93qeKPoySX8iwGZR5Aj/bJEVEHlw==
X-Gm-Gg: ASbGncsncjok3Ut6LWBiU4htjiFT9tC0CIYCsN0lU47X8xg/CVFCHsFq4ua/EfqHZG+
	DAYGycVCJmrPOQi/br0+PllX2qw15xk26INo2iXsxWHf9I3bnyqGRlrqXFF89wtiq40AbGC8jP1
	KLpDQVYbpNi6sY6+W2iOtkpCgn3H73DLWIkbm1EA==
X-Google-Smtp-Source: AGHT+IEEDueBTR/qjkseHCu/6hHmmY6d8gCCfHNJAKAWerhJ6BCGW/4G5xYr8+OUgNTAl9wCy3v958LMiQIhsbPcBw4=
X-Received: by 2002:a05:6602:3a0a:b0:85d:b14a:bb56 with SMTP id
 ca18e2360f4ac-85dc4761730mr159183339f.2.1741940868086; Fri, 14 Mar 2025
 01:27:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250310-v5_user_cfi_series-v11-0-86b36cbfb910@rivosinc.com> <20250310-v5_user_cfi_series-v11-1-86b36cbfb910@rivosinc.com>
In-Reply-To: <20250310-v5_user_cfi_series-v11-1-86b36cbfb910@rivosinc.com>
From: Zong Li <zong.li@sifive.com>
Date: Fri, 14 Mar 2025 16:27:37 +0800
X-Gm-Features: AQ5f1Jr6EIItMT0M4w7j1TkQMGeFFM7Vn70Ljf5lKdhIMO0pijsGnR7Gg0wOpRc
Message-ID: <CANXhq0rtY_zDcLn4_TH0F083e4K58L-V2ingTwPgyoPBXEnY=g@mail.gmail.com>
Subject: Re: [PATCH v11 01/27] mm: VM_SHADOW_STACK definition for riscv
To: Deepak Gupta <debug@rivosinc.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Andrew Morton <akpm@linux-foundation.org>, 
	"Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, 
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Christian Brauner <brauner@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, Jann Horn <jannh@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kselftest@vger.kernel.org, alistair.francis@wdc.com, 
	richard.henderson@linaro.org, jim.shu@sifive.com, andybnac@gmail.com, 
	kito.cheng@sifive.com, charlie@rivosinc.com, atishp@rivosinc.com, 
	evan@rivosinc.com, cleger@rivosinc.com, alexghiti@rivosinc.com, 
	samitolvanen@google.com, broonie@kernel.org, rick.p.edgecombe@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 10, 2025 at 11:42=E2=80=AFPM Deepak Gupta <debug@rivosinc.com> =
wrote:
>
> VM_HIGH_ARCH_5 is used for riscv
>
> Signed-off-by: Deepak Gupta <debug@rivosinc.com>
> ---
>  include/linux/mm.h | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index 7b1068ddcbb7..1ef231cbc8fe 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -378,6 +378,13 @@ extern unsigned int kobjsize(const void *objp);
>  # define VM_SHADOW_STACK       VM_HIGH_ARCH_6
>  #endif
>
> +#if defined(CONFIG_RISCV_USER_CFI)
> +/*
> + * Following x86 and picking up the same bitpos.
> + */
> +# define VM_SHADOW_STACK       VM_HIGH_ARCH_5
> +#endif
> +
>  #ifndef VM_SHADOW_STACK
>  # define VM_SHADOW_STACK       VM_NONE
>  #endif
>

LGTM.

Reviewed-by: Zong Li <zong.li@sifive.com>

> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

