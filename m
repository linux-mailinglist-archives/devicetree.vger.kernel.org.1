Return-Path: <devicetree+bounces-82967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1773992695E
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 22:10:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83E1EB26AFA
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 20:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F204C18C32F;
	Wed,  3 Jul 2024 20:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="Zhw5KCUh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AE618FC72
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 20:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720037386; cv=none; b=QYLd6W+CtqkvMPWKlTtX6xPzDD7AxNL63ght2ch54/UJjm/CFI74FsOTQb3WB/13jjE4v7TR1LVNItioSuU/AWR+1oWap4P/Apkqlwy9fLyhbKQ09KkGcKPjv8+MIsSQMbzAxDw7cCt4nvdgmHUsK8E8JBhQgYXQvS4qkZllwpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720037386; c=relaxed/simple;
	bh=r0mGG6jfUTQUQ99v2umRVcL2iuq97IwMKmOR9I2MLO0=;
	h=Date:Subject:In-Reply-To:CC:From:To:Message-ID:Mime-Version:
	 Content-Type; b=sqFRS4eLKfsDmbMfU49EDS86+YldwSxXw4bDxGuZsQ2OUfaHOV2t/DFWiypHrrvRxJSL+y1HIeC93GHDeqGqZd1duQYYIe9o1aRVwL9eWn1KknXa1JENYV9eT+GITDGU0ILmc9/uppBJCLLg0ShRcv0JjC123p8sYz4q2uHkATU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com; spf=pass smtp.mailfrom=dabbelt.com; dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b=Zhw5KCUh; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1fb0d88fd25so8105465ad.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 13:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1720037384; x=1720642184; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f4FouA7VioUzPJdQBxarBi0pOj5dSVbdiVe7TRmDJpg=;
        b=Zhw5KCUhNksqWzKsP1vBK6Kk6VKYXz3G91k6snu52EVHYMkjzHgjgJEr3zHh3RLQXo
         Szj0H6E4Xmq238eL8UVpQHLrNBlwcq1qh5y/7eRQfkj595MNR8QLB9Gk6ht3y1g/VsSI
         AHayxmon+SNlTaP0JGFjAQwqK+3f4nuMUdWfz5AX42LxjCJWfVdAQKfXpVHB0kSpjHSw
         IiibNLHpm1UkoEPXHX4fp1rcLNwEztcPsS0jVKQsf/3dT4NTnBu8I43JOSxqNSlSIGa6
         qTBf3mgnnah7jYKruxF8T7RywCqDwK2Qch6FYG5Q5RSOIXBkllUDnGodsURijsyK68I6
         nfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720037384; x=1720642184;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f4FouA7VioUzPJdQBxarBi0pOj5dSVbdiVe7TRmDJpg=;
        b=w4XT4J4yfikC3pdARExF/vnjHpUw4g3WacD5u6BVWFqPeVDrG5gHZULCGigyQWhkDl
         Wp4Oh3dISnkNYUOE8FZK9J9gfAWnGRLfWkDIand/0ZwJNK5NlsdyRCLEMokxMbu6u4fp
         I6wQbVL8H3FJeIQHsv6wNU4vQOGqTR+FrYO2Lfy14Rd9ns96SbnrmzCzlH0SvDozJbHv
         Aefj7LhJuXZqOfzfuk/Rvy80xTBaFXqKkjKDAKsVUGGaKAipyXNNBKpa4HN3bt+HuoA2
         aQ4WKXeShQIF/LXMbLOran7GhaUgmbwe16dJj+hFlVLW/V9wAl8C+Sos2O3PobKIyjux
         W56A==
X-Forwarded-Encrypted: i=1; AJvYcCWADnUZbvdIu2I1Hq6ZVq+mlXKP4nOvBy8MSGrDNoWYbKSzTKOCk0QvEc4I7J2QO1M69ZWS7dOukLa5EYStPM1OsXfdEKxa0yfKow==
X-Gm-Message-State: AOJu0Yw22MIC5IduXWrKc6oMv7jUjy4vHnbRHGITQkI2o7vD3I3fnuJ9
	TSF6r+2nYBwEgc8H+R/xLcyJugExURL/kEJKhoRbupYKqMmKu5kTDtafhlJoVrU=
X-Google-Smtp-Source: AGHT+IE/RAJExYCxtp42/QiVcBw56WCduRLPuKmlGp9uvOrWj161yHkrj+IXxb7OGhVp3sjVz2IG2g==
X-Received: by 2002:a17:902:f687:b0:1f9:fb0f:ba05 with SMTP id d9443c01a7336-1fb1a088d8dmr39645665ad.26.1720037383898;
        Wed, 03 Jul 2024 13:09:43 -0700 (PDT)
Received: from localhost ([199.68.152.145])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-72c6a8df09fsm8386574a12.34.2024.07.03.13.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 13:09:43 -0700 (PDT)
Date: Wed, 03 Jul 2024 13:09:43 -0700 (PDT)
X-Google-Original-Date: Wed, 03 Jul 2024 13:09:40 PDT (-0700)
Subject:     Re: [PATCH v1 0/5] PolarFire SoC Icicle Reference Design PCIe ?support?/fixes
In-Reply-To: <20240610-vertical-frugally-a92a55427dd9@wendy>
CC: linux-riscv@lists.infradead.org, Conor Dooley <conor@kernel.org>,
  Conor Dooley <conor.dooley@microchip.com>, Paul Walmsley <paul.walmsley@sifive.com>, daire.mcnamara@microchip.com,
  robh@kernel.org, krzk+dt@kernel.org, samuel.holland@sifive.com, devicetree@vger.kernel.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Conor Dooley <conor.dooley@microchip.com>
Message-ID: <mhng-011d3bea-b607-4df2-a65c-7b08547cb85e@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Mon, 10 Jun 2024 04:09:12 PDT (-0700), Conor Dooley wrote:
> Hey all,
>
> Here's some patches that add an Erratum to enable non-coherent DMA
> support for PolarFire SoC. By nature of being an FPGA, and due to the
> PCIe root ports being only 32-bit capable, many bitstreams configure the
> FPGA fabric such that peripherals in the fabric become non-coherent. The
> PCIe root ports on PolarFire SoC are connected to the core-complex via
> the fabric, and therefore can be (and regularly are) made DMA
> non-coherent. The Icicle Kit Reference Design has been configuring the
> PCIe root port in this manner since late 2022 and in a way unsupported
> by mainline since earlier that year. Adding this non-coherent DMA
> support makes PCIe functional on those FPGA designs. Daire did almost all
> the work to figure out how to support these kinds of designs, and this
> series depends on his patches to introduce the required dma-ranges
> handling for the root port driver:
> https://lore.kernel.org/linux-pci/20240531085333.2501399-1-daire.mcnamara@microchip.com/
>
> The final patch depends on:
> https://lore.kernel.org/linux-pci/20240527-slather-backfire-db4605ae7cd7@wendy/
>
> I'm not sure if an Erratum is really the right way to go about doing
> this, but I didn't want to make ARCH_MICROCHIP depend on NONPORTABLE.
> An alternative would be to add a menu under drivers/soc like Renesas
> does and allow it to be toggled as an option there instead.

Acked-by: Palmer Dabbelt <palmer@rivosinc.com>

if you want to take this via some other tree.

I don't see any issue calling it an erratum, if it lets us keep building 
generic kernels for these systems that seems like a good enough agrument 
to me.

>
> Thanks,
> Conor.
>
> CC: Paul Walmsley <paul.walmsley@sifive.com>
> CC: Palmer Dabbelt <palmer@dabbelt.com>
> CC: Conor Dooley <conor.dooley@microchip.com>
> CC: Daire McNamara <daire.mcnamara@microchip.com>
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: Samuel Holland <samuel.holland@sifive.com>
> CC: linux-riscv@lists.infradead.org
> CC: devicetree@vger.kernel.org
>
> Conor Dooley (5):
>   cache: ccache: allow building for PolarFire
>   cache: ccache: add mpfs to nonstandard cache ops list
>   RISC-V: Add an MPFS erratum for PCIe
>   riscv: dts: microchip: modify memory map & add dma-ranges for pcie on
>     icicle
>   riscv: dts: microchip: update pcie reg properties
>
>  arch/riscv/Kconfig.errata                     | 19 +++++
>  .../dts/microchip/mpfs-icicle-kit-fabric.dtsi | 77 ++++++++++++-------
>  .../boot/dts/microchip/mpfs-icicle-kit.dts    | 44 +++++++++--
>  .../dts/microchip/mpfs-m100pfs-fabric.dtsi    |  6 +-
>  .../dts/microchip/mpfs-polarberry-fabric.dtsi |  6 +-
>  drivers/cache/Kconfig                         |  2 +-
>  drivers/cache/sifive_ccache.c                 |  2 +
>  7 files changed, 116 insertions(+), 40 deletions(-)

