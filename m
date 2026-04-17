Return-Path: <devicetree+bounces-288166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JunI+AC4mna0QAAu9opvQ
	(envelope-from <devicetree+bounces-288166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 11:52:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E2B4199C1
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 11:52:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E12532B13E2
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 09:39:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AA7B3B4E8B;
	Fri, 17 Apr 2026 09:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CldFIFJQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBEA33B2FFF;
	Fri, 17 Apr 2026 09:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776418762; cv=none; b=iAEEbjVylkGhInOMfYxOUgUH8kKqxRFAdkmj1A5cyLvsS9EXqsoAL4TT6C8wnfPoDMzrJB8P+jsWFxmk90VwiwETTRj7lZDBhGIqh+c7ED0kk5gakUaPseB7y2JZTewp2iq0wpHM9G4YgLyjG4SlsVsnI0EONw6qaMDxKPv5Yfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776418762; c=relaxed/simple;
	bh=wCAyYw14gLqGk8eaZxY5cWKcSIjWak/HrsGDFgcEs9c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CaSiE48oSkAhR5b73hx+8RZJVpUdNs/qFsBmatW7RKKR/zFx6JnNPyobktN8SuNKLjIzYer5c8Kttq6YXsaW1gUpHCUZM+ygABBb/nx1iSHECtduUQifF4hm0EZ4nkopGMgvhfGK6C9n0Rf1R4ORliguEJWAcGm6G4yOzCBwnOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CldFIFJQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDCEAC19425;
	Fri, 17 Apr 2026 09:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776418761;
	bh=wCAyYw14gLqGk8eaZxY5cWKcSIjWak/HrsGDFgcEs9c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CldFIFJQbf4GHzJIbW+s2Dm0aAi1zKinaItqUnqXKgMOxVt77mKQZ45uqHGJNrc+3
	 qFe8k37IZ0+b0nF6bNWvKeEzayfBhhe1HLvlICTaKPVSrsbk0ApdXegXc0YDL53Scw
	 AyaOE/x5K289iLDy5SDMnp9/8Fjlqs2ANtFSko+V8p+8qfn7ZFuG/ZYp5sHIdkAI0l
	 N90MuUrdjsKbK859/9x2av2nNfOuaeboSqe9eCPS4r3VW1Hj2HuFUNC9OL33CqcLEB
	 FV+Xg/3mafuSK2QQbI8GHWcdLyixmf5PX8UK+b5+FM6SmFQfAcUTlle2ldJNmanz9O
	 ZSNW18hU6ztug==
Date: Fri, 17 Apr 2026 11:39:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Harpreet Saini <sainiharpreet29@yahoo.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, David Lechner <david@lechnology.com>, devicetree@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] input: misc: Add PixArt PAJ7620 gesture sensor
 driver
Message-ID: <20260417-gleaming-flawless-hound-e65def@quoll>
References: <20260417052527.62535-1-sainiharpreet29@yahoo.com>
 <20260417052527.62535-3-sainiharpreet29@yahoo.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260417052527.62535-3-sainiharpreet29@yahoo.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[yahoo.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-288166-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lechnology.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E1E2B4199C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 01:25:27AM -0400, Harpreet Saini wrote:
> +
> +static int paj7620_init(struct paj7620_data *data)
> +{
> +	int state = 0, ret, i;
> +
> +	/* 1. Wake-up sequence: Read register 0x00 until it returns 0x20 */
> +	for (i = 0; i < 10; i++) {
> +		ret = regmap_read(data->regmap, 0x00, &state);
> +		if (ret >= 0 && state == 0x20)
> +			break;
> +		usleep_range(1000, 2000);
> +	}
> +
> +	if (state != 0x20) {
> +		dev_err(&data->client->dev, "Sensor wake-up failed (0x%02x)\n", state);
> +		return -ENODEV;
> +	}
> +
> +	/* 2. Blast full register array into PAJ7620 instantly */
> +	ret = regmap_multi_reg_write(data->regmap, Init_Register,
> +				     ARRAY_SIZE(Init_Register));
> +	if (ret < 0) {
> +		dev_err(&data->client->dev, "Multi-reg write failed (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	ret = regmap_write(data->regmap, PAJ7620_REG_BANK_SEL, 0x00);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = regmap_multi_reg_write(data->regmap, Init_Gesture_Array,
> +				     ARRAY_SIZE(Init_Gesture_Array));
> +	if (ret < 0) {
> +		dev_err(&data->client->dev, "Multi-reg write failed (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	dev_info(&data->client->dev, "Gesture Sensor Registers Initialized\n");

Drop, driver should be silent.

...

> +	data->client = client;
> +	i2c_set_clientdata(client, data);
> +
> +	data->supplies[0].supply = "vdd";
> +	data->supplies[1].supply = "vbus";
> +	data->supplies[2].supply = "vled";
> +
> +	ret = devm_regulator_bulk_get(&client->dev, ARRAY_SIZE(data->supplies), data->supplies);
> +	if (ret)
> +		return dev_err_probe(&client->dev, ret, "Failed to get regulators\n");
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(data->supplies), data->supplies);
> +	if (ret)
> +		return ret;
> +
> +	data->regmap = devm_regmap_init_i2c(client, &paj7620_reg_config);
> +	if (IS_ERR(data->regmap))
> +		return PTR_ERR(data->regmap);

Leaking regulator enable.

> +
> +	ret = paj7620_init(data);
> +	if (ret)
> +		goto err_reg;
> +
> +	data->idev = devm_input_allocate_device(&client->dev);
> +	if (!data->idev) {
> +		ret = -ENOMEM; goto err_reg;

Messed syntax/wrapped lines.

And you must not print error msg on ENOMEM error.

> +	}
> +
> +	data->idev->name = "PAJ7620 Gesture Sensor";
> +	data->idev->id.bustype = BUS_I2C;
> +
> +	input_set_capability(data->idev, EV_KEY, KEY_UP);
> +	input_set_capability(data->idev, EV_KEY, KEY_DOWN);
> +	input_set_capability(data->idev, EV_KEY, KEY_LEFT);
> +	input_set_capability(data->idev, EV_KEY, KEY_RIGHT);
> +	input_set_capability(data->idev, EV_KEY, KEY_ENTER);
> +	input_set_capability(data->idev, EV_KEY, KEY_BACK);
> +	input_set_capability(data->idev, EV_KEY, KEY_NEXT);
> +	input_set_capability(data->idev, EV_KEY, KEY_PREVIOUS);
> +	input_set_capability(data->idev, EV_KEY, KEY_MENU);
> +
> +	ret = input_register_device(data->idev);
> +	if (ret)
> +		goto err_reg;
> +
> +	pm_runtime_set_active(&client->dev);
> +	pm_runtime_enable(&client->dev);
> +	pm_runtime_set_autosuspend_delay(&client->dev, 2000);
> +	pm_runtime_use_autosuspend(&client->dev);
> +
> +	ret = devm_request_threaded_irq(&client->dev, client->irq, NULL,
> +					paj7620_irq_thread, IRQF_ONESHOT,
> +					"paj7620", data);
> +	if (ret)
> +		goto err_reg;
> +
> +	dev_info(&client->dev, "Gesture Sensor Initialized\n");

Pointless message, drop. Driver should be silent on success.


> +	return 0;
> +
> +err_reg:
> +	dev_err_probe(&client->dev, ret, "%s: failed with error %d\n", __func__, ret);

No, move it to individual errors, but only where applicable. For example
devm_request_threaded_irq() must not have it.

Neither devm_input_allocate_device.


> +	if (pm_runtime_enabled(&client->dev)) {
> +		pm_runtime_disable(&client->dev);
> +		pm_runtime_dont_use_autosuspend(&client->dev);
> +	}
> +	regulator_bulk_disable(ARRAY_SIZE(data->supplies), data->supplies);
> +	return ret;
> +}
> +
> +static void paj7620_remove(struct i2c_client *client)
> +{
> +	int ret;
> +	struct paj7620_data *data = i2c_get_clientdata(client);
> +
> +	pm_runtime_get_sync(&client->dev);
> +	pm_runtime_disable(&client->dev);
> +	pm_runtime_dont_use_autosuspend(&client->dev);
> +	pm_runtime_put_noidle(&client->dev);
> +
> +	ret = paj7620_power_down(data);
> +	if (ret)
> +		dev_err(&data->client->dev, "Sensor power down failed\n");
> +
> +	ret = regulator_bulk_disable(ARRAY_SIZE(data->supplies), data->supplies);
> +	if (ret)
> +		dev_err(&data->client->dev, "Sensor regulator disable failed\n");
> +}
> +
> +static const struct of_device_id paj7620_of_match[] = {
> +	{ .compatible = "pixart,paj7620" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, paj7620_of_match);
> +
> +static struct i2c_driver paj7620_driver = {
> +	.driver = {
> +		.name = "paj7620",
> +		.of_match_table = paj7620_of_match,
> +		.pm = &paj7620_pm_ops,
> +	},
> +	.probe = paj7620_probe,
> +	.remove = paj7620_remove,
> +};
> +module_i2c_driver(paj7620_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_AUTHOR("Harpreet Saini");
> +MODULE_DESCRIPTION("PAJ7620 Gesture Input Driver");
> -- 
> 2.43.0
> 

