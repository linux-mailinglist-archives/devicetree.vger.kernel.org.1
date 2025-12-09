Return-Path: <devicetree+bounces-245425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C16CB0BE4
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 18:35:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00264307B4D0
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 17:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161F932A3C0;
	Tue,  9 Dec 2025 17:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zdgizX8b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF2B23C50A
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 17:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765301602; cv=none; b=Djj6SftUpqmbZPReeWo7uhlQ4VUT1sJeY8a5n+n8SGbor3LZqqC5ae/DTRWdsxJRzfd1ZUNiKUHItktwdA2K0BI3/BSGTBzsBp6bwchlCxp57LKooJgQHZa10uU4RPuHtIFl30E7oNffohi2Bxi31bWmXxVfPA4OLDyiRb5UNNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765301602; c=relaxed/simple;
	bh=WCq/zW+aYyXIE1gIkTrf9jvNywH/14i2fVEMsevXgv4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SYauMwYN74EgVvDS1BFBQpwrHnqQKstnhgXAgjzL1kptEOoPc0B1X9CpjrYKiFu4uCQw8IX/gbp13G6FeCh0snXXAEUGZJRYmhnIOL43ifQXazGD/CxExnmpA9ybX5qgMvVeFEM/lC7LSZ1xAaEPNvKr8Iti/2sAFxzXU1ajYMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zdgizX8b; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7baf61be569so6502661b3a.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 09:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765301599; x=1765906399; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WzqyaXyqvcVTv4wWEkpPFoU8ZocUu34KaIAM6xQodXo=;
        b=zdgizX8bCGnfducPmxGCdFoe1eynRIH5s6MEteXv+ZtHQ4MAC09i4DBJ0CftCcJ+4+
         IlTwMYDj4/Knr5wJZl3t4fhnaDjg2xfAnen1zlxTrTUNWR1PtMoViMITAHPoZ6CuwHpD
         DMK5Jvye3aYUDptlA3vMVcaw+SneCIqBtrTDyJSNDqoMXyQ4eNkIwtKTwx+zGX5rlnUu
         cKRSx390uN8u7AomXreD2fuG1Mku/qGIsoTMXeezdSFoOBwIZ/Q8knhRn1uZleVbfvsO
         fbg4JjHtlVh0m3xkMVvYjrZ35HAhQzAf4AYfV0acEHqGvg1PqqwxkX9qFSWuSbmBLBHJ
         f67Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765301599; x=1765906399;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WzqyaXyqvcVTv4wWEkpPFoU8ZocUu34KaIAM6xQodXo=;
        b=H81WkeYnq6sFvX9FYj2tCM9Qa4ZbvdMlLsbZ6KQb5/nM9z8V75s0KJD4XzET9wt/I0
         5LOo6gXCXsWRJYoawbvCce+UU2de0taZgBMdKtxCJ4Cl4hXiMjYWOY5tjuTLw7+/dNbK
         FmRhuiOsnlWwb51hBudzo4YuQSoE7bzSeHIXU+rSNDscVCtFXOP+1lSMYtt1Mqt1Xums
         Iy7BFFxf1BlgzCm9s6GnUv4xBNYPsScY09PrZpYMW0crazXSeB6FnrjsMoNlVtGNqXGE
         BdY7fKqx+6eRDrF/t8Lcn8HFwL4Unii1oRF7t2wTxtCOo0yRLpHjOEdIXe1HwZIrxJjU
         KeHg==
X-Forwarded-Encrypted: i=1; AJvYcCUGgn14BkZJhXGVr9LxpiZEwYGTNk1DDmhycr3Vs2TsnnLU4f7C3iGD1LCM0RnRRQTKMRjUDX7tOs/3@vger.kernel.org
X-Gm-Message-State: AOJu0YxKYS/BinubUifWtMBZqBwnB+crkAdpwQsyQokY69fK6+wCta+t
	Yggm5DeP4jVUCRQqLxliG6tLcnRLMVdmLijRtVcp/6maXT6Ws8LH76rjqqs90i7ZzTOkijsWWmC
	T6KetiI4=
X-Gm-Gg: ASbGncuj9GWhXpqbcWEnZ/SQiuk84yQTM/J5+fROEDXIkG6cUjEMMhRtt3Mlc+8ii2+
	LW91Ua6pClYdtdLv2DXWFn2K77xR/25eeHZD1HJzKI0n0SYi/yolBSuX6s3xXFUlt7Z+tvnKXss
	tVJcf479ZjGomkIF7zQBkChprgaGkMOwrjOWztA97ZTBLMRywz6ozOb/9DKzBVCXJhUe3kSUNWR
	uTeZPFIkDVWZ4C49InglRB7zf1InvchOCJ6jZYAx6gAcgRwX1xbZqsd/n7qWqN4a/cHg826GzJQ
	4LESntfBwGZIP0Q4fu6EF1UAcycORcOKnn4dOD190jbv9wwgq23zRCvCtGUy8s9U7v1MFcBdOgp
	zQ01RKt6uUoz75vM8gsukjclq2XGhuB1bBvW2OrnzE7yiLT8+VqZeSsj0PlWmUfYFuUBHoqxSSq
	w07PaR/YohpDw0
X-Google-Smtp-Source: AGHT+IHPOMyOhqwRsCuUbH01pYdCZlQlWO0ArigDoX4sH1jducUqnEy3dcIPB14c+9KXGlQPe79yXA==
X-Received: by 2002:a05:6a00:b86:b0:7b8:ac7f:5955 with SMTP id d2e1a72fcca58-7e8c21f6c7emr10533150b3a.17.1765301598648;
        Tue, 09 Dec 2025 09:33:18 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:586f:ed0d:a5f:6ef8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f1a1ba7047sm983505b3a.34.2025.12.09.09.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 09:33:17 -0800 (PST)
Date: Tue, 9 Dec 2025 10:33:15 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Valentina Fernandez <valentina.fernandezalanis@microchip.com>
Cc: andersson@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] remoteproc: add support for Microchip IPC
 remoteproc platform driver
Message-ID: <aThdW87kR3gJMvUB@p14s>
References: <20251121142157.3582463-1-valentina.fernandezalanis@microchip.com>
 <20251121142157.3582463-3-valentina.fernandezalanis@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121142157.3582463-3-valentina.fernandezalanis@microchip.com>

Good day,

On Fri, Nov 21, 2025 at 02:21:57PM +0000, Valentina Fernandez wrote:
> Microchip family of RISC-V SoCs typically have one or more
> clusters. These clusters can be configured to run in an Asymmetric
> Multi Processing (AMP) mode where clusters are split in independent
> software contexts.
> 
> Add a remoteproc platform driver to be able to load and boot firmware
> to remote processors.
> 
> The driver uses SBI (RISC-V Supervisor Binary Interface) ecalls to
> request software running in machine privilege mode (M-mode) to
> start/stop the remote processor.
> 
> Inter-processor communication is supported through the
> virtio rpmsg stack using shared memory and the Microchip IPC mailbox
> driver.
> 
> Currently, the driver the following features are supported:
> - Start/stop a remote software context
> - Kick function implementation for RPMsg Communication
> - Attach to a remote context loaded by another entity (bootloader)
> 
> Error Recovery and Power Management features are not currently supported.
> 
> Signed-off-by: Valentina Fernandez <valentina.fernandezalanis@microchip.com>
> ---
>  drivers/remoteproc/Kconfig                   |  12 +
>  drivers/remoteproc/Makefile                  |   1 +
>  drivers/remoteproc/mchp_ipc_sbi_remoteproc.c | 465 +++++++++++++++++++
>  3 files changed, 478 insertions(+)
>  create mode 100644 drivers/remoteproc/mchp_ipc_sbi_remoteproc.c
> 
> diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
> index 48a0d3a69ed0..68bd68f553ea 100644
> --- a/drivers/remoteproc/Kconfig
> +++ b/drivers/remoteproc/Kconfig
> @@ -54,6 +54,18 @@ config INGENIC_VPU_RPROC
>  	  This can be either built-in or a loadable module.
>  	  If unsure say N.
>  
> +config MCHP_IPC_SBI_REMOTEPROC
> +	tristate "Microchip IPC remoteproc support"
> +	depends on MCHP_SBI_IPC_MBOX || COMPILE_TEST
> +	depends on ARCH_MICROCHIP
> +	help
> +	  Say y here to support booting and loading firmware to remote
> +	  processors on various Microchip family of RISC-V SoCs via the
> +	  remote processor framework.
> +	  This can be either built-in or a loadable module.a

No line break needed.

> +	  If compiled as module, the module will be called mchp_ipc_remoteproc.
> +	  If unsure say N.
> +
>  config MTK_SCP
>  	tristate "Mediatek SCP support"
>  	depends on ARCH_MEDIATEK || COMPILE_TEST
> diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
> index 1c7598b8475d..afb28dff5666 100644
> --- a/drivers/remoteproc/Makefile
> +++ b/drivers/remoteproc/Makefile
> @@ -14,6 +14,7 @@ obj-$(CONFIG_REMOTEPROC_CDEV)		+= remoteproc_cdev.o
>  obj-$(CONFIG_IMX_REMOTEPROC)		+= imx_rproc.o
>  obj-$(CONFIG_IMX_DSP_REMOTEPROC)	+= imx_dsp_rproc.o
>  obj-$(CONFIG_INGENIC_VPU_RPROC)		+= ingenic_rproc.o
> +obj-$(CONFIG_MCHP_IPC_SBI_REMOTEPROC)	+= mchp_ipc_sbi_remoteproc.o

Please drop the "ipc_sbi", it is redundant and doesn't any useful information.
Here and everywhere in this file.

>  obj-$(CONFIG_MTK_SCP)			+= mtk_scp.o mtk_scp_ipi.o
>  obj-$(CONFIG_OMAP_REMOTEPROC)		+= omap_remoteproc.o
>  obj-$(CONFIG_WKUP_M3_RPROC)		+= wkup_m3_rproc.o
> diff --git a/drivers/remoteproc/mchp_ipc_sbi_remoteproc.c b/drivers/remoteproc/mchp_ipc_sbi_remoteproc.c
> new file mode 100644
> index 000000000000..55d182c1eee7
> --- /dev/null
> +++ b/drivers/remoteproc/mchp_ipc_sbi_remoteproc.c
> @@ -0,0 +1,465 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Microchip IPC Remoteproc driver
> + *
> + * Copyright (c) 2021 - 2025 Microchip Technology Inc. All rights reserved.
> + *
> + * Author: Valentina Fernandez <valentina.fernandezalanis@microchip.com>
> + *
> + * Derived from the imx_rproc implementation:
> + * Copyright (c) 2017 Pengutronix, Oleksij Rempel <kernel@pengutronix.de>
> + */
> +
> +#include <linux/err.h>
> +#include <linux/kernel.h>
> +#include <linux/mailbox_client.h>
> +#include <linux/module.h>
> +#include <linux/of_address.h>
> +#include <linux/of_reserved_mem.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/remoteproc.h>
> +#include <linux/workqueue.h>
> +
> +#include <asm/sbi.h>
> +#include <asm/vendorid_list.h>
> +#include <linux/mailbox/mchp-ipc.h>
> +
> +#include "remoteproc_internal.h"
> +
> +#define SBI_EXT_MICROCHIP_TECHNOLOGY	(SBI_EXT_VENDOR_START | \
> +					 MICROCHIP_VENDOR_ID)
> +
> +#define MIV_RPROC_MEM_MAX		2
> +
> +enum {
> +	SBI_EXT_RPROC_STATE = 0x3,
> +	SBI_EXT_RPROC_START,
> +	SBI_EXT_RPROC_STOP,
> +};
> +
> +/**
> + * enum mchp_ipc_rproc_mbox_messages - predefined mailbox messages
> + *
> + * @MCHP_IPC_RPROC_MBOX_READY: a ready message response from a remote context indicating
> + * that the remote context is up and running.
> + *
> + * @MCHP_IPC_RPROC_MBOX_PENDING_MSG: Not currently in use, but reserved for future use
> + * to inform the receiver that there is a message awaiting in its receive-side
> + * vring. At the moment, one can explicitly send the index of the triggered
> + * virtqueue as a payload.
> + *
> + * @MCHP_IPC_RPROC_MBOX_STOP: a stop request for the remote context
> + *
> + * @MCHP_IPC_RPROC_MBOX_END_MSG: Indicates end of known/defined messages.
> + * This should be the last definition.
> + *
> + */
> +enum mchp_ipc_rproc_mbox_messages {
> +	MCHP_IPC_RPROC_MBOX_READY = 0xFFFFFF00,
> +	MCHP_IPC_RPROC_MBOX_PENDING_MSG = 0xFFFFFF01,
> +	MCHP_IPC_RPROC_MBOX_STOP = 0xFFFFFF02,
> +	MCHP_IPC_RPROC_MBOX_END_MSG = 0xFFFFFF03,
> +};
> +
> +enum {
> +	MCHP_IPC_RPROC_RSC_TABLE_REGION,
> +	MCHP_IPC_RPROC_FW_REGION,
> +	MCHP_IPC_RPROC_BUFF_REGION,
> +	MCHP_IPC_RPROC_VRING0_REGION,
> +	MCHP_IPC_RPROC_VRING1_REGION,
> +	MCHP_IPC_RPROC_REGION_MAX,
> +};
> +
> +struct mchp_ipc_rproc_mem_region {
> +	const char *name;
> +	const char *prefix;
> +};
> +
> +struct mchp_ipc_rproc {
> +	struct device *dev;
> +	struct rproc *rproc;
> +	struct mbox_chan *mbox_channel;
> +	struct workqueue_struct *workqueue;
> +	struct mbox_client mbox_client;
> +	struct completion start_done;
> +	struct work_struct rproc_work;
> +	struct mchp_ipc_msg message;
> +	void __iomem *rsc_table;
> +	bool initialized;
> +	u32 chan_id;
> +};
> +
> +static struct mchp_ipc_rproc_mem_region mchp_rproc_mem_regions[] = {
> +	[MCHP_IPC_RPROC_RSC_TABLE_REGION] = {
> +		.name = "rsc-table",
> +		.prefix = NULL,
> +	},
> +	[MCHP_IPC_RPROC_FW_REGION] = {
> +		.name = "firmware",
> +		.prefix = NULL,
> +	},
> +	[MCHP_IPC_RPROC_BUFF_REGION] = {
> +		.name = "buffer",
> +		.prefix = "vdev0",
> +	},
> +	[MCHP_IPC_RPROC_VRING0_REGION] = {
> +		.name = "vring0",
> +		.prefix = "vdev0",
> +	},
> +	[MCHP_IPC_RPROC_VRING1_REGION] = {
> +		.name = "vring1",
> +		.prefix = "vdev0",
> +	},
> +};
> +
> +static int mchp_ipc_rproc_start(struct rproc *rproc)
> +{
> +	struct mchp_ipc_rproc *priv = rproc->priv;
> +	struct sbiret ret;
> +
> +	ret = sbi_ecall(SBI_EXT_MICROCHIP_TECHNOLOGY, SBI_EXT_RPROC_START,
> +			priv->chan_id, rproc->bootaddr, 0, 0, 0, 0);
> +
> +	if (ret.error)
> +		return sbi_err_map_linux_errno(ret.error);
> +
> +	if (!wait_for_completion_timeout(&priv->start_done,
> +					 msecs_to_jiffies(5000))) {
> +		dev_err(priv->dev, "timeout waiting for ready notification\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	return 0;
> +}
> +
> +static int mchp_ipc_rproc_stop(struct rproc *rproc)
> +{
> +	struct mchp_ipc_rproc *priv = rproc->priv;
> +	struct sbiret ret;
> +
> +	ret = sbi_ecall(SBI_EXT_MICROCHIP_TECHNOLOGY, SBI_EXT_RPROC_STOP,
> +			priv->chan_id, MCHP_IPC_RPROC_MBOX_STOP, 0, 0, 0, 0);
> +
> +	if (ret.error)
> +		return sbi_err_map_linux_errno(ret.error);
> +
> +	return ret.value;
> +}
> +
> +static int mchp_ipc_rproc_mem_alloc(struct rproc *rproc, struct rproc_mem_entry *mem)
> +{
> +	struct device *dev = rproc->dev.parent;
> +	void *va;
> +
> +	dev_dbg(dev, "map memory: %pad+%zx\n", &mem->dma, mem->len);
> +	va = ioremap_wc(mem->dma, mem->len);
> +	if (IS_ERR_OR_NULL(va)) {
> +		dev_err(dev, "Unable to map memory region: %p+%zx\n",
> +			&mem->dma, mem->len);
> +		return -ENOMEM;
> +	}
> +
> +	mem->va = va;
> +
> +	return 0;
> +}
> +
> +static int mchp_ipc_rproc_mem_release(struct rproc *rproc,
> +				      struct rproc_mem_entry *mem)
> +{
> +	dev_dbg(rproc->dev.parent, "unmap memory: %pad\n", &mem->dma);
> +	iounmap(mem->va);
> +
> +	return 0;
> +}
> +
> +static int mchp_ipc_rproc_prepare(struct rproc *rproc)
> +{
> +	struct mchp_ipc_rproc *priv = rproc->priv;
> +	struct device_node *np = priv->dev->of_node;
> +	struct rproc_mem_entry *mem;
> +	struct resource res;
> +	int i, ret;
> +
> +	reinit_completion(&priv->start_done);
> +
> +	for (i = 0; i < ARRAY_SIZE(mchp_rproc_mem_regions); i++) {
> +		char *mem_region_name = devm_kstrdup(priv->dev,
> +						     mchp_rproc_mem_regions[i].name, GFP_KERNEL);
> +		int index = of_property_match_string(np, "memory-region-names", mem_region_name);
> +
> +		if (index < 0)
> +			continue;
> +
> +		ret = of_reserved_mem_region_to_resource_byname(np, mem_region_name, &res);
> +		if (ret)
> +			return ret;
> +
> +		if (mchp_rproc_mem_regions[i].prefix) {
> +			mem_region_name = devm_kasprintf(priv->dev, GFP_KERNEL, "%s%s",
> +							 mchp_rproc_mem_regions[i].prefix,
> +							 mem_region_name);
> +		}
> +
> +		if (i == MCHP_IPC_RPROC_BUFF_REGION) {
> +			mem = rproc_of_resm_mem_entry_init(priv->dev, index, resource_size(&res),
> +							   res.start, mem_region_name);
> +		} else {
> +			mem = rproc_mem_entry_init(priv->dev, NULL,
> +						   (dma_addr_t)res.start,
> +						   resource_size(&res), res.start,
> +						   mchp_ipc_rproc_mem_alloc,
> +						   mchp_ipc_rproc_mem_release,
> +						   mem_region_name);
> +		}
> +		rproc_add_carveout(rproc, mem);
> +	}
> +
> +	return 0;
> +}
> +
> +static int mchp_ipc_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
> +{
> +	int ret;
> +
> +	ret = rproc_elf_load_rsc_table(rproc, fw);
> +	if (ret)
> +		dev_info(&rproc->dev, "No resource table in elf\n");
> +
> +	return 0;
> +}
> +
> +static void mchp_ipc_rproc_kick(struct rproc *rproc, int vqid)
> +{
> +	struct mchp_ipc_rproc *priv = (struct mchp_ipc_rproc *)rproc->priv;
> +	struct mchp_ipc_msg msg;
> +	int ret;
> +
> +	msg.buf = (void *)&vqid;
> +	msg.size = sizeof(vqid);
> +
> +	ret = mbox_send_message(priv->mbox_channel, (void *)&msg);
> +	if (ret < 0)
> +		dev_err(priv->dev,
> +			"failed to send mbox message, status = %d\n", ret);
> +}
> +
> +static int mchp_ipc_rproc_attach(struct rproc *rproc)
> +{
> +	return 0;
> +}
> +
> +static struct resource_table
> +*mchp_ipc_rproc_get_loaded_rsc_table(struct rproc *rproc, size_t *table_sz)
> +{
> +	struct mchp_ipc_rproc *priv = rproc->priv;
> +
> +	if (!priv->rsc_table)
> +		return NULL;
> +
> +	*table_sz = SZ_1K;
> +	return (struct resource_table *)priv->rsc_table;
> +}
> +
> +static const struct rproc_ops mchp_ipc_rproc_ops = {
> +	.prepare = mchp_ipc_rproc_prepare,
> +	.start = mchp_ipc_rproc_start,
> +	.get_loaded_rsc_table = mchp_ipc_rproc_get_loaded_rsc_table,
> +	.attach = mchp_ipc_rproc_attach,
> +	.stop = mchp_ipc_rproc_stop,
> +	.kick = mchp_ipc_rproc_kick,
> +	.load = rproc_elf_load_segments,
> +	.parse_fw = mchp_ipc_rproc_parse_fw,
> +	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
> +	.sanity_check = rproc_elf_sanity_check,
> +	.get_boot_addr = rproc_elf_get_boot_addr,
> +};
> +
> +static void mchp_ipc_rproc_vq_work(struct work_struct *work)
> +{
> +	struct mchp_ipc_rproc *priv = container_of(work, struct mchp_ipc_rproc, rproc_work);
> +	struct device *dev = priv->rproc->dev.parent;
> +
> +	u32 msg = priv->message.buf[0];
> +
> +	/*
> +	 * Currently, we are expected to receive the following messages
> +	 * from the remote cluster: a ready message or receive the index
> +	 * of the triggered virtqueue as a payload.
> +	 * We can silently ignore any other type of mailbox messages since
> +	 * they are not meant for us and are meant to be received by the
> +	 * remote cluster only.
> +	 */
> +	switch (msg) {
> +	case MCHP_IPC_RPROC_MBOX_READY:
> +		complete(&priv->start_done);
> +		break;
> +	default:
> +		if (msg >= MCHP_IPC_RPROC_MBOX_READY && msg < MCHP_IPC_RPROC_MBOX_END_MSG)

The condition (msg == MCHP_IPC_RPROC_MBOX_READY) is already checked as part of
the previous case statement.  If you need to repeat this check, the design of
the case state likely needs more work.

> +			return;
> +		if (msg > priv->rproc->max_notifyid) {
> +			dev_info(dev, "dropping unknown message 0x%x", msg);
> +			return;
> +		}
> +		/* msg contains the index of the triggered vring */
> +		if (rproc_vq_interrupt(priv->rproc, msg) == IRQ_NONE)
> +			dev_dbg(dev, "no message was found in vqid %d\n", msg);
> +	}
> +}
> +
> +static void mchp_ipc_rproc_rx_callback(struct mbox_client *mbox_client, void *msg)
> +{
> +	struct rproc *rproc = dev_get_drvdata(mbox_client->dev);
> +	struct mchp_ipc_rproc *priv = rproc->priv;
> +
> +	priv->message = *(struct mchp_ipc_msg *)msg;
> +	queue_work(priv->workqueue, &priv->rproc_work);
> +}
> +
> +static int mchp_ipc_rproc_mbox_init(struct rproc *rproc)
> +{
> +	struct mchp_ipc_rproc *priv = rproc->priv;
> +	struct device *dev = priv->dev;
> +	struct mchp_ipc_sbi_chan *chan_priv;
> +	struct mbox_client *mbox_client;
> +
> +	mbox_client = &priv->mbox_client;
> +	mbox_client->dev = dev;
> +	mbox_client->tx_block = true;
> +	mbox_client->tx_tout = 100;
> +	mbox_client->knows_txdone = false;
> +	mbox_client->rx_callback = mchp_ipc_rproc_rx_callback;
> +
> +	priv->mbox_channel = mbox_request_channel(mbox_client, 0);
> +	if (IS_ERR(priv->mbox_channel))
> +		return dev_err_probe(mbox_client->dev,
> +				     PTR_ERR(priv->mbox_channel),
> +				     "failed to request mailbox channel\n");
> +
> +	chan_priv = (struct mchp_ipc_sbi_chan *)priv->mbox_channel->con_priv;

Where is the memory for ->con_priv allocated?

> +	priv->chan_id = chan_priv->id;
> +
> +	return 0;
> +}
> +
> +static int mchp_ipc_rproc_get_state(u32 chan)
> +{
> +	struct sbiret ret;
> +
> +	ret = sbi_ecall(SBI_EXT_MICROCHIP_TECHNOLOGY, SBI_EXT_RPROC_STATE,
> +			chan, 0, 0, 0, 0, 0);
> +
> +	if (ret.error)
> +		return sbi_err_map_linux_errno(ret.error);
> +
> +	return ret.value;
> +}
> +
> +static int mchp_ipc_rproc_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct device_node *np = dev->of_node;
> +	struct mchp_ipc_rproc *priv;
> +	struct rproc *rproc;
> +	struct resource res;
> +	int num_rmems, ret;
> +
> +	rproc = devm_rproc_alloc(dev, np->name, &mchp_ipc_rproc_ops,
> +				 NULL, sizeof(*priv));
> +	if (!rproc)
> +		return -ENOMEM;
> +
> +	priv = rproc->priv;
> +	priv->rproc = rproc;
> +	priv->dev = dev;
> +
> +	num_rmems = of_property_count_elems_of_size(np, "memory-region",
> +						    sizeof(phandle));

Please add a comment to describe why a minimum of 1 memory region is needed.
Otherwise I have to guess.

> +	if (num_rmems < 1)
> +		return dev_err_probe(dev, -EINVAL,
> +				     "device needs at least one memory regions to be defined\n");
> +
> +	ret = of_reserved_mem_region_to_resource_byname(np, "rsc-table", &res);
> +	if (!ret) {
> +		priv->rsc_table  = devm_ioremap_resource(dev, &res);
> +		if (IS_ERR(priv->rsc_table)) {
> +			return dev_err_probe(dev, PTR_ERR(priv->rsc_table),
> +					     "failed to map resource table\n");
> +		}
> +	}

The above makes me suspicious but I currently don't have time to look in the
rproc_ops for answers.  You can either spin off a  new revision to address the
comments already received or wait for me to look at the rproc_ops in January -
the choice is yours.

Thanks,
Mathieu 

> +
> +	priv->workqueue = create_workqueue(dev_name(dev));
> +	if (!priv->workqueue)
> +		return dev_err_probe(dev, -ENOMEM, "cannot create workqueue\n");
> +
> +	INIT_WORK(&priv->rproc_work, mchp_ipc_rproc_vq_work);
> +	init_completion(&priv->start_done);
> +
> +	ret = mchp_ipc_rproc_mbox_init(rproc);
> +	if (ret)
> +		goto err_put_wkq;
> +
> +	/*
> +	 * Check if the remote cluster has been booted by another entity
> +	 * (i.e. bootloader) and set rproc state accordingly
> +	 */
> +	rproc->state = mchp_ipc_rproc_get_state(priv->chan_id);
> +	if (ret < 0) {
> +		dev_err_probe(dev, ret, "Couldn't get cluster boot mode\n");
> +		goto err_put_mbox;
> +	}
> +
> +	if (rproc->state != RPROC_DETACHED)
> +		rproc->auto_boot = false;
> +
> +	/* error recovery is not supported at present */
> +	rproc->recovery_disabled = true;
> +
> +	dev_set_drvdata(dev, rproc);
> +
> +	ret = devm_rproc_add(dev, rproc);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "rproc_add failed\n");
> +		goto err_put_mbox;
> +	}
> +
> +	return 0;
> +
> +err_put_mbox:
> +	mbox_free_channel(priv->mbox_channel);
> +err_put_wkq:
> +	destroy_workqueue(priv->workqueue);
> +
> +	return ret;
> +}
> +
> +static void mchp_ipc_rproc_remove(struct platform_device *pdev)
> +{
> +	struct rproc *rproc = platform_get_drvdata(pdev);
> +	struct mchp_ipc_rproc *priv = rproc->priv;
> +
> +	mbox_free_channel(priv->mbox_channel);
> +	destroy_workqueue(priv->workqueue);
> +}
> +
> +static const struct of_device_id mchp_ipc_rproc_of_match[] __maybe_unused = {
> +	{ .compatible = "microchip,ipc-sbi-remoteproc", },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, mchp_ipc_rproc_of_match);
> +
> +static struct platform_driver mchp_ipc_rproc_driver = {
> +	.probe = mchp_ipc_rproc_probe,
> +	.remove = mchp_ipc_rproc_remove,
> +	.driver = {
> +		.name = "microchip-ipc-rproc",
> +		.of_match_table = of_match_ptr(mchp_ipc_rproc_of_match),
> +	},
> +};
> +
> +module_platform_driver(mchp_ipc_rproc_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Valentina Fernandez <valentina.fernandezalanis@microchip.com>");
> +MODULE_DESCRIPTION("Microchip IPC Remote Processor control driver");
> -- 
> 2.34.1
> 

