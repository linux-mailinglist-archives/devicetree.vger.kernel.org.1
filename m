Return-Path: <devicetree+bounces-251767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A30CF6B54
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 05:57:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABCA9304C6EF
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 04:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 659672C027B;
	Tue,  6 Jan 2026 04:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="AdxepRR3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35A41B4244
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 04:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767675404; cv=none; b=aw89v/VTiyqf92st6Kj6u+sVnwEjeSxh0+rLVPdyA+mnLhxOCipxpBUabRvw7SSjMArtE1yau/SxFg9ZOfEZjTph6RVN/Dj7Ip3aDNCjeeS5UO5OiYBO4Mj12P7dtCQoZ3FFp0jUPFUTon2scfkAIe0zuvs5YtL4pbb4efECGAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767675404; c=relaxed/simple;
	bh=fbOChfkZbXOq4bWAzF7RfS77y5AjBtfElT9+lVK8jhg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JglLMUyCaBed0i37xOqZNbEd6cFsM5N+Sc+IbaXEvxC2VcVRq2mx9TqQD19XpAlLzeH3E4CXbHsVxlA+MigYaIEpiViZGk1iu1Xj8leF3dyaBe1IrlBmRd0ypiGq7FKYAnUof/lRhAHf0Wggwm6ykW76syOJBII8K3P8l94gtsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=AdxepRR3; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-45a3145faddso234587b6e.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 20:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1767675401; x=1768280201; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WA+vnv3FR+Z4SF0lY1aYTXYOVt37m8c4DjPEA2hxbj8=;
        b=AdxepRR32ZRfNXuAeeUizo+CnwLitQ7zhXMGkWNX+ePYeR8Edb8n82yNZ0WtZmeyVn
         RjGoMQ5RFebtp9D2clL1nAiKpmFEKNTAN3ui5gMmE0rD1LPLpiE+RLtRQH3jMzLAtVoM
         fq8D4n7rM4Xj4pp4q6ZMji5Lw9yxCMk2R66PmNkxDKxUd5v6jV6U8uG9wtzY24vCk8ZF
         Wn/Ntf3/VIShSc2WA6rOrmkZMmyJb4M73uaCM/KJbdRp2ap1VP4tKRc94YjTLJVGbp4N
         j8R2wNdf42iuSkEuZAAGMlAQNr0F4ulHSiRscM8Qk9fVMd7VWslEpFA8Msf1eTODs3Ex
         uqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767675401; x=1768280201;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WA+vnv3FR+Z4SF0lY1aYTXYOVt37m8c4DjPEA2hxbj8=;
        b=YNxSodm8GZ/vDL3ZuifYdaYcCyZTmvOmCBJxtCHkZIKSYZYd6SNgBCr26ZsHj+dAwf
         ifT3sB1lTH931TQ930V5+0G0+37ONMORZeSLLKIBlnjkEG8aZxk/SdL+UGvSlZt1h8NA
         KACOz2iepcYfps0Msgc3hcUxFYUHa3DVTPJtlq4lHDLdZZ5ZWXVKagmLXjEkxKQstXXO
         XNdfBEQah3fc8wdTldjF4bEoflVGz3K5t23pjLajldyXG08M5uYIEtyE+9z7YDKYGpMT
         3irFjif4/Yz7/WNaGrrc3iNayPKyk2YPN0KfCUlmLJUEQ+E8Y0BodPDigZ/3xWt61um9
         5lLw==
X-Forwarded-Encrypted: i=1; AJvYcCUBayIRpOeBIJG3haGzWJkx/aFI62sThwDTjnbMTaPxCGaPgU45ShE0XS6isDF490C99ioTTFeWkXEy@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg+w/nVFdNYv+A8yjphcHPncN1hYLVn8J2uoa2hQBZ0DKOFXyL
	sdYs8MVSdcciqXNPZLWSduVUqtmT5aAuP9kz4lQFLZo5MXfmVL15tMXsqCAMdEz7T/gKtovvQq0
	3FB8aMnkL3EmSUhFQOOehNfr8ff+dSS8xhch2kn4tZQ==
X-Gm-Gg: AY/fxX5hQ+5OwxrCzPITAhWEyENxRJH5H30QvzwJPqNbYs1IaGSkflz4GBM+63VHkIz
	fhr/0/wyGvH2+zOAa1cj6YqWl5CmdosylHtqg93VbhtUbw23xOHpBezIohHupxubP8Mx+3YBSzs
	lw6YnfTXdtf+/dKg68ZEfU3K3o4Mc0RfpOmJ+cwEZIU5bZ3MkIDzThfT4dRYD7HH2WFZhpTxEbu
	ZouOb+67oj7DZO86bPtoJkv17Vqy3END8GcrmZauVvXm5c3SCQesHDyWoEFWhmFKRnveuliUpuR
	jFfPgjG+m/r66K2inK6WcuospKHq3n6mdHk89UCw9mUab5+VfxQ3aH0EJg==
X-Google-Smtp-Source: AGHT+IFYFZIDuKpjkDS72Ef6JCpoBzzGRuIzZj1eYSMd9ZLPsEbeYPPSGa4zpnzJp7w6utOo445xI/OFNWfh52Uwiq4=
X-Received: by 2002:a05:6820:f006:b0:65d:a21:d1f9 with SMTP id
 006d021491bc7-65f4799cc06mr1525576eaf.5.1767675400701; Mon, 05 Jan 2026
 20:56:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251020042457.30915-1-luxu.kernel@bytedance.com> <20251020042457.30915-5-luxu.kernel@bytedance.com>
In-Reply-To: <20251020042457.30915-5-luxu.kernel@bytedance.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 6 Jan 2026 10:26:29 +0530
X-Gm-Features: AQt7F2pAUL7KOytVD0mr7jwpoQ61NGCRNrXweF7HHu0OAcu7_RUK7gg5_B9FCMI
Message-ID: <CAAhSdy3btmd-G_335XjJ6O_+WFNyrq5wWYSEtEQHUeP1yKmLog@mail.gmail.com>
Subject: Re: [PATCH v4 09/10] RISC-V: KVM: Allow Zalasr extensions for Guest/VM
To: Xu Lu <luxu.kernel@bytedance.com>
Cc: corbet@lwn.net, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, will@kernel.org, peterz@infradead.org, 
	boqun.feng@gmail.com, mark.rutland@arm.com, atish.patra@linux.dev, 
	pbonzini@redhat.com, shuah@kernel.org, parri.andrea@gmail.com, 
	ajones@ventanamicro.com, brs@rivosinc.com, guoren@kernel.org, 
	linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org, 
	apw@canonical.com, joe@perches.com, lukas.bulwahn@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 20, 2025 at 9:55=E2=80=AFAM Xu Lu <luxu.kernel@bytedance.com> w=
rote:
>
> Extend the KVM ISA extension ONE_REG interface to allow KVM user space
> to detect and enable Zalasr extensions for Guest/VM.
>
> Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Queued this patch for Linux-6.20

Thanks,
Anup

> ---
>  arch/riscv/include/uapi/asm/kvm.h | 1 +
>  arch/riscv/kvm/vcpu_onereg.c      | 2 ++
>  2 files changed, 3 insertions(+)
>
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/=
asm/kvm.h
> index ef27d4289da11..4fbc32ef888fa 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -185,6 +185,7 @@ enum KVM_RISCV_ISA_EXT_ID {
>         KVM_RISCV_ISA_EXT_ZICCRSE,
>         KVM_RISCV_ISA_EXT_ZAAMO,
>         KVM_RISCV_ISA_EXT_ZALRSC,
> +       KVM_RISCV_ISA_EXT_ZALASR,
>         KVM_RISCV_ISA_EXT_MAX,
>  };
>
> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
> index cce6a38ea54f2..6ae5f9859f25b 100644
> --- a/arch/riscv/kvm/vcpu_onereg.c
> +++ b/arch/riscv/kvm/vcpu_onereg.c
> @@ -50,6 +50,7 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
>         KVM_ISA_EXT_ARR(ZAAMO),
>         KVM_ISA_EXT_ARR(ZABHA),
>         KVM_ISA_EXT_ARR(ZACAS),
> +       KVM_ISA_EXT_ARR(ZALASR),
>         KVM_ISA_EXT_ARR(ZALRSC),
>         KVM_ISA_EXT_ARR(ZAWRS),
>         KVM_ISA_EXT_ARR(ZBA),
> @@ -184,6 +185,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsign=
ed long ext)
>         case KVM_RISCV_ISA_EXT_ZAAMO:
>         case KVM_RISCV_ISA_EXT_ZABHA:
>         case KVM_RISCV_ISA_EXT_ZACAS:
> +       case KVM_RISCV_ISA_EXT_ZALASR:
>         case KVM_RISCV_ISA_EXT_ZALRSC:
>         case KVM_RISCV_ISA_EXT_ZAWRS:
>         case KVM_RISCV_ISA_EXT_ZBA:
> --
> 2.20.1
>

