Return-Path: <devicetree+bounces-251410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D93FACF2C86
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:34:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE0C03007974
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1840F2BDC1C;
	Mon,  5 Jan 2026 09:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="mcs1xwLw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBB8275AE4
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767603996; cv=none; b=mnjTX26VJgk00TFwnrMElq2zCdGte8svoG4opub9Ilk4g9Ry8wp/G95oRsu3qLuJNJu+gFUiF0NjEgLxHSyWThDju0SEurfrbG6gIJReCUqQGj0Tv0Xkmgg2FFo0T4Ag4yoTd4xesDWTJgBhzhXZ6lvW+iwrgL0t3A+R6ye/+jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767603996; c=relaxed/simple;
	bh=MLxZuPSMtRL816eTodfHWi9P1buz0/azYjgJOrc0bYY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SXkU9ElADVIonkaKDD1g2TqsWybYCgu2WivEBUM+IPH2N0dR7hKBrkTXPVNgYsRt8WsBMKwXgCEC1XgzoxJ1R7eWn5U1flvohZ0DA5g4jnGCVLWIIoIjFxmRlvVLd3VyTuE36cE4j4d3rvd16hg8lgPXJFsmq8SmrzbYUFNvBXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=mcs1xwLw; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-3f0c93ecf42so956199fac.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1767603982; x=1768208782; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rx0r6U43GKweZQq7AZ8Mrd0bllWyzHYWweaavwJCSZc=;
        b=mcs1xwLwhsIyjQKWusMeSRxxBCfEfEKeH1GSy7vdEfmI3S+TLkluEZA/5AWeiY7mJB
         ob/xJH1Gc2zqulIBljXRl/6RVJ2Q+b1ZXUx/t6Hcrzs6Uf970Hj8y6O5op3742Tu/qC0
         w0suuMcVDL3vztkZv5ZY+tlxiIR5EqHGTEGwiX7e3oQFVWxSYCpJqI2a7ym/dgE44Iyh
         ZwN7/pBp3O3+TT9TZ5hVoodyzVYC9erSguz4o2ThxkwWJ//ReRqGAWX7odYILmUYDo+l
         ipHtQDBVicszpBZfYdUDnQp5EPOE6Ux52iioAnz5z8HZXegXtk68/pBy3uvPNC3BHTf1
         Wc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767603982; x=1768208782;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rx0r6U43GKweZQq7AZ8Mrd0bllWyzHYWweaavwJCSZc=;
        b=effdDxryMfGK8QUuL4QzctBVLNP0N2O3LkKcFhwabrEQ5wvCrdFfhNW+zzA2t9Ofwa
         emnTuHMIXdlJKzEj563lstmvKeOU+MMbCHiLTaUGVZRBeUFsouNrJ0imi/b5IIgsvaPn
         4ezloAU9SziP1bIHK7G/Jp7/wIxg0iFOBVQ5BIyl/LbrO8MZuHnnfDM2gLYp3CglSPnq
         IRI3txx2xharemL+CL9LaOJfmI1wjpLlzilnQCHQhrVbmtcnibnc9AAvdAWBHnOt76z8
         u4WAADKwNF9AgWCv0/hGiIWeSEy7dIahIGFivKitTxWY+hQbKNIKHiXOoY1S8awLdsOj
         t7KA==
X-Forwarded-Encrypted: i=1; AJvYcCW27trd8hAj5xIh+mX/px8qbf87rJbiuAbuG9V+v+tLw+2dTl5NgyC0bpDDwp/RtlMnhoYqKsAn4h0C@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8drSRNhB3l3e9VkTsVSWoB0KC2cxZVUKE/aG9IFuJHVcybkDZ
	NmKrmwYmDD9jAzuDPPRLhMDVZ0vdS5Sbsuxs5SZlQkKnI413+mW3AnNK/AgXdxzcWmXhfjkliwm
	JUOUT6tOJgqWJHVNGH9vL/sc50tRPuJLe2gG5tVLzZQ==
X-Gm-Gg: AY/fxX5cLiRKcYnxrr3LeviERqi2KYb7h4hJXD4ZRqFbZcUOoAqiuxXCRebbHnL6wss
	fj+ihE0MuBIruUREFCXRp+hBLcXuVe7srt0qDlfR0E+/9KKZrKAErKpv30cwd7OkzHbiIyrQeKk
	YYwOAbL0Wzf7BgPJo/HM9G8RchnSnnIS16p1pBlhwGBvp/GyvZL9bVW91ULX4v0mkx9tkuIR0SK
	4Rh0iYCjs0Efv/5owdsBEb8jSmxTNWSp3oJGZN5OSvAUx8LJH/7Ks0LtXHSmmBOHdxylkrZCnSy
	ai7qIsdxDp5VQt4zC3zwMFIjtaEYsy9TXlty7rAjFM3LdC0mmp+4QLR2Xw==
X-Google-Smtp-Source: AGHT+IEmhIQ5RKOo2b6b7OL5O1/QlwNjLPOmq/Ngn48EMDTkEYgit3hHMFtHAFIg6wOswhZTAnGu6/YK4U65b6YmqR4=
X-Received: by 2002:a05:6820:a245:b0:65b:295f:ee08 with SMTP id
 006d021491bc7-65f2684a98emr2359335eaf.10.1767603982348; Mon, 05 Jan 2026
 01:06:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250826162939.1494021-1-pincheng.plct@isrc.iscas.ac.cn> <20250826162939.1494021-6-pincheng.plct@isrc.iscas.ac.cn>
In-Reply-To: <20250826162939.1494021-6-pincheng.plct@isrc.iscas.ac.cn>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 5 Jan 2026 14:36:11 +0530
X-Gm-Features: AQt7F2o7aUCslFOKh9Z8QzWPpfr1ehdXhDGDtgLd_0uBy1pmifoh4VGOHYQoZdM
Message-ID: <CAAhSdy3OXBexhB_csqJasQoQJ8QnsE=q7dHXgWtyig28eJGL3g@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] KVM: riscv: selftests: add Zilsd and Zclsd
 extension to get-reg-list test
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
> The KVM RISC-V allows Zilsd and Zclsd extensions for Guest/VM so add
> this extension to get-reg-list test.
>
> Signed-off-by: Pincheng Wang <pincheng.plct@isrc.iscas.ac.cn>
> ---
>  tools/testing/selftests/kvm/riscv/get-reg-list.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/tes=
ting/selftests/kvm/riscv/get-reg-list.c
> index a0b7dabb5040..477bd386265f 100644
> --- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
> +++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> @@ -78,7 +78,9 @@ bool filter_reg(__u64 reg)
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCB:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCD:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCF:
> +       case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCLSD:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCMOP:
> +       case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZILSD:

KVM_RISCV_ISA_EXT_ZILSD case must be inserted in alphabetical order.

>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZFA:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZFH:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZFHMIN:
> @@ -530,7 +532,9 @@ static const char *isa_ext_single_id_to_str(__u64 reg=
_off)
>                 KVM_ISA_EXT_ARR(ZCB),
>                 KVM_ISA_EXT_ARR(ZCD),
>                 KVM_ISA_EXT_ARR(ZCF),
> +               KVM_ISA_EXT_ARR(ZCLSD),
>                 KVM_ISA_EXT_ARR(ZCMOP),
> +               KVM_ISA_EXT_ARR(ZILSD),
>                 KVM_ISA_EXT_ARR(ZFA),
>                 KVM_ISA_EXT_ARR(ZFH),
>                 KVM_ISA_EXT_ARR(ZFHMIN),

KVM_ISA_EXT_ARR(ZILSD) must be inserted in alphabetical order.

> @@ -1199,7 +1203,9 @@ struct vcpu_reg_list *vcpu_configs[] =3D {
>         &config_zcb,
>         &config_zcd,
>         &config_zcf,
> +       &config_zclsd,
>         &config_zcmop,
> +       &config_zclsd,

Both config_zclsd and config_zclsd must be defined before
vcpu_configs[] using KVM_ISA_EXT_SIMPLE_CONFIG().

Also, config_zilsd is not added in alphabetical order.

>         &config_zfa,
>         &config_zfh,
>         &config_zfhmin,
> --
> 2.39.5
>

I have taken care of the above comments at the time of merging.

Reviewed-by: Anup Patel <anup@brainfault.org>

Queued this patch for Linux-6.20

Thanks,
Anup

