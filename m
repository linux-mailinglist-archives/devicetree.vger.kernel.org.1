Return-Path: <devicetree+bounces-192666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A8888AF73E8
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 14:25:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B7E61C23ED1
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 12:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C9222E974C;
	Thu,  3 Jul 2025 12:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VpVkPmzz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E362E92AB
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 12:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751545200; cv=none; b=MntZq0a/dh/dA305B/F4asEzzDW5VBaHlBfagyPPylfOc7OBTp7a43ig/5hFG2r5HzJj4k9MJuw2+o8g9/BjYYO3OTEv1jG5If0zw0HV9SUXuXWOliUMWfoeaGgiiy9fWPBmzLa7wGV/6FqcZF/PVx3UNuofLOhJudLv3HYykxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751545200; c=relaxed/simple;
	bh=5S8w3uWd7iW/T21owi5/oSoUv/kNdAAViVeh3UNFFxY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HWqDt84ncF/+yHONhTCqWGKGhJ6cvq+2UB0SDeVF6kCcn3sGs2Fy8M5TPklrSkfsUtD0v2ZQz0hdrPhk3ySSYqrWvmdsvV4vVs86NoR1vzB6ULws1tzp8j2rsNSdTJlKEotf+fFWFFJ7bWxD6COkyp4ZnC6s41csEnQZqS8mqG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VpVkPmzz; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-7115e32802bso54090737b3.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 05:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751545196; x=1752149996; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9gmRYC6wJsE1ILyc/ieq+nLLcH85wKL/31GtAmZJ+yo=;
        b=VpVkPmzztuVKGEGS0t80nT3shIsezXrXHtVB25BJEqrqPlzrYlIH0X4mF8Hl3qWRRL
         kbGi5wFlt8acA5aROXLGZhLpuHKrCR//iLzzeKFBJAdYgU3oSZX+pQ/vQiyIbeqMsRxh
         Am+ix5z2KGsOzUO42mpe/1eaogcBcX55KAVLqNVXPBHn4to/t7s0hZawF9wxs9JeBhDK
         /sdqk1b/+WC9dEakYNrFaZWB/dJsKSaZBAiB9Se08VxnVOnbc+0ovlprist20ocbWla7
         5xBJ++FoBI+J0FLKtjPV49m92146logp+Z8kuQQmHONyD/Go1ebPevcSYRzgyRsgoYN1
         qRyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751545196; x=1752149996;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9gmRYC6wJsE1ILyc/ieq+nLLcH85wKL/31GtAmZJ+yo=;
        b=IjL886/bk8YXKIEVUnQtBK86jKZQcvUC6GI7fHiBu5EEO79MJj0ky3wZCc184yzTce
         1q99N21Sdlfxzg0983KI20/GVmxXpya+LjGPfRPxhx4o92SMCP/49qyOFOiz432lOdPI
         ePiT57gF15JH0zWjQVR2oOAWcbJJVp0HKJjG9u6T9iTB/mdkFVc/69Z4Y1YWGMun181Z
         L+7/o2qGrTGJbxiVeS5KEU9GBY0vCEMqiV9AGDt0DvgE7P2X62PZIhQCk7WqHAmA0Api
         O71hkKCfybKM/rzo4MCyfZ3CaOQMNjPLTweyF95yaliPpDv7HBTqPZ+Qn2dbK2+npAe/
         x/sQ==
X-Forwarded-Encrypted: i=1; AJvYcCXj8AjaVhzAe5kg3TyWRAUSal99g+X36+5TXR2I/pKn2zQ6CsBIgMm6rl9pNsYQxSqfpojzBemiEqaV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9z2uP1S/b9SRfE/oGjURYoLmQEpDeUwJB/mxDI7DfRKC+dgRK
	NYKNOcMJTLYcV8gPXeU4B5q0g5n5IfxlaWenhvvc2RcTTBJdKdb1VVyifomCPflhAooHCo5fI1n
	ICV/hBASRPqw5xqIre++k9bG3rtxzKVGXUyx+rSEChw==
X-Gm-Gg: ASbGncuCS/oe4JCaeLeuK1hdbM2sYfmtm+3NaP1eF+0ruDVLRpw0tIP1KTzDLQhFAmM
	go5npGyW1+RTnIV7uJpoipdg6b8G2oz5zcu1GlOZ1SJ4MQg01DjaSMJElHolH2wFq0Kc2fAWZKY
	v1ZM+ZmyXkRwJiG7hIlQoOQPdi2mbqZvsMawHr1UnoA0PD
X-Google-Smtp-Source: AGHT+IHaoKPJi6Fqow0vU1i5ZdMl3X5b+ttkE6pWwhs9E/k6RPBMt6GLClH4Z/mfJsmhDNTidyIoSsJcZcEgNd/ru1Q=
X-Received: by 2002:a05:690c:3582:b0:70c:b534:868f with SMTP id
 00721157ae682-7164d40a01emr96268507b3.20.1751545196417; Thu, 03 Jul 2025
 05:19:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1750765495.git.zhoubinbin@loongson.cn>
In-Reply-To: <cover.1750765495.git.zhoubinbin@loongson.cn>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 3 Jul 2025 14:19:20 +0200
X-Gm-Features: Ac12FXzBMo2xArYqhItw2PxBrY1sUyu9ZVNxnwNFP-mg-pD_fwp1o-Cr5nqL5Fw
Message-ID: <CAPDyKFrYYdhrctvwJ=VdTRHYSLSO_MjGKfasP53muVbe1+=0ag@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] LoongArch: Introduce the Loongson-2K MMC host
 controller driver
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mmc@vger.kernel.org, wanghongliang@loongson.cn
Content-Type: text/plain; charset="UTF-8"

On Tue, 24 Jun 2025 at 13:58, Binbin Zhou <zhoubinbin@loongson.cn> wrote:
>
> Hi all:
>
> This patchset introduce the MMC host controller on Loongson-2K series
> CPUs.
>
> They are similar, except for the interface characteristics and the use of
> DMA engine, specifically, the Loongson-2K0500/Loongson-2K1000 use an
> externally shared APBDMA engine, while the Loongson-2K2000 uses an
> internally exclusive DMA.
>
> Based on this, I'm splitting the driver into two patches.
>
> List of the patchset:
> Patch1: bindings for Loongson-2K0500/Loongson-2K1000;
> Patch2: driver for MMC controller using externally shared APBDMA engine;
> Patch3: bindings for Loongson-2K2000;
> Patch4: driver for MMC controller using internally exclusive DMA.
>
> Thanks.
>
> -------
> V4:
> patch(2/4):
>  - Code formatting;
>  - Fix lkp error
>     https://lore.kernel.org/all/202506202031.TNchn822-lkp@intel.com/
> patch(4/4):
>  - Rename function names:
>         ls2k1000_mmc_regmap_config -> ls2k0500_mmc_regmap_config
>         loongson2_mmc_reorder_cmd_data -> ls2k0500_mmc_reorder_cmd_data
>         loongson2_mmc_set_internal_dma -> ls2k2000_mmc_set_internal_dma
>  - Use macro definitions for magic numbers.
>
> Link to V3:
> https://lore.kernel.org/all/cover.1750216134.git.zhoubinbin@loongson.cn/
>
> V3:
> patch(1/4):
>  - Rename dt-binding file as loongson,ls2k0500-mmc.yaml.
> patch(2/4):
>  - Fix lkp error;
>     https://lore.kernel.org/all/202505130918.uanOGxju-lkp@intel.com/
>  - Add regulators support for ios ops;
>  - Add ack_sdio_irq() callback;
>  - Add MMC_CAP2_SDIO_IRQ_NOTHREAD flag;
> patch(3/4):
>  - Add Ack-by tag.
> patch(4/4):
>  - Update commit for fix_data_timeout().
>
> Link to V2:
> https://lore.kernel.org/all/cover.1746581751.git.zhoubinbin@loongson.cn/
>
> V2:
> patch(1/4):
>  - Add reg define for each reg entry.
>
> patch(2/4):
>  - Put all code in the c-file;
>  - Use mmc_from_priv() instead of host->mmc;
>  - Use sdio_signal_irq() instead of mmc_signal_sdio_irq();
>  - Use devm_mmc_alloc_host() instead of mmc_alloc_host();
>  - Use mmc_regulator_get_supply();
>
> patch(4/4):
>  - Add fix_cmd_interrupt function which is needed by Loongson-2K2000.
>
> Link to V1:
> https://lore.kernel.org/linux-mmc/cover.1744273956.git.zhoubinbin@loongson.cn/
>
> Binbin Zhou (4):
>   dt-bindings: mmc: Add Loongson-2K SD/SDIO/eMMC controller binding
>   mmc: loongson2: Add Loongson-2K SD/SDIO controller driver
>   dt-bindings: mmc: loongson,ls2k0500-mmc: Add compatible for
>     Loongson-2K2000
>   mmc: loongson2: Add Loongson-2K2000 SD/SDIO/eMMC controller driver
>
>  .../bindings/mmc/loongson,ls2k0500-mmc.yaml   |  112 ++
>  MAINTAINERS                                   |    7 +
>  drivers/mmc/host/Kconfig                      |   13 +
>  drivers/mmc/host/Makefile                     |    1 +
>  drivers/mmc/host/loongson2-mmc.c              | 1029 +++++++++++++++++
>  5 files changed, 1162 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/loongson,ls2k0500-mmc.yaml
>  create mode 100644 drivers/mmc/host/loongson2-mmc.c
>
>
> base-commit: f5c755ef810009b85350884c483705bd04365370
> --
> 2.47.1
>
>

The series applied for next, thanks!

Note, I am leaving you to address/discuss Huacai's comment on patch1
as a new patch on top.

Kind regards
Uffe

