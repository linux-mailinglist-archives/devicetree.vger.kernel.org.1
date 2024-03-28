Return-Path: <devicetree+bounces-50188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C1987A3E3
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 09:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E8532830F7
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 08:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785E71756B;
	Wed, 13 Mar 2024 08:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eap1xhdm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DCCB171C1
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 08:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710317078; cv=none; b=rMMoR7Q1ww/teHZRQFZlhz+tlPozn7zuafMk7z20SEK+G2gOq454vGvWOsyo8xkyoWW9uLuWaP72yj2lnnvs23j2mBZg85DEF+2PMwJkc5l4+4+MYk1YeGxJyA18jA9oDpqfizNi1g2YnZx0LCXilK180+V/9rxlJKQquWbPgAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710317078; c=relaxed/simple;
	bh=0VweyCvvh52RSXYZqjiCD1zfKUTIvXRhFBEVZ1v8/kM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jfUD9AIMp8w+k1t7YIgLXAb1Syv64ExRuqrQk7E94sVYDRR7YQlAUhvATD0fdg56k0ZaO9GaKu11bh7VRM1X9Cvew8HTXpHKKX+AMkMFJXkWdtvpvgN795QeDrJRaBBcR4JTxJt7szi9OfG3wszOBz234NYgETXOmSLQVE9HOyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eap1xhdm; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-568107a9ff2so714662a12.3
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 01:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710317075; x=1710921875; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j44O4+E9DtDtPgRQ9/Yu+KpkVtPs6ZzcxYJI68kweVk=;
        b=eap1xhdmhGFYjGr/PWrqN6U7/phVhHhQqNpUg61CGHHONe3/5HH60nWvRHwaYrrA5t
         sgu4HqswOQf3DbnbyCNHHSK0OiuTvH+HVsszUMwT9udjvjkBCmifHgRgxOu9CiE2v5m+
         SsxuY2OWV6Clk1J5cgQ1o7na/Xl9vUFPcwH0iKXTCzGeyVGep3S1zKdEIjlS5WGKxUHj
         sUYnTSC8ZkAuRVzkzJpqUAkEQ94wDw8naO1lWkvAvr3JjOqrNACJQUE+T7al3wPJOr64
         xrQFg28G4BtiN+GWQvp9PdJcPQHUGpwJQ7+Lkkil+tNQKsAcn3i9L80S2gEn1SLKewMM
         2Rig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710317075; x=1710921875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j44O4+E9DtDtPgRQ9/Yu+KpkVtPs6ZzcxYJI68kweVk=;
        b=SI4Ha5pyBEr1vCxhg6cmaBl/PuYqtjv1KBdllqWil/2ryzX9i+9nmDK6eXFlncn4Sx
         XIkh3eP3g5qd+/aMGKZAzPczUBEQ3TvR8zucnOwrVYvF+ON89h1gH/p8OIhunSeRUqzL
         xqtC87nrLK94DjPvTfNgjVkp30BmtSivPubRzroZwNCwiHvcNPmXNHAtbXGaRfLdAk1H
         4H/n9SAsnl0hmK1RwezY2nk7XTLSqGfYANYx8UeEiyUXwKsyeTz7dQ9dT2IHmYOM0KW1
         7KAMG9FnOeglVFnydopgkpjPEiQaMTC06LkIzkpHZxzi3UxQdBU2BV2TimGRwWxY9ZPg
         Nq/g==
X-Forwarded-Encrypted: i=1; AJvYcCWpDxIjUAUaz6R/+vUQe1T4X1F7K+vhPebn66k4nvH3wyDf+cU41ib6bzUDn0F27wGFpq+PibL7Z+r3hbSPEx5alFOZl8mBodq2cQ==
X-Gm-Message-State: AOJu0YyGWr5KZucLpHH/vmHj8K2yXH+ZsmqRuZPimUWSbNMNpwHEOk4Z
	MV5UnCGzVHI2ubcCTz/1H7up4CI4h39EUp32+mw9SVC9ffKXmvp6VSopHMkyfwU=
X-Google-Smtp-Source: AGHT+IGZcVk2eGHvZSn6CPbma5VIP7uQjpMOrYeHbNwrT6GGHa/VN6GauQcBu3SnDNxlM8kENgnpGg==
X-Received: by 2002:a50:a412:0:b0:568:1988:f699 with SMTP id u18-20020a50a412000000b005681988f699mr1802831edb.30.1710317074601;
        Wed, 13 Mar 2024 01:04:34 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id b20-20020aa7dc14000000b005684fa1c4dbsm3644090edu.52.2024.03.13.01.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 01:04:33 -0700 (PDT)
Date: Wed, 13 Mar 2024 11:04:30 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jacky Huang <ychuang570808@gmail.com>
Cc: linus.walleij@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	p.zabel@pengutronix.de, j.neuschaefer@gmx.net,
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	ychuang3@nuvoton.com, schung@nuvoton.com
Subject: Re: [PATCH v6 3/3] pinctrl: nuvoton: Add ma35d1 pinctrl and GPIO
 driver
Message-ID: <5c555723-1731-40cc-b9be-a88ef617e09f@moroto.mountain>
References: <20240313035719.768469-1-ychuang570808@gmail.com>
 <20240313035719.768469-4-ychuang570808@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240313035719.768469-4-ychuang570808@gmail.com>

On Wed, Mar 13, 2024 at 03:57:19AM +0000, Jacky Huang wrote:
> +static int ma35_gpiolib_register(struct platform_device *pdev, struct ma35_pinctrl *npctl)
> +{
> +	struct ma35_pin_ctrl *ctrl = npctl->ctrl;
> +	struct ma35_pin_bank *bank = ctrl->pin_banks;
> +	int ret;
> +	int i;
> +
> +	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
> +		if (!bank->valid) {
> +			dev_warn(&pdev->dev, "bank %s is not valid\n",
> +				 bank->np->name);
> +			continue;
> +		}
> +		bank->irqtype = 0;
> +		bank->irqinten = 0;
> +		bank->chip.label = bank->name;
> +		bank->chip.of_gpio_n_cells = 2;
> +		bank->chip.parent = &pdev->dev;
> +		bank->chip.request = ma35_gpio_core_to_request;
> +		bank->chip.direction_input = ma35_gpio_core_direction_in;
> +		bank->chip.direction_output = ma35_gpio_core_direction_out;
> +		bank->chip.get = ma35_gpio_core_get;
> +		bank->chip.set = ma35_gpio_core_set;
> +		bank->chip.base = -1;
> +		bank->chip.ngpio = bank->nr_pins;
> +		bank->chip.can_sleep = false;
> +		spin_lock_init(&bank->lock);
> +
> +		if (bank->irq > 0) {
> +			struct gpio_irq_chip *girq;
> +
> +			girq = &bank->chip.irq;
> +			gpio_irq_chip_set_chip(girq, &ma35_gpio_irqchip);
> +			girq->parent_handler = ma35_irq_demux_intgroup;
> +			girq->num_parents = 1;
> +
> +			girq->parents = devm_kcalloc(&pdev->dev, 1, sizeof(*girq->parents),
> +						     GFP_KERNEL);
> +			if (!girq->parents)
> +				return -ENOMEM;

ret = -ENOMEM;
goto fail;

regards,
dan carpenter

> +
> +			girq->parents[0] = bank->irq;
> +			girq->default_type = IRQ_TYPE_NONE;
> +			girq->handler = handle_level_irq;
> +		}
> +
> +		ret = gpiochip_add_data(&bank->chip, bank);
> +		if (ret) {
> +			dev_err(&pdev->dev, "failed to register gpio_chip %s, error code: %d\n",
> +				bank->chip.label, ret);
> +			goto fail;
> +		}
> +	}
> +	return 0;
> +
> +fail:
> +	for (--i, --bank; i >= 0; --i, --bank) {
> +		if (!bank->valid)
> +			continue;
> +		gpiochip_remove(&bank->chip);
> +	}
> +	return ret;
> +}


