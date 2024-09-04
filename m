Return-Path: <devicetree+bounces-99993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E8D96BBD3
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:17:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EACF71C2039E
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C82331D7E5B;
	Wed,  4 Sep 2024 12:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="dYJdOnWT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6CCD1D799B
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 12:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725452259; cv=none; b=R1WwETGVgKUZ1Loc/KOY0N3W3NBf718uoJihAULA3RF1czyQq+svcmb4olMRfFk98rj4oi4moedH7RXiU0k1kwNZp2V1U1KqiEq6amyiMf+SZvjHz8plpf8zeCgUT/LwipOZjU3bdTHVhGcssNyYeNRZ5W2ImwVMTjPg6zZB9SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725452259; c=relaxed/simple;
	bh=qYsm8565woFnw1fHRK+sts6GjAK52KGTUSLhgkbr1Ts=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TXFz15XDBog2V09twsjLqY/SmJFxqN8uPzE/79TDo7y44J766P1CFJ7ckQfUq2aSZPCNPYt0+qPSawF0bbk3QRALERJSBhlk5H4TkVJzA+gjs86MUAnihHlprpGS0aFykpnarFfXPt65QrYWH5dQNpxDfl22o3vdvfn1M7KiUL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=dYJdOnWT; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53346132365so8018122e87.1
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 05:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1725452256; x=1726057056; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jlAAsB7SoUZZgOYwhXzTNmhBITwqQOW3TbtLYgYnb60=;
        b=dYJdOnWT4olSrGBwJXdnsjBFgU4j5y5nfHaI1FRevh5VXPaTfCDolFjtNFJSuk9pCW
         M2LqglnYgSeyywQyKuUn1R/+jgAnAyBniKVZuNy7Q9n3aBXGA+PiC0NZxbYLKtmPtrBs
         KQrT7xn8GRIlB7cF8zg57dRBIYBdLKaQYIlfgs3X7jKz/kSeYX9l6jFgk9nMlRi9hvvv
         H+dwS6ha2pfqCsgyhOoew5HQtsY7NIYB9cpFuh2xYN92oeAE3WDR1uc8CuVWs3fST5hE
         sX9UqsRKkFixlAViL+HMGzLjLVpxBdRaJDCFu9yBeM6XjEMnIoxMbzjx/RN8nV2PbAoC
         m/UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725452256; x=1726057056;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jlAAsB7SoUZZgOYwhXzTNmhBITwqQOW3TbtLYgYnb60=;
        b=C+vfD9MsTpXEhr9DKK6z+/aSCJSRBpY2N1WOGRMN7AuoHzszL21leYjz/tkai1X2xy
         ZmDOMTz/1+NZbLzuOmFTT6w5oONHph2Kb7Sci4/EcaFveDqNqh6g7/strhc+TFnnN0ez
         t1Th/AureykMqdXBAJ/4ci8fc+nmCogZYP1YoQ+oyYlWW2+ba5frxw9ye2BffPlSf07p
         HaNt30c6e39WpMn/5h6FH+eBWKL+EePkbbxB61paoDj6jCGREQHsWUcVs51lTERNd/7o
         +bwZYmdb+6hO/zMHL3Wf9h8OY0AvmU732ULYidmtjLaUQ7t+Kh0XmhujksHB8kaDN8x5
         vpLA==
X-Forwarded-Encrypted: i=1; AJvYcCX8EJUxfa3hiku2xpzHp4i/35U3pOeNemTylzwOuzwbDdmPt1CixtIb/BTd1z/5xxmaZEfCr6VmOep3@vger.kernel.org
X-Gm-Message-State: AOJu0YzK2Kj/eToCrOEBMOZKovEahgCI4kiZhR0E3y8wjxxEFYnciHHL
	ebRXgbEAZsHxE4weFcbQs3duSr8DcNzG1BbQ0bV+UWzVCfsB2Y3EfKiY96HmHEa2UheYGN6fcKn
	cB3xdqAbjGA3e3uEtl3HnGHX46kt4UF/hbGy0xw==
X-Google-Smtp-Source: AGHT+IHONA2kh/9cuUHglAMjIqImf7K09nF2SZfCubD5ZSJYCibfpv2CbmuIEnueZFBXb2pJWbIKdkcALwOvnjG7oMU=
X-Received: by 2002:a05:6512:2211:b0:534:3cdc:dbef with SMTP id
 2adb3069b0e04-53546b8d6d5mr11049948e87.43.1725452254963; Wed, 04 Sep 2024
 05:17:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240829010151.2813377-1-samuel.holland@sifive.com> <20240829010151.2813377-10-samuel.holland@sifive.com>
In-Reply-To: <20240829010151.2813377-10-samuel.holland@sifive.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 4 Sep 2024 17:47:24 +0530
Message-ID: <CAK9=C2WjraWjuQCeU2Y4Jhr-gKkOcP42Sza7wVp0FgeGaD923g@mail.gmail.com>
Subject: Re: [PATCH v4 09/10] RISC-V: KVM: Allow Smnpm and Ssnpm extensions
 for guests
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, 
	linux-kernel@vger.kernel.org, Anup Patel <anup@brainfault.org>, 
	Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com, 
	Atish Patra <atishp@atishpatra.org>, Evgenii Stepanov <eugenis@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2024 at 6:32=E2=80=AFAM Samuel Holland
<samuel.holland@sifive.com> wrote:
>
> The interface for controlling pointer masking in VS-mode is henvcfg.PMM,
> which is part of the Ssnpm extension, even though pointer masking in
> HS-mode is provided by the Smnpm extension. As a result, emulating Smnpm
> in the guest requires (only) Ssnpm on the host.
>
> Since the guest configures Smnpm through the SBI Firmware Features
> interface, the extension can be disabled by failing the SBI call. Ssnpm
> cannot be disabled without intercepting writes to the senvcfg CSR.
>
> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> ---
>
> (no changes since v2)
>
> Changes in v2:
>  - New patch for v2
>
>  arch/riscv/include/uapi/asm/kvm.h | 2 ++
>  arch/riscv/kvm/vcpu_onereg.c      | 3 +++
>  2 files changed, 5 insertions(+)
>
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/=
asm/kvm.h
> index e97db3296456..4f24201376b1 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -175,6 +175,8 @@ enum KVM_RISCV_ISA_EXT_ID {
>         KVM_RISCV_ISA_EXT_ZCF,
>         KVM_RISCV_ISA_EXT_ZCMOP,
>         KVM_RISCV_ISA_EXT_ZAWRS,
> +       KVM_RISCV_ISA_EXT_SMNPM,
> +       KVM_RISCV_ISA_EXT_SSNPM,
>         KVM_RISCV_ISA_EXT_MAX,
>  };
>
> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
> index b319c4c13c54..6f833ec2344a 100644
> --- a/arch/riscv/kvm/vcpu_onereg.c
> +++ b/arch/riscv/kvm/vcpu_onereg.c
> @@ -34,9 +34,11 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
>         [KVM_RISCV_ISA_EXT_M] =3D RISCV_ISA_EXT_m,
>         [KVM_RISCV_ISA_EXT_V] =3D RISCV_ISA_EXT_v,
>         /* Multi letter extensions (alphabetically sorted) */
> +       [KVM_RISCV_ISA_EXT_SMNPM] =3D RISCV_ISA_EXT_SSNPM,

Why not use KVM_ISA_EXT_ARR() macro here ?

>         KVM_ISA_EXT_ARR(SMSTATEEN),
>         KVM_ISA_EXT_ARR(SSAIA),
>         KVM_ISA_EXT_ARR(SSCOFPMF),
> +       KVM_ISA_EXT_ARR(SSNPM),
>         KVM_ISA_EXT_ARR(SSTC),
>         KVM_ISA_EXT_ARR(SVINVAL),
>         KVM_ISA_EXT_ARR(SVNAPOT),
> @@ -129,6 +131,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsign=
ed long ext)
>         case KVM_RISCV_ISA_EXT_M:
>         /* There is not architectural config bit to disable sscofpmf comp=
letely */
>         case KVM_RISCV_ISA_EXT_SSCOFPMF:
> +       case KVM_RISCV_ISA_EXT_SSNPM:

Why not add KVM_RISCV_ISA_EXT_SMNPM here ?

Disabling Smnpm from KVM user space is very different from
disabling Smnpm from Guest using SBI FWFT extension.

The KVM user space should always add Smnpm in the
Guest ISA string whenever the Host ISA string has it.

The Guest must explicitly use SBI FWFT to enable
Smnpm only after it sees Smnpm in ISA string.

>         case KVM_RISCV_ISA_EXT_SSTC:
>         case KVM_RISCV_ISA_EXT_SVINVAL:
>         case KVM_RISCV_ISA_EXT_SVNAPOT:
> --
> 2.45.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

Regards,
Anup

