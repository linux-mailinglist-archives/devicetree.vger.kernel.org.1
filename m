Return-Path: <devicetree+bounces-44931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFE1860211
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 20:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 479EE1F28EA9
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 19:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2177114B82C;
	Thu, 22 Feb 2024 19:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h0d4mnF5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2465114B803
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 19:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708628567; cv=none; b=FNPQi1yr2rY3VgGHuQ335CcUPR4FLXO+c+9PCHwrdkaUhSkmaYpfBN94XjW9BwQ5X+ilvkM3RqQ0TxLnRl5hSJPkCvpI3eeJmsb09XKb93SFj7IAc4L2GInl6li136ylfsfOvMojfy+AZh8wXEePTPANtJI8H2phz4eMPiXhJXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708628567; c=relaxed/simple;
	bh=34lmG4nzxCZbCQhBX1+3kbIdvkI45LrrC/Cjl6mbziw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eyMBMMvQ7JF1oY9zVpuaaJbLOSW80w8u+JLxzTLIO/YExlH2CYFbmO+wQe4Hp4qTqSdFLvzS/SXNlQxw+dnyLcfUhbiBo0Z7cyfITgTnrDSXBNQ9yt6cZWdVAgj/e4e3+KjHuRYpwnYqOKy611YdENyPO6u4BTuAk1EGtFyCPLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h0d4mnF5; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-5d42e7ab8a9so11760a12.3
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 11:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708628563; x=1709233363; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vTYNxcj2neo6HPPvD99c1Q/mh/wbkm0pvCmLFsw0RNE=;
        b=h0d4mnF5vMhu0jfVbqjK0jlcYHTpC6XseNDqPgzpNKDWKN8LdzRcC8YUfuBMA6BqKe
         c5DM4yOtujwBVEU+kmHCkUH0bL7Fwuvln3tU4aqhh6UHXT5zymNfggCJEOU+gALUV4rZ
         DSBvBoxwMfGa3FhKUkJHd94/wzOb+7MIMe+Tc2m3mnkbt3EItpqvYm7tM+SstgTrdzas
         wO6IS8DVYIRXNsY1OEEY9j2o5I3uEUHdPDLRXorpSvfQDUrYz+9njfV7oNpD4S9zNhEs
         srC9GVICyyB0bnITZLhL/JzNhfF76x3SFdBpAcd9I97786O3VKKUjvBlBhOqdERwH+CB
         xsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708628563; x=1709233363;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vTYNxcj2neo6HPPvD99c1Q/mh/wbkm0pvCmLFsw0RNE=;
        b=BJAjPiLMzWuLyCKs05wgldC7hp5rfoct5AVrdCeMk3y8+2qOhdfNY+eDe2cC9GkdWw
         2q0HUsiGmP2I2e8/YGrIDowJNBEuYbFYS57AWOhzj7Ptln6zM9BYthVcy4FMP8OHFTJ5
         zlmK18GlejISvPghNF1XZaVO+b1OglvRHnlyUf7YS9/6gp+XcHWimHWYqj0A7uCGMV8A
         2sVPVqYMGaoZaQPZ8ElM5ZRKEys5gezcyKKOfaqxy45DZB+fa42axOzwHHKNcYLfXKgy
         7rFc+zqhQy2QlOHAHnE5rtg0iOZSy5CzKy3YLr0qcJpGPHKXTjO/jxW5uEU4hGhAnD3f
         hDuw==
X-Forwarded-Encrypted: i=1; AJvYcCWd48guQQALFhRhUz7latoPjJJfS7jwp7lQVMo08ytgGFPsl7DewaziC50t1reN0FtP7y5NKD2IjQOKVVcTkgXi+CG4fwn1dK655w==
X-Gm-Message-State: AOJu0YwPYv9rRaOCtp80BF2ayA5j7/dTC9wJLqVE/UsrHqF+PAur1rJV
	gmAM21JZe9PQHTAu+oi+CMH4bxpV4gCyv1791OGLVTw6KlKV488T3LnswtXoqZM=
X-Google-Smtp-Source: AGHT+IGHpe6qaxfqw4bUvBWsv+UIbIpFUkh4ZbooGLlTNoQO8V6VqfMPRcSemGOLTfiSJOpq7TrZDw==
X-Received: by 2002:a05:6a21:9101:b0:19e:ccb2:fd80 with SMTP id tn1-20020a056a21910100b0019eccb2fd80mr20697588pzb.8.1708628563292;
        Thu, 22 Feb 2024 11:02:43 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:1fd:7619:a246:fc72])
        by smtp.gmail.com with ESMTPSA id u10-20020a056a00124a00b006e4de94c111sm10598pfi.65.2024.02.22.11.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 11:02:42 -0800 (PST)
Date: Thu, 22 Feb 2024 12:02:40 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Jens Wiklander <jens.wiklander@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
	op-tee@lists.trustedfirmware.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 7/7] remoteproc: stm32: Add support of an OP-TEE TA to
 load the firmware
Message-ID: <ZdeaUGpWlqGOG31u@p14s>
References: <20240214172127.1022199-1-arnaud.pouliquen@foss.st.com>
 <20240214172127.1022199-8-arnaud.pouliquen@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240214172127.1022199-8-arnaud.pouliquen@foss.st.com>

Hi,

On Wed, Feb 14, 2024 at 06:21:27PM +0100, Arnaud Pouliquen wrote:
> The new TEE remoteproc device is used to manage remote firmware in a
> secure, trusted context. The 'st,stm32mp1-m4-tee' compatibility is
> introduced to delegate the loading of the firmware to the trusted
> execution context. In such cases, the firmware should be signed and
> adhere to the image format defined by the TEE.
> 
> A new "to_attach" field is introduced to differentiate the use cases
> "firmware loaded by the boot stage" and "firmware loaded by the TEE".
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> ---
> V2 to V3 update:
> - remove stm32_rproc_tee_elf_sanity_check(), stm32_rproc_tee_elf_load()
>   stm32_rproc_tee_elf_find_loaded_rsc_table() and  stm32_rproc_tee_start() that are bnow unused
> - use new rproc::alt_boot field to sepcify that the alternate fboot method is used
> - use stm32_rproc::to_attach field to differenciate attch mode from remoteproc tee boot mode.
> - remove the used of stm32_rproc::fw_loaded
> ---
>  drivers/remoteproc/stm32_rproc.c | 85 +++++++++++++++++++++++++++++---
>  1 file changed, 79 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index fcc0001e2657..9cfcf66462e0 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -20,6 +20,7 @@
>  #include <linux/remoteproc.h>
>  #include <linux/reset.h>
>  #include <linux/slab.h>
> +#include <linux/tee_remoteproc.h>
>  #include <linux/workqueue.h>
>  
>  #include "remoteproc_internal.h"
> @@ -49,6 +50,9 @@
>  #define M4_STATE_STANDBY	4
>  #define M4_STATE_CRASH		5
>  
> +/* Remote processor unique identifier aligned with the Trusted Execution Environment definitions */
> +#define STM32_MP1_M4_PROC_ID    0
> +
>  struct stm32_syscon {
>  	struct regmap *map;
>  	u32 reg;
> @@ -90,6 +94,8 @@ struct stm32_rproc {
>  	struct stm32_mbox mb[MBOX_NB_MBX];
>  	struct workqueue_struct *workqueue;
>  	bool hold_boot_smc;
> +	bool to_attach;
> +	struct tee_rproc *trproc;
>  	void __iomem *rsc_va;
>  };
>  
> @@ -253,10 +259,30 @@ static int stm32_rproc_release(struct rproc *rproc)
>  			return err;
>  		}
>  	}
> +	ddata->to_attach = false;
>  
>  	return err;
>  }
>  
> +static int stm32_rproc_tee_attach(struct rproc *rproc)
> +{
> +	/* Nothing to do, remote proc already started by the secured context. */
> +	return 0;
> +}
> +
> +static int stm32_rproc_tee_stop(struct rproc *rproc)
> +{
> +	int err;
> +
> +	stm32_rproc_request_shutdown(rproc);
> +
> +	err = tee_rproc_stop(rproc);
> +	if (err)
> +		return err;
> +
> +	return stm32_rproc_release(rproc);
> +}
> +
>  static int stm32_rproc_prepare(struct rproc *rproc)
>  {
>  	struct device *dev = rproc->dev.parent;
> @@ -637,10 +663,14 @@ stm32_rproc_get_loaded_rsc_table(struct rproc *rproc, size_t *table_sz)
>  {
>  	struct stm32_rproc *ddata = rproc->priv;
>  	struct device *dev = rproc->dev.parent;
> +	struct tee_rproc *trproc = ddata->trproc;
>  	phys_addr_t rsc_pa;
>  	u32 rsc_da;
>  	int err;
>  
> +	if (trproc && !ddata->to_attach)
> +		return tee_rproc_get_loaded_rsc_table(rproc, table_sz);
> +

Why do we need a flag at all?  Why can't st_rproc_tee_ops::get_loaded_rsc_table
be set to tee_rproc_get_loaded_rsc_table()?

>  	/* The resource table has already been mapped, nothing to do */
>  	if (ddata->rsc_va)
>  		goto done;
> @@ -693,8 +723,20 @@ static const struct rproc_ops st_rproc_ops = {
>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>  };
>  
> +static const struct rproc_ops st_rproc_tee_ops = {
> +	.prepare	= stm32_rproc_prepare,
> +	.start		= tee_rproc_start,
> +	.stop		= stm32_rproc_tee_stop,
> +	.attach		= stm32_rproc_tee_attach,
> +	.kick		= stm32_rproc_kick,
> +	.get_loaded_rsc_table = stm32_rproc_get_loaded_rsc_table,
> +	.find_loaded_rsc_table = tee_rproc_find_loaded_rsc_table,
> +	.load		= tee_rproc_load_fw,
> +};
> +
>  static const struct of_device_id stm32_rproc_match[] = {
> -	{ .compatible = "st,stm32mp1-m4" },
> +	{.compatible = "st,stm32mp1-m4",},
> +	{.compatible = "st,stm32mp1-m4-tee",},
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, stm32_rproc_match);
> @@ -853,6 +895,7 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct stm32_rproc *ddata;
>  	struct device_node *np = dev->of_node;
> +	struct tee_rproc *trproc = NULL;
>  	struct rproc *rproc;
>  	unsigned int state;
>  	int ret;
> @@ -861,12 +904,33 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	rproc = rproc_alloc(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
> -	if (!rproc)
> -		return -ENOMEM;

This patch doesn't apply to rproc-next - please rebase.


> +	if (of_device_is_compatible(np, "st,stm32mp1-m4-tee")) {
> +		/*
> +		 * Delegate the firmware management to the secure context.
> +		 * The firmware loaded has to be signed.
> +		 */
> +		trproc = tee_rproc_register(dev, STM32_MP1_M4_PROC_ID);
> +		if (IS_ERR(trproc)) {
> +			dev_err_probe(dev, PTR_ERR(trproc),
> +				      "signed firmware not supported by TEE\n");
> +			return PTR_ERR(trproc);
> +		}
> +	}
>  
> -	ddata = rproc->priv;
> +	rproc = rproc_alloc(dev, np->name,
> +			    trproc ? &st_rproc_tee_ops : &st_rproc_ops,
> +			    NULL, sizeof(*ddata));
> +	if (!rproc) {
> +		ret = -ENOMEM;
> +		goto free_tee;
> +	}
>  
> +	ddata = rproc->priv;
> +	ddata->trproc = trproc;

My opinion hasn't changed from the previous patchet, i.e tee_rproc should be
folded in struct rproc as rproc::tee_interface.

More comments to come shortly...

> +	if (trproc) {
> +		rproc->alt_boot = true;
> +		trproc->rproc = rproc;
> +	}
>  	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
>  
>  	ret = stm32_rproc_parse_dt(pdev, ddata, &rproc->auto_boot);
> @@ -881,8 +945,10 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto free_rproc;
>  
> -	if (state == M4_STATE_CRUN)
> +	if (state == M4_STATE_CRUN) {
>  		rproc->state = RPROC_DETACHED;
> +		ddata->to_attach = true;
> +	}
>  
>  	rproc->has_iommu = false;
>  	ddata->workqueue = create_workqueue(dev_name(dev));
> @@ -916,6 +982,10 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  		device_init_wakeup(dev, false);
>  	}
>  	rproc_free(rproc);
> +free_tee:
> +	if (trproc)
> +		tee_rproc_unregister(trproc);
> +
>  	return ret;
>  }
>  
> @@ -923,6 +993,7 @@ static void stm32_rproc_remove(struct platform_device *pdev)
>  {
>  	struct rproc *rproc = platform_get_drvdata(pdev);
>  	struct stm32_rproc *ddata = rproc->priv;
> +	struct tee_rproc *trproc = ddata->trproc;
>  	struct device *dev = &pdev->dev;
>  
>  	if (atomic_read(&rproc->power) > 0)
> @@ -937,6 +1008,8 @@ static void stm32_rproc_remove(struct platform_device *pdev)
>  		device_init_wakeup(dev, false);
>  	}
>  	rproc_free(rproc);
> +	if (trproc)
> +		tee_rproc_unregister(trproc);
>  }
>  
>  static int stm32_rproc_suspend(struct device *dev)
> -- 
> 2.25.1
> 

