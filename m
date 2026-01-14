Return-Path: <devicetree+bounces-255179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F02E1D20808
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:18:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 191C0303BC06
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9D1E2F49F1;
	Wed, 14 Jan 2026 17:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="PTe9ZPM2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3467B2F3C31
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 17:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768411059; cv=none; b=V9wPDv+ABNDQ/wlpycvS1Sc0X2VRA5IaCX2n/fJlkuQO6qNXfWZYYBHDWbEOyeZQ6CFS/wJfsVjnH3iLHzimK9JOi6PILQGxR/4aat0yInLWI2sDBuUMSDFLl882ugrmorrJNAoUWWhrwVHh6Cv3C2hP7dSnvbfwzNn9obGwI4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768411059; c=relaxed/simple;
	bh=kYUWWoHUW/8pnf5S5+V0L304PSeUkYap1yIM8jsHo0Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pIndfO/grL56RO08Ai6Sd/yjnJGt5t8wm5C3mcdnBy+WGkfdS6d2l/KzEVboHR7xJxsmSlm+aErhY2/9UfT94PicQGOkt8gfnfebXjSU8yo+fXunkk3V84X7JROhw23yZhg4sCObbalefXMuWEQ2MnKQwB9kiKYCdXkt2DI8rZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=PTe9ZPM2; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 97B504E420DD;
	Wed, 14 Jan 2026 17:17:36 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 69D546074A;
	Wed, 14 Jan 2026 17:17:36 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6F60110B6827A;
	Wed, 14 Jan 2026 18:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768411055; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=B2TVXclr5G4TZ9kjKgvErvCVSq8g1gIuYHeonnJu+qM=;
	b=PTe9ZPM2fYaxP4/AHzJD9TWxKeDbiCMCbfBvbYfx9YUpcwSGbQLBa55a1fR3AxFmu4IRen
	OKovfUuKiOYaZuA0gKsjswbS+yKTTfJlgW/3fol+tBkug2mcEgBGWPFZPGZt63z0AM/N4b
	nLrONJ1oY1/H1VsIfkilHZeRd5N5EpjFu01Nh/ZXhYVH4zrayi/kCZkqWlo1epb8qL9qNr
	SddkK8r/5znyKBGPfjj4p80ilAzcnLA1R75PLjL2EOitaDzTvT7r53PzoVFc99Brcu2DdG
	N4yBdRsSKPcUffHqCYJResOV5upJcm9gzW2P7VizvY2WNfpgQHqBtjXOP+aHow==
Date: Wed, 14 Jan 2026 18:17:32 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Aman Kumar Pandey <aman.kumarpandey@nxp.com>,
	linux-kernel@vger.kernel.org, linux-i3c@lists.infradead.org,
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org,
	Frank.Li@nxp.com, lgirdwood@gmail.com, vikash.bansal@nxp.com,
	priyanka.jain@nxp.com, shashank.rebbapragada@nxp.com
Subject: Re: [PATCH v4 3/5] mfd: p3h2x4x: Add driver for NXP P3H2x4x i3c hub
 and on-die regulator
Message-ID: <20260114171732470bd389@mail.local>
References: <20260113114529.1692213-1-aman.kumarpandey@nxp.com>
 <20260113114529.1692213-3-aman.kumarpandey@nxp.com>
 <20260114-refreshing-groovy-buzzard-af2eeb@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114-refreshing-groovy-buzzard-af2eeb@quoll>
X-Last-TLS-Session-Version: TLSv1.3

On 14/01/2026 09:28:53+0100, Krzysztof Kozlowski wrote:
> > +static int p3h2x4x_device_probe_i3c(struct i3c_device *i3cdev)
> > +{
> > +	struct p3h2x4x_dev *p3h2x4x;
> > +	int ret;
> > +
> > +	p3h2x4x = devm_kzalloc(&i3cdev->dev, sizeof(*p3h2x4x), GFP_KERNEL);
> > +	if (!p3h2x4x)
> > +		return -ENOMEM;
> > +
> > +	i3cdev_set_drvdata(i3cdev, p3h2x4x);
> > +
> > +	p3h2x4x->regmap = devm_regmap_init_i3c(i3cdev, &p3h2x4x_regmap_config);
> > +	if (IS_ERR(p3h2x4x->regmap)) {
> > +		return dev_err_probe(&i3cdev->dev, PTR_ERR(p3h2x4x->regmap),
> 
> Look here...
> 
> > +				     "Failed to register I3C HUB regmap\n");
> > +	}
> > +
> > +	p3h2x4x->is_p3h2x4x_in_i3c = true;
> > +	p3h2x4x->i3cdev = i3cdev;
> > +
> > +	ret = devm_mfd_add_devices(&i3cdev->dev, PLATFORM_DEVID_NONE,
> > +				   p3h2x4x_devs, ARRAY_SIZE(p3h2x4x_devs),
> > +				   NULL, 0, NULL);
> > +	if (ret)
> > +		return dev_err_probe(&i3cdev->dev, ret, "Failed to add sub devices\n");
> > +
> > +	return 0;
> > +}
> > +
> > +static int p3h2x4x_device_probe_i2c(struct i2c_client *client)
> > +{
> > +	struct p3h2x4x_dev *p3h2x4x;
> > +	int ret;
> > +
> > +	p3h2x4x = devm_kzalloc(&client->dev, sizeof(*p3h2x4x), GFP_KERNEL);
> > +	if (!p3h2x4x)
> > +		return -ENOMEM;
> > +
> > +	i2c_set_clientdata(client, p3h2x4x);
> > +
> > +	p3h2x4x->regmap = devm_regmap_init_i2c(client, &p3h2x4x_regmap_config);
> > +	if (IS_ERR(p3h2x4x->regmap)) {
> > +		ret = PTR_ERR(p3h2x4x->regmap);
> 
> And here!
> 
> Drop. This is completely redundant. How is it that in one place you use
> one syntax and in other place completely different syntax?

I don't think it is redundant, one is for i2c and the other one for i3c
and the other i2c so I guess the hub can be sitting on any of those bus.

I guess the driver could be made so that we could only compile the i2c
part though.

> 
> > +		return dev_err_probe(&client->dev, ret, "Failed to register I3C HUB regmap\n");
> > +	}
> > +
> > +	p3h2x4x->is_p3h2x4x_in_i3c = false;
> > +	p3h2x4x->i2c_client = client;
> > +
> > +	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
> > +				   p3h2x4x_devs, ARRAY_SIZE(p3h2x4x_devs),
> > +				   NULL, 0, NULL);
> > +	if (ret)
> > +		return dev_err_probe(&client->dev, ret, "Failed to add sub devices\n");
> > +
> > +	return 0;
> 
> Best regards,
> Krzysztof
> 

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

