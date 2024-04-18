Return-Path: <devicetree+bounces-60584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5048A9B21
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 15:21:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28875284D1D
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 13:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEF37161307;
	Thu, 18 Apr 2024 13:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="gUTmnMoj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFB815F323
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 13:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713446491; cv=none; b=WfGo5ZlPvlcjpSb/mO5wWlNDfWSF6EqUwTBcQoC645pbXdhxHaM61jT/N+wwm9iunYJi3qLhgnMXDwV+AISS9h2MI5QVZfff4am0CU5nr61HjXoS7V0EL2v7baaurMifKgxzKC12D76pZGXpxiv196cY+cikdkKLk1zPmx3xI3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713446491; c=relaxed/simple;
	bh=xCkZWZsd5MbyA9NOc8fkXFwd6tpKTJgqXPaccDVFJJU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fpqa3v6lxy3fz0rl/HZBsf3htsc9aatN8RFVGrs/bHO0uzzIoh+aVtn/7K42Y2NTW2cTWquvvLRkcBf+/LBmhd8mMwFUcUiYvZRc/y6N1G8Di5cOIY1aKLGdTNZdgIGeAhKh9GQOc0swSnQZ6Lty0Z1xUMiwDCyX7UU+mPvwEDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=gUTmnMoj; arc=none smtp.client-ip=209.85.166.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-36b30909b01so3067135ab.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 06:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1713446488; x=1714051288; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JO0ozNsqTpxBsROn3x3SanAr//Rutf3lUig74CS14aw=;
        b=gUTmnMojQcAZ+zR440uQFQcsuAARj0DB1VvGNV3zfZfs6KmN/un01BR93KkxEVK86b
         Yy2I/YRMBjV0P065f6RFwCj+HAT2J8VWhJUkAdFDFu2LQ0S7M7AtUOD3Snw1yDt/C8Rl
         hVIUXUW5+JosBkUvozfCGSpFuL0tKjcg35iSDM44XTsv8Q5Dg1YJTYdaq8tK8Ph9GtbV
         ITw9lBGrsyEkmdf0s0lORQuHWvz6crD3QduRWDhDNdHivK/9RyyOE6Y3U6qvOq+5dGkM
         JEs0Bk9b6VwLGXavabelFkzHaS3ZEysoXLLvjhD8BpdOUVzgDKpr9uBUdohcudRZvX8Q
         Px3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713446488; x=1714051288;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JO0ozNsqTpxBsROn3x3SanAr//Rutf3lUig74CS14aw=;
        b=YJex6+5b/1aq85iQ+HYD0r+wHh2c1UPXYi1UVpYSG9Ok6UZ2zjNuNnVcsBj+n7HIm2
         aPcim/gs83j+lWExj+PW+rS97scjTKcedF0Zb7WQABaX8kBVLdqmjanJNCyTiONrhv3u
         7fYYmxi9+y71p76ZqUpDUx53uoGPhIg4s5vcFx2C6HGaYlWIilF2eQIPYRa0nCEo9+Ki
         aQC3COIdw4/9AudV9/DBWkEhvBGwtSIqmhOTV0vEjmQMVhOSI8u2bHCjsCbbR7AtxWIq
         iSS9jIZEELVkC7IBEYJlvDV1klrHH+wQ9Rxj98/paRHYAUOBfWPV5eqjba0BIxbfCqoL
         MSJw==
X-Forwarded-Encrypted: i=1; AJvYcCXoSjl3YbfpkGLphDqB3/KkugzCwY9ZkUHeOcrYbViz79gGJ1AtZkb8HDjBFoJtZSCN+BegdK8b8HPXUYg7+Lz0QjCe63wadpdtcQ==
X-Gm-Message-State: AOJu0YxPoR6Ee3qlwlosApUs/UtU2ILACgEu6sGKtc46GDESqjISww3C
	e2arJK5z8ahBaE0+DrfU0VGx8y4BpX40z9YGcwid3ca2HwnaaHYThcoatZLgf1ym0hrRMAxd1jJ
	QWnnEYYjgLOGg/+q0kxojy291KL3CwT8LIPOe0Q==
X-Google-Smtp-Source: AGHT+IFYxMvNR0jXCZIG1KPR1/WCDVRMgUDvpXntlv1WYC3zuUPdvb9LjVkJtYSDV5Al2WTKHOMIUCYgVBtJncbys6A=
X-Received: by 2002:a05:6e02:219c:b0:36a:3ef4:aa0a with SMTP id
 j28-20020a056e02219c00b0036a3ef4aa0amr3216818ila.24.1713446488311; Thu, 18
 Apr 2024 06:21:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240418124300.1387978-1-cleger@rivosinc.com> <20240418124300.1387978-12-cleger@rivosinc.com>
In-Reply-To: <20240418124300.1387978-12-cleger@rivosinc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 18 Apr 2024 18:51:16 +0530
Message-ID: <CAAhSdy3bjKQhRRFLhNtCGNG=f9cj=LHhr0sPWdeFFR9KpC3RVw@mail.gmail.com>
Subject: Re: [PATCH v2 11/12] RISC-V: KVM: Allow Zcmop extension for Guest/VM
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
> to detect and enable Zcmop extension for Guest/VM.
>
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>
Acked-by: Anup Patel <anup@brainfault.org>

Thanks,
Anup

> ---
>  arch/riscv/include/uapi/asm/kvm.h | 1 +
>  arch/riscv/kvm/vcpu_onereg.c      | 2 ++
>  2 files changed, 3 insertions(+)
>
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/=
asm/kvm.h
> index 57db3fea679f..0366389a0bae 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -172,6 +172,7 @@ enum KVM_RISCV_ISA_EXT_ID {
>         KVM_RISCV_ISA_EXT_ZCB,
>         KVM_RISCV_ISA_EXT_ZCD,
>         KVM_RISCV_ISA_EXT_ZCF,
> +       KVM_RISCV_ISA_EXT_ZCMOP,
>         KVM_RISCV_ISA_EXT_MAX,
>  };
>
> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
> index a2747a6dbdb6..77a0d337faeb 100644
> --- a/arch/riscv/kvm/vcpu_onereg.c
> +++ b/arch/riscv/kvm/vcpu_onereg.c
> @@ -52,6 +52,7 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
>         KVM_ISA_EXT_ARR(ZCB),
>         KVM_ISA_EXT_ARR(ZCD),
>         KVM_ISA_EXT_ARR(ZCF),
> +       KVM_ISA_EXT_ARR(ZCMOP),
>         KVM_ISA_EXT_ARR(ZFA),
>         KVM_ISA_EXT_ARR(ZFH),
>         KVM_ISA_EXT_ARR(ZFHMIN),
> @@ -136,6 +137,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsign=
ed long ext)
>         case KVM_RISCV_ISA_EXT_ZCB:
>         case KVM_RISCV_ISA_EXT_ZCD:
>         case KVM_RISCV_ISA_EXT_ZCF:
> +       case KVM_RISCV_ISA_EXT_ZCMOP:
>         case KVM_RISCV_ISA_EXT_ZFA:
>         case KVM_RISCV_ISA_EXT_ZFH:
>         case KVM_RISCV_ISA_EXT_ZFHMIN:
> --
> 2.43.0
>

