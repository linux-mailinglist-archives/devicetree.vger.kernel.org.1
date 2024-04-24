Return-Path: <devicetree+bounces-62249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0858B073F
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 12:25:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 849322833D7
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 10:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B211915956F;
	Wed, 24 Apr 2024 10:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="R1RuviZq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E9E1591EE
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 10:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713954350; cv=none; b=IV4+KybIZ8mvvebNjwZgm27OCat9lDjTeiAfJBrJokLWstBoQsY3/BvKHtaW3Wr23v8Tfpe6RjoWnqejpWtHjyG7vf0yiwP8/3qd1ttOFiTztWcG3Iia2ZCjqjUlI10L1mEyuF+gkkIFhxZkhnApBO0vNjY2BgtWQHjBcVJcGdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713954350; c=relaxed/simple;
	bh=V3JuELMRXTnjbHUkryjGj1Yn0RBFifaez/rC+mSC8VY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cm+RnBbr9w76ucj+g/pTcJXp4okNc3mnkKQprg7K3qWQwNfiRAYd97RiGoHvLgf/VEjMe91huTJMoV6iGJA1zEWzpuu6CSuaYILds+iBkeiXiLvwotLPuSMrYymMps7vmeT40v3m0Ce4GYPLVH9somC9QPqbOr6ytC/Ld5sPBmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=R1RuviZq; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B941040590
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 10:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713954346;
	bh=ff6zudAy01M5cxJpcncnLJEP4pep/1TFdKyhsB47YJk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=R1RuviZqvjf1zM9kp2ZbzRHXCg8QRlkFJnQSfalbe8yP8OhkgNChu2Pr4btP71JXm
	 aNZzDD/gLbn+nh2u7zfBaC8eMzV+zEIGKNvrKYCgI+gGhrOnbzVZUVE20OfNo/7tU5
	 SAnqVdfWgww67n8Q3c94eQ3Izk9ni/kgDf/2I1j2MRAdKM4ZUYuW4w9mjoI+7lSlIu
	 hMa7HsZ6T4n97voRyId3cxVVZWYDvgTdFaVtFjPvSqzoCK5CLUe5hxkz7W8L6niEmo
	 uxohxBC5P6TGtmonA/J3esWpOozxzno2k4JC1EjBw0Yx4FnWeaIIts1Ab1b3jhMqS/
	 2pRBN4qPHn7qw==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4393e712cd5so66306981cf.3
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 03:25:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713954344; x=1714559144;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ff6zudAy01M5cxJpcncnLJEP4pep/1TFdKyhsB47YJk=;
        b=J3Hva/pLzCsTkEVuop5ET+rfgee3OhXH8hECio3HWYqaZNyjabzEJiJLJacd9A5HK4
         qZK1xhLse+cjLrcqBkQoBmzs9sgL7H5dzdu1rxXF4t6yn7tiBWJCHhIalAT5VXkbFRT8
         MmMurn4lQXlxJarDT85y99k1M1/Tsns6lLscqhAy+syXDU4qMr5PVYzwd+5b5Ip0YeOg
         z3981yEPEp9VljgBkeCtyXdjiWgGYHFfsU/ekHxA2STJQPVwwcqcRUjiUw06s10//3Az
         51J8UsRrvVLuWPw5Opb8/x4erQMDSct8Xz63Kw2cJy3wFWpz1TFo9MJh/JUCTmWaFpwA
         8sDA==
X-Gm-Message-State: AOJu0YxYGlU6AhmTCgv3jDX2eKYf8ObFkEfcqtQQcjUR/R13sS/iuPzu
	NzcEkRIEGYUzpi2eZ1Wu/TY5nKRaYHe3rB55+vf15ujCy3PWySfMD27+rP78fzzgaEYwf9Gb3jZ
	64EqXKcfETxMpwUvEAOMUjKCJf++pX9zmnpKrIzbzIyMzUQ/F0ndC8CURcgpYN11AXwHcbK5beC
	EFdacmLTaKBzvMHUtCwQq+wG4Mi1G5Gm0QeIpqSiAfQRUqmFBaiQ==
X-Received: by 2002:a05:622a:547:b0:43a:160e:4f75 with SMTP id m7-20020a05622a054700b0043a160e4f75mr1866261qtx.53.1713954344254;
        Wed, 24 Apr 2024 03:25:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHb9uxWOtvTpAqK5vA0FiOdPQX0wxDnCfd2amELYDZXgGZwWLVW6YuKcYyLRJYa9TCh0P6bVet1kl2aZ9Yq8iE=
X-Received: by 2002:a05:622a:547:b0:43a:160e:4f75 with SMTP id
 m7-20020a05622a054700b0043a160e4f75mr1866245qtx.53.1713954343986; Wed, 24 Apr
 2024 03:25:43 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 24 Apr 2024 06:25:43 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240424075856.145850-2-joshua.yeong@starfivetech.com>
References: <20240424075856.145850-1-joshua.yeong@starfivetech.com> <20240424075856.145850-2-joshua.yeong@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 24 Apr 2024 06:25:43 -0400
Message-ID: <CAJM55Z-C7XkFo4STk3rdLG4kvPfed-AfrHB1QJ-Tzt1LDoKw9w@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] cache: Add StarFive StarLink cache management for
 StarFive JH8100
To: Joshua Yeong <joshua.yeong@starfivetech.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, conor@kernel.org, paul.walmsley@sifive.com, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, leyfoon.tan@starfivetech.com, 
	jeeheng.sia@starfivetech.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Joshua Yeong wrote:
> Add StarFive Starlink cache management driver for
> JH8100 SoC. This driver enables RISC-V
> non-standard cache operation on JH8100 that does
> not support Zicbom extension instructions.
>
> Signed-off-by: Joshua Yeong <joshua.yeong@starfivetech.com>
> ---
>  drivers/cache/Kconfig                   |   9 ++
>  drivers/cache/Makefile                  |   5 +-
>  drivers/cache/starfive_starlink_cache.c | 135 ++++++++++++++++++++++++
>  3 files changed, 147 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/cache/starfive_starlink_cache.c
>
> diff --git a/drivers/cache/Kconfig b/drivers/cache/Kconfig
> index 9345ce4976d7..9181cd391f53 100644
> --- a/drivers/cache/Kconfig
> +++ b/drivers/cache/Kconfig
> @@ -14,4 +14,13 @@ config SIFIVE_CCACHE
>  	help
>  	  Support for the composable cache controller on SiFive platforms.
>
> +config STARFIVE_STARLINK_CACHE
> +	bool "StarFive StarLink Cache controller"
> +	depends on RISCV
> +	depends on ARCH_STARFIVE
> +	select RISCV_DMA_NONCOHERENT
> +	select RISCV_NONSTANDARD_CACHE_OPS
> +	help
> +	  Support for the StarLink cache controller on StarFive platforms.

This is a bit misleading. The JH71x0s don't have this. It's only on the JH8100
so far, and hopefully later SoCs will just implement RISC-V standards for this.
So maybe something like

"Support for the StarLink cache controller on the StarFive JH8100 SoC."

> +
>  endmenu
> diff --git a/drivers/cache/Makefile b/drivers/cache/Makefile
> index 7657cff3bd6c..55c5e851034d 100644
> --- a/drivers/cache/Makefile
> +++ b/drivers/cache/Makefile
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
>
> -obj-$(CONFIG_AX45MP_L2_CACHE)	+= ax45mp_cache.o
> -obj-$(CONFIG_SIFIVE_CCACHE)	+= sifive_ccache.o
> +obj-$(CONFIG_AX45MP_L2_CACHE)		+= ax45mp_cache.o
> +obj-$(CONFIG_SIFIVE_CCACHE)		+= sifive_ccache.o
> +obj-$(CONFIG_STARFIVE_STARLINK_CACHE)	+= starfive_starlink_cache.o
> diff --git a/drivers/cache/starfive_starlink_cache.c b/drivers/cache/starfive_starlink_cache.c
> new file mode 100644
> index 000000000000..2f1fa6a923ee
> --- /dev/null
> +++ b/drivers/cache/starfive_starlink_cache.c
> @@ -0,0 +1,135 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Cache Management Operations for StarFive's Starlink cache controller
> + *
> + * Copyright (C) 2024 Shanghai StarFive Technology Co., Ltd.
> + *
> + * Author: Joshua Yeong <joshua.yeong@starfivetech.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/cacheflush.h>
> +#include <linux/iopoll.h>
> +#include <linux/of_address.h>
> +
> +#include <asm/dma-noncoherent.h>
> +
> +#define STARLINK_CACHE_FLUSH_START_ADDR			0x0
> +#define STARLINK_CACHE_FLUSH_END_ADDR			0x8
> +#define STARLINK_CACHE_FLUSH_CTL			0x10
> +#define STARLINK_CACHE_ALIGN				0x40
> +
> +#define STARLINK_CACHE_ADDRESS_RANGE_MASK		GENMASK(39, 0)
> +#define STARLINK_CACHE_FLUSH_CTL_MODE_MASK		GENMASK(2, 1)
> +#define STARLINK_CACHE_FLUSH_CTL_ENABLE_MASK		BIT(0)
> +
> +#define STARLINK_CACHE_FLUSH_CTL_CLEAN_INVALIDATE	0
> +#define STARLINK_CACHE_FLUSH_CTL_MAKE_INVALIDATE	1
> +#define STARLINK_CACHE_FLUSH_CTL_CLEAN_SHARED		2
> +#define STARLINK_CACHE_FLUSH_POLL_DELAY_US		1
> +#define STARLINK_CACHE_FLUSH_TIMEOUT_US			5000000
> +
> +struct starlink_cache_priv {
> +	void __iomem *base_addr;
> +};
> +
> +static struct starlink_cache_priv starlink_cache_priv;

This could just be

static void __iomem *starlink_cache_base;

> +
> +static void starlink_cache_flush_complete(void)
> +{
> +	volatile void __iomem *ctl = starlink_cache_priv.base_addr +
> +				     STARLINK_CACHE_FLUSH_CTL;
> +	u64 v;
> +	int ret;
> +
> +	ret = readq_poll_timeout_atomic(ctl, v, !(v & STARLINK_CACHE_FLUSH_CTL_ENABLE_MASK),
> +					STARLINK_CACHE_FLUSH_POLL_DELAY_US,
> +					STARLINK_CACHE_FLUSH_TIMEOUT_US);
> +	if (ret)
> +		WARN(1, "StarFive Starlink cache flush operation timeout\n");
> +}
> +
> +static void starlink_cache_dma_cache_wback(phys_addr_t paddr, unsigned long size)
> +{
> +	writeq(FIELD_PREP(STARLINK_CACHE_ADDRESS_RANGE_MASK, paddr),
> +	       starlink_cache_priv.base_addr + STARLINK_CACHE_FLUSH_START_ADDR);
> +	writeq(FIELD_PREP(STARLINK_CACHE_ADDRESS_RANGE_MASK, paddr + size),
> +	       starlink_cache_priv.base_addr + STARLINK_CACHE_FLUSH_END_ADDR);
> +
> +	mb();
> +	writeq(FIELD_PREP(STARLINK_CACHE_FLUSH_CTL_MODE_MASK,
> +			  STARLINK_CACHE_FLUSH_CTL_CLEAN_SHARED),
> +	       starlink_cache_priv.base_addr + STARLINK_CACHE_FLUSH_CTL);
> +
> +	starlink_cache_flush_complete();
> +}
> +
> +static void starlink_cache_dma_cache_invalidate(phys_addr_t paddr, unsigned long size)
> +{
> +	writeq(FIELD_PREP(STARLINK_CACHE_ADDRESS_RANGE_MASK, paddr),
> +	       starlink_cache_priv.base_addr + STARLINK_CACHE_FLUSH_START_ADDR);
> +	writeq(FIELD_PREP(STARLINK_CACHE_ADDRESS_RANGE_MASK, paddr + size),
> +	       starlink_cache_priv.base_addr + STARLINK_CACHE_FLUSH_END_ADDR);
> +
> +	mb();
> +	writeq(FIELD_PREP(STARLINK_CACHE_FLUSH_CTL_MODE_MASK,
> +			  STARLINK_CACHE_FLUSH_CTL_MAKE_INVALIDATE),
> +	       starlink_cache_priv.base_addr + STARLINK_CACHE_FLUSH_CTL);
> +
> +	starlink_cache_flush_complete();
> +}
> +
> +static void starlink_cache_dma_cache_wback_inv(phys_addr_t paddr, unsigned long size)
> +{
> +	writeq(FIELD_PREP(STARLINK_CACHE_ADDRESS_RANGE_MASK, paddr),
> +	       starlink_cache_priv.base_addr + STARLINK_CACHE_FLUSH_START_ADDR);
> +	writeq(FIELD_PREP(STARLINK_CACHE_ADDRESS_RANGE_MASK, paddr + size),
> +	       starlink_cache_priv.base_addr + STARLINK_CACHE_FLUSH_END_ADDR);
> +
> +	mb();
> +	writeq(FIELD_PREP(STARLINK_CACHE_FLUSH_CTL_MODE_MASK,
> +			  STARLINK_CACHE_FLUSH_CTL_CLEAN_INVALIDATE),
> +	       starlink_cache_priv.base_addr + STARLINK_CACHE_FLUSH_CTL);
> +
> +	starlink_cache_flush_complete();
> +}
> +
> +static const struct riscv_nonstd_cache_ops starlink_cache_ops = {
> +	.wback = &starlink_cache_dma_cache_wback,
> +	.inv = &starlink_cache_dma_cache_invalidate,
> +	.wback_inv = &starlink_cache_dma_cache_wback_inv,
> +};
> +
> +static const struct of_device_id starlink_cache_ids[] = {
> +	{ .compatible = "starfive,jh8100-starlink-cache" },
> +	{ /* sentinel */ }
> +};
> +
> +static int __init starlink_cache_init(void)
> +{
> +	struct device_node *np;
> +	u32 block_size = 0;

You return early if of_property_read_u32() fails, so this doesn't need to be
initialized.

> +	int ret;
> +
> +	np = of_find_matching_node(NULL, starlink_cache_ids);
> +	if (!of_device_is_available(np))
> +		return -ENODEV;
> +
> +	ret = of_property_read_u32(np, "cache-block-size", &block_size);
> +	if (ret)
> +		return ret;
> +
> +	if (block_size % STARLINK_CACHE_ALIGN)
> +		return -EINVAL;
> +
> +	starlink_cache_priv.base_addr = of_iomap(np, 0);
> +	if (!starlink_cache_priv.base_addr)
> +		return -ENOMEM;
> +
> +	riscv_cbom_block_size = block_size;
> +	riscv_noncoherent_supported();
> +	riscv_noncoherent_register_cache_ops(&starlink_cache_ops);
> +
> +	return 0;
> +}
> +early_initcall(starlink_cache_init);

The sifive driver gets away with arch_initcall() here. Any particular reason
you need this earlier?

> --
> 2.25.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

