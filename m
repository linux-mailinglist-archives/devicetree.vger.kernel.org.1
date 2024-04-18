Return-Path: <devicetree+bounces-60587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D808E8A9B42
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 15:28:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCBB8B233A9
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 13:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C3D0160790;
	Thu, 18 Apr 2024 13:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="wh5BN/C6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4FE15E7E7
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 13:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713446907; cv=none; b=nsIkkU3vlDprTxO9PTSBxHgt9Qnd0FBpzfJmtTu18HEf4lmmKA3BaaNo1Yt2Axf2OQIrXRbGUD/BmHtK+ozRVsTvu0axcNlTd2eDeZoKv01++a5zZLOuPxlrWhetggTKWPXQ26j0YVY3hUWoJTOX88MS9im2yiEjeYj0cIzSJmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713446907; c=relaxed/simple;
	bh=xlB7rdi2o9xH7y6LdwhVg9RVEN+FAlcEKx+Jy8RyAyc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qviX8cs63ILjd79RCa1SAROYHFT5Bi62l+FL4ePwthEUIAm1ORi5IZP0ii+bdxdy1kh8Ck865i49KfVghGYH2/d7jyeZAYCPOjjl+e8IEHxcy35kZbC6O+Iw0UvsgY07TLwBraQariDY054zA48vJyWXefmawtERn1vSdojLHI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=wh5BN/C6; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-7d03a66e895so84376039f.1
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 06:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1713446905; x=1714051705; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KMNMsgIxykHwVLRcqTZk25HnL0Z5DBPcc9H1w13fRk4=;
        b=wh5BN/C6ovuEY6CE4JRdE/sqYVByicuEaAlCaOsUeUFhM3jcFfYTpsBhKDnaJW9Hho
         GCXfvRTFXXW3/fzppewG3dxxUAq/2BJjcG86+ztbNUVUCUjaH9mV2XzXbvHvhYPXgift
         qeZRuJm9bT0qK9TLbkDIKvyeWExVpsQOwCU4aT9Sryy9T5pacPvPJzBqZShV2Z0zE7JS
         BaOVStRsA+OnbUWBBVR+LFOI+lwFc1A3ohFULOT1DWWmJALOBjBikLODStgJuJXbNtZK
         ugOcQ+ZRGBvXDxFeyLgME52HSpE5lOxU43Tfj7QNj8JC1NzG1iRYgDrd/fbZSUBESxGL
         ntcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713446905; x=1714051705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KMNMsgIxykHwVLRcqTZk25HnL0Z5DBPcc9H1w13fRk4=;
        b=szeEkCYwYLeEGvPpvC2e1KYR1EpgVuStu5uQko3bdGRhMQQPohDHpEPl9BS7p78kGH
         12i1SWPbI8qKCIgxVSjW/MObJy1Pbr6rOjxOZVPm7M3TVR3hx/NpPQj7HRpe9gcEbgSH
         692Wy2aO9gU7ms5yPcDvjxOR1uHJlAA5zgzcRklNvvJQj8NBu9n3pWhZzUcew5OGBgL1
         E59zZsemaNzUd8Yf516GPCK2+z07mvfwR4oNbYVOnF/TGPZ1+IEOAIKYO324YFFqrMpc
         brSKF8W7/mvWJWDum6FGQt6XkHpy/NaZx5/bceHF0e9V+d/nazXVQuKWiWvZxCXrflNw
         ewWg==
X-Forwarded-Encrypted: i=1; AJvYcCXaorbZoz50Z6u3ns2r/9dHNLfZitQ4Ryx2+7GNvjcdcbg590uhc5zoCvYVxyZuaXDLO4+YCYHL5GLmqkNKSDnTSwz1Bdsg63uYEw==
X-Gm-Message-State: AOJu0YwpZghcPgkK4J3st84mIzhRM1xSzVFrM/HlwMN/4jic02KZUjpB
	R1QOWKPujpthZQnIAHqvQhEyqTEgmBQ6CvO/N85DVqd+XgwALWtdjBfcxeJ7PxTrpLCuVt+pNuP
	Y0eSn345ZRCbaJ1GXlFRFE1WvmA90EAS7NnMxRjou2ehROk7g
X-Google-Smtp-Source: AGHT+IFrWxljQUhM4BHCWc1rpwi1ngTEKRjguXPUXYX/AlzCjkEoKCfJFfKh82U9YYFX9h6A9SWk0YTxswpzIbsp85s=
X-Received: by 2002:a05:6e02:1c8b:b0:368:920b:e211 with SMTP id
 w11-20020a056e021c8b00b00368920be211mr3604422ill.5.1713446905449; Thu, 18 Apr
 2024 06:28:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240418124300.1387978-1-cleger@rivosinc.com>
In-Reply-To: <20240418124300.1387978-1-cleger@rivosinc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 18 Apr 2024 18:58:13 +0530
Message-ID: <CAAhSdy0RPOX7_rLQ8GcYzbWQ8wzKDxDKXUqNoNd2ZFkVx4sfMg@mail.gmail.com>
Subject: Re: [PATCH v2 00/12] Add support for a few Zc* extensions as well as Zcmop
To: Palmer Dabbelt <palmer@dabbelt.com>, Palmer Dabbelt <palmer@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Shuah Khan <shuah@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org, 
	=?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Palmer,

On Thu, Apr 18, 2024 at 6:13=E2=80=AFPM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
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
> ---
> v2:
>  - Add Zc* dependencies validation in dt-bindings
>  - v1: https://lore.kernel.org/lkml/20240410091106.749233-1-cleger@rivosi=
nc.com/
>
> Cl=C3=A9ment L=C3=A9ger (12):
>   dt-bindings: riscv: add Zca, Zcf, Zcd and Zcb ISA extension
>     description
>   riscv: dts: enable Zc* extensions when needed
>   dt-bindings: riscv: add Zc* extension rules implied by C extension
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
>  Documentation/arch/riscv/hwprobe.rst          |  24 ++
>  .../devicetree/bindings/riscv/cpus.yaml       |   8 +-
>  .../devicetree/bindings/riscv/extensions.yaml | 124 +++++++++
>  arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi |   4 +-
>  arch/riscv/boot/dts/microchip/mpfs.dtsi       |  20 +-
>  arch/riscv/boot/dts/renesas/r9a07g043f.dtsi   |   4 +-
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi    |  20 +-
>  arch/riscv/boot/dts/sifive/fu740-c000.dtsi    |  20 +-
>  arch/riscv/boot/dts/sophgo/cv18xx.dtsi        |   4 +-
>  arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi   | 256 +++++++++---------
>  arch/riscv/boot/dts/starfive/jh7100.dtsi      |   8 +-
>  arch/riscv/boot/dts/starfive/jh7110.dtsi      |  20 +-
>  arch/riscv/boot/dts/thead/th1520.dtsi         |  16 +-
>  arch/riscv/include/asm/hwcap.h                |   5 +
>  arch/riscv/include/uapi/asm/hwprobe.h         |   5 +
>  arch/riscv/include/uapi/asm/kvm.h             |   5 +
>  arch/riscv/kernel/cpufeature.c                |   5 +
>  arch/riscv/kernel/sys_hwprobe.c               |   5 +
>  arch/riscv/kvm/vcpu_onereg.c                  |  10 +
>  .../selftests/kvm/riscv/get-reg-list.c        |  20 ++
>  20 files changed, 394 insertions(+), 189 deletions(-)
>
> --
> 2.43.0
>

Most likely the KVM RISC-V related changes in this series
will conflict with the KVM RISC-V repo.

I will provide a shared tag based on 6.9-rc3 tomorrow or
early next week.

Regards,
Anup

