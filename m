Return-Path: <devicetree+bounces-60582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E4E8A9B17
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 15:21:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06BF41F2295E
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 13:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E92C1635B7;
	Thu, 18 Apr 2024 13:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="TSCNfPRI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC0015F3FD
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713446436; cv=none; b=oLrBHld02lHKJE/DR45MKSufYeiVlYVUtcuV9WIXbu0BoxCNvq2AYVTA9kXK7YNz10IS2Iqu5asisl5ITgbi3Co9QPhKfdJvHTgsTv7jXJMQiGg4qyUxIc7m8Ilmr2lKQ5Bho+bs9VhcWsWp5dDZA5PRUsMsbncnjml2x5jOQj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713446436; c=relaxed/simple;
	bh=cwotXz71csJK5NlYG6cUePZxsMutZ9CiCnXSbJcpnco=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZJkkcMYam+1HvjALK5letue5J/rYkxQSAKTrKQ//ldzeqBJSGvszl/S1XdHxk/cfzsRPZlxLvdWJqCpMi+vOy/7E2O9+AJdN3naa77ast4Hvef96z1qG0x9YMOOH/mj/l256e8BNODmPVgpu8FtjLm6O1lMVHuliRn8FJWweC0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=TSCNfPRI; arc=none smtp.client-ip=209.85.166.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-36b2ecd7b76so6041875ab.1
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 06:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1713446433; x=1714051233; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gx9GnWevREtFfaeT4x816rwBBhgS4sWYP/+TT0BrELo=;
        b=TSCNfPRI1RBVqjumWW+SebIW/fHuwvPmbonl6jPsmmqibhiG+Shsj8O9jPbUptnrEc
         jj2QOifC1vrvquAmOPI7yIzYoZ3b6DQS6cUWLzHgOhcg8DMd14IgRdpR1Tl123fKkEeg
         bIoI76VZGQAVEbPgD3GqJbLE9CT24DrapGocyc1+lzAxVzYiGi05kNvs0sy7Ng/S3Jvj
         3jQoX6qnJHr9SHckphFFLSYaXM0RFdHdmv2oD+y1MwjYFEHy9VzWjfPF9hPk7moAmxeO
         pGEqoWLyDb0GeRxmTmqegs4Q/Jb1UVbSloOgmHf0NJbFklUEWYKHnEfLn5Hh1bF4+Xis
         DnJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713446433; x=1714051233;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gx9GnWevREtFfaeT4x816rwBBhgS4sWYP/+TT0BrELo=;
        b=PLxNC8V/66ZLMSQhzc7L+mSwrdGYZnpYaw07UG9msBunYuf6wclwoJKXQJ8YFbnJ5G
         Qrxvso2jETx+zZ/veHPIhyaH5SvUAqoX4Cj/6QZGNrY2LLD4oWd4m3WkETv561jqYofg
         el8w5FbYecGd83VOU3PVIBPyJX61jaZtpmTa5cK6P/Lge70jXSns6HoemXFL4aeI7qkZ
         0olvswIh4braosi77e6XvlgFVQZLajy71Q7HTgnLd1Byu1vkvIBJ3qjz7wrDtQsFn3i2
         TXvSuxCaipv2/eK2e43THrProgGPtIRoeSIyYzDSeJst0KoQYpb2EON4pP+wvsT5nnD0
         TO/A==
X-Forwarded-Encrypted: i=1; AJvYcCXpBlT82WGXMypmJ8Aj5JdhtwRlLR1CLBXnZsiHcLh0UXsg3LMYwoCN9usdq2MoOR4mPNj3T3FDrfGaqI9B9bOSJCcQmzWQbJbdQA==
X-Gm-Message-State: AOJu0YwJbqYRwjUBFymGfhqvQso0GqEdDwIo7qr+W90fvFlJheNegWgr
	+zQL1j6B0GoMgYTOI77ST1S6G0pR2Ol6coJLX8wJe6JD1nTaefSE1snuNcuBr8deC7TRWW0Bq58
	zlE9QQyxsYGzykYsxZ9R7uQfl93AkUPx9vZ4McA==
X-Google-Smtp-Source: AGHT+IGMAebq+hy93GujthN3vp/oiNgylMXL32FxuMysUl+JA4YBKBsEzN18erjOu1anh/0QSxfZh2bW0X+CZoU6xFA=
X-Received: by 2002:a05:6e02:1d85:b0:36a:28a8:ca5 with SMTP id
 h5-20020a056e021d8500b0036a28a80ca5mr3399351ila.7.1713446433235; Thu, 18 Apr
 2024 06:20:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240418124300.1387978-1-cleger@rivosinc.com> <20240418124300.1387978-7-cleger@rivosinc.com>
In-Reply-To: <20240418124300.1387978-7-cleger@rivosinc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 18 Apr 2024 18:50:21 +0530
Message-ID: <CAAhSdy33=s_J=0HJ1VfbxPVkBgyTZ1rpM3G15R8rJGbnNA_zeg@mail.gmail.com>
Subject: Re: [PATCH v2 06/12] RISC-V: KVM: Allow Zca, Zcf, Zcd and Zcb
 extensions for Guest/VM
To: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Shuah Khan <shuah@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 18, 2024 at 6:14=E2=80=AFPM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
osinc.com> wrote:
>
> Extend the KVM ISA extension ONE_REG interface to allow KVM user space
> to detect and enable Zca, Zcf, Zcd and Zcb extensions for Guest/VM.
>
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>
Acked-by: Anup Patel <anup@brainfault.org>

Thanks,
Anup

> ---
>  arch/riscv/include/uapi/asm/kvm.h | 4 ++++
>  arch/riscv/kvm/vcpu_onereg.c      | 8 ++++++++
>  2 files changed, 12 insertions(+)
>
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/=
asm/kvm.h
> index 35a12aa1953e..57db3fea679f 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -168,6 +168,10 @@ enum KVM_RISCV_ISA_EXT_ID {
>         KVM_RISCV_ISA_EXT_ZTSO,
>         KVM_RISCV_ISA_EXT_ZACAS,
>         KVM_RISCV_ISA_EXT_ZIMOP,
> +       KVM_RISCV_ISA_EXT_ZCA,
> +       KVM_RISCV_ISA_EXT_ZCB,
> +       KVM_RISCV_ISA_EXT_ZCD,
> +       KVM_RISCV_ISA_EXT_ZCF,
>         KVM_RISCV_ISA_EXT_MAX,
>  };
>
> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
> index 12436f6f0d20..a2747a6dbdb6 100644
> --- a/arch/riscv/kvm/vcpu_onereg.c
> +++ b/arch/riscv/kvm/vcpu_onereg.c
> @@ -48,6 +48,10 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
>         KVM_ISA_EXT_ARR(ZBKC),
>         KVM_ISA_EXT_ARR(ZBKX),
>         KVM_ISA_EXT_ARR(ZBS),
> +       KVM_ISA_EXT_ARR(ZCA),
> +       KVM_ISA_EXT_ARR(ZCB),
> +       KVM_ISA_EXT_ARR(ZCD),
> +       KVM_ISA_EXT_ARR(ZCF),
>         KVM_ISA_EXT_ARR(ZFA),
>         KVM_ISA_EXT_ARR(ZFH),
>         KVM_ISA_EXT_ARR(ZFHMIN),
> @@ -128,6 +132,10 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsig=
ned long ext)
>         case KVM_RISCV_ISA_EXT_ZBKC:
>         case KVM_RISCV_ISA_EXT_ZBKX:
>         case KVM_RISCV_ISA_EXT_ZBS:
> +       case KVM_RISCV_ISA_EXT_ZCA:
> +       case KVM_RISCV_ISA_EXT_ZCB:
> +       case KVM_RISCV_ISA_EXT_ZCD:
> +       case KVM_RISCV_ISA_EXT_ZCF:
>         case KVM_RISCV_ISA_EXT_ZFA:
>         case KVM_RISCV_ISA_EXT_ZFH:
>         case KVM_RISCV_ISA_EXT_ZFHMIN:
> --
> 2.43.0
>

