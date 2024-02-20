Return-Path: <devicetree+bounces-44037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E51E85C427
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 19:59:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47FDAB21D04
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 18:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1F3414A0BE;
	Tue, 20 Feb 2024 18:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UQs62liJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9663F134CEC
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 18:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708455522; cv=none; b=JCeoCUq9tdhNMaz/zP3nuPFu7VfG1CBVP5nr6UCLk5jnLvwlepsXe0bK06mnfXa6Kr7kbzHmrayHxeobxc1CAK7rbW4jgGLUsMlW+4qPIcVBAOgKbQIaITpXEnmtF2x9OQsBTLx9N8yDWqeXgOcWOrr3bWQYhm6Soi/M1obJG4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708455522; c=relaxed/simple;
	bh=OOKtA92rzxODczP46zFw1XAEbcXrWLnXqLFHB53Vbyk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nj9qix1zHykUn8oTh9AwjOlZ7fHoeW88kw6ohZONecuCGoE4r8sMmpbqL3wZYYD8j7BYp5cV60ExZc9fxcKjAL7O1xJC6D2u4Yree+4VXXtzswE6oPxdJyzpTYdtVPoDqlvttZNffauWfb/tenxddA4gilTUTwDMXyvnSvvh4H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UQs62liJ; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1db6e0996ceso42892855ad.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 10:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708455520; x=1709060320; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5ATxOOWCJlGOfSAukuiyD9DeMfXhG2JmDXA8zK0I6Mo=;
        b=UQs62liJzDwcCjpo/6OtIgDmpFYV2rkszifGoXnYw18n3WCSh0hcU2vw1vsL3THGY3
         tTOMEIbgBTXHm/CDPL5j65C7GqOmmkfn5wfjkEDao23tB7gxCCsRqPkvCLsmOdAz0STU
         HKd6R0DMABu86lqP6MefcYfIEnj1svbhv9k79tw24QqjaqsmwOKXHVEQz+/bhpq6QTAR
         oLPUiBkIQV7CjCXfKtmUiIMrdt/3gtAB0ITyoyda1wNB/1c0Ujdc5j+HCYbj7vHfe/pS
         8T7WLto4820LfaZPEpp6Rt+z4MJYMuoC6D3JkxSJSqDugoqdbFaAzY+j4GJyoPqGYIV9
         QBFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708455520; x=1709060320;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ATxOOWCJlGOfSAukuiyD9DeMfXhG2JmDXA8zK0I6Mo=;
        b=DnQyBk+IBiw6u2Ua+pafgJeAFcTHxqZqZ4785OrYYy2Yd4Eyc9B5ZZMATlAdvEtvW6
         HLmJK3bGZ3M0+T5tuXDBFn7GCxaAwfz/8qEaGcOylmoFwmCHyVArAtixWcKaCNzxM4Nh
         9pNOmiZE1YaFiOKDPkZ512Dp+7cff57q3VhVxzpFj3jbDiFAxpcsOzH7ABgPF1g3EmU+
         ApMaqrN7quboeLSbpRKjj7KOV9VDXp9mPU+2p0MbPqHDCvMpOlkt/4hAtGIwm8GBpl5/
         HzvqkUCLYQFPr2uY8haI5/SM24L6uZ9UOGbqv20x2mMR5J6WgjUgNfiy/UFqdgyo9K3I
         kaug==
X-Forwarded-Encrypted: i=1; AJvYcCV/2Rki1uneWU35SmhBC8f8lxjwz+tFEcnXYnJDkwxHzxcaydOLTV+AC7UJ1jKi2yCb1iCFz6gVnk3mYRjZ81iD6hN9Ng6OMtV1wA==
X-Gm-Message-State: AOJu0YwfuHzw3j0BoT00rodjMQTfdRvVtWQjBN9ECZlytSm6Kcbpdok3
	CpeFDx1Dpa/d6iz5yGv/6e+Ab/2ES5Lre9w6ov8lyFjEvoRJPvghv87iELb6Pjw=
X-Google-Smtp-Source: AGHT+IFvZhZaRXbB4CHa2FN9N9c+q/GLZDAKM3af2kAalxuwFTe0ChnVr27rLYd8/ExJ+OW4zEIkmQ==
X-Received: by 2002:a17:902:820b:b0:1db:729a:e2a0 with SMTP id x11-20020a170902820b00b001db729ae2a0mr11811238pln.47.1708455519834;
        Tue, 20 Feb 2024 10:58:39 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:a881:61f4:52e6:ffd9])
        by smtp.gmail.com with ESMTPSA id y5-20020a170902e18500b001db499c5c12sm6610429pla.143.2024.02.20.10.58.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 10:58:39 -0800 (PST)
Date: Tue, 20 Feb 2024 11:58:36 -0700
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
Subject: Re: [PATCH v3 1/7] remoteproc: Add TEE support
Message-ID: <ZdT2XHNpCaTnfvvR@p14s>
References: <20240214172127.1022199-1-arnaud.pouliquen@foss.st.com>
 <20240214172127.1022199-2-arnaud.pouliquen@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240214172127.1022199-2-arnaud.pouliquen@foss.st.com>

Good morning,

On Wed, Feb 14, 2024 at 06:21:21PM +0100, Arnaud Pouliquen wrote:
> From: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> 
> Add a remoteproc TEE (Trusted Execution Environment) driver
> that will be probed by the TEE bus. If the associated Trusted
> application is supported on secure part this device offers a client
> interface to load a firmware in the secure part.
> This firmware could be authenticated and decrypted by the secure
> trusted application.
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> ---
> update from V2
> - Use 'tee_rproc' prefix for all functions
> - rename tee_rproc_get_loaded_rsc_table to tee_rproc_find_loaded_rsc_table
> - redefine fonction to better match with the rproc_ops structure format
> 	- replace 'struct tee_rproc' parameter by 'struct rproc' parameter
> 	- rename 'rproc_tee_get_rsc_table()' to tee_rproc_get_loaded_rsc_table()
> 	  and rework it to remove the cached_table management.
> 	- introduce tee_rproc_get_context() to get the tee_rproc struct from the
>           rproc struct
> 	- rename tee_rproc_get_loaded_rsc_table() to tee_rproc_find_loaded_rsc_table()
> - remove useless check on tee_rproc_ctx structure in tee_rproc_register()
>   and tee_rproc_unregister()
> - fix test on the return of tee_rproc_ctx = devm_kzalloc()
> - remove useless includes and unused tee_rproc_mem structure.
> ---
>  drivers/remoteproc/Kconfig          |   9 +
>  drivers/remoteproc/Makefile         |   1 +
>  drivers/remoteproc/tee_remoteproc.c | 397 ++++++++++++++++++++++++++++
>  include/linux/tee_remoteproc.h      | 102 +++++++
>  4 files changed, 509 insertions(+)
>  create mode 100644 drivers/remoteproc/tee_remoteproc.c
>  create mode 100644 include/linux/tee_remoteproc.h
> 
> diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
> index 48845dc8fa85..85299606806c 100644
> --- a/drivers/remoteproc/Kconfig
> +++ b/drivers/remoteproc/Kconfig
> @@ -365,6 +365,15 @@ config XLNX_R5_REMOTEPROC
>  
>  	  It's safe to say N if not interested in using RPU r5f cores.
>  
> +
> +config TEE_REMOTEPROC
> +	tristate "trusted firmware support by a TEE application"

s/trusted/Trusted

And the wording will have to change a little, I will advise on this later.

> +	depends on OPTEE
> +	help
> +	  Support for trusted remote processors firmware. The firmware
> +	  authentication and/or decryption are managed by a trusted application.
> +	  This can be either built-in or a loadable module.
> +
>  endif # REMOTEPROC
>  
>  endmenu
> diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
> index 91314a9b43ce..fa8daebce277 100644
> --- a/drivers/remoteproc/Makefile
> +++ b/drivers/remoteproc/Makefile
> @@ -36,6 +36,7 @@ obj-$(CONFIG_RCAR_REMOTEPROC)		+= rcar_rproc.o
>  obj-$(CONFIG_ST_REMOTEPROC)		+= st_remoteproc.o
>  obj-$(CONFIG_ST_SLIM_REMOTEPROC)	+= st_slim_rproc.o
>  obj-$(CONFIG_STM32_RPROC)		+= stm32_rproc.o
> +obj-$(CONFIG_TEE_REMOTEPROC)		+= tee_remoteproc.o
>  obj-$(CONFIG_TI_K3_DSP_REMOTEPROC)	+= ti_k3_dsp_remoteproc.o
>  obj-$(CONFIG_TI_K3_R5_REMOTEPROC)	+= ti_k3_r5_remoteproc.o
>  obj-$(CONFIG_XLNX_R5_REMOTEPROC)	+= xlnx_r5_remoteproc.o
> diff --git a/drivers/remoteproc/tee_remoteproc.c b/drivers/remoteproc/tee_remoteproc.c
> new file mode 100644
> index 000000000000..ac727e062d00
> --- /dev/null
> +++ b/drivers/remoteproc/tee_remoteproc.c
> @@ -0,0 +1,397 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) STMicroelectronics 2023 - All Rights Reserved
> + * Author: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> + */
> +
> +#include <linux/firmware.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/remoteproc.h>
> +#include <linux/slab.h>
> +#include <linux/tee_drv.h>
> +#include <linux/tee_remoteproc.h>
> +
> +#include "remoteproc_internal.h"
> +
> +#define MAX_TEE_PARAM_ARRY_MEMBER	4
> +
> +/*
> + * Authentication of the firmware and load in the remote processor memory
> + *
> + * [in]  params[0].value.a:	unique 32bit identifier of the remote processor
> + * [in]	 params[1].memref:	buffer containing the image of the buffer
> + */
> +#define TA_RPROC_FW_CMD_LOAD_FW		1
> +
> +/*
> + * Start the remote processor
> + *
> + * [in]  params[0].value.a:	unique 32bit identifier of the remote processor
> + */
> +#define TA_RPROC_FW_CMD_START_FW	2
> +
> +/*
> + * Stop the remote processor
> + *
> + * [in]  params[0].value.a:	unique 32bit identifier of the remote processor
> + */
> +#define TA_RPROC_FW_CMD_STOP_FW		3
> +
> +/*
> + * Return the address of the resource table, or 0 if not found
> + * No check is done to verify that the address returned is accessible by
> + * the non secure context. If the resource table is loaded in a protected
> + * memory the access by the non secure context will lead to a data abort.
> + *
> + * [in]  params[0].value.a:	unique 32bit identifier of the remote processor
> + * [out]  params[1].value.a:	32bit LSB resource table memory address
> + * [out]  params[1].value.b:	32bit MSB resource table memory address
> + * [out]  params[2].value.a:	32bit LSB resource table memory size
> + * [out]  params[2].value.b:	32bit MSB resource table memory size
> + */
> +#define TA_RPROC_FW_CMD_GET_RSC_TABLE	4
> +
> +/*
> + * Return the address of the core dump
> + *
> + * [in]  params[0].value.a:	unique 32bit identifier of the remote processor
> + * [out] params[1].memref:	address of the core dump image if exist,
> + *				else return Null
> + */
> +#define TA_RPROC_FW_CMD_GET_COREDUMP	5
> +
> +struct tee_rproc__context {

s/tee_rproc__context/tee_rproc_context

as it was in the previous patchset.

> +	struct list_head sessions;
> +	struct tee_context *tee_ctx;
> +	struct device *dev;
> +};
> +
> +static struct tee_rproc__context *tee_rproc_ctx;
> +
> +static void prepare_args(struct tee_rproc *trproc, int cmd,
> +			 struct tee_ioctl_invoke_arg *arg,
> +			 struct tee_param *param, unsigned int num_params)
> +{
> +	memset(arg, 0, sizeof(*arg));
> +	memset(param, 0, MAX_TEE_PARAM_ARRY_MEMBER * sizeof(*param));
> +
> +	arg->func = cmd;
> +	arg->session = trproc->session_id;
> +	arg->num_params = num_params + 1;
> +
> +	param[0] = (struct tee_param) {
> +		.attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT,
> +		.u.value.a = trproc->rproc_id,
> +	};
> +}
> +
> +static struct tee_rproc *tee_rproc_get_context(struct rproc *rproc)
> +{
> +	struct tee_rproc *entry, *tmp;
> +
> +	list_for_each_entry_safe(entry, tmp, &tee_rproc_ctx->sessions, node) {
> +		if (entry->rproc == rproc)
> +			return entry;
> +	}
> +
> +	return NULL;
> +}
> +
> +int tee_rproc_load_fw(struct rproc *rproc, const struct firmware *fw)
> +{
> +	struct tee_ioctl_invoke_arg arg;
> +	struct tee_param param[MAX_TEE_PARAM_ARRY_MEMBER];
> +	struct tee_rproc *trproc = tee_rproc_get_context(rproc);
> +	struct tee_shm *fw_shm;
> +	int ret;
> +
> +	if (!trproc)
> +		return -EINVAL;
> +
> +	fw_shm = tee_shm_register_kernel_buf(tee_rproc_ctx->tee_ctx, (void *)fw->data, fw->size);
> +	if (IS_ERR(fw_shm))
> +		return PTR_ERR(fw_shm);
> +
> +	prepare_args(trproc, TA_RPROC_FW_CMD_LOAD_FW, &arg, param, 1);
> +
> +	/* Provide the address of the firmware image */
> +	param[1] = (struct tee_param) {
> +		.attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT,
> +		.u.memref = {
> +			.shm = fw_shm,
> +			.size = fw->size,
> +			.shm_offs = 0,
> +		},
> +	};
> +
> +	ret = tee_client_invoke_func(tee_rproc_ctx->tee_ctx, &arg, param);
> +	if (ret < 0 || arg.ret != 0) {
> +		dev_err(tee_rproc_ctx->dev,
> +			"TA_RPROC_FW_CMD_LOAD_FW invoke failed TEE err: %x, ret:%x\n",
> +			arg.ret, ret);
> +		if (!ret)
> +			ret = -EIO;
> +	}
> +
> +	tee_shm_free(fw_shm);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(tee_rproc_load_fw);
> +
> +struct resource_table *tee_rproc_get_loaded_rsc_table(struct rproc *rproc, size_t *table_sz)
> +{
> +	struct tee_ioctl_invoke_arg arg;
> +	struct tee_param param[MAX_TEE_PARAM_ARRY_MEMBER];
> +	struct tee_rproc *trproc = tee_rproc_get_context(rproc);
> +	int ret;
> +
> +	if (!trproc)
> +		return ERR_PTR(-EINVAL);
> +
> +	prepare_args(trproc, TA_RPROC_FW_CMD_GET_RSC_TABLE, &arg, param, 2);
> +
> +	param[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT;
> +	param[2].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT;
> +
> +	ret = tee_client_invoke_func(tee_rproc_ctx->tee_ctx, &arg, param);
> +	if (ret < 0 || arg.ret != 0) {
> +		dev_err(tee_rproc_ctx->dev,
> +			"TA_RPROC_FW_CMD_GET_RSC_TABLE invoke failed TEE err: %x, ret:%x\n",
> +			arg.ret, ret);
> +		return ERR_PTR(-EIO);
> +	}
> +
> +	*table_sz = param[2].u.value.a;
> +
> +	/* If the size is null no resource table defined in the image */
> +	if (!*table_sz)
> +		return NULL;
> +
> +	/* Store the resource table address that would be updated by the remote core. */
> +	trproc->rsc_table = ioremap_wc(param[1].u.value.a, *table_sz);
> +	if (IS_ERR_OR_NULL(trproc->rsc_table)) {
> +		dev_err(tee_rproc_ctx->dev, "Unable to map memory region: %lld+%zx\n",
> +			param[1].u.value.a, *table_sz);
> +		return ERR_PTR(-ENOMEM);
> +	}
> +
> +	return trproc->rsc_table;
> +}
> +EXPORT_SYMBOL_GPL(tee_rproc_get_loaded_rsc_table);
> +
> +struct resource_table *tee_rproc_find_loaded_rsc_table(struct rproc *rproc,
> +						       const struct firmware *fw)
> +{
> +	struct tee_rproc *trproc = tee_rproc_get_context(rproc);
> +	size_t table_sz;
> +
> +	if (!trproc)
> +		return ERR_PTR(-EINVAL);
> +
> +	if (!trproc->rsc_table)
> +		trproc->rsc_table = tee_rproc_get_loaded_rsc_table(rproc, &table_sz);
> +
> +	return trproc->rsc_table;
> +}
> +EXPORT_SYMBOL_GPL(tee_rproc_find_loaded_rsc_table);
> +
> +int tee_rproc_start(struct rproc *rproc)
> +{
> +	struct tee_ioctl_invoke_arg arg;
> +	struct tee_param param[MAX_TEE_PARAM_ARRY_MEMBER];
> +	struct tee_rproc *trproc = tee_rproc_get_context(rproc);
> +	int ret;
> +
> +	if (!trproc)
> +		return -EINVAL;
> +
> +	prepare_args(trproc, TA_RPROC_FW_CMD_START_FW, &arg, param, 0);
> +
> +	ret = tee_client_invoke_func(tee_rproc_ctx->tee_ctx, &arg, param);
> +	if (ret < 0 || arg.ret != 0) {
> +		dev_err(tee_rproc_ctx->dev,
> +			"TA_RPROC_FW_CMD_START_FW invoke failed TEE err: %x, ret:%x\n",
> +			arg.ret, ret);
> +		if (!ret)
> +			ret = -EIO;
> +	}
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(tee_rproc_start);
> +
> +int tee_rproc_stop(struct rproc *rproc)
> +{
> +	struct tee_ioctl_invoke_arg arg;
> +	struct tee_param param[MAX_TEE_PARAM_ARRY_MEMBER];
> +	struct tee_rproc *trproc = tee_rproc_get_context(rproc);
> +	int ret;
> +
> +	if (!trproc)
> +		return -EINVAL;
> +
> +	prepare_args(trproc, TA_RPROC_FW_CMD_STOP_FW, &arg, param, 0);
> +
> +	ret = tee_client_invoke_func(tee_rproc_ctx->tee_ctx, &arg, param);
> +	if (ret < 0 || arg.ret != 0) {
> +		dev_err(tee_rproc_ctx->dev,
> +			"TA_RPROC_FW_CMD_STOP_FW invoke failed TEE err: %x, ret:%x\n",
> +			arg.ret, ret);
> +		if (!ret)
> +			ret = -EIO;
> +	}
> +	if (trproc->rsc_table)
> +		iounmap(trproc->rsc_table);
> +	trproc->rsc_table = NULL;
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(tee_rproc_stop);
> 

I was wondering where this ID is coming from - Is it the ID of the remote
processor service in the secure world or the ID of the program that provides the
service?

More comments tomorrow.

Thanks,
Mathieu

+
> +static const struct tee_client_device_id stm32_tee_rproc_id_table[] = {
> +	{UUID_INIT(0x80a4c275, 0x0a47, 0x4905,
> +		   0x82, 0x85, 0x14, 0x86, 0xa9, 0x77, 0x1a, 0x08)},
> +	{}
> +};
> +
> +struct tee_rproc *tee_rproc_register(struct device *dev, unsigned int rproc_id)
> +{
> +	struct tee_client_device *tee_device;
> +	struct tee_ioctl_open_session_arg sess_arg;
> +	struct tee_param param[MAX_TEE_PARAM_ARRY_MEMBER];
> +	struct tee_rproc *trproc;
> +	int ret;
> +
> +	/*
> +	 * The device is not probed by the TEE bus. We ignore the reason (bus could be not yet
> +	 * probed or service not available in the secure firmware)
> +	 * Assumption here is that the TEE bus is not probed.
> +	 */
> +	if (!tee_rproc_ctx)
> +		return ERR_PTR(-EPROBE_DEFER);
> +
> +	trproc =  devm_kzalloc(dev, sizeof(*trproc), GFP_KERNEL);
> +	if (!trproc)
> +		return ERR_PTR(-ENOMEM);
> +
> +	tee_device = to_tee_client_device(tee_rproc_ctx->dev);
> +	memset(&sess_arg, 0, sizeof(sess_arg));
> +
> +	/* Open session with rproc_tee load the OP-TEE Trusted Application */
> +	memcpy(sess_arg.uuid, tee_device->id.uuid.b, TEE_IOCTL_UUID_LEN);
> +
> +	sess_arg.clnt_login = TEE_IOCTL_LOGIN_REE_KERNEL;
> +	sess_arg.num_params = 1;
> +
> +	param[0] = (struct tee_param) {
> +		.attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT,
> +		.u.value.a = rproc_id,
> +	};
> +
> +	ret = tee_client_open_session(tee_rproc_ctx->tee_ctx, &sess_arg, param);
> +	if (ret < 0 || sess_arg.ret != 0) {
> +		dev_err(dev, "tee_client_open_session failed, err: %x\n", sess_arg.ret);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	trproc->parent =  dev;
> +	trproc->rproc_id = rproc_id;
> +	trproc->session_id = sess_arg.session;
> +
> +	list_add_tail(&trproc->node, &tee_rproc_ctx->sessions);
> +
> +	return trproc;
> +}
> +EXPORT_SYMBOL_GPL(tee_rproc_register);
> +
> +int tee_rproc_unregister(struct tee_rproc *trproc)
> +{
> +	int ret;
> +
> +	ret = tee_client_close_session(tee_rproc_ctx->tee_ctx, trproc->session_id);
> +	if (ret < 0)
> +		dev_err(trproc->parent,	"tee_client_close_session failed, err: %x\n", ret);
> +
> +	list_del(&trproc->node);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(tee_rproc_unregister);
> +
> +static int tee_rproc_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
> +{
> +	/* Today we support only the OP-TEE, could be extend to other tees */
> +	return (ver->impl_id == TEE_IMPL_ID_OPTEE);
> +}
> +
> +static int tee_rproc_probe(struct device *dev)
> +{
> +	struct tee_context *tee_ctx;
> +	int ret;
> +
> +	/* Open context with TEE driver */
> +	tee_ctx = tee_client_open_context(NULL, tee_rproc_ctx_match, NULL, NULL);
> +	if (IS_ERR(tee_ctx))
> +		return PTR_ERR(tee_ctx);
> +
> +	tee_rproc_ctx = devm_kzalloc(dev, sizeof(*tee_ctx), GFP_KERNEL);
> +	if (!tee_rproc_ctx) {
> +		ret = -ENOMEM;
> +		goto err;
> +	}
> +
> +	tee_rproc_ctx->dev = dev;
> +	tee_rproc_ctx->tee_ctx = tee_ctx;
> +	INIT_LIST_HEAD(&tee_rproc_ctx->sessions);
> +
> +	return 0;
> +err:
> +	tee_client_close_context(tee_ctx);
> +
> +	return ret;
> +}
> +
> +static int tee_rproc_remove(struct device *dev)
> +{
> +	struct tee_rproc *entry, *tmp;
> +
> +	list_for_each_entry_safe(entry, tmp, &tee_rproc_ctx->sessions, node) {
> +		tee_client_close_session(tee_rproc_ctx->tee_ctx, entry->session_id);
> +		list_del(&entry->node);
> +		kfree(entry);
> +	}
> +
> +	tee_client_close_context(tee_rproc_ctx->tee_ctx);
> +
> +	return 0;
> +}
> +
> +MODULE_DEVICE_TABLE(tee, stm32_tee_rproc_id_table);
> +
> +static struct tee_client_driver tee_rproc_fw_driver = {
> +	.id_table	= stm32_tee_rproc_id_table,
> +	.driver		= {
> +		.name		= KBUILD_MODNAME,
> +		.bus		= &tee_bus_type,
> +		.probe		= tee_rproc_probe,
> +		.remove		= tee_rproc_remove,
> +	},
> +};
> +
> +static int __init tee_rproc_fw_mod_init(void)
> +{
> +	return driver_register(&tee_rproc_fw_driver.driver);
> +}
> +
> +static void __exit tee_rproc_fw_mod_exit(void)
> +{
> +	driver_unregister(&tee_rproc_fw_driver.driver);
> +}
> +
> +module_init(tee_rproc_fw_mod_init);
> +module_exit(tee_rproc_fw_mod_exit);
> +
> +MODULE_DESCRIPTION(" TEE remote processor control driver");
> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/tee_remoteproc.h b/include/linux/tee_remoteproc.h
> new file mode 100644
> index 000000000000..7c9e91e989ba
> --- /dev/null
> +++ b/include/linux/tee_remoteproc.h
> @@ -0,0 +1,102 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Copyright(c) 2023 STMicroelectronics - All Rights Reserved
> + */
> +
> +#ifndef TEE_REMOTEPROC_H
> +#define TEE_REMOTEPROC_H
> +
> +#include <linux/tee_drv.h>
> +#include <linux/firmware.h>
> +#include <linux/remoteproc.h>
> +
> +struct rproc;
> +
> +/**
> + * struct tee_rproc - TEE remoteproc structure
> + * @node:		Reference in list
> + * @rproc:		Remoteproc reference
> + * @parent:		Parent device
> + * @rproc_id:		Identifier of the target firmware
> + * @session_id:		TEE session identifier
> + * @rsc_table:		Resource table virtual address.
> + */
> +struct tee_rproc {
> +	struct list_head node;
> +	struct rproc *rproc;
> +	struct device *parent;
> +	u32 rproc_id;
> +	u32 session_id;
> +	struct resource_table *rsc_table;
> +};
> +
> +#if IS_ENABLED(CONFIG_TEE_REMOTEPROC)
> +
> +struct tee_rproc *tee_rproc_register(struct device *dev, unsigned int rproc_id);
> +int tee_rproc_unregister(struct tee_rproc *trproc);
> +
> +int tee_rproc_load_fw(struct rproc *rproc, const struct firmware *fw);
> +struct resource_table *tee_rproc_get_loaded_rsc_table(struct rproc *rproc, size_t *table_sz);
> +struct resource_table *tee_rproc_find_loaded_rsc_table(struct rproc *rproc,
> +						       const struct firmware *fw);
> +int tee_rproc_start(struct rproc *rproc);
> +int tee_rproc_stop(struct rproc *rproc);
> +
> +#else
> +
> +static inline struct tee_rproc *tee_rproc_register(struct device *dev, unsigned int rproc_id)
> +{
> +	return ERR_PTR(-ENODEV);
> +}
> +
> +static inline int tee_rproc_unregister(struct tee_rproc *trproc)
> +{
> +	/* This shouldn't be possible */
> +	WARN_ON(1);
> +
> +	return 0;
> +}
> +
> +static inline int tee_rproc_load_fw(struct rproc *rproc,  const struct firmware *fw)
> +{
> +	/* This shouldn't be possible */
> +	WARN_ON(1);
> +
> +	return 0;
> +}
> +
> +static inline int tee_rproc_start(struct rproc *rproc)
> +{
> +	/* This shouldn't be possible */
> +	WARN_ON(1);
> +
> +	return 0;
> +}
> +
> +static inline int tee_rproc_stop(struct rproc *rproc)
> +{
> +	/* This shouldn't be possible */
> +	WARN_ON(1);
> +
> +	return 0;
> +}
> +
> +static inline struct resource_table *
> +tee_rproc_get_loaded_rsc_table(struct rproc *rproc, size_t *table_sz)
> +{
> +	/* This shouldn't be possible */
> +	WARN_ON(1);
> +
> +	return NULL;
> +}
> +
> +static inline struct resource_table *
> +tee_rproc_find_loaded_rsc_table(struct rproc *rproc, const struct firmware *fw)
> +{
> +	/* This shouldn't be possible */
> +	WARN_ON(1);
> +
> +	return NULL;
> +}
> +#endif /* CONFIG_TEE_REMOTEPROC */
> +#endif /* TEE_REMOTEPROC_H */
> -- 
> 2.25.1
> 

