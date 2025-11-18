Return-Path: <devicetree+bounces-239646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A195C6806E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:43:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 832A14EF5DD
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 881992EFD9B;
	Tue, 18 Nov 2025 07:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJSSdMOA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D91D2FF15E;
	Tue, 18 Nov 2025 07:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763451452; cv=none; b=WAI6FeqpBKc/qHaHXC/hUCMl80FB4fgHi7E623di6kbDAaxYm//Veu/SWaCeFApL893gq9f0W1xbSlQ3bhnDKxRu1Z7KCyXHnOrzcEbT4Z5lturyUY2uEkUBGza45BxGxi9A+YcViDTZNgl6JGIv19VfTo2QtJV57BJsjcIzKZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763451452; c=relaxed/simple;
	bh=q8Fza9xwjqkdneMT8IawDbUHHmPPiYj486b7I3nIOlc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TJ5ZNMh4jF73L09QdNjoQ29EwC30xEKZWCmgs5cB0/sMeN8F1XDo22YzpEAla2NjbdkAEW575w2XeBoXWOyY3bLTXW9aWA6ATeAPEpAYZxZ7K/P/SJoGUFZ0FWwQ3hQ1CobdSYfn8ShyuDCMcWJYtzzc3qAli/H2kk0KCVAO9QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJSSdMOA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CAA8C19422;
	Tue, 18 Nov 2025 07:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763451450;
	bh=q8Fza9xwjqkdneMT8IawDbUHHmPPiYj486b7I3nIOlc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qJSSdMOAqQdsy+tb+I3NgiZ20BJgrOCgKHzMmIQm753K/Di8mRppzv0UtVaszwvu3
	 QQ2uch4WtaScDRKYw7hOZjuONyAwlFwyWRchwjjwzn7sEvjSmbCMiNACDzBUCzd6rU
	 8whHM38yJReDQEhSRooJS8bI6SQ9WZbI4U78zvyD8N8hgTnzn/+YCh0MGio80e6kRP
	 Z0zIZ5MedE1BTEjvGLlad5YuOXUXCrmztcFm8igWPWsrx8cht2QM2lW2DJa3ukD85K
	 UmGF+rJuOSPwr0Gmy4IvkbqREftZyvilsr8SEefDGoDx8ZpJ4HEIHkMNw7DIqqtfP7
	 Pdiezp4QvDG+Q==
Message-ID: <c931853e-faa6-41ae-89a8-d22544a9da9c@kernel.org>
Date: Tue, 18 Nov 2025 08:37:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] drm/bridge: add support for lontium lt8713sx
 bridge driver
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com,
 Prahlad Valluru <vvalluru@qti.qualcomm.com>
References: <20251118-lt8713sx-bridge-driver-v2-0-25ad49280a11@oss.qualcomm.com>
 <20251118-lt8713sx-bridge-driver-v2-2-25ad49280a11@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20251118-lt8713sx-bridge-driver-v2-2-25ad49280a11@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/11/2025 05:37, Vishnu Saini wrote:
> +static void lt8713sx_reset(struct lt8713sx *lt8713sx)
> +{
> +	pr_debug("reset bridge.\n");
> +	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 1);
> +	msleep(20);
> +
> +	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 0);
> +	msleep(20);
> +
> +	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 1);
> +	msleep(20);
> +	pr_debug("reset done.\n");

No, it is not done, because you kept the device in the reset. 1 is
reset. Don't mix up line and logical signals.

> +}
> +
> +static int lt8713sx_regulator_init(struct lt8713sx *lt8713sx)
> +{
> +	int ret;
> +
> +	lt8713sx->supplies[0].supply = "vdd";
> +	lt8713sx->supplies[1].supply = "vcc";
> +
> +	ret = devm_regulator_bulk_get(lt8713sx->dev, 2, lt8713sx->supplies);
> +	if (ret < 0)
> +		return dev_err_probe(lt8713sx->dev, ret, "failed to get regulators\n");
> +
> +	ret = regulator_set_load(lt8713sx->supplies[0].consumer, 200000);
> +	if (ret < 0)
> +		return dev_err_probe(lt8713sx->dev, ret, "failed to set regulator load\n");
> +
> +	return 0;
> +}
> +
> +static int lt8713sx_regulator_enable(struct lt8713sx *lt8713sx)
> +{
> +	int ret;
> +
> +	ret = regulator_enable(lt8713sx->supplies[0].consumer);
> +	if (ret < 0)
> +		return dev_err_probe(lt8713sx->dev, ret, "failed to enable vdd regulator\n");
> +
> +	usleep_range(1000, 10000);
> +
> +	ret = regulator_enable(lt8713sx->supplies[1].consumer);
> +	if (ret < 0) {
> +		regulator_disable(lt8713sx->supplies[0].consumer);
> +		return dev_err_probe(lt8713sx->dev, ret, "failed to enable vcc regulator\n");
> +	}
> +	return 0;
> +}
> +
> +static int lt8713sx_gpio_init(struct lt8713sx *lt8713sx)
> +{
> +	struct device *dev = lt8713sx->dev;
> +
> +	lt8713sx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(lt8713sx->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(lt8713sx->reset_gpio),
> +				     "failed to acquire reset gpio\n");
> +
> +	/* power enable gpio */
> +	lt8713sx->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
> +	if (IS_ERR(lt8713sx->enable_gpio))
> +		return dev_err_probe(dev, PTR_ERR(lt8713sx->enable_gpio),
> +				     "failed to acquire enable gpio\n");
> +	return 0;
> +}
> +
> +static ssize_t lt8713sx_firmware_store(struct device *dev,
> +				       struct device_attribute *attr,
> +				       const char *buf, size_t len)
> +{
> +	struct lt8713sx *lt8713sx = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = lt8713sx_firmware_update(lt8713sx);
> +	if (ret < 0)
> +		return ret;
> +	return len;
> +}
> +
> +static DEVICE_ATTR_WO(lt8713sx_firmware);
> +
> +static struct attribute *lt8713sx_attrs[] = {
> +	&dev_attr_lt8713sx_firmware.attr,
> +	NULL,
> +};
> +
> +static const struct attribute_group lt8713sx_attr_group = {
> +	.attrs = lt8713sx_attrs,
> +};
> +
> +static const struct attribute_group *lt8713sx_attr_groups[] = {
> +	&lt8713sx_attr_group,
> +	NULL,
> +};
> +
> +static int lt8713sx_probe(struct i2c_client *client)
> +{
> +	struct lt8713sx *lt8713sx;
> +	struct device *dev = &client->dev;
> +	int ret;
> +
> +	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
> +		return dev_err_probe(dev, -ENODEV, "device doesn't support I2C\n");
> +
> +	lt8713sx = devm_kzalloc(dev, sizeof(*lt8713sx), GFP_KERNEL);
> +	if (!lt8713sx)
> +		return dev_err_probe(dev, -ENOMEM, "failed to allocate lt8713sx struct\n");
> +
I did not ask for dev_err_probe here. Do you see such pattern anywhere?
No, because there are never error messages on memory allocation (see
coccinelle). Drop.

Please run standard kernel tools for static analysis, like coccinelle,
smatch and sparse, and fix reported warnings. Also please check for
warnings when building with W=1 for gcc and clang. Most of these
commands (checks or W=1 build) can build specific targets, like some
directory, to narrow the scope to only your code. The code here looks
like it needs a fix. Feel free to get in touch if the warning is not clear.

Best regards,
Krzysztof

