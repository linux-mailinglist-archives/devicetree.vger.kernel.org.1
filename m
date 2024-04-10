Return-Path: <devicetree+bounces-58072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0358A0234
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 23:35:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7098B1C21819
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 21:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F8FE184130;
	Wed, 10 Apr 2024 21:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="kJe1cU1i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87B0184111
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 21:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712784889; cv=none; b=H9CLh6hNpJKbO5JgQOUzhmtBX00d5OWx8PiHF49ADVBVQ5yMojSfY87ud0J6r3RAAdBDq4RDivUhZUl26cc7J4F+Jb37nOrE9tOmy20HiDfhsk47f3/oyRz1KRsU/XlEbPQbm5CIFbTLrgplQXWIxk1h/iocdcJOUZxh1SWRc18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712784889; c=relaxed/simple;
	bh=+Zl2pAaKAA2HzyDnhWshXv9VyS5payJIT/fbySA2d9A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fPDo9A2vxNvEnZwuuNpN9fBWr52YiQ0jKFGMdqNijyUnYMHdPhi1DI4WNgHUDoLyBm6aBIZOkw1+kQhAMfsGR5goxKq1CCuzuBw4bn1rBywTUEa7nRpuWpxOnWJ4rApN1OMlr5uKKGCzLOILdlm9x/rKuNRWQNZHOVyvNMPKa70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=kJe1cU1i; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-614ec7ee902so73647627b3.2
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 14:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712784887; x=1713389687; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FCWiTOuyXFMcE85DuFu420bVCS/UPVrh/Hb5YvaLOl8=;
        b=kJe1cU1ikx4LojZpQfBUuxfP/ItKGXMjdEMO09nx+OWzWfUQOJh3h2KQpJKNMdMWqp
         8CJoXoCUzG/HvAVkcHes2ASfIiOlxsX1R/7X4hmP6mSdgVlx2a2XTaP1TqGbE7bf1AWO
         P0KuS97pMWGKTggW1KZjGLnknZyB4wcWaxyd8cawzsS55nwn0rQw0EZDdqNJCEdEkt9Y
         Z5bx5F9SyZHLjZRnX1TsMUMF9fTOg6OEGFXUmN2/f+qYE+MikMSIdGvo3D8i22lHgrVX
         RjwzTPN0Gd21NBgTKTqYRvA5/z0995MByw/4F8OF8ZME0Z24xFciNqclNGcjZdDdVEvG
         ZO7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712784887; x=1713389687;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FCWiTOuyXFMcE85DuFu420bVCS/UPVrh/Hb5YvaLOl8=;
        b=mYaPFK0KX3qeCLtdFJ1R6OMWyuC6T1ZUb65WztqfS9xB3CbyDupcyZQvYXC+5paddQ
         IRNKr1wXy3VBZtCKdSYbNSg43izcDq6XJfpdCZn82b3X9IiU13WzH6nolIzfWNa86Gsj
         +HaW0KjSC91BUQu9W38giY/ofSFvtP8UxiiTn9gRMcbgLfAW8g+OFlqPbfPf/qPLRfXT
         jIzWBwtQICJPscYAdJkV5wxrq2akU89t0wK8nblf/LlQKxH7f+Hvmww3JdqzeqwSs+2p
         RNIQuQqEnNj4dAQG61T7KNmNyYm92IRFzYP3vBcYgJYdgmpdz4ioO9d0yruRZURQanAl
         saSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVT6zBk/GrNxg0+HuqMhmI0hLQ1pbm7hICuA7bxXWbxgUPWjagdGrVz2XQXZBju7VFzigg+uT5Sn/sqxmPWYw/DRz1gOTAPTzJZXQ==
X-Gm-Message-State: AOJu0YyLQYziIJ5MXRkycEdW3emiTzLlBokSphmbtUWwTY67KusUI7z1
	fI5rAl5A+8/3eXRvJa3cBQlsoqglH7QCCuDrokIZHBO8eWSm3GvfHxd1lpps39whwCtJvQIzn2q
	Lt2rHAUzfukUMD7fe2AYVWVKl9r74AwlAzBw7XA==
X-Google-Smtp-Source: AGHT+IEJg6eBXgbrMvBxZrqHkCbyEafHccYY//puWMRuRRJPxivVjKGGtxP4Mzjd2PLpKtGs9YHHsRYFuI2P7eGObSs=
X-Received: by 2002:a81:e946:0:b0:609:fff2:3bbc with SMTP id
 e6-20020a81e946000000b00609fff23bbcmr3613852ywm.49.1712784886891; Wed, 10 Apr
 2024 14:34:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240410091106.749233-1-cleger@rivosinc.com>
In-Reply-To: <20240410091106.749233-1-cleger@rivosinc.com>
From: Deepak Gupta <debug@rivosinc.com>
Date: Wed, 10 Apr 2024 14:34:33 -0700
Message-ID: <CAKC1njRJRnxj8XjwJ-Yx6Guu=9kSEdaFnxF1e+gXq9ij_j=atA@mail.gmail.com>
Subject: Re: [PATCH 00/10] Add support for a few Zc* extensions as well as Zcmop
To: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Anup Patel <anup@brainfault.org>, 
	Shuah Khan <shuah@kernel.org>, Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For the series:

Reviewed-by: Deepak Gupta <debug@rivosinc.com>

On Wed, Apr 10, 2024 at 2:13=E2=80=AFAM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
osinc.com> wrote:
>
> Add support for (yet again) more RVA23U64 missing extensions. Add
> support for Zcmop, Zca, Zcf, Zcd and Zcb extensions isa string parsing,
> hwprobe and kvm support. Zce, Zcmt and Zcmp extensions have been left
> out since they target microcontrollers/embedded CPUs and are not needed
> by RVA23U64
>
> This series is based on the Zimop one [1].
>
> Link: https://lore.kernel.org/linux-riscv/20240404103254.1752834-1-cleger=
@rivosinc.com/ [1]
>
> Cl=C3=A9ment L=C3=A9ger (10):
>   dt-bindings: riscv: add Zca, Zcf, Zcd and Zcb ISA extension
>     description
>   riscv: add ISA parsing for Zca, Zcf, Zcd and Zcb
>   riscv: hwprobe: export Zca, Zcf, Zcd and Zcb ISA extensions
>   RISC-V: KVM: Allow Zca, Zcf, Zcd and Zcb extensions for Guest/VM
>   KVM: riscv: selftests: Add some Zc* extensions to get-reg-list test
>   dt-bindings: riscv: add Zcmop ISA extension description
>   riscv: add ISA extension parsing for Zcmop
>   riscv: hwprobe: export Zcmop ISA extension
>   RISC-V: KVM: Allow Zcmop extension for Guest/VM
>   KVM: riscv: selftests: Add Zcmop extension to get-reg-list test
>
>  Documentation/arch/riscv/hwprobe.rst          | 24 ++++++++++++
>  .../devicetree/bindings/riscv/extensions.yaml | 37 +++++++++++++++++++
>  arch/riscv/include/asm/hwcap.h                |  5 +++
>  arch/riscv/include/uapi/asm/hwprobe.h         |  5 +++
>  arch/riscv/include/uapi/asm/kvm.h             |  5 +++
>  arch/riscv/kernel/cpufeature.c                |  5 +++
>  arch/riscv/kernel/sys_hwprobe.c               |  5 +++
>  arch/riscv/kvm/vcpu_onereg.c                  | 10 +++++
>  .../selftests/kvm/riscv/get-reg-list.c        | 20 ++++++++++
>  9 files changed, 116 insertions(+)
>
> --
> 2.43.0
>
>

