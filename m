Return-Path: <devicetree+bounces-6257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DAC7BA804
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 19:29:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0505C281BD5
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB5B3AC0D;
	Thu,  5 Oct 2023 17:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ds8YQk5/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B339A374FB
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 17:29:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7367AC433C7;
	Thu,  5 Oct 2023 17:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696526984;
	bh=FyXNFVi5CAq39lBW7w8maSA1eY/8EaOCy5ttuydLmCM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Ds8YQk5/xez5u1KauINRgynZyOgf80NTTtJh1qqiPBbDvRFux1ZQnlaBTP5chrBQd
	 exDjt5+4uqPRusA/K2F3qIOduWbFpLddjB91KU5N8HhXQekn/W0YH5AN6MkwQbwI8W
	 qB252x35bs7CFghi8zsQmMpaVPB9zpGESJbGl5mcdDOWOzOw/RAb7GRnv4hgHYskit
	 n2+sDR2PZvZH3av34ZQgrAITukd7xxdr6ELXhK/hiydebaFWifoUew48f4TWJz7Kal
	 PpMwbX5Yn+2ZNR5rFTrPZ9m/96gEfRo8WeG80cozfHzhsHwVOVydQQN2x3TAmSVmKl
	 otUuAY5LnVuIw==
Date: Thu, 5 Oct 2023 18:29:49 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ivan Mikhaylov <fr0st61te@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/2] iio: adc: Add driver support for MAX34408/9
Message-ID: <20231005182949.1ac6eef0@jic23-huawei>
In-Reply-To: <20231005160930.14665-3-fr0st61te@gmail.com>
References: <20231005160930.14665-1-fr0st61te@gmail.com>
	<20231005160930.14665-3-fr0st61te@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu,  5 Oct 2023 19:09:30 +0300
Ivan Mikhaylov <fr0st61te@gmail.com> wrote:

> The MAX34408/MAX34409 are two- and four-channel current monitors that are
> configured and monitored with a standard I2C/SMBus serial interface. Each
> unidirectional current sensor offers precision high-side operation with a
> low full-scale sense voltage. The devices automatically sequence through
> two or four channels and collect the current-sense samples and average them
> to reduce the effect of impulse noise. The raw ADC samples are compared to
> user-programmable digital thresholds to indicate overcurrent conditions.
> Overcurrent conditions trigger a hardware output to provide an immediate
> indication to shut down any necessary external circuitry.
> 
> Add as ADC driver which only supports current monitoring for now.
> 
> Link: https://www.analog.com/media/en/technical-documentation/data-sheets/MAX34408-MAX34409.pdf
> 
> Signed-off-by: Ivan Mikhaylov <fr0st61te@gmail.com>
Hi Ivan,

Biggest thing remaining that I noticed on this read through is that for
new drivers in IIO I am asking people to only use generic firmware property
accessors from property.h instead of the of specific ones.
I rarely makes things less readable or more complex, and leaves us
ready for other options in future.

Thanks,

Jonathan

> --- /dev/null
> +++ b/drivers/iio/adc/max34408.c
> @@ -0,0 +1,270 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * IIO driver for Maxim MAX34409/34408 ADC, 4-Channels/2-Channels, 8bits, I2C
> + *
> + * Datasheet: https://www.analog.com/media/en/technical-documentation/data-sheets/MAX34408-MAX34409.pdf
> + *
> + * TODO: ALERT interrupt, Overcurrent delay, Shutdown delay
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/init.h>
> +#include <linux/i2c.h>
> +#include <linux/module.h>

mod_devicetable.h for the various firmware match table definitions

> +#include <linux/mutex.h>
> +#include <linux/of_device.h>

Should be include <linux/property.h>
and use the accessors in there instead of of specific ones.


> +
> +static int max34408_probe(struct i2c_client *client)
> +{
> +	const struct max34408_adc_model_data *model_data;
> +	struct device *dev = &client->dev;
> +	const struct of_device_id *match;
> +	struct max34408_data *max34408;
> +	struct device_node *child;
> +	struct iio_dev *indio_dev;
> +	struct regmap *regmap;
> +	int rc, i;
> +
> +	match = of_match_device(max34408_of_match, dev);
> +	if (!match)
> +		return -EINVAL;
> +	model_data = match->data;

	match = i2c_get_match_data() 
as that will cope with all forms of firmware and i2c_device_id tables.


> +
> +	regmap = devm_regmap_init_i2c(client, &max34408_regmap_config);
> +	if (IS_ERR(regmap)) {
> +		dev_err_probe(dev, PTR_ERR(regmap),
> +			      "regmap_init failed\n");
> +		return PTR_ERR(regmap);
> +	}
> +
> +	indio_dev = devm_iio_device_alloc(dev, sizeof(*max34408));
> +	if (!indio_dev)
> +		return -ENOMEM;
> +
> +	max34408 = iio_priv(indio_dev);
> +	max34408->regmap = regmap;
> +	max34408->dev = dev;
> +	mutex_init(&max34408->lock);
> +
> +	for_each_available_child_of_node(dev->of_node, child) {
> +		of_property_read_u32(child, "maxim,rsense-val-micro-ohms",

Use the stuff in property.h so that we are ready for other firmware
types.  We are still pushing this (slowly) throughout IIO drivers
that are already in tree.


> +				     &max34408->input_rsense[i]);
> +		i++;
> +	}
> +
> +	/* disable ALERT and averaging */
> +	rc = regmap_write(max34408->regmap, MAX34408_CONTROL_REG, 0x0);
> +	if (rc)
> +		return rc;
> +
> +	indio_dev->channels = model_data->channels;
> +	indio_dev->num_channels = model_data->num_channels;
> +	indio_dev->name = model_data->model_name;
> +
> +	indio_dev->info = &max34408_info;
> +	indio_dev->modes = INDIO_DIRECT_MODE;
> +
> +	return devm_iio_device_register(dev, indio_dev);
> +}
> +
> +static struct i2c_driver max34408_driver = {
> +	.driver = {
> +		.name   = "max34408",
> +		.of_match_table = max34408_of_match,
> +	},
Provide the i2c_device_id table as well as you never know what route
people will use to probe this.

> +	.probe = max34408_probe,
> +};
> +module_i2c_driver(max34408_driver);
> +
> +MODULE_AUTHOR("Ivan Mikhaylov <fr0st61te@gmail.com>");
> +MODULE_DESCRIPTION("Maxim MAX34408/34409 ADC driver");
> +MODULE_LICENSE("GPL");


