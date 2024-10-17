Return-Path: <devicetree+bounces-112340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF2F9A1D39
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 10:33:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BA5F28352B
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 08:33:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88DCD1CEAA3;
	Thu, 17 Oct 2024 08:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tcGKeKIA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A64013BC2F
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 08:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729154000; cv=none; b=MnIY4wI5uQH4kDCF/lJqV/XfiAroOwImzmRzxj/K5Ehfur4bkxbP7Ac96OV9422IclhBTis9t3wF03uUB4wrbCZYbJvkepmWbwFZ3DmaqCiR3gQfs3dFdHu3DnvcybHM+9e0su6A9veChXLMEq4gdItoC3meWWKhGNtleqJI9fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729154000; c=relaxed/simple;
	bh=tYzaV+t4hdUMisaWHKdNAiLRPs8+qNVmGMVH1Hu6WQM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hum8Iv3uVgbwjyV9piSnAS7N84AALU8UWSurr5f5QAu6KOpk65lNRJf8duWVo4DWh7mTgu/2DwkVZ8j5J4MjnN4pF5BNi0jKnKULSE/+tM/TgcA3RL+sZlcpPSI9NvtpzxJShDpYaz0SWlFxoZNQxu31h5OOalEWPrkF7zjkTLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tcGKeKIA; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43155afca99so7150725e9.1
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 01:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729153995; x=1729758795; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vAFU0pvJfwgqkFuHC+eoVVqHGFmh3FiuyXQ3M35Whoc=;
        b=tcGKeKIAYMGOtJzHwXx//P3jphhuD1IXQ4x0KGJE0/P4XeZ8aYQj+m7Q3yg5+28XzD
         /lcbKIydBtSKTA0p4Us7z5F7HzEjUtMYpn5hslHmo3pOzdGlg4CwBNmrsjwNNP2gK6hm
         FU0Gx3HUOtVWKZfbmq2XAJc5GhLKKws3g7q0oARRESNI5nglABjUvHuKNtPix4wXcR/E
         f0Ra6P5TW8M0c0OfiDvmAt2dMkX8Bydxy/fyPSOqXRgE3I50WpMzXX/PmwqlqDQ+cNlA
         WTyj/FXtggeIw+rXgarMraDeSW1hkQd6LN47IATYY5NR7Mmo7jPKIlWCRaH2uQbFCwdO
         Bkng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729153995; x=1729758795;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vAFU0pvJfwgqkFuHC+eoVVqHGFmh3FiuyXQ3M35Whoc=;
        b=tvMzQDkAxiaEjGo/U5Vy425NDkwNz2e2dutrnX5j6lblIpzGt8/Qr5jFLNvNX5dqWs
         szKFec7p6Zd55ZXHQQsZ48UeqlKSFoZXSnlLwL/YpA4+rSNeYSR6vYWe3s5zM0w9VRaY
         UCpKygAX8XCmT0ofz+BFDXHAspM21WiWKckEnZ/8pYbSo6p1uxik/2gz8eqZTI+z+Ize
         JiT93HKYJXM3jtlVx1roMCigr5hfBbkjNY+jvTlfqZgIgNZVZfiJI38aYsDfE70e90He
         2bVIWliEm1h/75W73donwUhWLCZSSr2ikFIG34C+qWn0+l7Sb1N9D0TLQUNcRSn6b+ez
         LZ2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUow40vx1+eXaE0No8AaWsJChOX9WiLgLq/KSvYcVRq87mtB8kW4ucKBBpOX8UdF8S+I/AAvDaA4c4E@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2LTiFC4UI2+UGmUN1osF88YiMnnXjanhKAq8PW3eRrHMvoYtu
	e4eITS/PitbNNUEiwDbBFhRrOnP8ZQ0AE5iqgF4KfA3qB2/YUHt/u+VXPLJ2fWk=
X-Google-Smtp-Source: AGHT+IEdHY+2yshgOOAQzRUlLz+Uv57aHwgpB+r3p87uv0fS8aen+djrnr2FAL0hQZ20nOCRG5y5jw==
X-Received: by 2002:adf:e551:0:b0:374:c1ea:2d40 with SMTP id ffacd0b85a97d-37d93d43ab4mr1325294f8f.1.1729153995293;
        Thu, 17 Oct 2024 01:33:15 -0700 (PDT)
Received: from dfj (host-82-61-199-234.retail.telecomitalia.it. [82.61.199.234])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43158c359casm18610585e9.8.2024.10.17.01.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 01:33:14 -0700 (PDT)
Date: Thu, 17 Oct 2024 10:32:00 +0200
From: Angelo Dureghello <adureghello@baylibre.com>
To: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>, 
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v6 8/8] iio: dac: adi-axi-dac: add registering of child
 fdt node
Message-ID: <f7ocoaxapiq56iqutinmlyduuyrfbhbgspxfatgtnwlduaufek@ucj4ymciajqs>
References: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-0-eeef0c1e0e56@baylibre.com>
 <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-8-eeef0c1e0e56@baylibre.com>
 <022be235-f028-4b6e-9589-b0066df5d459@baylibre.com>
 <df1cdac2c954d9a95b9026a400e68697e177787f.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <df1cdac2c954d9a95b9026a400e68697e177787f.camel@gmail.com>

On 15.10.2024 08:11, Nuno S� wrote:
> On Mon, 2024-10-14 at 16:16 -0500, David Lechner wrote:
> > On 10/14/24 5:08 AM, Angelo Dureghello wrote:
> > > From: Angelo Dureghello <adureghello@baylibre.com>
> > > 
> > > Change to obtain the fdt use case as reported in the
> > > adi,ad3552r.yaml file in this patchset.
> > > 
> > > The DAC device is defined as a child node of the backend.
> > > Registering the child fdt node as a platform devices.
> > > 
> > > Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> > > ---
> > > �drivers/iio/dac/adi-axi-dac.c | 53 +++++++++++++++++++++++++++++++++++++++++++
> > > �1 file changed, 53 insertions(+)
> > > 
> > > diff --git a/drivers/iio/dac/adi-axi-dac.c b/drivers/iio/dac/adi-axi-dac.c
> > > index b887c6343f96..f85e3138d428 100644
> > > --- a/drivers/iio/dac/adi-axi-dac.c
> > > +++ b/drivers/iio/dac/adi-axi-dac.c
> > > @@ -29,6 +29,8 @@
> > > �#include <linux/iio/buffer.h>
> > > �#include <linux/iio/iio.h>
> > > �
> > > +#include "ad3552r-hs.h"
> > > +
> > > �/*
> > > � * Register definitions:
> > > � *�� https://wiki.analog.com/resources/fpga/docs/axi_dac_ip#register_map
> > > @@ -738,6 +740,39 @@ static int axi_dac_bus_reg_read(struct iio_backend *back,
> > > u32 reg, u32 *val,
> > > �	return regmap_read(st->regmap, AXI_DAC_CUSTOM_RD_REG, val);
> > > �}
> > > �
> > > +static void axi_dac_child_remove(void *data)
> > > +{
> > > +	struct platform_device *pdev = data;
> > > +
> > > +	platform_device_unregister(pdev);
> 
> Just do platform_device_unregister(data)... Or call the argument pdev for better
> readability...
> 
> > > +}
> > > +
> > > +static int axi_dac_create_platform_device(struct axi_dac_state *st,
> > > +					� struct fwnode_handle *child)
> > > +{
> > > +	struct ad3552r_hs_platform_data pdata = {
> > > +		.bus_reg_read = axi_dac_bus_reg_read,
> > > +		.bus_reg_write = axi_dac_bus_reg_write,
> > > +	};
> > > +	struct platform_device_info pi = {
> > > +		.parent = st->dev,
> > > +		.name = fwnode_get_name(child),
> > > +		.id = PLATFORM_DEVID_AUTO,
> > > +		.fwnode = child,
> > > +		.data = &pdata,
> > > +		.size_data = sizeof(pdata),
> > > +	};
> > > +	struct platform_device *pdev;
> > > +
> > > +	pdev = platform_device_register_full(&pi);
> > > +	if (IS_ERR(pdev))
> > > +		return PTR_ERR(pdev);
> > > +
> > > +	device_set_node(&pdev->dev, child);
> > 
> > Not sure why Nuno suggested adding device_set_node(). It is
> > redundant since platform_device_register_full() already does
> > the same thing.
> > 
> 
> Indeed... I realized that yesterday when (actually) looking at
> platform_device_register_full(). You just beat me in replying to the email. Sorry for
> the noise...
> 
> > (And setting it after platform_device_register_full() would
> > be too late anyway since drivers may have already probed.)
> 
> > > +
> > > +	return devm_add_action_or_reset(st->dev, axi_dac_child_remove, pdev);
> > > +}
> > > +
> > > �static const struct iio_backend_ops axi_dac_generic_ops = {
> > > �	.enable = axi_dac_enable,
> > > �	.disable = axi_dac_disable,
> > > @@ -874,6 +909,24 @@ static int axi_dac_probe(struct platform_device *pdev)
> > > �		return dev_err_probe(&pdev->dev, ret,
> > > �				���� "failed to register iio backend\n");
> > > �
> > > +	device_for_each_child_node_scoped(&pdev->dev, child) {
> > > +		int val;
> > > +
> 
> I'm starting to come around again if some sort of flag (bus_controller or an explicit
> has_child) wouldn't make sense (since you may need to re-spin another version). So we
> could error out in case someone comes up with child nodes on a device that does not
> support them.�
> 

For this, i added a check on io-backend here, that has been asked
to be removed.

Without adding other flags, i may use has_dac_clk, could it be ok ?

> Anyways, I'll leave this up to you and maybe others can also argue about this...
> 
> > > +		/* Processing only reg 0 node */
> > > +		ret = fwnode_property_read_u32(child, "reg", &val);
> > > +		if (ret)
> > > +			return dev_err_probe(&pdev->dev, ret,
> > > +						"child node missing.");
> > 
> > Shouldn't the error message say that there is a problem with the reg
> > property? We already have a handle to the child node, so the child node
> > isn't missing.
> 
> Makes sense... like "reg property missing" - something on those lines.
> 
> - Nuno S�
> 
> 
> 

