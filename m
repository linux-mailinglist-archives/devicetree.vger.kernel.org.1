Return-Path: <devicetree+bounces-251401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F32AECF2A0F
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FEA53040A77
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 765FF330B19;
	Mon,  5 Jan 2026 09:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="q9FU/VLl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC730330332
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603744; cv=none; b=Gh15yQ4/0I7fbJ8jj5NUeBZ5p7qd0DopSScwtki/4jKb0NpPYLbhNGUYAcQ4qinbApR+GEUk6WDRGobeG0eAu15yj0LkGhKyslVXPZQYqz7UXL7lnHGrOQTkdFCEV8KhIQUJ4bBvNX0Wgb2lUrGV6vULECykcmPHpP0f2U3irUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603744; c=relaxed/simple;
	bh=FTgD2tLboygPZIMnpvGYADMJjZOBhXUngyQl92DfTPw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KDNXQjXRXHmxac9FTCfEXazClt1dT7rDchI5n0cydBQYp4d83QnA8PfB7IOjrLhEdr6ayF9Uytj3vWNb4RqtoNr7XWY/QCpPYuK4U5tF1pHoZGTvYbxEcIh6GBZ6Ps9XnEAgLyXjh1UPpKKbuWbNMpKmkaG35psSDIEM9h+DvtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=q9FU/VLl; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-65cff0b394aso8613698eaf.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1767603738; x=1768208538; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qLgzGv5fLc8fsHoh6HgxliKmTiWU9X2CeR3QczQ/WzU=;
        b=q9FU/VLlM3Fs9Y0IvnL2TiyBVm40QnOS8EsXR61JY92ivxpJgHGgz+rTImfoXbOHv6
         x86gsaBD8qIGfWVODjEfgdE7seEve7mAyJ1qEPB5bM6u2T0Gl/CxyCjqYM3Spi+UL1Sj
         C/txL3nfckNMdLzrE5jHSUgCf+by11ebuTfW0Pl5TKANhcWhUXmo9Jl82RGWqwmf+/HV
         zqwSAbSuTb7JaBMjIn/IV7Qmxt2IbrVcS3Bwmhlioz/N86gp1ogFGwFKCyvstZvRfKeT
         AGoEde0oKvSToJcTPJSNdP1gWf+DSZedc6boWbeUQzs7n0+mFUZFjRvmr7JKZwmNUve0
         u0iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603738; x=1768208538;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qLgzGv5fLc8fsHoh6HgxliKmTiWU9X2CeR3QczQ/WzU=;
        b=Evk+fyx6n340SCVZFcYKdftADsg+2K+M8EarMjd8dyLzJGTvHzFi3UsI2UpAcYt7/E
         h8cM4GcTh2uZZ1gWXJMmXt8SXkyT1HSm8/22yK1nt8isclxnCSocAz0vANtACEi7jnZB
         K5sKYjJC2hHI29h1zRdcgVWNIfhZieCSPoHFyyARqBrcH3uNrIZ1VtbWkFF+eHqRlxvT
         ZxjrSxS5uMyiMFErma3fgeHz9BU17vz9M0Vr9A1phJJ+6OCt1oisXGjhmi6r+NRMr66v
         iqYuaMuQrlUbDeeNjML2jxIyLzEwWA+DScBUe7riLbYzQFjK7m0pw8KczhnKhLKqquGv
         sZ9A==
X-Forwarded-Encrypted: i=1; AJvYcCVwjoxw4xerkoPMnQkH6FOtaSf05FNJ7yoO7vW4qdYHqpATp8rnoqB89mnZbsDnNcMWQylcbyIgi4ln@vger.kernel.org
X-Gm-Message-State: AOJu0YxUiQDCTvSJwkiABG1OfAJ1t9Jag+VjdQwjVXWq7Y1wFDGGp0hC
	emAQ1yVLBOzEIO98qdu/EK8mmT16+2+8i6P44ROYYSLAkPlzNP5bsBr04D7hdObVi8/PG8kTQ23
	YQIqCG7I4BoUd5N1V9SbsMIIkI4n0wl9XZR0/CfrhIg==
X-Gm-Gg: AY/fxX5abt4oETHdLOd+KdtPFcU0v7vljvZDkdb91ABxizhF6SZHyvzraqeBSaT3lMe
	LdJdnq9wdKJ4R08GYedPjLBDY4LOaSXT8b7gp7CEZ7TQkkkpevlL49MBAlxnXvAk1mxc0CDQu9b
	ubyKMC2wnSN6kibyzlg9J6M2AjyvhsrZ5RN8X+rztBDLU4JNyk7RIS5wvrza+6SiP9L8KSJ4GiC
	ZiYByM/YDnOAPcyVhylegSb1zye48MmuT8h0LktyXDbiVEX6GH4C8LQv6YRYGANWvGQHHIrKRdn
	jb3v+m0CTB8BCIN/eNwqFRMxW/jXd+cViZDFFbQTugFho58Er1jAyiTIwA==
X-Google-Smtp-Source: AGHT+IG/2dbYVAi+kE9jQKrV+b5ME2O9/wDR8akXLsA6MOvPGexAzyR6yiQetXOblpapVeFT7WzjD3+LEnqxI7rG0V0=
X-Received: by 2002:a4a:b285:0:b0:659:9a49:9023 with SMTP id
 006d021491bc7-65d0eafe372mr16492285eaf.80.1767603737633; Mon, 05 Jan 2026
 01:02:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250826162939.1494021-1-pincheng.plct@isrc.iscas.ac.cn> <20250826162939.1494021-5-pincheng.plct@isrc.iscas.ac.cn>
In-Reply-To: <20250826162939.1494021-5-pincheng.plct@isrc.iscas.ac.cn>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 5 Jan 2026 14:32:06 +0530
X-Gm-Features: AQt7F2r7JOD0nswZYt1d_1RpOAVlRLQ2tRHmfthI7w40klc16h1ihmE0AFTutIc
Message-ID: <CAAhSdy1B155WWM8=FA=fvmpVHgVzXke5WjQRnv63RLyLbdpDFw@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] riscv: KVM: allow Zilsd and Zclsd extensions for Guest/VM
To: Pincheng Wang <pincheng.plct@isrc.iscas.ac.cn>
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	alex@ghiti.fr, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	pbonzini@redhat.com, shuah@kernel.org, cyan.yang@sifive.com, 
	cleger@rivosinc.com, charlie@rivosinc.com, cuiyunhui@bytedance.com, 
	samuel.holland@sifive.com, namcao@linutronix.de, jesse@rivosinc.com, 
	inochiama@gmail.com, yongxuan.wang@sifive.com, ajones@ventanamicro.com, 
	parri.andrea@gmail.com, mikisabate@gmail.com, yikming2222@gmail.com, 
	thomas.weissschuh@linutronix.de, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 26, 2025 at 10:00=E2=80=AFPM Pincheng Wang
<pincheng.plct@isrc.iscas.ac.cn> wrote:
>
> Extend the KVM ISA extension ONE_REG interface to allow KVM user space
> to detect and enable Zilsd and Zclsd extensions for Guest/VM.
>
> Signed-off-by: Pincheng Wang <pincheng.plct@isrc.iscas.ac.cn>
> ---
>  arch/riscv/include/uapi/asm/kvm.h | 2 ++
>  arch/riscv/kvm/vcpu_onereg.c      | 2 ++
>  2 files changed, 4 insertions(+)
>
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/=
asm/kvm.h
> index 5f59fd226cc5..beb7ce06dce8 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -174,6 +174,8 @@ enum KVM_RISCV_ISA_EXT_ID {
>         KVM_RISCV_ISA_EXT_ZCD,
>         KVM_RISCV_ISA_EXT_ZCF,
>         KVM_RISCV_ISA_EXT_ZCMOP,
> +       KVM_RISCV_ISA_EXT_ZCLSD,
> +       KVM_RISCV_ISA_EXT_ZILSD,
>         KVM_RISCV_ISA_EXT_ZAWRS,
>         KVM_RISCV_ISA_EXT_SMNPM,
>         KVM_RISCV_ISA_EXT_SSNPM,

The KVM_RISCV_ISA_EXT_ZCLSD and KVM_RISCV_ISA_EXT_ZILSD
MUST BE inserted at the end of enum to maintain backward compatibility
in the UAPI header.

> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
> index 2e1b646f0d61..8219769fc4a1 100644
> --- a/arch/riscv/kvm/vcpu_onereg.c
> +++ b/arch/riscv/kvm/vcpu_onereg.c
> @@ -64,6 +64,7 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
>         KVM_ISA_EXT_ARR(ZCD),
>         KVM_ISA_EXT_ARR(ZCF),
>         KVM_ISA_EXT_ARR(ZCMOP),
> +       KVM_ISA_EXT_ARR(ZCLSD),
>         KVM_ISA_EXT_ARR(ZFA),
>         KVM_ISA_EXT_ARR(ZFH),
>         KVM_ISA_EXT_ARR(ZFHMIN),
> @@ -78,6 +79,7 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
>         KVM_ISA_EXT_ARR(ZIHINTPAUSE),
>         KVM_ISA_EXT_ARR(ZIHPM),
>         KVM_ISA_EXT_ARR(ZIMOP),
> +       KVM_ISA_EXT_ARR(ZILSD),
>         KVM_ISA_EXT_ARR(ZKND),
>         KVM_ISA_EXT_ARR(ZKNE),
>         KVM_ISA_EXT_ARR(ZKNH),

Both ZCLSD and ZILSD must be inserted in alphabetical order
in the kvm_isa_ext_arr[] array.

I have taken care of the above comments at the time of merging.

Reviewed-by: Anup Patel <anup@brainfault.org>

Queued this patch for Linux-6.20

Thanks,
Anup

