Return-Path: <devicetree+bounces-8099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B317C6ADE
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:21:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BC2F2827B1
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:21:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE3622EF6;
	Thu, 12 Oct 2023 10:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBijRpEZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517A522336
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:21:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7106C433C7;
	Thu, 12 Oct 2023 10:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697106104;
	bh=Vb9bvzF9Stu4u5tXverHSofAvhWMAcSAdOtthdU05Yk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TBijRpEZh3zVbeUBQFQHwvk/CkzFHFiX9gAqaeJ807ZkHaGKz/0iodjjCLXudy1Jc
	 UOv53masyx6V3Crg2OBUwy24L39u0FxPQsPuZTFm+m3AApbrFJ4BhMxBCD+92xWMqk
	 G5CRqOdAYpHjdUwBEskI+4KMhbw14ONUIBjPZvtq24abadFe+qCtDcOTuUu+w/vurn
	 GaniWv7EQn5T0y2XsB1t+o17EMA/iP9+U2sEBaFRttjJ10darBtjjsBj4TDUsG7FKz
	 qnz97xicFdK7XEOw63h6Pu1H2gTVK+0AJ+xzLFW/4TcECx+pMpOfivpXVxPChL5+jp
	 0veC8S3Yuv0JA==
Date: Thu, 12 Oct 2023 12:21:40 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: gregory.clement@bootlin.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] i2c: mv64xxx: add an optional reset-gpios property
Message-ID: <20231012102140.kydfi2tppvhd7bdn@zenone.zhora.eu>
References: <20231012035838.2804064-1-chris.packham@alliedtelesis.co.nz>
 <20231012035838.2804064-3-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231012035838.2804064-3-chris.packham@alliedtelesis.co.nz>

Hi Chris,

...

>  static struct mv64xxx_i2c_regs mv64xxx_i2c_regs_mv64xxx = {
> @@ -1083,6 +1084,10 @@ mv64xxx_i2c_probe(struct platform_device *pd)
>  	if (drv_data->irq < 0)
>  		return drv_data->irq;
>  
> +	drv_data->reset_gpio = devm_gpiod_get_optional(&pd->dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(drv_data->reset_gpio))
> +		return PTR_ERR(drv_data->reset_gpio);

if this optional why are we returning in case of error?

> +
>  	if (pdata) {
>  		drv_data->freq_m = pdata->freq_m;
>  		drv_data->freq_n = pdata->freq_n;
> @@ -1121,6 +1126,12 @@ mv64xxx_i2c_probe(struct platform_device *pd)
>  			goto exit_disable_pm;
>  	}
>  
> +	if (drv_data->reset_gpio) {
> +		udelay(1);
> +		gpiod_set_value_cansleep(drv_data->reset_gpio, 0);
> +		udelay(1);

you like busy waiting :-)

What is the reason behind these waits? Is there anything
specified by the datasheet?

If not I would do a more relaxed sleeping like an usleep_range...
what do you think?

Andi

