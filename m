Return-Path: <devicetree+bounces-110385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D83699A464
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:06:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4B0E285542
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 13:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04D34216A0D;
	Fri, 11 Oct 2024 13:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qZc21V87"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B827218591
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 13:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728651973; cv=none; b=qjdD5+zYCG64z9yOt+wUsHMUeU1J1apSSuMwQSvUFWS1r+/9U2cOOUm8QXkhfAjia2EkPPhoQctaFP2pzYHLJJnaiqfSrzBPmp8zEU61RMqTeApNR6Qm2nylTf3PHKUh0V8RR5KKM65ZZjYVmzf3MWQ/BbaAqIVO3pPlhGuNTWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728651973; c=relaxed/simple;
	bh=d0fo0z+KzVHWc/06H+Czk13uO8+83lUhqNEXn43C/qA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YPB2A+aBoBZOHUBsA3YNCARiFGCc9fnu7EZVhC2goWxH4vP5ex+GBgdoq42EAobzzC4kXkSbYMEkzbmJwXAP0XqqSs24yiaM/TmCkEPQZYHtOFguqWcm6YBjlw8HBwWI6p7HHWkapsrzIhpoW9GtHC3iXGS8N8X4Ch4VzNfdK8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qZc21V87; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-430f6bc9ca6so15638315e9.2
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 06:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728651970; x=1729256770; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zCr37LXC8U2CQB6S8iXUVH+w4SrNi18E4HtRCwJJuJ8=;
        b=qZc21V87DSWD+vanWyj05b7XBXkmLRDucxzgZgf3gct/21OBkySphabBMzWYkNZ+UB
         k+adBOEzauM2D7NQBtTGKhPNO9a1sGlKhqnelE4tiPGCgmVDmk+unx/ZahlG9gtmfzFj
         kaOKPZTvXk6XGBGLTgojqqQDWo7pSKMZ7Hv0kWaK1rO7eBfC70dnadZWD/zjv+bdtkNY
         /TXsQy+Cz/Z2sQEJXHXknfasqD1B0PCPfaO5IKvfoD6lP4cDlMFcDEYEgVUk99ymlKlb
         ZTSqS1LINyWATiXrYZQfxoBTWygazLZYSqmb5Ynji10ixhdXaHUwSJwGLgF4c8ErJhc2
         ShkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728651970; x=1729256770;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zCr37LXC8U2CQB6S8iXUVH+w4SrNi18E4HtRCwJJuJ8=;
        b=V3KuHU+UuKEXNA/g3zTTNG6Esn2j85PF2nP2Wj3XaoSusLIk1fpPEe3ODX1RxImPiD
         NN5xPIepPU9U1Clm6kg6QBIjPqFQJ8u2AihePgRd9O8YQtBFHCCXSNC5SK2UYYKafLKE
         iCxjAiB9/0XHR8jrtjgBmDSLo6+TaFleOMKzN8KQLU6sMdWK3iLUvV31E0m4pgcdxVWQ
         UxYbeXWFb7jfWf4KljW855n9aX2ApWbpjPdFlnL92LwJUVrzXyo30Bzxyak9t5zuF2A7
         T+ruDz9cUp72ihgwVJTPbismlcbfpDQL1RVDezIJ/PufQup8hgm7fxBmoGtqQuc9xkhq
         NPRw==
X-Forwarded-Encrypted: i=1; AJvYcCXjisa8em5AkYdRyaFHpO8vlw9k70HzgeXG9uGK21it7JS9t3RprFyJ3L8D/EAfOlYw+YibdpULfjK0@vger.kernel.org
X-Gm-Message-State: AOJu0YzRdEkgaMptT1zJN+Pk6YnHuA5tXnWUGEPGV2qbfDzo7mPfi9rM
	1gxT339G+SKDPlKKz8XSIg1PyC2YG0Cow1GtG7fdaExO9g5s0W74635Z17QKdNU=
X-Google-Smtp-Source: AGHT+IGAa0EQAJZF+Lh7FUx2jhBZmgYnqQLqg9c45XbgMirrVdFpJCh5ZEZCWOekRRCzVbWbfunFNQ==
X-Received: by 2002:adf:ef11:0:b0:37d:3dfc:949c with SMTP id ffacd0b85a97d-37d552957eemr1640400f8f.41.1728651970538;
        Fri, 11 Oct 2024 06:06:10 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b79fdc2sm3910675f8f.88.2024.10.11.06.06.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 06:06:10 -0700 (PDT)
Date: Fri, 11 Oct 2024 16:06:06 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Kevin Chen <kevin_chen@aspeedtech.com>
Cc: tglx@linutronix.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH v3 2/2] irqchip/aspeed-intc: Add support for AST27XX INTC
Message-ID: <37525238-c9f8-4f0e-b4e5-4e2f05fab775@stanley.mountain>
References: <20241009115813.2908803-1-kevin_chen@aspeedtech.com>
 <20241009115813.2908803-3-kevin_chen@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241009115813.2908803-3-kevin_chen@aspeedtech.com>

On Wed, Oct 09, 2024 at 07:58:13PM +0800, Kevin Chen wrote:
> +static int __init aspeed_intc_ic_of_init(struct device_node *node,
> +					 struct device_node *parent)
> +{
> +	struct aspeed_intc_ic *intc_ic;
> +	int ret = 0;
> +	int irq, i;
> +
> +	intc_ic = kzalloc(sizeof(*intc_ic), GFP_KERNEL);
> +	if (!intc_ic)
> +		return -ENOMEM;
> +
> +	intc_ic->base = of_iomap(node, 0);
> +	if (!intc_ic->base) {
> +		pr_err("Failed to iomap intc_ic base\n");
> +		ret = -ENOMEM;
> +		goto err_free_ic;
> +	}
> +	writel(0xffffffff, intc_ic->base + INTC_INT_STATUS_REG);
> +	writel(0x0, intc_ic->base + INTC_INT_ENABLE_REG);
> +
> +	intc_ic->irq_domain = irq_domain_add_linear(node, 32,
> +						    &aspeed_intc_ic_irq_domain_ops, intc_ic);
> +	if (!intc_ic->irq_domain) {
> +		ret = -ENOMEM;
> +		goto err_iounmap;
> +	}
> +
> +	raw_spin_lock_init(&intc_ic->gic_lock);
> +	raw_spin_lock_init(&intc_ic->intc_lock);
> +
> +	/* Check all the irq numbers valid. If not, unmaps all the base and frees the data. */
> +	for (i = 0; i < of_irq_count(node); i++) {
> +		irq = irq_of_parse_and_map(node, i);
> +		if (!irq) {
> +			pr_err("Failed to get irq number\n");
> +			ret = -EINVAL;
> +			goto err_iounmap;
> +		}
> +	}
> +
> +	for (i = 0; i < of_irq_count(node); i++) {
> +		irq = irq_of_parse_and_map(node, i);
> +			irq_set_chained_handler_and_data(irq, aspeed_intc_ic_irq_handler, intc_ic);

There is an extra tab on this line.

regards,
dan carpenter

> +	}
> +
> +	return 0;



