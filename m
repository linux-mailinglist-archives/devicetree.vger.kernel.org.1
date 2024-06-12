Return-Path: <devicetree+bounces-74906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EC6904F49
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 11:29:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D1A7DB232C3
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 09:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CE5216D4F6;
	Wed, 12 Jun 2024 09:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="kJlWyiws"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BC116DEA1
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718184581; cv=none; b=W2K/iatf/DXg4BaPMgTOyYr4k1LusZvPrgx+8/6YuNF6dwXALoMy6uwbKvNJs4WzyzqgejcLmu6BiQjI4ldrA1WVMdFY6Q/LOjWgMImDac8sENlWj//M7ppfO8ZJDBm4nbyiYJJrXzaHf+Xzn1xMVMJWyjjjGOFnuNnxFn3CRNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718184581; c=relaxed/simple;
	bh=8OwVBiFN1MYvq8DlSOT8RnVUSbbjY9WwA5aammcqdlk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F8BFoN68m9eYJ+uGvqd0PSUwGGHV126rr3s/zfMXTJ/Q/4wSHMR42Y8rrhacD0bXeaT1FOnk2yeDijSgMFJvGjgelzfzGO1cPLzVVSiaaz7p6fjX0m8Vh9C8ZcQKLmESjwmhaA2K1lYY1JyE/IHSrxIFB7VVK80ofoJnZW8evZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=kJlWyiws; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A5C4D3F699
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1718184576;
	bh=kUwA32L35nw4VQIIPpcQ67EWF3RQ5dZhklB3PwVT3Xo=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=kJlWyiwsTZ0S61XQMeYa0n7V13B5Sp53FvGYsadqgNHK5Ro1OhTV8OXA6oOjPBBH7
	 hY0df4oBeGlWaMb0WqPeuZd4I/3B0/cL0RkCKabq3XeAlT7miC3FZQ62WnWpUZ4fCQ
	 3ploLgvmFJXloZhB4OP11W+SHFef4OS5FvUCGGKxr69IwQfkUTM63uMVvM1ck1tw7d
	 MqBwoI4Ds3F8CviJEQpfJAixNDtXl2cT9hb50adM0VrUsXo6owS9/lRaSxlwRsKqOz
	 V0rkoVEqYdpOanim6W6PylcfAyuo/tEk2jz89TIfv8i/0xdq/v0fRxvRHno4Y4VJTR
	 uowoiKYNUjWew==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-440cfb095c1so31155791cf.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 02:29:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718184575; x=1718789375;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kUwA32L35nw4VQIIPpcQ67EWF3RQ5dZhklB3PwVT3Xo=;
        b=m2cZz2HRx/r4PBYNP+EDpHxNS4mqRKdeHTeaHVIApvLtJbJH+0g8Z8FYq4FJdjY+mo
         0TJC7j6PiiJ4eowr3dwxCJlBO2P6BaBhzIw41foJfK7p63+KeHKo0U1CPbZoVW6JhB6/
         i88CsOxSpA36wnKBkLnjTfN6jPiToIWSaYtw72lrGmS6M0G0HdRSV3+OQUO2eanRvHbw
         zSPCuWd0Q7Vsc1pm66iPmPZsm3Zy45NLIFB2L/qoIlg+3YxlNDqTx2HGEYP6EnNC5MID
         IIEmvliHplBgV/p0Uyfn6UPrSi/DPXvq/hKbQDo0dK4Xe9Rm73EAgldrViDizTC9WEQ7
         cJkA==
X-Forwarded-Encrypted: i=1; AJvYcCVxEjcxdfHQSWsHjjCfKpOzomeQwmYUBqSjsfnYnCR3JX7zlNcn+S5gpUYrgIUrtUZd+s8WJPp1s+kM+ApX0NQJEwq0yyhGx0/TsA==
X-Gm-Message-State: AOJu0YzxaKYl1mlT78398V4GJEIt50C8wnUdsJVY3m1QflfC3OJ57mLh
	eAH0nlmVq99e+j5m/3rBI/PpFJew71No4KkFHUPjlNzpVoxGg6YzUO83rDV7IIRGXL7MuBbH0kb
	IHhIr+6tn8RCs4D+CSBHLcsUZbsWqpK+p7NWE0ePylgNwicVk3vCJ2c8is4k3EiH7VtCX5hlMAt
	0iRr/oJGtS8pgBe+U3CaHBR6szjfkPjsh87DXd2QmocfUfKS6FYw==
X-Received: by 2002:ac8:7d16:0:b0:441:56cb:98e6 with SMTP id d75a77b69052e-4415abcbc24mr13973851cf.4.1718184575148;
        Wed, 12 Jun 2024 02:29:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyeSYlvQmdBPGei7wG+gbHZU+qCnBgf8EqYPmHBFL2wCKfa/pLQHu7jghaF0xyya5oj383e/rAxicZxFwepHM=
X-Received: by 2002:ac8:7d16:0:b0:441:56cb:98e6 with SMTP id
 d75a77b69052e-4415abcbc24mr13973711cf.4.1718184574752; Wed, 12 Jun 2024
 02:29:34 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 12 Jun 2024 02:29:34 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240610-crux-unloaded-93b701646454@wendy>
References: <20240610-vertical-frugally-a92a55427dd9@wendy> <20240610-crux-unloaded-93b701646454@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 12 Jun 2024 02:29:34 -0700
Message-ID: <CAJM55Z-0f+SZpdZ_h=OZxEkXF-2RMXDoh4Qs+0SBe7opnWCJ2Q@mail.gmail.com>
Subject: Re: [PATCH v1 3/5] RISC-V: Add an MPFS erratum for PCIe
To: Conor Dooley <conor.dooley@microchip.com>, linux-riscv@lists.infradead.org
Cc: conor@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Samuel Holland <samuel.holland@sifive.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> On PolarFire SoC the PCIe root port is limited to 32-bit addressing
> (both when acting as an AXI-Slave and as an AXI-Master) due to how it
> is connected to the processor core complex via a Fabric Interface
> Controller (FIC), rather than being part of the Microprocessor Subsystem
> (MSS) like the other hard peripherals.
> The AXI buses between the FIC and the MSS are true 64-bit buses, but the
> PCIe root port is (effectively) only attached to the lower 32-bits of
> each bus. As PolarFire SoC is an FPGA, several of Microchip's customers
> that did not want to suffer the penalty of bounce buffering inserted a
> "shim" in the FPGA fabric that would alter the address of the AXI-S
> transaction on the return path to the MSS (conceptually moving the 4GiB
> range that the root port can address via the AXI-S interface around
> 64-bit space to better cover where those customers had placed their
> DDR). PolarFire SoC has a memory map with various apertures into the
> physical DDR, and depending on the MSS' configuration, the FPGA design
> can control what physical memory addresses back each aperture.
>
> The main apertures, which are cached memory, lie at 0x10_0000_0000 and
> 0x8000_0000. There are also non-cached apertures at 0xC000_0000 and
> 0x14_0000_0000. The "default" configuration is to have each of apertures
> overlap.
>
> Some use-cases add a shim to the FPGA fabric that will re-route
> transactions from the 0x10_0000_0000 region to avoid bounce buffering
> for 64-bit addresses or because the aperture at 0x8000_0000 does not
> correspond to usable memory (perhaps an AMP context is using it or the
> designer chose not to place memory at the aperture's physical address).
> Other user-cases re-route them to the non-cached region at
> 0x14_0000_0000. If the latter is done,
> DMA for the PCIe root ports become non-coherent. Such a scheme is only
> possible because the SiFive ccache on PolarFire SoC can perform flush
> invalidation of the L1/L2 cache for these types of configuration.
>
> Add an Erratum to support this second type of configuration. Like the JH7100's
> non-coherent DMA option, this requires use of DMA_GLOBAL_POOL and is
> therefore incompatible with Zicbom.
>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  arch/riscv/Kconfig.errata | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
> index 2acc7d876e1fb..0a9e13efbe6b5 100644
> --- a/arch/riscv/Kconfig.errata
> +++ b/arch/riscv/Kconfig.errata
> @@ -21,6 +21,25 @@ config ERRATA_ANDES_CMO
>
>  	  If you don't know what to do here, say "Y".
>
> +config ERRATA_MICROCHIP
> +	bool "Microchip errata"
> +	depends on ARCH_MICROCHIP
> +	help
> +	  All Microchip errata Kconfig options depend on this option. Disabling
> +	  this option will disable all Microchip errata.
> +
> +config ERRATA_POLARFIRE_SOC_DMA_NON_COHERENT
> +	bool "Non-coherent DMA support for PolarFire SoC"
> +	depends on NONPORTABLE
> +	depends on ERRATA_MICROCHIP
> +	select DMA_GLOBAL_POOL
> +	select RISCV_NONSTANDARD_CACHE_OPS
> +	help
> +	  Enable support for non-coherent DMA on PolarFire SoC.
> +	  This support is not required for any peripherals in the MSS, but may
> +	  be required for peripherals in the FPGA fabric and is required for
> +	  the PCI root port to operate correctly, due to addressing limitations.
> +
>  config ERRATA_SIFIVE
>  	bool "SiFive errata"
>  	depends on RISCV_ALTERNATIVE
> --
> 2.43.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

