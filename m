Return-Path: <devicetree+bounces-67315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE928C7751
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 15:11:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B5E828111E
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 13:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44743146D51;
	Thu, 16 May 2024 13:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="HKkIiKKg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E070145FE8
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 13:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715865108; cv=none; b=sINZPJj2f/CQSQ/8Jj/qvl4QnXMZs4wW9fVObDzFdPAh79dpnsuDjn+2EmYNSgxti1xBILlBTT+IM/QSzS/PuSPcN52fhDJMEnMbQD701jjoIVl/imaQYnwt534pBDN/f5F6OXkp4zDZk/NbBmB+unDGKJ6CL3plicbEQbZlxuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715865108; c=relaxed/simple;
	bh=Wi6fPWBM2N13lqz1ePjmrOpqRQ8zl8M+Hd0GZZShN44=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mItJRC6x2p99V5YqGMi+kMI2Hh21Mvj8qY9Ly9t24Z9U9sQHAP/MYoeHlDyjoDwCzrBqyuFKRW2qpUwQecqfZhZgGhaKXe7mz0w/Razhnkk+JLtcWct59rF68HnWIEBuaqzLqZ/OenEnnxoGaXWin8qDFIzbPDxu3/fGX87gcWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=HKkIiKKg; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-62027fcf9b1so68209997b3.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 06:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1715865106; x=1716469906; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4V904prVi6oQ5IyZz7aDLXAgfOChEzLZtTfRAaiZkwU=;
        b=HKkIiKKglEbZ0hNaJB/6vEr2kjrfTrAMUPaj+Ct9bWmyMQA8SkQKvrQg76KjBrhUDw
         q8pq4iGam6QFNqGlYJ8XhdLlsbe8rwle8BtK8Yzs15RQbF855DfywMB7pBLjcnaj2wOl
         rcktK0svtAULtALURw4vcFxNsJzMgU7QBe9+zLUlTZ+3n+Mxl55MoOIu3uNbJWmth10o
         rYXY1FBNrUN1miG65K942JxmgsxAIQeibboAPzgXzJB2qYI5aq7GaJG1fSZkC/2DMdMY
         q+PZrMLZtF1XCXtv6AwqUtmKFy/mVByqlYuE14B6xeelv2axt6X0fNVBPYacEP7tdK92
         rx0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715865106; x=1716469906;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4V904prVi6oQ5IyZz7aDLXAgfOChEzLZtTfRAaiZkwU=;
        b=DuKq2KkHZXC8qEmjlZRLxSDA18oGd3hVBw/I7bwYfMOv421i4J0pJmFek+A/CxP5is
         e78J/eVdE522YeymAo5E9CpxR0XY59F8xc6P7CLneul+DElAWlnVsgvZgqc/xMOdsbt6
         Sj6TcGDp7OwoAVOCOzv7nQ9FVZ9KytBlJ4mlx59l4jIx7Rf/c0TTeq0u54lPJZMyQpet
         MpN9lVH8WVdjkhuw6i2aqxwSuYMC4YwYlwe9+/TOe6vFvomIkrGjDnwLAK5jbFzQ1BIi
         2iV2G2XNI9iar9j61Qf0cXBUJOotZikmo3b5k/OTZqghm0WbvhL4EKHq65kaRBHx5Tla
         cJkA==
X-Forwarded-Encrypted: i=1; AJvYcCVC8T9UcRHx3OlvDU6bfTcPzf72ZQPCp88SS6P4RDOm+qQGvlUFZQKKMJISQZR+5Zg7ZPbWl/y/Cx802YkJxQ4BpUYa8DHB6X4RyQ==
X-Gm-Message-State: AOJu0Yw4VQ07WzVMYF3e0ZOppnV/M9kQ8r6y/tnb1kbM4D7TQJYkQbfk
	6RjwjkbK7T4KUJUy3dM+FttPLVcYmTmaUDsPhb/9A+e3mmgTMW8ADUKDhDlx7KsscpPRxoFy1Ht
	n83AMaV5yJ3a0xq/ScCrSqYxnpbmd5qVmS4kZEg==
X-Google-Smtp-Source: AGHT+IH5FRDo7BDlg+tWZAgAOlCiAfHazME5mq8JEMAmJ+ns26s+bWNHf5N3/miLQXMAqpV9jaca9Qw0iocuCcuU1Ac=
X-Received: by 2002:a81:77c2:0:b0:618:9198:1a9b with SMTP id
 00721157ae682-622af7af307mr115191067b3.3.1715865105680; Thu, 16 May 2024
 06:11:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240503-dev-charlie-support_thead_vector_6_9-v6-0-cb7624e65d82@rivosinc.com>
 <20240503-dev-charlie-support_thead_vector_6_9-v6-3-cb7624e65d82@rivosinc.com>
In-Reply-To: <20240503-dev-charlie-support_thead_vector_6_9-v6-3-cb7624e65d82@rivosinc.com>
From: Andy Chiu <andy.chiu@sifive.com>
Date: Thu, 16 May 2024 21:11:33 +0800
Message-ID: <CABgGipUJ1hk_N6Vka2j12o80bxpDbAadJVBHdoLncrQEaBPoaw@mail.gmail.com>
Subject: Re: [PATCH v6 03/17] riscv: vector: Use vlenb from DT
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
	=?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Palmer Dabbelt <palmer@rivosinc.com>, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-doc@vger.kernel.org, 
	linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 4, 2024 at 2:21=E2=80=AFAM Charlie Jenkins <charlie@rivosinc.co=
m> wrote:
>
> If vlenb is provided in the device tree, prefer that over reading the
> vlenb csr.
>
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>

I agree with Conor that we need a mechanism to turn off v and all
depending extensions with has_riscv_homogeneous_vlenb(). And that can
come after this.

Thanks for adding the homogeneous vlen checking!

Reviewed-by: Andy Chiu <andy.chiu@sifive.com>

> ---
>  arch/riscv/include/asm/cpufeature.h |  2 ++
>  arch/riscv/kernel/cpufeature.c      | 47 +++++++++++++++++++++++++++++++=
++++++
>  arch/riscv/kernel/vector.c          | 12 +++++++++-
>  3 files changed, 60 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm=
/cpufeature.h
> index 347805446151..0c4f08577015 100644
> --- a/arch/riscv/include/asm/cpufeature.h
> +++ b/arch/riscv/include/asm/cpufeature.h
> @@ -31,6 +31,8 @@ DECLARE_PER_CPU(struct riscv_cpuinfo, riscv_cpuinfo);
>  /* Per-cpu ISA extensions. */
>  extern struct riscv_isainfo hart_isa[NR_CPUS];
>
> +extern u32 riscv_vlenb_of;
> +
>  void riscv_user_isa_enable(void);
>
>  #if defined(CONFIG_RISCV_MISALIGNED)
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeatur=
e.c
> index 3ed2359eae35..6c143ea9592b 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -35,6 +35,8 @@ static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __r=
ead_mostly;
>  /* Per-cpu ISA extensions. */
>  struct riscv_isainfo hart_isa[NR_CPUS];
>
> +u32 riscv_vlenb_of;
> +
>  /**
>   * riscv_isa_extension_base() - Get base extension word
>   *
> @@ -648,6 +650,46 @@ static int __init riscv_isa_fallback_setup(char *__u=
nused)
>  early_param("riscv_isa_fallback", riscv_isa_fallback_setup);
>  #endif
>
> +static int has_riscv_homogeneous_vlenb(void)
> +{
> +       int cpu;
> +       u32 prev_vlenb =3D 0;
> +       u32 vlenb;
> +
> +       /* Ignore vlenb if vector is not enabled in the kernel */
> +       if (!IS_ENABLED(CONFIG_RISCV_ISA_V))
> +               return 0;
> +
> +       for_each_possible_cpu(cpu) {
> +               struct device_node *cpu_node;
> +
> +               cpu_node =3D of_cpu_device_node_get(cpu);
> +               if (!cpu_node) {
> +                       pr_warn("Unable to find cpu node\n");
> +                       return -ENOENT;
> +               }
> +
> +               if (of_property_read_u32(cpu_node, "riscv,vlenb", &vlenb)=
) {
> +                       of_node_put(cpu_node);
> +
> +                       if (prev_vlenb)
> +                               return -ENOENT;
> +                       continue;
> +               }
> +
> +               if (prev_vlenb && vlenb !=3D prev_vlenb) {
> +                       of_node_put(cpu_node);
> +                       return -ENOENT;
> +               }
> +
> +               prev_vlenb =3D vlenb;
> +               of_node_put(cpu_node);
> +       }
> +
> +       riscv_vlenb_of =3D vlenb;
> +       return 0;
> +}
> +
>  void __init riscv_fill_hwcap(void)
>  {
>         char print_str[NUM_ALPHA_EXTS + 1];
> @@ -671,6 +713,11 @@ void __init riscv_fill_hwcap(void)
>                         pr_info("Falling back to deprecated \"riscv,isa\"=
\n");
>                         riscv_fill_hwcap_from_isa_string(isa2hwcap);
>                 }
> +
> +               if (elf_hwcap & COMPAT_HWCAP_ISA_V && has_riscv_homogeneo=
us_vlenb() < 0) {
> +                       pr_warn("Unsupported heterogeneous vlen detected,=
 vector extension disabled.\n");
> +                       elf_hwcap &=3D ~COMPAT_HWCAP_ISA_V;
> +               }
>         }
>
>         /*
> diff --git a/arch/riscv/kernel/vector.c b/arch/riscv/kernel/vector.c
> index 6727d1d3b8f2..e04586cdb7f0 100644
> --- a/arch/riscv/kernel/vector.c
> +++ b/arch/riscv/kernel/vector.c
> @@ -33,7 +33,17 @@ int riscv_v_setup_vsize(void)
>  {
>         unsigned long this_vsize;
>
> -       /* There are 32 vector registers with vlenb length. */
> +       /*
> +        * There are 32 vector registers with vlenb length.
> +        *
> +        * If the riscv,vlenb property was provided by the firmware, use =
that
> +        * instead of probing the CSRs.
> +        */
> +       if (riscv_vlenb_of) {
> +               this_vsize =3D riscv_vlenb_of * 32;
> +               return 0;
> +       }
> +
>         riscv_v_enable();
>         this_vsize =3D csr_read(CSR_VLENB) * 32;
>         riscv_v_disable();
>
> --
> 2.44.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

