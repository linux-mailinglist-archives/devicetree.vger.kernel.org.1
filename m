Return-Path: <devicetree+bounces-82434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0EF9243DA
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 18:45:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95F8B283B2A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 16:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F310E1BE23B;
	Tue,  2 Jul 2024 16:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GSCah1Xc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8E81BE236
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 16:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719938692; cv=none; b=tge8uu95lE+f2G98oNKWOLTz40F3qXBAVC1B1rQteyMWOkvyTKSjxgXs1oKOITK+bBZLU5INX3k2ANRLxOJXWrNcCH1ue+17jr1PQbBfpdJ5v0eEiUqjpixHHYbNyPCFvrz95Ff6L03cMY4jaGpLwVh6F67Ei4xJeU+9RGFavA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719938692; c=relaxed/simple;
	bh=ATUjMmlBzJXWDRoyHEYZwS5ktVHrLx8QR2mtfkcx3e0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aCuJCStnWUpbp5x6LxqHpw2hze2wSrZsHlVLoIoQOF9BG8i73jRJGyMv6VuqPgxYnkWqLHczQVyj8TFRFC/qOX8KrYZteMpfMVsbzDJlaRv8MfDmqOvy/8JLvR2nDCHW7Y7bdmmx8lAm2AEXkQdsJt5OLfeGPIMFRNjjyEOE4+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GSCah1Xc; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-70679845d69so2976482b3a.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 09:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719938691; x=1720543491; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Phw++KCNea16DU8eOTMmV36Mdb5a7m8SacK5PGBp32U=;
        b=GSCah1XcYOWuVB5ftAwicT/YCPMMa6EerGIXQlmjseDT+IpaJyeW8jcyfE1AJuYS57
         FZztVjdagRl/EyIxynjUynfC2PjcRoZsxov3z2TU4ZHOyu+1WvpBAhIWgzSp7gS7jq4u
         iNDDviRBYCPB3IASZ9JTEgDunSvCZ62SxjVQFjZ1MkKJVT49JpcRrBm91zQPJODqdekz
         4lr6E69VtaCAcDioW+5a8p4MAOg70e5hkw+hUJLt5AVjlPUIIEEq3Ml50p1mFWIhpTZv
         1Hj1czIVZ+zhtjYwORwPg8nGh7C93Oi5xXm0f7GjBxAcqJQkqvWrZJycM82miX7EzI4U
         pl4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719938691; x=1720543491;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Phw++KCNea16DU8eOTMmV36Mdb5a7m8SacK5PGBp32U=;
        b=C4wLtwIBrnBwGF8RFftU/0AtTCEJw8/a0gXpZkqfbovPYdBqfsKt7bjgE3ug8tOdjG
         iVRBe4kFcABjy0AtHn4+n0eAg0XkAkUFD7iDidNXgynPNN2hq18Apyc2c/f93KoTvAb3
         ySpEbucuelOFwsRwgPIzQAv0+E2oSnNPV/r9QzMxCHe5roI0sfeuedSVj2lF3lJlAcIy
         3xMgPHnIiVt66EGmZhYyPGUd+37/Xy50TY8c9WLLReKHIA1KFgCSbgfAeX3uG/VDzSrF
         yCybOXW8bXNY6EwCqH/joY1AY3W2Vsn/nANlrinZs+83DuiQ2Vv2ARAsIhy6ErvZm2vH
         P6bw==
X-Forwarded-Encrypted: i=1; AJvYcCVhzO/7EIOVWOHS8RG3Rk1eJl+VLoJMEnSchSufBg8BDzKvsj4bl6OU4kIQp9TmqcCvM/tbTwyp6rH+pJ1fA+H79RSiTAqhgqbJrw==
X-Gm-Message-State: AOJu0YwER1uSy5h6kIfKfaRqzIBGqzw6ICxVMh0l4mcGBW+ct/ShGa4S
	EdrDJZIZpiwow6kWgljBBoSNEkjqzAogCypALNyqQMOcBLuEUaF1XQqGlh8rYc4LHNjOd2YMdTl
	r
X-Google-Smtp-Source: AGHT+IEwftAV+W5epvlPenld+i4k1K8ts6v6lErfwD0yVJfMBJDDLudodQFJyGkNq/gL/ZnZMvMS1A==
X-Received: by 2002:a05:6a20:c992:b0:1bd:91b0:10a5 with SMTP id adf61e73a8af0-1bef6248467mr7426144637.47.1719938690225;
        Tue, 02 Jul 2024 09:44:50 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:a83c:9cd1:70fd:d18a])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-708029582d5sm8709470b3a.89.2024.07.02.09.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 09:44:49 -0700 (PDT)
Date: Tue, 2 Jul 2024 10:44:46 -0600
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
Subject: Re: [PATCH v8 5/5] remoteproc: stm32: Add support of an OP-TEE TA to
 load the firmware
Message-ID: <ZoQufshvHg1AR90C@p14s>
References: <20240621143759.547793-1-arnaud.pouliquen@foss.st.com>
 <20240621143759.547793-6-arnaud.pouliquen@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240621143759.547793-6-arnaud.pouliquen@foss.st.com>

On Fri, Jun 21, 2024 at 04:37:59PM +0200, Arnaud Pouliquen wrote:
> The new TEE remoteproc device is used to manage remote firmware in a

Device or driver?

> secure, trusted context. The 'st,stm32mp1-m4-tee' compatibility is
> introduced to delegate the loading of the firmware to the trusted
> execution context. In such cases, the firmware should be signed and
> adhere to the image format defined by the TEE.
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> ---
>  drivers/remoteproc/stm32_rproc.c | 63 ++++++++++++++++++++++++++++++--
>  1 file changed, 60 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 8cd838df4e92..fd905b3cf206 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -18,6 +18,7 @@
>  #include <linux/pm_wakeirq.h>
>  #include <linux/regmap.h>
>  #include <linux/remoteproc.h>
> +#include <linux/remoteproc_tee.h>
>  #include <linux/reset.h>
>  #include <linux/slab.h>
>  #include <linux/workqueue.h>
> @@ -257,6 +258,19 @@ static int stm32_rproc_release(struct rproc *rproc)
>  	return 0;
>  }
>  
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
> @@ -693,8 +707,20 @@ static const struct rproc_ops st_rproc_ops = {
>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>  };
>  
> +static const struct rproc_ops st_rproc_tee_ops = {
> +	.prepare	= stm32_rproc_prepare,
> +	.start		= tee_rproc_start,
> +	.stop		= stm32_rproc_tee_stop,
> +	.kick		= stm32_rproc_kick,
> +	.load		= tee_rproc_load_fw,
> +	.parse_fw	= tee_rproc_parse_fw,
> +	.find_loaded_rsc_table = tee_rproc_find_loaded_rsc_table,
> +
> +};
> +
>  static const struct of_device_id stm32_rproc_match[] = {
>  	{ .compatible = "st,stm32mp1-m4" },
> +	{ .compatible = "st,stm32mp1-m4-tee" },
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, stm32_rproc_match);
> @@ -853,17 +879,42 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct stm32_rproc *ddata;
>  	struct device_node *np = dev->of_node;
> +	struct tee_rproc *trproc = NULL;
>  	struct rproc *rproc;
>  	unsigned int state;
> +	u32 proc_id;
>  	int ret;
>  
>  	ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(32));
>  	if (ret)
>  		return ret;
>  
> -	rproc = devm_rproc_alloc(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
> -	if (!rproc)
> -		return -ENOMEM;
> +	if (of_device_is_compatible(np, "st,stm32mp1-m4-tee")) {
> +		/*
> +		 * Delegate the firmware management to the secure context.
> +		 * The firmware loaded has to be signed.
> +		 */
> +		ret = of_property_read_u32(np, "st,proc-id", &proc_id);
> +		if (ret) {
> +			dev_err(dev, "failed to read st,rproc-id property\n");
> +			return ret;
> +		}
> +
> +		rproc = devm_rproc_alloc(dev, np->name, &st_rproc_tee_ops, NULL, sizeof(*ddata));
> +		if (!rproc)
> +			return -ENOMEM;
> +
> +		trproc = tee_rproc_register(dev, rproc, proc_id);
> +		if (IS_ERR(trproc)) {
> +			dev_err_probe(dev, PTR_ERR(trproc),
> +				      "signed firmware not supported by TEE\n");
> +			return PTR_ERR(trproc);
> +		}
> +	} else {
> +		rproc = devm_rproc_alloc(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
> +		if (!rproc)
> +			return -ENOMEM;
> +	}
>  
>  	ddata = rproc->priv;
>  
> @@ -915,6 +966,9 @@ static int stm32_rproc_probe(struct platform_device *pdev)
>  		dev_pm_clear_wake_irq(dev);
>  		device_init_wakeup(dev, false);
>  	}
> +	if (trproc)
> +		tee_rproc_unregister(trproc);
> +
>  	return ret;
>  }
>  
> @@ -935,6 +989,9 @@ static void stm32_rproc_remove(struct platform_device *pdev)
>  		dev_pm_clear_wake_irq(dev);
>  		device_init_wakeup(dev, false);
>  	}
> +	if (rproc->tee_interface)
> +		tee_rproc_unregister(rproc->tee_interface);
> +
>  }
>  
>  static int stm32_rproc_suspend(struct device *dev)
> -- 
> 2.25.1
> 

