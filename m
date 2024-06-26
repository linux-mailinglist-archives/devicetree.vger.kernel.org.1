Return-Path: <devicetree+bounces-80325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 111D89185F5
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:36:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33DB71C21F18
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A83FF18C327;
	Wed, 26 Jun 2024 15:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="qPPs5rOO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB541849FB
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719416212; cv=none; b=FUAWz1xknU6OtAUmZkdpTEmM0yRwOAwdLuHs9fz7/mtr2CZe3Wh6mCeyOAiJ9OhbDSdZCvIESj4K6Bp7cJ9IfS6M5UAUeGEzb/E+5qD9ccKMY5V5B8F4dVn3ghX7ImUdR2dLuIE+THtLMOu5x8jv2sU5LvcYkBPsdUhKeFok28E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719416212; c=relaxed/simple;
	bh=f4oq+03vK3r7psm7ClCeiJiZbhdrVAXZ4XgeNd6r0l4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M4ESepgAJj9SbpdMOAVj9gMeJE4Yxccu24q9dXeCxYl7F6bLjSneY2i4v4HTa2b4vExCCg5gYK7hLYAJdwvvtclWo3WVZQpqv5yLh/WaHhwG59qiFQmM3IbDTktYhruEnkM3iuXprSlbXWXSBcfj4x0Nqxc6jmQRG+KRk/aFIYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=qPPs5rOO; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-375e0e258b7so29418655ab.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1719416210; x=1720021010; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V5nnbzV9Zj1DrEqWBNN21M3y+/sCqoD4DK4Ac2OdSSc=;
        b=qPPs5rOOEKLG4p/PXTh18Logy+s85izahlTuoSj8JZQX1eACRpTcdRhT6n0G0u8VJe
         L9Q/N1ucNCqp+85Gteunaiu/ZNdmJdcpi7lUqhdE8rOHCrwv1WEVNFXQXHgVxMZyQ1Oi
         +lZuBuvChsrx7IAUzoQYDze/7hZzA09UOI261UB9xNKpwXYgqWDHzZeWmLlnnrdF8Ujg
         4iLFQFrzC9BM88fUrFSJHdrKNrMsHCe0bxzjZL8woWcHnnvyGBvAijs6/xOBEVgWAyr0
         M5dyqyw+jBdtOnWuP85npMuRNaFBsJ+2B5dJi5fg80HBr8mKWchknYaJ1PoEhA1awZCy
         MqNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719416210; x=1720021010;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V5nnbzV9Zj1DrEqWBNN21M3y+/sCqoD4DK4Ac2OdSSc=;
        b=Pv6hVwjetzyadyq18OYDU/2zBVLfGiUdxNvxipquwPT5zWJYf3PH5L+kcXOMOqPY1U
         LcnGV6t+tEHZelKj+/M5agsKBjeJdzIMxf6XBav3rLBvBuGkM2CBHpdxaFdHu7RPCE+B
         Tzg/C2oCB1UvrlQ/FHOOYGcYtbH1i4T+Q0+7S4Il0cE7r5fe0SuvNEWC1UV4SWJgtmLC
         FOsDWhtp1+f1/sK/xueqL22JI8WQgGbf+9tSfdwWJr9hg/2khq1/vnS8rOkbPAXoq59e
         kLxMY4MQKvwDM7SeE1u+sG9W8t6dPk2XWbIesrZwBirYkC9DORbDNiHj6xAUa9nxTK1J
         V7/w==
X-Forwarded-Encrypted: i=1; AJvYcCVoyPvL8ERsuo0ZEmIFvLftbTkpwXJMQ/PrFjAJb8fGaeUfzwM3fL8S6gB7Zxz+CkjHPLZlMQDQAWNyoTJfKcW4F0bjLs1WFk4tjw==
X-Gm-Message-State: AOJu0YxjVKeGphtdvUyLYlSoaN8qw7lBqPqGze+kUm4kkDFVUowa1Ulh
	EIMuuzHi7llBXtGCncoee4iy/Sy90V2KiowmzK/b6GnLde38Ujv7T88M2+HT7Citgl2+spDkjZt
	HkBZ+cGGCJvBIUJHrm4jfVFolz7+aYAuyeLKc2w==
X-Google-Smtp-Source: AGHT+IEx3n1pAtiFxPV5VbMeVdK9RInuF2hPfxz3wSJhDVUz0zv0tgUX3t1wQrFEoYNKBKurqiXkn8BT7D2wGotfwRk=
X-Received: by 2002:a92:c548:0:b0:375:ae6b:9d92 with SMTP id
 e9e14a558f8ab-3763f5c38a2mr157101095ab.12.1719416210118; Wed, 26 Jun 2024
 08:36:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240426100820.14762-8-ajones@ventanamicro.com> <20240426100820.14762-13-ajones@ventanamicro.com>
In-Reply-To: <20240426100820.14762-13-ajones@ventanamicro.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 26 Jun 2024 21:06:38 +0530
Message-ID: <CAAhSdy3a-8Twd0zVJPmAJy3QEsco+gUFMXWaQE-U7OjU3Kra-g@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] KVM: riscv: Support guest wrs.nto
To: Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, conor.dooley@microchip.com, atishp@atishpatra.org, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com, 
	David.Laight@aculab.com, parri.andrea@gmail.com, luxu.kernel@bytedance.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 26, 2024 at 3:38=E2=80=AFPM Andrew Jones <ajones@ventanamicro.c=
om> wrote:
>
> When a guest traps on wrs.nto, call kvm_vcpu_on_spin() to attempt
> to yield to the lock holding VCPU. Also extend the KVM ISA extension
> ONE_REG interface to allow KVM userspace to detect and enable the
> Zawrs extension for the Guest/VM.
>
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>

LGTM.

Acked-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  arch/riscv/include/asm/kvm_host.h |  1 +
>  arch/riscv/include/uapi/asm/kvm.h |  1 +
>  arch/riscv/kvm/vcpu.c             |  1 +
>  arch/riscv/kvm/vcpu_insn.c        | 15 +++++++++++++++
>  arch/riscv/kvm/vcpu_onereg.c      |  2 ++
>  5 files changed, 20 insertions(+)
>
> diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/k=
vm_host.h
> index 484d04a92fa6..e27c56e44783 100644
> --- a/arch/riscv/include/asm/kvm_host.h
> +++ b/arch/riscv/include/asm/kvm_host.h
> @@ -69,6 +69,7 @@ struct kvm_vcpu_stat {
>         struct kvm_vcpu_stat_generic generic;
>         u64 ecall_exit_stat;
>         u64 wfi_exit_stat;
> +       u64 wrs_exit_stat;
>         u64 mmio_exit_user;
>         u64 mmio_exit_kernel;
>         u64 csr_exit_user;
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/=
asm/kvm.h
> index b1c503c2959c..89ea06bd07c2 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -167,6 +167,7 @@ enum KVM_RISCV_ISA_EXT_ID {
>         KVM_RISCV_ISA_EXT_ZFA,
>         KVM_RISCV_ISA_EXT_ZTSO,
>         KVM_RISCV_ISA_EXT_ZACAS,
> +       KVM_RISCV_ISA_EXT_ZAWRS,
>         KVM_RISCV_ISA_EXT_MAX,
>  };
>
> diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> index b5ca9f2e98ac..abcdc78671e0 100644
> --- a/arch/riscv/kvm/vcpu.c
> +++ b/arch/riscv/kvm/vcpu.c
> @@ -25,6 +25,7 @@ const struct _kvm_stats_desc kvm_vcpu_stats_desc[] =3D =
{
>         KVM_GENERIC_VCPU_STATS(),
>         STATS_DESC_COUNTER(VCPU, ecall_exit_stat),
>         STATS_DESC_COUNTER(VCPU, wfi_exit_stat),
> +       STATS_DESC_COUNTER(VCPU, wrs_exit_stat),
>         STATS_DESC_COUNTER(VCPU, mmio_exit_user),
>         STATS_DESC_COUNTER(VCPU, mmio_exit_kernel),
>         STATS_DESC_COUNTER(VCPU, csr_exit_user),
> diff --git a/arch/riscv/kvm/vcpu_insn.c b/arch/riscv/kvm/vcpu_insn.c
> index ee7215f4071f..97dec18e6989 100644
> --- a/arch/riscv/kvm/vcpu_insn.c
> +++ b/arch/riscv/kvm/vcpu_insn.c
> @@ -16,6 +16,9 @@
>  #define INSN_MASK_WFI          0xffffffff
>  #define INSN_MATCH_WFI         0x10500073
>
> +#define INSN_MASK_WRS          0xffffffff
> +#define INSN_MATCH_WRS         0x00d00073
> +
>  #define INSN_MATCH_CSRRW       0x1073
>  #define INSN_MASK_CSRRW                0x707f
>  #define INSN_MATCH_CSRRS       0x2073
> @@ -203,6 +206,13 @@ static int wfi_insn(struct kvm_vcpu *vcpu, struct kv=
m_run *run, ulong insn)
>         return KVM_INSN_CONTINUE_NEXT_SEPC;
>  }
>
> +static int wrs_insn(struct kvm_vcpu *vcpu, struct kvm_run *run, ulong in=
sn)
> +{
> +       vcpu->stat.wrs_exit_stat++;
> +       kvm_vcpu_on_spin(vcpu, vcpu->arch.guest_context.sstatus & SR_SPP)=
;
> +       return KVM_INSN_CONTINUE_NEXT_SEPC;
> +}
> +
>  struct csr_func {
>         unsigned int base;
>         unsigned int count;
> @@ -378,6 +388,11 @@ static const struct insn_func system_opcode_funcs[] =
=3D {
>                 .match =3D INSN_MATCH_WFI,
>                 .func  =3D wfi_insn,
>         },
> +       {
> +               .mask  =3D INSN_MASK_WRS,
> +               .match =3D INSN_MATCH_WRS,
> +               .func  =3D wrs_insn,
> +       },
>  };
>
>  static int system_opcode_insn(struct kvm_vcpu *vcpu, struct kvm_run *run=
,
> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
> index f4a6124d25c9..67c5794af3b6 100644
> --- a/arch/riscv/kvm/vcpu_onereg.c
> +++ b/arch/riscv/kvm/vcpu_onereg.c
> @@ -41,6 +41,7 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
>         KVM_ISA_EXT_ARR(SVNAPOT),
>         KVM_ISA_EXT_ARR(SVPBMT),
>         KVM_ISA_EXT_ARR(ZACAS),
> +       KVM_ISA_EXT_ARR(ZAWRS),
>         KVM_ISA_EXT_ARR(ZBA),
>         KVM_ISA_EXT_ARR(ZBB),
>         KVM_ISA_EXT_ARR(ZBC),
> @@ -120,6 +121,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsign=
ed long ext)
>         case KVM_RISCV_ISA_EXT_SVINVAL:
>         case KVM_RISCV_ISA_EXT_SVNAPOT:
>         case KVM_RISCV_ISA_EXT_ZACAS:
> +       case KVM_RISCV_ISA_EXT_ZAWRS:
>         case KVM_RISCV_ISA_EXT_ZBA:
>         case KVM_RISCV_ISA_EXT_ZBB:
>         case KVM_RISCV_ISA_EXT_ZBC:
> --
> 2.44.0
>

