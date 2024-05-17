Return-Path: <devicetree+bounces-67547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 323768C892B
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 17:18:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0E0D2889BB
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 15:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A13BD12C7E1;
	Fri, 17 May 2024 15:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="GWSAlyKD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F83C12D74D
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 15:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715959087; cv=none; b=TiMxfZ89cp6RbDmQLS/c3+LeF2Pl9oUlEyPRsbCGsMXD3lr0FzOIa/0KBkmsfnjlcTZf+MMAL4paK4BpIVb+ei6KrlmLTRfohEErEXNTqokuPGJDbSRUMrHWHVnb8QSvaHQVHAY3oLQt6ApUemezehtcy0lQbl/afK+iyAeGUmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715959087; c=relaxed/simple;
	bh=VJJtaa3CR6YMvRWAqyg1KE5Ku5S+20oB3+0+lzQy9oI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WcOO8IGARSn2hPLcC1h4Lskbe3atqY03cnYkKZVCRF4hARszyQP1++6gqh9UL4FjnIBSOH5wLkkGUSro+lf9iJ52q8kaol+6qCD4eadVBr/SRk9+EuWovibz0E7VptHw2oYam1Bkn2Sdo1YEH2C0r/kUhrqZgZYhk1LZ1+bMaF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=GWSAlyKD; arc=none smtp.client-ip=209.85.166.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-36d93568a58so3070005ab.3
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 08:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1715959084; x=1716563884; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ef3MF8Rs0G3jit24HO3OWy+0DrrgzGDkN37Y+6PEB9I=;
        b=GWSAlyKDzSG/8Lva7AJJemLNxl1/rCKHYRbWzGVGo9u7VdJpzWumg1j6poS3CiCY+h
         Q/vYwL571bEeuIVHMbZUi7rZgeanWwpDfcNQqZWTvE8BU9jQA47+CZoZS3a6she498eT
         mmziej6OAzT0RMLi1XR6sWSe5ECSxo3POPkaFGDb0VkDutbZAxpa98GZ9dfmCG+oyGWA
         acVgxrrCmxIfOMfBd4ua52CwZ2R/XdZHnv+WOrH1xtKuXIIfUXWdR7Zc7tK13EwuXW28
         cEX4iyzGoB4JpcpEa2YQ2E1/cW9e/xsWDm0ki1JlmtvkF3n3j5rYpahRiKWC+usOR2HB
         OXeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715959084; x=1716563884;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ef3MF8Rs0G3jit24HO3OWy+0DrrgzGDkN37Y+6PEB9I=;
        b=bg4QPIhOD9BYlcSnGn9nTgI4OVx6HHFWJ0Ako1T26F0pP3jWYf/Z2MEDm1Kx5ZIBl5
         Os8ZXi59BhqtjhfTKLPms1R5kJ6de2CLoNtePTunHIv237htXU7oYxgowlm3VzddGq0K
         KaEVf67i7e140iVUWz9dN+PTIW5bwC9GIsY5kiCPbwPlM+jLQ8repJ2yQ0TLaU+cwFNI
         veUAfkjrhXFzlASKPAYCfrCWmg/r2R8rVCXuhdjpjMcs9ZB14LDpj8AWalDl69I5CxmI
         n9fo5533k+29EYLWm7sk01GT9RR5RQ9v+ZZR7dNow25ZBr5YktmTzLauT3GYKwDxWiCb
         hXcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbuyPiOhMCPjcpT1j7tKxjGautQOiw2UBGIPXqxjBaG76J9yf2T7RjPzVUMmDmFpLmr0nLigHfvMypJtujU7fn/u8iYIv5VWvS1w==
X-Gm-Message-State: AOJu0YyZLdCZdxHOC8+iwldAlLUA4fgoYT+Rr3J67BC1ifjjHS0AYv7X
	QFVwy3Y1JR/QNUFcfuSd1UyBvT0EgJFBSGez/caT5NM8LzHXwktKLFeC44xhJCBod9gDOcZnSAm
	HrQCDLQDyjjyrLP6pdpjBO+qkLZl7+zeNwf5GwA==
X-Google-Smtp-Source: AGHT+IHuY13zH4hhNjNUU8E5CU5OnLiqg38O1otrjb+/eoZzOjdRjWwMMh69eiDOSrh7CQUbUVho6c8rmZEAihhoEvk=
X-Received: by 2002:a05:6e02:1886:b0:36a:1725:e123 with SMTP id
 e9e14a558f8ab-36cc14913bfmr268024205ab.14.1715959084494; Fri, 17 May 2024
 08:18:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240517145302.971019-1-cleger@rivosinc.com> <20240517145302.971019-5-cleger@rivosinc.com>
In-Reply-To: <20240517145302.971019-5-cleger@rivosinc.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 17 May 2024 20:47:51 +0530
Message-ID: <CAAhSdy0Ft5KV5ABBPNjxhy71jY0ypF7S6vhrb7gfq892WQkv1w@mail.gmail.com>
Subject: Re: [PATCH v5 04/16] RISC-V: KVM: Allow Zimop extension for Guest/VM
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

On Fri, May 17, 2024 at 8:23=E2=80=AFPM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
osinc.com> wrote:
>
> Extend the KVM ISA extension ONE_REG interface to allow KVM user space
> to detect and enable Zimop extension for Guest/VM.
>
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>
Acked-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  arch/riscv/include/uapi/asm/kvm.h | 1 +
>  arch/riscv/kvm/vcpu_onereg.c      | 2 ++
>  2 files changed, 3 insertions(+)
>
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/=
asm/kvm.h
> index b1c503c2959c..35a12aa1953e 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -167,6 +167,7 @@ enum KVM_RISCV_ISA_EXT_ID {
>         KVM_RISCV_ISA_EXT_ZFA,
>         KVM_RISCV_ISA_EXT_ZTSO,
>         KVM_RISCV_ISA_EXT_ZACAS,
> +       KVM_RISCV_ISA_EXT_ZIMOP,
>         KVM_RISCV_ISA_EXT_MAX,
>  };
>
> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
> index f4a6124d25c9..c6ee763422f2 100644
> --- a/arch/riscv/kvm/vcpu_onereg.c
> +++ b/arch/riscv/kvm/vcpu_onereg.c
> @@ -60,6 +60,7 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
>         KVM_ISA_EXT_ARR(ZIHINTNTL),
>         KVM_ISA_EXT_ARR(ZIHINTPAUSE),
>         KVM_ISA_EXT_ARR(ZIHPM),
> +       KVM_ISA_EXT_ARR(ZIMOP),
>         KVM_ISA_EXT_ARR(ZKND),
>         KVM_ISA_EXT_ARR(ZKNE),
>         KVM_ISA_EXT_ARR(ZKNH),
> @@ -137,6 +138,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsign=
ed long ext)
>         case KVM_RISCV_ISA_EXT_ZIHINTNTL:
>         case KVM_RISCV_ISA_EXT_ZIHINTPAUSE:
>         case KVM_RISCV_ISA_EXT_ZIHPM:
> +       case KVM_RISCV_ISA_EXT_ZIMOP:
>         case KVM_RISCV_ISA_EXT_ZKND:
>         case KVM_RISCV_ISA_EXT_ZKNE:
>         case KVM_RISCV_ISA_EXT_ZKNH:
> --
> 2.43.0
>

