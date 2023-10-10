Return-Path: <devicetree+bounces-7314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C507C004E
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:23:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90F9F2816B1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B03E727449;
	Tue, 10 Oct 2023 15:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GE1izV5c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E93427442
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 15:23:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECBE9C433C8;
	Tue, 10 Oct 2023 15:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696951435;
	bh=je+X4N3HJAOHN0eF8qp5QiCbj5/agxUI5k9RToaWuNU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=GE1izV5cIGC8e+ySQqgJeMC0XsvmFDu6+rvkBe0YX1xPu8nGb+Uo6olSh6wKQxkLj
	 SRWZvCYJo6MFeMdRKkFYNzKgjLgLCenfJOh6Vw+4OMtHEcZAViHgMzqqwbVIZfmSiX
	 0WMpYjlkbygL4QfabUUAYY46ccqopuw06RCAivt+/B0wwcxeuhy19hik5ya5+fRwY9
	 ZRUVULsxFo995RB4+Hj5WYHCcFpac3a8V6gZClUQzVFS5FbEE/sDKx3kiBaSjRcWfo
	 2J4TY6SP3h4X0QN0Ru1TSqp1ZnNwBxXoXHE7or8TY1cPRimqhbJm9+Irh4al48S2VU
	 vGAsFodvHHtLw==
Date: Tue, 10 Oct 2023 16:24:05 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ivan Mikhaylov <fr0st61te@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/2] iio: adc: Add driver support for MAX34408/9
Message-ID: <20231010162405.6d6f3c48@jic23-huawei>
In-Reply-To: <20231007234838.8748-3-fr0st61te@gmail.com>
References: <20231007234838.8748-1-fr0st61te@gmail.com>
	<20231007234838.8748-3-fr0st61te@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun,  8 Oct 2023 02:48:38 +0300
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
Datasheet: https://www.analog.com/media/en/technical-documentation/data-sheets/MAX34408-MAX34409.pdf
> Signed-off-by: Ivan Mikhaylov <fr0st61te@gmail.com>

A few other comments inline.

Jonathan


> diff --git a/drivers/iio/adc/max34408.c b/drivers/iio/adc/max34408.c
> new file mode 100644
> index 000000000000..85cd7b1ec186
> --- /dev/null
> +++ b/drivers/iio/adc/max34408.c
> @@ -0,0 +1,278 @@


> +static const struct of_device_id max34408_of_match[] = {
> +	{
> +		.compatible = "maxim,max34408",
> +		.data = &max34408_model_data,
> +	},
> +	{
> +		.compatible = "maxim,max34409",
> +		.data = &max34409_model_data,
> +	},
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, max34408_of_match);

Having dropped the unnecessary check in probe, move this to next to the
other tables.

> +
> +static int max34408_probe(struct i2c_client *client)
> +{
> +	const struct max34408_adc_model_data *model_data;
> +	struct device *dev = &client->dev;
> +	const struct of_device_id *match;
> +	struct max34408_data *max34408;
> +	struct fwnode_handle *node;
> +	struct iio_dev *indio_dev;
> +	struct regmap *regmap;
> +	int rc, i;
> +
> +	match = i2c_of_match_device(max34408_of_match, client);

Why check this?  This prevents any other firmware binding being used for no
obvious purpose.  Just check...

> +	if (!match)
> +		return -EINVAL;
> +	model_data = i2c_get_match_data(client);
.. 	if (!model_data)
		return -EINVAL;

instead.

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
> +	device_for_each_child_node(dev, node) {
> +		fwnode_property_read_u32(node, "maxim,rsense-val-micro-ohms",
> +					 &max34408->input_rsense[i]);
> +		i++;
As 0-day pointed out, i isn't initialized.

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


