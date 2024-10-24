Return-Path: <devicetree+bounces-115359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D7C9AF28B
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 21:22:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCED828B058
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 19:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CB2C2170D8;
	Thu, 24 Oct 2024 19:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="lA5AKoUJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2542141CB
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 19:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729797427; cv=none; b=PcMW9fFtley/JHDIuq9mILTHxFBC9Btd1k22v3+JG1uRjrTXUemUKnLm+qHre497VJljJ1pL6CVlRREy1QH7E8jhIwDLm1VF4oX5EKs38taOinELNeafsESIjVe6uj21npGkUlRrQcMZb4sSC4M22abqXB4FAXvcRkJNOBuGAyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729797427; c=relaxed/simple;
	bh=r2894LsRaL5cMjTp9c/aiq8WNR9qa3a0tHFbx9n/VDw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LuPI64S6zmo2TMITYMqXTJ1Ynt0LEJtJJwKp+WSjg7P9uZQGYWSmd2TXIEE45yIBuE1AiIo/EHr0JwjTToKuKdxEYi0fV2gIoa57fmN1lwnUFWqNacUcBbr4QSb5pYaOermppzhp++M2NOzkAkblBl7vEEI2zjNnpo2cusNQrIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=lA5AKoUJ; arc=none smtp.client-ip=209.85.166.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-3a39f73a2c7so5668505ab.0
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 12:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1729797423; x=1730402223; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aMVuNP7DptisRZKMAE62XcZxOQ0ITSLxzIbBe9rphWg=;
        b=lA5AKoUJX5NIwwmgwcPO0LlAnXNw+nDr5zN62GyzVprCGtCgDWXcbL3wbZKSmd/cKV
         q2tkl2+WVcFz036R8T2JRNiF0UTJJy+n5Mvbe9+HwpJCpIogtQuHGpNUcl17ct5wRC+b
         q78WEjVrXTskIjfLoqRXO6mn+aGGaQRckOft+v7EXhfs4hO7youWj1ySdz7r0bMyQ1x6
         3aHrdfL7wgFFuc6ng37zi9seTtXpUdckqOCFGHjDe5kbErGaXluSWILmwojRuMN2z18E
         N9GcNvBFxFa7W6lczd6JavYcSyxkBkKEK8GzFWAgXzfb4O28HsugSwfaH0XnL74SxTEU
         LNSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729797423; x=1730402223;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aMVuNP7DptisRZKMAE62XcZxOQ0ITSLxzIbBe9rphWg=;
        b=WRaMkCp7Z/3hb9d1iuyGTMiTx2zEG2WtjWW5sC4yGGVKWDtyXad9Wt4VEYtf2uwvC4
         T0hEn/CLxMeMPWJ3za1c6EFuC/gg+mMLRGGeFxb8FMHunRxkpVZHSKXmz98PniPLFDZM
         5Ey2xFYBnfLCM5/jbdpwOYN9XVho8EJSJKtDxQ5XDUfBnB9xckiogcr4mIGzSbe9Ejkz
         nC0cRQbXJ7NgkhvRZ8IeW2z0VufGDDwZpxEXQ1ZyHtw0bc7sWSyA0I6NDXesWJXwdlLl
         ugFoTcXMjm6RjEsA37alcD0649QAunbOsalslqAg9Td/5hb5nx2nT6xEyi14tOGDaEzi
         XN/A==
X-Forwarded-Encrypted: i=1; AJvYcCVSH0tImsLz2/lDflyiL+tVFOJB1Nn2RJheFxtIU6fa2ODoCcw+O33d/Tuq/IRi3M/mSSehnLf7mlVC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy89tbjlSENujrCvHRrOUI/j2wAHItISJx9MJz9rglAIoR85Zqy
	YT/tOj44iFvePCGgYurYOZcz/MidC6GYlpyDpT+zXuJoltds7Fqjgs88lSxFu0/s86I+czeQNl5
	L2DJi6+E1OSLktCazNQQaLEIHI01+aLley51JMQ==
X-Google-Smtp-Source: AGHT+IFZzEb2zN7h96lApR8DYauv53XlH5oPpoX1QtB4zj0x/HOggQdCeZlKWS+cP9VVlhcXp5Qae/4W4hrCmVnyZps=
X-Received: by 2002:a05:6e02:1564:b0:3a0:c15f:7577 with SMTP id
 e9e14a558f8ab-3a4d5945f99mr81465345ab.9.1729797423093; Thu, 24 Oct 2024
 12:17:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240927-dev-maxh-svukte-rebase-2-v2-0-9afe57c33aee@sifive.com> <20240927-dev-maxh-svukte-rebase-2-v2-3-9afe57c33aee@sifive.com>
In-Reply-To: <20240927-dev-maxh-svukte-rebase-2-v2-3-9afe57c33aee@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 25 Oct 2024 00:46:51 +0530
Message-ID: <CAAhSdy0ncLTAjEE1s-GWL95sscxwQFsKn1rXyA1_VVfk1bQBiw@mail.gmail.com>
Subject: Re: [PATCH RFC v2 3/3] riscv: KVM: Add Svukte extension support for Guest/VM
To: Max Hsu <max.hsu@sifive.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@sifive.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, Samuel Holland <samuel.holland@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 27, 2024 at 7:12=E2=80=AFPM Max Hsu <max.hsu@sifive.com> wrote:
>
> Add KVM ISA extension ONE_REG interface to allow VMM tools to
> detect and enable Svukte extension for Guest/VM.
>
> Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> Signed-off-by: Max Hsu <max.hsu@sifive.com>
> ---
>  arch/riscv/include/uapi/asm/kvm.h | 1 +
>  arch/riscv/kvm/vcpu_onereg.c      | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/=
asm/kvm.h
> index e97db3296456e19f79ca02e4c4f70ae1b4abb48b..41b466b7ffaec421e8389d3f5=
b178580091a2c98 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -175,6 +175,7 @@ enum KVM_RISCV_ISA_EXT_ID {
>         KVM_RISCV_ISA_EXT_ZCF,
>         KVM_RISCV_ISA_EXT_ZCMOP,
>         KVM_RISCV_ISA_EXT_ZAWRS,
> +       KVM_RISCV_ISA_EXT_SVUKTE,
>         KVM_RISCV_ISA_EXT_MAX,
>  };
>
> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
> index b319c4c13c54ce22d2a7552f4c9f256a0c50780e..67237d6e53882a9fcd2cf265a=
a1704f25cc4a701 100644
> --- a/arch/riscv/kvm/vcpu_onereg.c
> +++ b/arch/riscv/kvm/vcpu_onereg.c
> @@ -41,6 +41,7 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
>         KVM_ISA_EXT_ARR(SVINVAL),
>         KVM_ISA_EXT_ARR(SVNAPOT),
>         KVM_ISA_EXT_ARR(SVPBMT),
> +       KVM_ISA_EXT_ARR(SVUKTE),
>         KVM_ISA_EXT_ARR(ZACAS),
>         KVM_ISA_EXT_ARR(ZAWRS),
>         KVM_ISA_EXT_ARR(ZBA),

The KVM_RISCV_ISA_EXT_SVUKTE should be added to the
switch-case in kvm_riscv_vcpu_isa_disable_allowed() because
hypervisor seems to have no way to disable Svukte for the Guest
when it's available on the Host.

Regards,
Anup

