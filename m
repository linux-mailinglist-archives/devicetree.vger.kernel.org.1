Return-Path: <devicetree+bounces-256390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9986D38E60
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 13:03:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FB163019BC5
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 12:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C508E30C359;
	Sat, 17 Jan 2026 12:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o/ZpaUs1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32582D1F64
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 12:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768651389; cv=none; b=rbCjS2o8OWyLdOekXZ4J7u0O/tKFsij2x9sBHqP+Jzhqs6KqXDGYyKOaNlydz7n+evYI4gvmhtX9RvoRGJNblwOd4GM0fOslOaa1JGFvKWf49pf8rs4qTYoBIsE49l9fGE34icVvdLAd+FWfq/+gcnvstZtI7D4dkQfxNlP834g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768651389; c=relaxed/simple;
	bh=K00qxXVYAgjogp+eQMeRQVso+5GUgNP/gI8Eqd3+zsI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OIF1e2OUvMQslFTsglIN+YjlhfQFWZGO+vYEYedFbQNetIWyTeVr1otw3pDEwQmnNRWdMib8RvbxQaWPMah7CZv/iApFrP6qYn2/PlcVcYagiVpFYFxg9ALdK1x7hk+1XuRegk2NC6t5bvFpKvcYhs6IGNgTE/eQF9m/W0817NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o/ZpaUs1; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-382fc524cf3so2283471fa.0
        for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 04:03:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768651386; x=1769256186; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JT/sW0/Fa74RHt1FJUosgK1BrqCKXUUAbI7KDecqiQ0=;
        b=o/ZpaUs1k3f0tNfvj0iX/Q6yxSDZE/xWERNWo6S+AX0dTxbWHW+UNs53cmICBur7X1
         THMJc923oQ+UjlQZDpWYb3n3YuWV7pguhzoEbAUORSRSFVUpAfqxKoYYBvqQs+wqzEHe
         7ilIe2mixLKH2LUizQi4mSvGuW8xTHKYFw3WmOhk6Cv/O7oPv0boVKBI3+0ltgP2bCbu
         ONx4b/7bBHKjn/lli4Ul1+qvPAuPQvo5xLQ6Mu5PmMYN+qlM6Nz8C8ROx42HpEPrr2vZ
         W1Oj02En474rlYIQe2u5mdp/Pm+Yk09xuJrzGMmiZ74TYuDBrgTarE+RBEt4naietecC
         Zmww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768651386; x=1769256186;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JT/sW0/Fa74RHt1FJUosgK1BrqCKXUUAbI7KDecqiQ0=;
        b=IzmtNrZ+yl7ltwLB/rRyYcnHtcFu4EtNunt8OR3JsDm+B1cP7NzCb7T/CrQ82VIvQI
         wFItXnGZElfWQ3juRuGhPyziDMqXdyQ2SidSanvv6UZVDnB/YOI0+/3dCe6Y9W7qOi5b
         8xBQpg7MB66wOwQtLuTU5RYwyYMe8fdSvc3pUVk2OCbbAJpUsvbICPXnal+1e/goY5Mq
         IKLyFn1dMDHJ6Ix1Su2Eui+FdYLWOo/nqHBtiHguKcc6Mciiyac2l2uj2IfIWsw10isP
         pyZOv1Y8pgwrRAy2fKdAZ1cS55xz7sMCAKdQW3aUTZwjEUtGnS7c7MGhUNeZwnK7flB7
         NaNg==
X-Forwarded-Encrypted: i=1; AJvYcCVjYFu+pqFC+ukY9E/wB98fOMVTUS1/aXvZ2vyPmzSvKqkZi6Q7UOtev/A2tlYX8OyNeapCiKfIafF3@vger.kernel.org
X-Gm-Message-State: AOJu0YzLz+5UkFMuf3zs64UxyJcmHKgKI21Nh1D+RHupjrgl1kV3HXrd
	Tc9pezXJmnVnnr+y0OR0VuN94PTI+drqvZbanW5C/xvuOoyZJNSMU34/nHQDn3imf28=
X-Gm-Gg: AY/fxX7u6P6B9Ks8l+kxsRIMdKkrfQk/2XTPcArzhNUUo4jAvskAA7vHLgzDWgaKGWX
	5vmfE72PN2TsKl/OpXC3g1lr0hCdiw97C/f2eYGwKCNB2PY1gpLGI3QDtItBx3pqh9e3NnuMwyb
	CsRUEIbHF5pjB88/DJM0LJqPMr3ZPVuLPowyp1ocFVO0SsmeWxSJGpSDJ5cxNXUbG0n35mUNEvC
	hhL4Uv4+EJMRqx5xZnv6UyKtue4MEWj+/rmWT3oYKeZt6TJx04Qq4egchTWwDipQzuReOjrVDJ/
	twc/56Oyu75vElt7OukzLKk9lnSMK9EhbL89++gcpfog7iwfBBR2H3J0ISev80SbjaCNMtKhRvb
	4lR+dW2K2eSMaJBZkVwg4gWrvjLs+xxSad+E8pfQQbulZQZ7MF88WX8ZwxGGZffQaFdIAgZFNWx
	qyMSbg05hATSOmRRNCeLryCLFhO9uDT7foJDSvNellZjTfp+RE7NkLi8qpd5MQ5wmGog==
X-Received: by 2002:a05:651c:41c4:b0:37a:4fb0:69a6 with SMTP id 38308e7fff4ca-38384180b18mr13042911fa.2.1768651385968;
        Sat, 17 Jan 2026 04:03:05 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384e788d5sm16240881fa.31.2026.01.17.04.03.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jan 2026 04:03:04 -0800 (PST)
Message-ID: <a29ff1e4-117c-4703-b0c7-73ad4e369201@linaro.org>
Date: Sat, 17 Jan 2026 14:03:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/5] media: i2c: imx355: Support devicetree and power
 management
To: Richard Acayan <mailingradian@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org
References: <20260117040657.27043-1-mailingradian@gmail.com>
 <20260117040657.27043-3-mailingradian@gmail.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260117040657.27043-3-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/17/26 06:06, Richard Acayan wrote:
> A device tree compatible makes it possible for this driver to be used on
> Open Firmware devices. Initialization of power-managed resources such as
> the reset GPIO and voltage regulators can be specified in the device
> tree and handled by the driver. Add support for this so the Pixel 3a can
> use the driver.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>   drivers/media/i2c/imx355.c | 116 ++++++++++++++++++++++++++++++++++---
>   1 file changed, 108 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> index 776107efe386..5a8da035ba5f 100644
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c
> @@ -3,9 +3,13 @@
>   
>   #include <linux/acpi.h>
>   #include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
>   #include <linux/i2c.h>
>   #include <linux/module.h>
> +#include <linux/of.h>
>   #include <linux/pm_runtime.h>
> +#include <linux/regulator/consumer.h>
>   #include <linux/unaligned.h>
>   
>   #include <media/v4l2-ctrls.h>
> @@ -125,6 +129,15 @@ struct imx355 {
>   	 * Protect access to sensor v4l2 controls.
>   	 */
>   	struct mutex mutex;
> +
> +	struct gpio_desc *reset_gpio;
> +	struct regulator_bulk_data *supplies;
> +};
> +
> +static const struct regulator_bulk_data imx355_supplies[] = {
> +	{ .supply = "avdd" },
> +	{ .supply = "dvdd" },
> +	{ .supply = "dovdd" },
>   };
>   
>   static const struct imx355_reg imx355_global_regs[] = {
> @@ -1515,6 +1528,55 @@ static const struct v4l2_subdev_internal_ops imx355_internal_ops = {
>   	.open = imx355_open,
>   };
>   
> +static int imx355_power_off(struct device *dev)
> +{
> +	struct i2c_client *client = container_of(dev, struct i2c_client, dev);
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct imx355 *imx355 = to_imx355(sd);
> +
> +	gpiod_set_value_cansleep(imx355->reset_gpio, 1);
> +
> +	regulator_bulk_disable(ARRAY_SIZE(imx355_supplies), imx355->supplies);
> +	clk_disable_unprepare(imx355->clk);
> +
> +	return 0;
> +}
> +
> +static int imx355_power_on(struct device *dev)
> +{
> +	struct i2c_client *client = container_of(dev, struct i2c_client, dev);
> +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> +	struct imx355 *imx355 = to_imx355(sd);
> +	int ret;
> +
> +	ret = clk_prepare_enable(imx355->clk);
> +	if (ret) {
> +		dev_err(dev, "failed to enable clocks: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(imx355_supplies),
> +				    imx355->supplies);
> +	if (ret) {
> +		dev_err(dev, "failed to enable regulators: %d\n", ret);
> +		goto error_disable_clocks;
> +	}
> +
> +	gpiod_set_value_cansleep(imx355->reset_gpio, 1);
> +	usleep_range(1000, 2000);

The deassert above is not needed IMO, anyway.

> +	gpiod_set_value_cansleep(imx355->reset_gpio, 0);
> +	usleep_range(10000, 11000);
> +
> +	return 0;
> +
> +error_disable_clocks:
> +	clk_disable_unprepare(imx355->clk);
> +	return ret;
> +}
> +
> +static DEFINE_RUNTIME_DEV_PM_OPS(imx355_pm_ops, imx355_power_off,
> +				 imx355_power_on, NULL);
> +
>   /* Initialize control handlers */
>   static int imx355_init_controls(struct imx355 *imx355)
>   {
> @@ -1689,16 +1751,26 @@ static int imx355_probe(struct i2c_client *client)
>   				     "external clock %lu is not supported\n",
>   				     freq);
>   
> -	/* Initialize subdev */
> -	v4l2_i2c_subdev_init(&imx355->sd, client, &imx355_subdev_ops);
> -
> -	/* Check module identity */
> -	ret = imx355_identify_module(imx355);
> +	ret = devm_regulator_bulk_get_const(imx355->dev,
> +					    ARRAY_SIZE(imx355_supplies),
> +					    imx355_supplies,
> +					    &imx355->supplies);
>   	if (ret) {
> -		dev_err(imx355->dev, "failed to find sensor: %d", ret);
> +		dev_err_probe(imx355->dev, ret, "could not get regulators");
>   		goto error_probe;
>   	}
>   
> +	imx355->reset_gpio = devm_gpiod_get_optional(imx355->dev, "reset",
> +						     GPIOD_OUT_HIGH);
> +	if (IS_ERR(imx355->reset_gpio)) {
> +		ret = dev_err_probe(imx355->dev, PTR_ERR(imx355->reset_gpio),
> +				    "failed to get gpios");
> +		goto error_probe;
> +	}
> +
> +	/* Initialize subdev */
> +	v4l2_i2c_subdev_init(&imx355->sd, client, &imx355_subdev_ops);
> +
>   	imx355->hwcfg = imx355_get_hwcfg(imx355->dev);
>   	if (!imx355->hwcfg) {
>   		dev_err(imx355->dev, "failed to get hwcfg");
> @@ -1706,13 +1778,26 @@ static int imx355_probe(struct i2c_client *client)
>   		goto error_probe;
>   	}
>   
> +	ret = imx355_power_on(imx355->dev);
> +	if (ret) {
> +		dev_err(imx355->dev, "failed to power on sensor: %d", ret);

You do write a message to the kernel log buffer on error in imx355_power_on(),
and here it can be removed.

Also you may start using dev_err_probe() on all new error paths.

> +		goto error_probe;
> +	}
> +
> +	/* Check module identity */
> +	ret = imx355_identify_module(imx355);
> +	if (ret) {
> +		dev_err(imx355->dev, "failed to find sensor: %d", ret);
> +		goto error_power_off;
> +	}
> +
>   	/* Set default mode to max resolution */
>   	imx355->cur_mode = &supported_modes[0];
>   
>   	ret = imx355_init_controls(imx355);
>   	if (ret) {
>   		dev_err(imx355->dev, "failed to init controls: %d", ret);
> -		goto error_probe;
> +		goto error_power_off;
>   	}
>   
>   	/* Initialize subdev */
> @@ -1752,6 +1837,9 @@ static int imx355_probe(struct i2c_client *client)
>   error_handler_free:
>   	v4l2_ctrl_handler_free(imx355->sd.ctrl_handler);
>   
> +error_power_off:
> +	imx355_power_off(imx355->dev);
> +
>   error_probe:
>   	mutex_destroy(&imx355->mutex);
>   
> @@ -1768,7 +1856,11 @@ static void imx355_remove(struct i2c_client *client)
>   	v4l2_ctrl_handler_free(sd->ctrl_handler);
>   
>   	pm_runtime_disable(imx355->dev);
> -	pm_runtime_set_suspended(imx355->dev);
> +
> +	if (!pm_runtime_status_suspended(imx355->dev)) {
> +		imx355_power_off(imx355->dev);
> +		pm_runtime_set_suspended(imx355->dev);
> +	}
>   
>   	mutex_destroy(&imx355->mutex);
>   }
> @@ -1779,10 +1871,18 @@ static const struct acpi_device_id imx355_acpi_ids[] __maybe_unused = {
>   };
>   MODULE_DEVICE_TABLE(acpi, imx355_acpi_ids);
>   
> +static const struct of_device_id imx355_match_table[] = {
> +	{ .compatible = "sony,imx355", },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, imx355_match_table);
> +
>   static struct i2c_driver imx355_i2c_driver = {
>   	.driver = {
>   		.name = "imx355",
>   		.acpi_match_table = ACPI_PTR(imx355_acpi_ids),
> +		.of_match_table = imx355_match_table,
> +		.pm = &imx355_pm_ops,
>   	},
>   	.probe = imx355_probe,
>   	.remove = imx355_remove,

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

