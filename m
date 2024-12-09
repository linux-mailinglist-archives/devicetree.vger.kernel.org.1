Return-Path: <devicetree+bounces-128480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 642D59E8D0C
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 09:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 45B3E18851BF
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 08:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CD7221516A;
	Mon,  9 Dec 2024 08:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="PTjMWAR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D4A7215078
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 08:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733731807; cv=none; b=ONYhNLBMtQD+fPhNnW75TAV89pd+hX0lZ88KUHdydqueBWdGLJzlk4LQVS+/9TyafbqnygGe4b7wTAxt/zh1bqw6wtQHr9sruXu4QtCNHHP1lgcMty5idPFjCR7rbtizo/JY+K/7viTKgFc6jM/B0+kahtv0yOOPKywBQsLrfnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733731807; c=relaxed/simple;
	bh=e9T1tqdjsB2hx8LoVxJobchZWtItWdr11EkDA8I/jmk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qGsnP0dSQ00yjWEoE14M/I5UhiiDRbdosYUl9PHhLJFhhHVMx2uhCWJ0oBvwtp7tzcmsc/8r2U2tzVs+L1TIdnxr9hlXvL7ofM9GtKSHUpJ/v0n6LYCOJTXqFdDu2b6mf/UFPua5kJj/ms1YrZcuD/mAui1ZzgaL/eKlC3VAjaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=PTjMWAR9; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5cf6f367f97so5857707a12.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 00:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1733731804; x=1734336604; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WOdGE0llx04cHDIB0WcrC/Ji09jqKKAXDGd/eNwLnL0=;
        b=PTjMWAR9MSWkih4EngALJqbP7DguEmG0EXZ5lgpO6c+tk5P5xAPjnRmF0/4f/kW0fW
         Oee7kt3ZExZhPblbhivejZtnZ0LiMv3u8l3umyZsWUCBC4PPo1k1u8hW3y5nO5w7YT/h
         x5RbOiDliHvBjGOUvaO5sfB8ccuqKXCK96sFfDx5Tyb3XIAw4GydVCU6m408ag58hKtA
         b1Pho6ugXRa8jDB1MWb2lXb6Ud6G0PUrexDzuhRxAmAPhskH5ha+xOD+y2i1f6+OisZb
         NWa+jaB4DxLJGv0MQ2R9VXqZ+onbCPYMm2D+gNt3kj4zAzRj2R90ozoAL1foGviyQAT9
         aHbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733731804; x=1734336604;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WOdGE0llx04cHDIB0WcrC/Ji09jqKKAXDGd/eNwLnL0=;
        b=YUGodTNJezEUkSks6OZ5TVnZk42k/0s0k7kHC2leX1Y4N7b5/6t3jXBUZ08QGDR7gO
         egzgJpMSPp8kuzMrhIHPa21i/aTD7nwsQnZepYf4PhL14BdmjWUYu6h3LUShu6a/qeRL
         JtBp3yiK+kEwcl8BYbW81l7eCI7eEmodNnfn+zcYiZpTQGZf3F/vYBFx3uGALLynjoRF
         HS1BmvUU/7q4WXE4KZ5rrw4rXG2RJgkUMTVcSRAUh0K5vB4IZLyhBS9A28WSte7UCXkR
         lcHpzZJ2sAAq4zXZJsEHOJRG7SmcLGrOeBLR+223WSRaXuo/0JUTOeAwsKOTmJ8eHgLF
         zPgw==
X-Forwarded-Encrypted: i=1; AJvYcCX4ehTLNQsj+jWG7DYY2F/j+FRG8fAKOZD8tSrJXSId1m1LNgMxLg75oBPBU2DdihUZ79yzSbvKLNyO@vger.kernel.org
X-Gm-Message-State: AOJu0YyltFJlkZzDzQhSuexsfl6hFYmPFeClrPUj/y4mUk4FxE1IOeZd
	C5htZMpnbyap1jqlk4CNTijfW/ilL4/LhMSzXj/vg7OtGS4qbO/EwNl4s9enXFww157I8vxh6GT
	7VBo0Soz9HuFFDKh4iuSBTvRQmtk89BI/norr0w==
X-Gm-Gg: ASbGncsB5SETIq52Ylg7d+GqyNNIHXkVTPABpvf0ccuss+uIsnl5OfX0Dd+M/AUcPlN
	/Dx2tzcw7uZ407nzrTdkL/4jgAjsPCz9RexUc
X-Google-Smtp-Source: AGHT+IGNck5i4vPd2OxR76eBBx6zUGhGMnAu9BdeT9Vh0NpmJctj2kl8Ojqzeyx0WmJshY5K/xlMG+5FLizyFcfrOBI=
X-Received: by 2002:a05:6402:520d:b0:5d2:723c:a577 with SMTP id
 4fb4d7f45d1cf-5d3be6d07famr11938931a12.14.1733731803826; Mon, 09 Dec 2024
 00:10:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241120-dev-maxh-svukte-v3-v3-0-1e533d41ae15@sifive.com>
 <20241120-dev-maxh-svukte-v3-v3-3-1e533d41ae15@sifive.com> <20241125-7cfad4185ec1a66fa08ff0f0@orel>
In-Reply-To: <20241125-7cfad4185ec1a66fa08ff0f0@orel>
From: Max Hsu <max.hsu@sifive.com>
Date: Mon, 9 Dec 2024 16:09:51 +0800
Message-ID: <CAHibDyztkj3vFmZ7Gg=0QFoauO7pdm4+c16y8hQiaTkCQPc=LQ@mail.gmail.com>
Subject: Re: [PATCH RFC v3 3/3] riscv: KVM: Add Svukte extension support for Guest/VM
To: Andrew Jones <ajones@ventanamicro.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>, 
	Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, Samuel Holland <samuel.holland@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Okay, I understand it now, since the Guest OS may utilize the Svukte
extension simply by setting the senvcfg.UKTE without any trap.
In the view of VMM, the Svukte extension should be always presented.

I'll add the extra entry in the kvm_riscv_vcpu_isa_disable_allowed()
for the v4 patches.

Thanks, Anup, Paul, and Andrew for the patience and detailed
explanation.

Best,
Max Hsu

On Mon, Nov 25, 2024 at 8:08=E2=80=AFPM Andrew Jones <ajones@ventanamicro.c=
om> wrote:
>
> On Wed, Nov 20, 2024 at 10:09:34PM +0800, Max Hsu wrote:
> > Add KVM_RISCV_ISA_EXT_SVUKTE for VMM to detect the enablement
> > or disablement the Svukte extension for Guest/VM
> >
> > Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> > Signed-off-by: Max Hsu <max.hsu@sifive.com>
> > ---
> >  arch/riscv/include/uapi/asm/kvm.h | 1 +
> >  arch/riscv/kvm/vcpu_onereg.c      | 1 +
> >  2 files changed, 2 insertions(+)
> >
> > diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uap=
i/asm/kvm.h
> > index 4f24201376b17215315cf1fb8888d0a562dc76ac..158f9253658c4c28a533b2b=
da179fb48bf41e1fc 100644
> > --- a/arch/riscv/include/uapi/asm/kvm.h
> > +++ b/arch/riscv/include/uapi/asm/kvm.h
> > @@ -177,6 +177,7 @@ enum KVM_RISCV_ISA_EXT_ID {
> >       KVM_RISCV_ISA_EXT_ZAWRS,
> >       KVM_RISCV_ISA_EXT_SMNPM,
> >       KVM_RISCV_ISA_EXT_SSNPM,
> > +     KVM_RISCV_ISA_EXT_SVUKTE,
> >       KVM_RISCV_ISA_EXT_MAX,
> >  };
> >
> > diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.=
c
> > index 5b68490ad9b75fef6a18289d8c5cf9291594e01e..4c3a77cdeed0956e21e53d1=
ab4e948a170ac5c5c 100644
> > --- a/arch/riscv/kvm/vcpu_onereg.c
> > +++ b/arch/riscv/kvm/vcpu_onereg.c
> > @@ -43,6 +43,7 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
> >       KVM_ISA_EXT_ARR(SVINVAL),
> >       KVM_ISA_EXT_ARR(SVNAPOT),
> >       KVM_ISA_EXT_ARR(SVPBMT),
> > +     KVM_ISA_EXT_ARR(SVUKTE),
> >       KVM_ISA_EXT_ARR(ZACAS),
> >       KVM_ISA_EXT_ARR(ZAWRS),
> >       KVM_ISA_EXT_ARR(ZBA),
> >
> > --
> > 2.43.2
>
> Anup raised the missing entry in kvm_riscv_vcpu_isa_disable_allowed() in
> the last review. An additional paragraph was added to the cover letter fo=
r
> this review, but I think there's still a misunderstanding. If the guest
> can always use the extension (whether it's advertised in its ISA string
> or not), then that means it cannot be disabled from the perspective of
> the VMM. The only ISA extensions which may be disabled are the ones that
> trap on their use, allowing KVM to emulate responses which a physical har=
t
> without the extension would produce.
>
> Thanks,
> drew

