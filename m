Return-Path: <devicetree+bounces-64428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE658B9568
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 09:41:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A86021F22348
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 07:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21EF2225AE;
	Thu,  2 May 2024 07:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hEvfHznr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B64E11CBD
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 07:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714635675; cv=none; b=tsBrnKbbAH825upoZ0+jX/KUd+w/xiCoBRtRngad8kl70IedyZqArqVsy2Gt3uPlWWKs7xmta10XLWuum+/n569ySJgosZKC6a/XyfCuTQCP9iFZ3XoOv334bTTpXWHKVsQ8RByx2xqUgiH4iWdfymK+5lLcAjPj6SDX4ijuRbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714635675; c=relaxed/simple;
	bh=zABtKC+Rtoh7jI4D99cudXvLlTLkH2cSA0Kfdm54lQw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IRmMDoXUgsU92DxlhdlbU6GOyWWhq5L5ZaPDekkRNSX4dGYffSggRRrejFQcc9zGnAWj2xPulAntwInEir+cvnGsGqADAAqxstkwx1D+J2hOU5LNtWX6WOb1E+vrQpdK6FZtJFYPfEGylZRGNlUJ4b4284MATjwKKFaaUZ6yil4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hEvfHznr; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a58e787130fso263170966b.0
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 00:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714635672; x=1715240472; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9Q2C006YjdfPOCf5/2sNCH0MuBR/EBBXkcEnDcvy0KM=;
        b=hEvfHznrQGIHw6Oxw9hqIYbiE0jrtzkUrHvwH/Bs1QQfvC0tpoE7hK5Pp4h6u2jizY
         UGBQKK/ZOlrl898RWELZOVPaQBN/zjzx38781a7nhMKWN3z+dfRvr4DtuAZ6l2phrSvE
         G2hTa/TyNCIlGQKRhjNQ0onh33cjCSmczsv5V88S6RphNblHRL1i0PGASYUQSwcRQJSI
         OLQCERFG6re06EYXcEZRAMqBIYisN0lrKscrgpfqTHi/lE8juzLG37fh9raW2OIhBl2g
         FnWIJue+9lhbAr3hp4IvfVq8SzYCKKzfdThf++a/oHYvrc/lwqDaMUGnV1nlpGgBSwFn
         OVHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714635672; x=1715240472;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9Q2C006YjdfPOCf5/2sNCH0MuBR/EBBXkcEnDcvy0KM=;
        b=L+8MtECVsdbbhGhqNbuAJpJyQLgMxEJURUL81i7RLFEhDSYcoBytkgRm/rTPD9Vm41
         JdfI7IdAEetQa+7C+QFbXaKdgX6QtwD9DCTMJ0pWSqycSUODiDnckCt2niMdST5t2AQn
         2NsYHWtqBxyW14Be2Swvijzb/ozGB/QKxQXS3hTXh244MFWtsRgeIOQ1uKR5e61l47Ig
         ot/THiYBBEKQpsDJT0Qxts8dZu2n2DmpeZ6MPnnKoT5SZniKkBcuUSYOZBcbN1AsdHf+
         dljoGmc62mnqK0xIz4l1dX70MQ2Lxk/dzmpfsMyBKy4b3fUzcFzGw8+GqeNAwBrOFauG
         E0VQ==
X-Forwarded-Encrypted: i=1; AJvYcCX63H1TNVo8jr6F2zT3dBnd8XW/O7E5Bm7JwFFuC8PSXT7fxkPxTalLlCPmLh86C54w2BKhIQ74LONZtgXGw/q29MDhYfxZYEl5ug==
X-Gm-Message-State: AOJu0YxESx1T00JEfljUeXuaZaK7G/nKK9pdJWXgyLkmnfZ9Z77MmNYG
	/fjqHE09NvsLEK0bhRM5mR1Q1DmHMAhgv8tIjUWLCgXQH1+SZ7LccxnlCXz30Og=
X-Google-Smtp-Source: AGHT+IFP6c4sujTOMTIqEmlCFgQb9BiI3UfyLMTVFf3tUx1jI6Xp+ozJDDd4kk44gM2ZM9XkX8ZcNg==
X-Received: by 2002:a17:907:7d94:b0:a59:5693:d709 with SMTP id oz20-20020a1709077d9400b00a595693d709mr1777751ejc.30.1714635671861;
        Thu, 02 May 2024 00:41:11 -0700 (PDT)
Received: from [172.20.10.10] ([213.233.85.172])
        by smtp.gmail.com with ESMTPSA id n26-20020a170906089a00b00a587868c5d2sm229664eje.195.2024.05.02.00.41.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 May 2024 00:41:11 -0700 (PDT)
Message-ID: <ea6f17d7-49bf-4a1e-ba3b-757e29221590@linaro.org>
Date: Thu, 2 May 2024 08:41:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] pinctrl: samsung: support a bus clock
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>,
 Peter Griffin <peter.griffin@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>,
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240426-samsung-pinctrl-busclock-v3-0-adb8664b8a7e@linaro.org>
 <20240426-samsung-pinctrl-busclock-v3-2-adb8664b8a7e@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240426-samsung-pinctrl-busclock-v3-2-adb8664b8a7e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, André!

On 4/26/24 14:25, André Draszik wrote:
> @@ -200,6 +235,14 @@ static int exynos_irq_request_resources(struct irq_data *irqd)
>  	shift = irqd->hwirq * bank_type->fld_width[PINCFG_TYPE_FUNC];
>  	mask = (1 << bank_type->fld_width[PINCFG_TYPE_FUNC]) - 1;
>  
> +	ret = clk_enable(bank->drvdata->pclk);
> +	if (ret) {
> +		dev_err(bank->gpio_chip.parent,
> +			"unable to enable clock for configuring pin %s-%lu\n",
> +			bank->name, irqd->hwirq);
> +		return ret;

here we return an error
> +	}
> +
>  	raw_spin_lock_irqsave(&bank->slock, flags);
>  
>  	con = readl(bank->pctl_base + reg_con);
> @@ -209,6 +252,8 @@ static int exynos_irq_request_resources(struct irq_data *irqd)
>  
>  	raw_spin_unlock_irqrestore(&bank->slock, flags);
>  
> +	clk_disable(bank->drvdata->pclk);
> +
>  	return 0;
>  }
>  
> @@ -223,6 +268,13 @@ static void exynos_irq_release_resources(struct irq_data *irqd)
>  	shift = irqd->hwirq * bank_type->fld_width[PINCFG_TYPE_FUNC];
>  	mask = (1 << bank_type->fld_width[PINCFG_TYPE_FUNC]) - 1;
>  
> +	if (clk_enable(bank->drvdata->pclk)) {
> +		dev_err(bank->gpio_chip.parent,
> +			"unable to enable clock for deconfiguring pin %s-%lu\n",
> +			bank->name, irqd->hwirq);
> +		return;

but here we just print an error. I guess that for consistency reasons it
would be good to follow up with a patch and change the return types of
these methods and return the error too when the clock enable fails.

Cheers,
ta

