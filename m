Return-Path: <devicetree+bounces-6320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D39DF7BAE3F
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 23:58:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 1F142B2099B
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 21:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA36F42C10;
	Thu,  5 Oct 2023 21:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lG/Y1i8O"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA98E42BF4
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 21:58:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44926C433C8;
	Thu,  5 Oct 2023 21:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696543119;
	bh=wg9da7L1CQtw+tuYOmZfz5J+NgLFvScI+3C0EoG/geo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lG/Y1i8OpAQPQat88kfyzi7NWqcNQ9Cz13NjQkWCQDOP2ullmbktnb7+j7T7OUkOb
	 f5JlDNF7/gNrGv6WsIbY9PvLXmfivEukYrAgLUezsgB+ory5ukH15S8Xv4FryuoHvm
	 cV6XP4Z6Hh8AKexq5/ZCHA5kDyDTcR1bhFJGILAMXqivj54d0rEwKfK6rNAAZDIKju
	 4UmdJQrB8vGY0vpbClN4hFjfJpvZNUa0FqIuD82KqRjuSbdHiAIHw7AxVLYJ98X3s9
	 Ahf54l68UPAnMvovAyIJZLRuXff0bqHURlk7YlgOcDStezWyy6odd8F6NpHTigPFWo
	 88Q1dlHsLuGAw==
Date: Thu, 5 Oct 2023 23:58:32 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: gregory.clement@bootlin.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	pierre.gondois@arm.com, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] i2c: mv64xxx: add support for FSM based recovery
Message-ID: <20231005215832.p4mxov6occzqmj2k@zenone.zhora.eu>
References: <20230926234801.4078042-1-chris.packham@alliedtelesis.co.nz>
 <20230926234801.4078042-4-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926234801.4078042-4-chris.packham@alliedtelesis.co.nz>

Hi Chris,

Looks good, just a few questions.

> +static int
> +mv64xxx_i2c_recover_bus(struct i2c_adapter *adap)
> +{
> +	struct mv64xxx_i2c_data *drv_data = i2c_get_adapdata(adap);
> +	int ret;
> +	u32 val;
> +
> +	dev_dbg(&adap->dev, "Trying i2c bus recovery\n");
> +	writel(MV64XXX_I2C_UNSTUCK_TRIGGER, drv_data->unstuck_reg);
> +	ret = readl_poll_timeout_atomic(drv_data->unstuck_reg, val,
> +					!(val & MV64XXX_I2C_UNSTUCK_INPROGRESS),
> +					1000, 5000);

here you are busy looping for 1ms between reads which is a long
time. Why not using read_poll_timeout() instead?

> +	if (ret) {
> +		dev_err(&adap->dev, "recovery timeout\n");
> +		return ret;
> +	}
> +
> +	if (val & MV64XXX_I2C_UNSTUCK_ERROR) {
> +		dev_err(&adap->dev, "recovery failed\n");
> +		return -EBUSY;
> +	}
> +
> +	dev_info(&adap->dev, "recovery complete after %d pulses\n", MV64XXX_I2C_UNSTUCK_COUNT(val));

dev_dbg?

> +	return 0;
> +}
> +

[...]

> -	if (of_device_is_compatible(np, "marvell,mv78230-a0-i2c")) {
> +	if (of_device_is_compatible(np, "marvell,mv78230-a0-i2c") ||
> +	    of_device_is_compatible(np, "marvell,armada-8k-i2c")) {

should this be part of a different patch?

>  		drv_data->offload_enabled = false;
>  		/* The delay is only needed in standard mode (100kHz) */
>  		if (bus_freq <= I2C_MAX_STANDARD_MODE_FREQ)
> @@ -936,8 +973,21 @@ mv64xxx_of_config(struct mv64xxx_i2c_data *drv_data,
>  }
>  #endif /* CONFIG_OF */
>  
> -static int mv64xxx_i2c_init_recovery_info(struct mv64xxx_i2c_data *drv_data,
> -					  struct device *dev)
> +static int mv64xxx_i2c_init_fsm_recovery_info(struct mv64xxx_i2c_data *drv_data,
> +					      struct device *dev)
> +{
> +	struct i2c_bus_recovery_info *rinfo = &drv_data->rinfo;
> +
> +	dev_info(dev, "using FSM for recovery\n");

dev_dbg?

> +	rinfo->recover_bus = mv64xxx_i2c_recover_bus;
> +	drv_data->adapter.bus_recovery_info = rinfo;
> +
> +	return 0;
> +
> +}
> +

[...]

> +	/* optional unstuck support */
> +	res = platform_get_resource(pd, IORESOURCE_MEM, 1);
> +	if (res) {
> +		drv_data->unstuck_reg = devm_ioremap_resource(&pd->dev, res);
> +		if (IS_ERR(drv_data->unstuck_reg))
> +			return PTR_ERR(drv_data->unstuck_reg);

OK, we failed to ioremap... but instead of returning an error,
wouldn't it be better to just set unstuck_reg to NULL and move
forward without unstuck support?

Maybe you will stil crash later because something might have
happened, but failing on purpose on an optional feature looks a
bit too drastic to me. What do you think?

Thanks,
Andi

