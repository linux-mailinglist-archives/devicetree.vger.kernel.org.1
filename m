Return-Path: <devicetree+bounces-250784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE96CCEBCD0
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:37:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 72B30302D910
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A874B31BCAE;
	Wed, 31 Dec 2025 10:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="HE++y46y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3533101DE
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767177473; cv=none; b=SQXVIfStU0k4ojC8GZOwk+bcnRC4KH1np4uTquelMesQaR5RcrUvARhiT4fUS+ryvdlGvMtKu84XBcJBVll3qSXXRc4y3JwfjBD2Y4sljDIBqsUx+PcLkxR6HSfuBvchg7DecDYiv7/sAh1vdPGC9uA2HlDIv5rwrpyWHBZMu0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767177473; c=relaxed/simple;
	bh=4ikvHmRjVbwUNq3MFZuNuA6wIm0qSqPe2mZb9TrzuxE=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:Subject:Cc:To:
	 References:In-Reply-To; b=uLa0pbqcG38p2+rqb1v4JzReq4lyL/8ZqJL/4mbEgq/hDvUE+mdOBmNmEsCjte9d7CkM1pdyrN4Dqv/peg466wyqoZDSQ2ZXKPnerOei25AFLrAE/+m1LNKJjOjlYTc65K8zHrknX8RBHZ91TdSQdkpqTrb1wRyvJ1vjel9Ojm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=HE++y46y; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 2DE8EC1AE22;
	Wed, 31 Dec 2025 10:37:23 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A4A1E60744;
	Wed, 31 Dec 2025 10:37:48 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D8C35113B075E;
	Wed, 31 Dec 2025 11:37:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767177467; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=cNQCYm0Zq4ObhAl+PXGbaNzlrISK9/SlSnkIYEiHncY=;
	b=HE++y46yxPtD+wSkYwhGAWRKBbJtnG0VwWGeARrMbvyNCwHLZuK7QJ9Oa8mcDK0JSRqIby
	4ykVFhP97sqjAVQiS5wXoHpDXKTpgrwHgW6Z1933dct4GOBcyUX843NBD4pE6wFJUEVPYm
	oUASl/loT+Vy16/AEunxvrcu8M1gJ7+NkLiRgt9xhLzl7FQEJBv3t6A93K5vNtDgHMKCmn
	amKn8l+C5r74Gpx7MRMgVDxQAbkLBR5iR6exV85fFGkP032KYp+uOyaZynsBWUVrjexAmY
	sb4mG2KC28LUwBLNe0r5FkFhhjxEmgUKQigQPw2XSCUOoypcYHCAJ3D/p3D8vg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 31 Dec 2025 11:37:38 +0100
Message-Id: <DFCC4L42EGF0.3DRXWVXVWSF40@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v5 2/3] drm/bridge: Add ITE IT61620 MIPI DSI to HDMI
 bridge driver
Cc: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Hermes Wu" <hermes.Wu@ite.com.tw>,
 "Kenneth Hung" <kenneth.Hung@ite.com.tw>, "Pin-yen Lin"
 <treapking@google.com>
To: "Pet Weng" <pet.weng@ite.com.tw>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.20.1
References: <20251222-it61620-0714-v5-0-afb6479ad3ca@ite.com.tw>
 <20251222-it61620-0714-v5-2-afb6479ad3ca@ite.com.tw>
In-Reply-To: <20251222-it61620-0714-v5-2-afb6479ad3ca@ite.com.tw>
X-Last-TLS-Session-Version: TLSv1.3

Hello Pet,

On Mon Dec 22, 2025 at 4:10 AM CET, Pet Weng wrote:
> This adds support for the ITE IT61620 bridge chip which converts
> MIPI DSI input to HDMI output. The Driver implements the basic
> bridge functions and integrates with the DRM bridge and connector
> frameworks.
>
> Supported fetures include:
            ^ features

> MIPI DSI input handling
> HDMI output setup
> Basic mode configuration
> I2C-based control and initialization
> HDCP 1.4 handling
>
> HPD handling clarification:
> Although IT61620 has an HPD pin, hotplug detection is handled by the
> system connector. The bridge only receives HPD notifications, and the
> HPD pin is used solely for short pulses during HDCP authentication.
> Therefore, this bridge does not implement OP_HPD or OP_DETECT, as it
> does not originate or determine hotplug or connection status.
>
> This driver will be used on platforms embedding the IT61620 for
> video output via HDMI from SoCs with MIPI DSI output.
>
> Signed-off-by: Pet Weng <pet.weng@ite.com.tw>

[...]

> +static int it61620_probe(struct i2c_client *client)
> +{
> +	struct device *dev =3D &client->dev;
> +	struct device_node *np =3D dev->of_node;
> +	struct mipi_dsi_host *host;
> +	struct it61620 *it61620;
> +	int ret =3D 0;
> +
> +	it61620 =3D devm_drm_bridge_alloc(dev, struct it61620, bridge,
> +					&it61620_bridge_funcs);
> +	if (IS_ERR(it61620))
> +		return PTR_ERR(it61620);
> +
> +	it61620->dev =3D dev;
> +	it61620->chip_info =3D of_device_get_match_data(dev);
> +
> +	host =3D drm_of_get_dsi_bus(dev);
> +	if (IS_ERR(host))
> +		return dev_err_probe(dev, PTR_ERR(host),
> +				     "failed to find dsi host\n");
> +
> +	ret =3D it61620_i2c_and_regmap_init(client, it61620);
> +	if (ret < 0)
> +		return ret;
> +
> +	i2c_set_clientdata(client, it61620);
> +
> +	ret =3D it61620_init_power(it61620);
> +	if (ret < 0)
> +		return ret;
> +
> +	it61620_config_default(it61620);
> +
> +	ret =3D it61620_parse_dt(it61620);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (!client->irq)
> +		return dev_err_probe(dev, -ENODEV,
> +				     "Failed to get INTP IRQ\n");
> +
> +	ret =3D devm_request_threaded_irq(&client->dev, client->irq, NULL,
> +					it61620_int_threaded_handler,
> +					IRQF_TRIGGER_LOW | IRQF_ONESHOT |
> +					IRQF_NO_AUTOEN,
> +					"it61620-intp", it61620);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret,
> +				     "failed to request INTP threaded IRQ\n");
> +
> +	INIT_DELAYED_WORK(&it61620->hdcp_work, it61620_hdcp_work);
> +	init_waitqueue_head(&it61620->wq);
> +
> +	mutex_init(&it61620->ddc_lock);
> +
> +	pm_runtime_enable(dev);
> +	pm_runtime_set_autosuspend_delay(dev, 1000);
> +	pm_runtime_use_autosuspend(dev);
> +
> +	it61620->bridge.funcs =3D &it61620_bridge_funcs;

You don't have to set the funcs. They are already set by
devm_drm_bridge_alloc() above.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

