Return-Path: <devicetree+bounces-14995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA48C7E7C29
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 13:27:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7C2C1C2097B
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 12:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A176F18E15;
	Fri, 10 Nov 2023 12:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oBO+AhV7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F75118E09
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 12:27:41 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5D8233F9C
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 04:27:40 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40839807e82so12243705e9.0
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 04:27:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699619259; x=1700224059; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8EJtfoWrYibrvvyf7DDtBK1pc0WtivZ03vd9ez0zk9M=;
        b=oBO+AhV7fW58gp1AEeB1eSOuO/sl7zjS14Ls5KHvlhqa2iaIEvVE8QtNr7npMto1+k
         Z00AFzS+gejahL7kSXwzVu6Gm9uejC2naTAHJY0iWxlVdCbpWy9x93j8vOaNli81hsUm
         a+g6UV+h0ocYSwtHUUgaYey5BVhPv5TvzQjZDjh7BUZtDiIaMY+9T6q/KzCeFfoRrsO5
         cRSXp/kcwBZUI/G6mQecP9L0EZal8F9KmLtH6kea8zXj78UKqOgNx8oEK+ZHTt/zwmel
         ko7kiFxR7hCuFtd40SrTQlNjJBqIGhx//vzIMO2bT1mxPqmxQR97zevDQncEAT4C+08w
         5DkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699619259; x=1700224059;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8EJtfoWrYibrvvyf7DDtBK1pc0WtivZ03vd9ez0zk9M=;
        b=BnxMfqY3OLVKFNkDRjkY1duzjs0Tn29kELjN7uQpqsjsV3kNcWAAof6G7S5vvqo0u1
         iA83HZQQrVhIEkofB5gb2lZ6Yb/O1YdPqDE0cTObZcgzo76dY5R/U4Qh1g5JOS2HcwEm
         AAwjBy9KsNBRWkj80B28Hn3pEaXf1+hiUe4zLQUFxBgkW2N1lb2Q8nvYrO5xnCnQb/iS
         FM0KiIzwBEt7taBVdy+1CXWwMQul7n9lFdVy2KHtSw70zKY+GmOSh7HLgSkZK8u/eEeO
         EVpqoZJu3QdtndzY+To2ltv99QcYGJZYUHefF+17f5TDHwaQlrCYqJ2N0R3VTp7ojT01
         Jt7Q==
X-Gm-Message-State: AOJu0YzuhK4TlkaUjVL+MrunMvGDoYm6Nrp8wtHd0ex7/umaJ+4WSK4z
	Q7bqN0IvqiVzE0nARYtq42ZvrQ==
X-Google-Smtp-Source: AGHT+IHhFC8+acrJ15sJ9jd+I8MBXyTvFfbwQZyiZ96JDCYY/icKa8sVEJYynTX87bbtgHzKDsC12w==
X-Received: by 2002:a05:600c:3c85:b0:401:c7ec:b930 with SMTP id bg5-20020a05600c3c8500b00401c7ecb930mr2859919wmb.10.1699619259077;
        Fri, 10 Nov 2023 04:27:39 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id d14-20020a05600c34ce00b00406443c8b4fsm5028154wmq.19.2023.11.10.04.27.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 04:27:38 -0800 (PST)
Message-ID: <66173ccd-4478-4622-a386-557a8d35102f@linaro.org>
Date: Fri, 10 Nov 2023 13:27:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/4] pwm: opencores: Add PWM driver support
Content-Language: en-US
To: William Qiu <william.qiu@starfivetech.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-pwm@vger.kernel.org
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Hal Feng <hal.feng@starfivetech.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
References: <20231110062039.103339-1-william.qiu@starfivetech.com>
 <20231110062039.103339-3-william.qiu@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231110062039.103339-3-william.qiu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/11/2023 07:20, William Qiu wrote:
> Add Pulse Width Modulation driver support for OpenCores.

What is OpenCores? Why all your commit messages lack basic explanation
of the hardware you are working on?

> 


> +static const struct ocores_pwm_data jh7100_pwm_data = {
> +	.get_ch_base = starfive_jh71x0_get_ch_base,
> +};
> +
> +static const struct ocores_pwm_data jh7110_pwm_data = {
> +	.get_ch_base = starfive_jh71x0_get_ch_base,
> +};
> +
> +static const struct of_device_id ocores_pwm_of_match[] = {
> +	{ .compatible = "opencores,pwm" },
> +	{ .compatible = "starfive,jh7100-pwm", .data = &jh7100_pwm_data},
> +	{ .compatible = "starfive,jh7110-pwm", .data = &jh7110_pwm_data},

Your bindings say something entirely else.

I don't understand what is happening with this patchset.


> +	{ /* sentinel */ }
> +};

...

> +	ddata->regs = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(ddata->regs))
> +		return dev_err_probe(dev, PTR_ERR(ddata->regs),
> +				     "Unable to map IO resources\n");
> +
> +	ddata->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(ddata->clk))
> +		return dev_err_probe(dev, PTR_ERR(ddata->clk),
> +				     "Unable to get pwm's clock\n");
> +
> +	ret = clk_prepare_enable(ddata->clk);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Clock enable failed\n");

dev_clk_get_enabled() or whatever the API is called

> +
> +	ddata->rst = devm_reset_control_get_optional_exclusive(dev, NULL);
> +	reset_control_deassert(ddata->rst);
> +
> +	ddata->clk_rate = clk_get_rate(ddata->clk);
> +	if (ddata->clk_rate <= 0)
> +		return dev_err_probe(dev, ddata->clk_rate,
> +				     "Unable to get clock's rate\n");
> +
> +	ret = devm_pwmchip_add(dev, chip);
> +	if (ret < 0) {
> +		dev_err_probe(dev, ret, "Could not register PWM chip\n");
> +		clk_disable_unprepare(ddata->clk);
> +		reset_control_assert(ddata->rst);

return dev_err_probe

> +	}
> +
> +	platform_set_drvdata(pdev, ddata);
> +
> +	return ret;
> +}
> +
> +static void ocores_pwm_remove(struct platform_device *dev)
> +{
> +	struct ocores_pwm_device *ddata = platform_get_drvdata(dev);
> +
> +	reset_control_assert(ddata->rst);
> +	clk_disable_unprepare(ddata->clk);

You have confusing order of cleanups. It's like random, once clock then
reset, in other place reset then clock.

Best regards,
Krzysztof


