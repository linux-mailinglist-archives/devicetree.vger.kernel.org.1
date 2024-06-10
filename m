Return-Path: <devicetree+bounces-74266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D4090280A
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 19:52:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 923522873C3
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 17:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54024149007;
	Mon, 10 Jun 2024 17:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b="Xkfjvm60"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85E8F1487F1
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 17:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718041931; cv=none; b=We9qK11FuvBj12RAG6jdE6U/C3Sn/O2p9CuY9wy/QSVR/2UHreLsm4a2sqimw4kxTWkurg22RUmre05g8CjpfdAHzOMv1o0MnNMZWiTBA7QI5RzO4MV1+oOOpUeHoWYeXTLBn1KAsT4XGbx29zpc8C40Hb1Vu5/1i47EV1BhxVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718041931; c=relaxed/simple;
	bh=v44YU+l8fDTIyQ/px7h3zXXND4kIzPFteQ4qkB7IQ/0=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=gkX1hva3joHaVJwgEX1dkNMfOxI3HwLkubjw00KpcnIUJXjUMbKwX7QGeyxEmcGQMskdW26F70SLRMqbvTDjEX15n4JCwBzKPCvbaL9zEH8kRlqrET7ut0PctmRd18f1Gsiuxz5lAmFwbNtPmxchSwakR2Qk/sAs9/DeTkpOZjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com; spf=pass smtp.mailfrom=jrtc27.com; dkim=pass (2048-bit key) header.d=jrtc27.com header.i=@jrtc27.com header.b=Xkfjvm60; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jrtc27.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jrtc27.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52bbdc237f0so283336e87.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 10:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1718041928; x=1718646728; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FWkRgN4oixQz2NDH8nagYU0C/GTWILi37MSJzJ0VQmc=;
        b=Xkfjvm60rSiK5MZ6kKgSBTLIF3o1sgDk9J0ffR3u0kpgAQqAjxxTebLcryI2mi70Em
         LMsY9/q7l0vERkJrql17vk4jA/Rqyw+YaMJyCo+8psQHrYYX4xeA2O009bUpATJFkjRv
         H+nVIUyl4hsVPg+TjxlXewpiPI8XIUxZ8ddR0f7qzdaHKbOXjyblh2rsNCoSyzHssT9X
         QYnNc6MSi2HAsR3HPmL5iD7Uhrw+6CNEXnHLiC0CTtXM/ROxQ+CxN73PDUyDfjiv0mhu
         VsbXst/qCNQMxzylu7qiBbTyPn7j2Gps0eVnZiqag+Cp3tHP+VxMShjBzn61qvX5BVjH
         hdhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718041928; x=1718646728;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FWkRgN4oixQz2NDH8nagYU0C/GTWILi37MSJzJ0VQmc=;
        b=mIrSHGRCLiiFCe1rjwSL3TrnZ2+NUCIsShj627flYUA05dAY3xNYW/r0/L1TApFvY7
         WZzoVkqFcJVrkI952ZFo7Eh2a77tSKwyllCnnRmJv9799mDTQz1rOtFQGv8+cAELeyRI
         OFEXGYoPA7dwgJtbg+1mZAFuIy1ZrLf7UcTMugO9WZSYYE4xqePDIet46X3O7O1iRPrz
         Vjsam+sqryNor0toZeFApzoetP0uK3fJnVmpAGMfawE7psccDo4I6n6kS33u1yQ4UiJu
         xkBZ8d/Nr01h5WqvjDQlaThYj74SCKKnEe1haC0wfruXi1jAEhXv+H8rXQVO9pmIMTLQ
         KFAg==
X-Forwarded-Encrypted: i=1; AJvYcCWy3nhtTWwyFWSp9uwK6pZz+zkBBYRM5AHmOCqvrltnLXJq5EsF9q2kHBe+b7uxu/4yOiavznzN5yeOjhSOhABfrctmjlJe0MEOeA==
X-Gm-Message-State: AOJu0Yzr7EAvQRsCCgWh0TP4MLFlkoMvduPJ7CmVPmUNdbFaGYknQBbo
	Q8p0y6SlW2xQeVE2K8SFiM++jZ8p866WWm6P+XzPfcX8P7p6v/bvyW7Ax49uV98=
X-Google-Smtp-Source: AGHT+IH5OdYzcnTJ6D+zS8aIAAaJJTXjxs59RqwCSCJ2ph2wWmR2x/JtfntC1ryqtH5pn476yLkmFg==
X-Received: by 2002:a05:6512:3baa:b0:52c:8ea3:1aea with SMTP id 2adb3069b0e04-52c8ea31d06mr2106714e87.34.1718041927588;
        Mon, 10 Jun 2024 10:52:07 -0700 (PDT)
Received: from smtpclient.apple ([131.111.5.201])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35f2598ac1esm2762915f8f.93.2024.06.10.10.52.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Jun 2024 10:52:07 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: Re: [PATCH 05/13] riscv: vector: Use vlenb from DT for thead
From: Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <20240609-xtheadvector-v1-5-3fe591d7f109@rivosinc.com>
Date: Mon, 10 Jun 2024 18:51:56 +0100
Cc: Conor Dooley <conor@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Jisheng Zhang <jszhang@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <shuah@kernel.org>,
 Guo Ren <guoren@kernel.org>,
 Evan Green <evan@rivosinc.com>,
 Andy Chiu <andy.chiu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-sunxi@lists.linux.dev,
 linux-doc@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <0944414F-321F-4159-AB85-C4B66AE9550B@jrtc27.com>
References: <20240609-xtheadvector-v1-0-3fe591d7f109@rivosinc.com>
 <20240609-xtheadvector-v1-5-3fe591d7f109@rivosinc.com>
To: Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: Apple Mail (2.3774.500.171.1.1)

On 10 Jun 2024, at 05:45, Charlie Jenkins <charlie@rivosinc.com> wrote:
>=20
> If thead,vlenb is provided in the device tree, prefer that over =
reading
> the vlenb csr.
>=20
> Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> ---
> arch/riscv/include/asm/cpufeature.h |  2 ++
> arch/riscv/kernel/cpufeature.c      | 48 =
+++++++++++++++++++++++++++++++++++++
> arch/riscv/kernel/vector.c          | 12 +++++++++-
> 3 files changed, 61 insertions(+), 1 deletion(-)
>=20
> diff --git a/arch/riscv/include/asm/cpufeature.h =
b/arch/riscv/include/asm/cpufeature.h
> index b029ca72cebc..e0a3164c7a06 100644
> --- a/arch/riscv/include/asm/cpufeature.h
> +++ b/arch/riscv/include/asm/cpufeature.h
> @@ -31,6 +31,8 @@ DECLARE_PER_CPU(struct riscv_cpuinfo, =
riscv_cpuinfo);
> /* Per-cpu ISA extensions. */
> extern struct riscv_isainfo hart_isa[NR_CPUS];
>=20
> +extern u32 thead_vlenb_of;
> +
> void riscv_user_isa_enable(void);
>=20
> #define _RISCV_ISA_EXT_DATA(_name, _id, _subset_exts, =
_subset_exts_size) { \
> diff --git a/arch/riscv/kernel/cpufeature.c =
b/arch/riscv/kernel/cpufeature.c
> index 2107c59575dd..0c01f33f2348 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -37,6 +37,8 @@ static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) =
__read_mostly;
> /* Per-cpu ISA extensions. */
> struct riscv_isainfo hart_isa[NR_CPUS];
>=20
> +u32 thead_vlenb_of;
> +
> /**
>  * riscv_isa_extension_base() - Get base extension word
>  *
> @@ -625,6 +627,46 @@ static void __init riscv_fill_vendor_ext_list(int =
cpu)
> }
> }
>=20
> +static int has_thead_homogeneous_vlenb(void)
> +{
> + int cpu;
> + u32 prev_vlenb =3D 0;
> + u32 vlenb;
> +
> + /* Ignore vlenb if vector is not enabled in the kernel */
> + if (!IS_ENABLED(CONFIG_RISCV_ISA_V))

It=E2=80=99s not V though. You probably want to split out =E2=80=9Cvector=E2=
=80=9D from =E2=80=9CV=E2=80=9D in
Kconfig land. Most places want the former, I assume, but some want the
latter.

Jess

> + return 0;
> +
> + for_each_possible_cpu(cpu) {
> + struct device_node *cpu_node;
> +
> + cpu_node =3D of_cpu_device_node_get(cpu);
> + if (!cpu_node) {
> + pr_warn("Unable to find cpu node\n");
> + return -ENOENT;
> + }
> +
> + if (of_property_read_u32(cpu_node, "thead,vlenb", &vlenb)) {
> + of_node_put(cpu_node);
> +
> + if (prev_vlenb)
> + return -ENOENT;
> + continue;
> + }
> +
> + if (prev_vlenb && vlenb !=3D prev_vlenb) {
> + of_node_put(cpu_node);
> + return -ENOENT;
> + }
> +
> + prev_vlenb =3D vlenb;
> + of_node_put(cpu_node);
> + }
> +
> + thead_vlenb_of =3D vlenb;
> + return 0;
> +}
> +
> static int __init riscv_fill_hwcap_from_ext_list(unsigned long =
*isa2hwcap)
> {
> unsigned int cpu;
> @@ -689,6 +731,12 @@ static int __init =
riscv_fill_hwcap_from_ext_list(unsigned long *isa2hwcap)
> riscv_fill_vendor_ext_list(cpu);
> }
>=20
> + if (riscv_isa_vendor_extension_available(THEAD_VENDOR_ID, =
XTHEADVECTOR) &&
> +    has_thead_homogeneous_vlenb() < 0) {
> + pr_warn("Unsupported heterogeneous vlenb detected, vector extension =
disabled.\n");
> + elf_hwcap &=3D ~COMPAT_HWCAP_ISA_V;
> + }
> +
> if (bitmap_empty(riscv_isa, RISCV_ISA_EXT_MAX))
> return -ENOENT;
>=20
> diff --git a/arch/riscv/kernel/vector.c b/arch/riscv/kernel/vector.c
> index 6727d1d3b8f2..3ba2f2432483 100644
> --- a/arch/riscv/kernel/vector.c
> +++ b/arch/riscv/kernel/vector.c
> @@ -33,7 +33,17 @@ int riscv_v_setup_vsize(void)
> {
> unsigned long this_vsize;
>=20
> - /* There are 32 vector registers with vlenb length. */
> + /*
> + * There are 32 vector registers with vlenb length.
> + *
> + * If the thead,vlenb property was provided by the firmware, use that
> + * instead of probing the CSRs.
> + */
> + if (thead_vlenb_of) {
> + this_vsize =3D thead_vlenb_of * 32;
> + return 0;
> + }
> +
> riscv_v_enable();
> this_vsize =3D csr_read(CSR_VLENB) * 32;
> riscv_v_disable();
>=20
> --=20
> 2.44.0
>=20
>=20
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


