Return-Path: <devicetree+bounces-230006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAEDBFEB89
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 02:13:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B54F84F3E7E
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 00:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC2D779F2;
	Thu, 23 Oct 2025 00:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yIxY6JjS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290141CD2C
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 00:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761178410; cv=none; b=nAd88tfVO3pUbpTQFO6RByRPU8K2NO99D3PJsXV11hpQLefQ4jGxZBI9SzGZVEMnrjq13zxUjCMgFVx1mNaaIoGqGh45iBnOIyYqEvZ2opwAFsxQ9UjX+9e6gmP5aRklwU+nvcfHpqH1Fn5GcoMvUDddgfEfIA69CWBqCcQtKPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761178410; c=relaxed/simple;
	bh=0EJJBUuoblpxllEQvsK3AW3gauaFZCUO3RTJeM88igY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c9oq/uHMie8ntk1xCfjt0lK4K11eFdLvOvNkCDoR1K7N2Yt/NX/7AJkh2RoDHpU71XuW97o8/IuhIBEaOXdHTTK5nWTSL6corIH9BdGdzssjJnPn2aWlxs0pYJ52ik/ZPfFgBIk7lCt0w7/9kziFGRKSWxXcKaQypo6rcJL69OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yIxY6JjS; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-592f2c3fd89so31481e87.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761178405; x=1761783205; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OSrmswZgOkp9iNb6nYZNxv+LWDm9UmX2oNypTSoFLlc=;
        b=yIxY6JjSkNDWeA0DjSw5Q545Euy4F/5D9MISjBCA7foBvTkziQVMyD1oPfRZ/e/C0U
         Flr1y9sXFjH3BUYQE9AcrFbcSCb9xHdsJArO/7rTFR5t5LCdofnMkCXoAULZ+ZqijAKm
         /ZWICK/cI5BFwtwGU6NVkmIdMrSHyqlNggD2QOkU3ktfBLfXvtw+9/Ikhx5J1452Jm6E
         9E5ZW2WIHDVWcfE7Z5x13t1+epWIMfklGVdV1fWij2IDnnalBFpMvRLlULTJTEj5WGMZ
         AF9LXGDDegcJN0hR5y35UA1oViBBP4HbLxwPEHwGmiDin7sDblfuOuaHIEMmgSoU1pvd
         nIjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761178405; x=1761783205;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OSrmswZgOkp9iNb6nYZNxv+LWDm9UmX2oNypTSoFLlc=;
        b=ooyvLP5eNXBlZEOiwLh5yIQt/+otSsPw0wvWUocPKKEiJXH80QolFhwFQpj7hxerLA
         a77ZIp2VnUUlpH8w24ukCJZVFdQKcR8nMk87MYKmbojgwHIDE7KcKCjOpqfe5gG0prEE
         efQ1DZ4mMY26W1txABKh2cmwoY1ZDFpTG2g/x/Vy/ccDlcM+vW8y1tsQ+vgFbeUxZpTv
         op1CyH7ljLExXB7Aggirw6KCwDPq4xsLa0sWweEZtTekGwJFu+3flvwcTYppqfVMjN/p
         vUBgmVlkvL+4SimXANIdk6IDkUsi/ien5O7FncPLCO7INqvdNrZgmfqvivtmj3wOSDfK
         ORGA==
X-Forwarded-Encrypted: i=1; AJvYcCWLRMF9V8xofGt587Kv9aXI5j493CRV5sxxgRPdLGntp2cAvJyUe3Rj192vbaHkw2T1rjAmJ07oirPe@vger.kernel.org
X-Gm-Message-State: AOJu0YzWa3p3UKvtGu3/Nj72Ig3stiD9vGZmUkrwiVUdCVNaGorUIfG3
	AUf/k9dSmdO9tTQ/QvWlbGl/EHKBmbq6/3GMgJXpQdgTYlekd6Xpvb1m+a8m/K3S81Y=
X-Gm-Gg: ASbGncu1FYtzZG5gbZCqyB+P0WGP1eR0Py3LUreUN2ckVL8TIACHEJfmkKTFr+kj7Ay
	TPMOjkNKiZwRFdpN+ucr3ccUuJBzxKeczPMm86xF20xH/eDEslV7Ms2l/BeAHTbe8P08akDKEwn
	Tisxjq1lonHlGdwR48CH9ESUVe7BiV1POSd3e+zwmE5AiFVDK/mx07vuSKIXiQ4Euvxxpw7kY/A
	eH3NXeJLvuf16jPH8qhORToKk+80it266kuGqnerlr0ail1BeqFBVLvawbp7QF6Y1W1GGokuX5x
	IsFU8WTbJsAU7PrO9vZyLfQfujfLr7pcb7IROljAPaorHZe6lE9ZW4BANjg0d8CbGRBEOa+ATCw
	wgHMjUkJ5Rtc6GO5JSQMllGlavIPwp4pM/Dnm0cw303l2iAtHoe4zKPr0kW02EtWP/rAfC7AJ6x
	2pk+7XbKgXQjITR0dlpybMbVq/E/vOoEBXq0ozWSB3SHpkZR/6JZ4/GXhtaahnTN38Xw==
X-Google-Smtp-Source: AGHT+IEqIfSFwj9f4EseY7eoTB9jQBbe33t0LJN5WLJ8WdAP5d7bxCnGjL5ogRZVJ1bdof4IV4Oyrw==
X-Received: by 2002:a05:6512:2352:b0:57b:517c:bf0b with SMTP id 2adb3069b0e04-591ea41930cmr1971505e87.4.1761178405111;
        Wed, 22 Oct 2025 17:13:25 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-592f4cd1a99sm243510e87.45.2025.10.22.17.13.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 17:13:24 -0700 (PDT)
Message-ID: <9f4c0032-39c7-4d78-b24f-2d85cb93734b@linaro.org>
Date: Thu, 23 Oct 2025 03:13:15 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] media: i2c: add Samsung S5KJN1 image sensor device
 driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>, Hans de Goede <hansg@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251016020419.2137290-1-vladimir.zapolskiy@linaro.org>
 <20251016020419.2137290-3-vladimir.zapolskiy@linaro.org>
 <aPiZjiXp8-uuPjjX@kekkonen.localdomain>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <aPiZjiXp8-uuPjjX@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Sakari,

thank you so much for review!

On 10/22/25 11:45, Sakari Ailus wrote:
> Hi Vladimir,
> 
> On Thu, Oct 16, 2025 at 05:04:19AM +0300, Vladimir Zapolskiy wrote:
>> Samsung S5KJN1 is a 50MP image sensor, it produces Bayer GRBG (2x2)
>> frames in RAW10 output format, the maximum supported output resolution
>> is 8160x6144 at 10 frames per second rate.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

<snip>

>> +
>> +#define S5KJN1_NUM_SUPPLIES	ARRAY_SIZE(s5kjn1_supply_names)
> 
> Please use ARRAY_SIZE() directly where you need this.
> 

There are 6 places of the macro usage in the driver, but will do it.

<snip>

>> +
>> +static u64 s5kjn1_mode_to_pixel_rate(const struct s5kjn1_mode *mode)
>> +{
>> +	u64 pixel_rate;
>> +
>> +	pixel_rate = s5kjn1_link_freq_menu[0] * 2 * S5KJN1_DATA_LANES;
>> +	do_div(pixel_rate, 10);			/* bits per pixel */
> 
> You could also use div_u64().
> 

Right, also it would make sense to change the argument from mode to freq,
that's what I notice.

>> +
>> +	return pixel_rate;
>> +}
>> +
>> +static int s5kjn1_init_controls(struct s5kjn1 *s5kjn1)
>> +{
>> +	struct v4l2_ctrl_handler *ctrl_hdlr = &s5kjn1->ctrl_handler;
>> +	const struct s5kjn1_mode *mode = s5kjn1->mode;
>> +	s64 pixel_rate, hblank, vblank, exposure_max;
>> +	struct v4l2_fwnode_device_properties props;
>> +	int ret;
>> +
>> +	v4l2_ctrl_handler_init(ctrl_hdlr, 9);
>> +
>> +	s5kjn1->link_freq = v4l2_ctrl_new_int_menu(ctrl_hdlr, &s5kjn1_ctrl_ops,
>> +					V4L2_CID_LINK_FREQ,
>> +					ARRAY_SIZE(s5kjn1_link_freq_menu) - 1,
>> +					0, s5kjn1_link_freq_menu);
>> +	if (s5kjn1->link_freq)
>> +		s5kjn1->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;
>> +
>> +	pixel_rate = s5kjn1_mode_to_pixel_rate(mode);
>> +	s5kjn1->pixel_rate = v4l2_ctrl_new_std(ctrl_hdlr, &s5kjn1_ctrl_ops,
>> +					       V4L2_CID_PIXEL_RATE,
>> +					       0, pixel_rate, 1, pixel_rate);
>> +
>> +	hblank = mode->hts - mode->width;
>> +	s5kjn1->hblank = v4l2_ctrl_new_std(ctrl_hdlr, &s5kjn1_ctrl_ops,
>> +					   V4L2_CID_HBLANK, hblank,
>> +					   hblank, 1, hblank);
>> +	if (s5kjn1->hblank)
>> +		s5kjn1->hblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;
>> +
>> +	vblank = mode->vts - mode->height;
>> +	s5kjn1->vblank = v4l2_ctrl_new_std(ctrl_hdlr, &s5kjn1_ctrl_ops,
>> +					   V4L2_CID_VBLANK, vblank,
>> +					   S5KJN1_VTS_MAX - mode->height, 1,
>> +					   vblank);
>> +
>> +	v4l2_ctrl_new_std(ctrl_hdlr, &s5kjn1_ctrl_ops, V4L2_CID_ANALOGUE_GAIN,
>> +			  S5KJN1_AGAIN_MIN, S5KJN1_AGAIN_MAX,
>> +			  S5KJN1_AGAIN_STEP, S5KJN1_AGAIN_DEFAULT);
>> +
>> +	exposure_max = mode->vts - mode->exposure_margin;
>> +	s5kjn1->exposure = v4l2_ctrl_new_std(ctrl_hdlr, &s5kjn1_ctrl_ops,
>> +					     V4L2_CID_EXPOSURE,
>> +					     S5KJN1_EXPOSURE_MIN,
>> +					     exposure_max,
>> +					     S5KJN1_EXPOSURE_STEP,
>> +					     mode->exposure);
>> +
>> +	v4l2_ctrl_new_std_menu_items(ctrl_hdlr, &s5kjn1_ctrl_ops,
>> +				     V4L2_CID_TEST_PATTERN,
>> +				     ARRAY_SIZE(s5kjn1_test_pattern_menu) - 1,
>> +				     0, 0, s5kjn1_test_pattern_menu);
>> +
>> +	s5kjn1->hflip = v4l2_ctrl_new_std(ctrl_hdlr, &s5kjn1_ctrl_ops,
>> +					  V4L2_CID_HFLIP, 0, 1, 1, 0);
>> +	if (s5kjn1->hflip)
>> +		s5kjn1->hflip->flags |= V4L2_CTRL_FLAG_MODIFY_LAYOUT;
>> +
>> +	s5kjn1->vflip = v4l2_ctrl_new_std(ctrl_hdlr, &s5kjn1_ctrl_ops,
>> +					  V4L2_CID_VFLIP, 0, 1, 1, 0);
>> +	if (s5kjn1->vflip)
>> +		s5kjn1->vflip->flags |= V4L2_CTRL_FLAG_MODIFY_LAYOUT;
>> +
>> +	if (ctrl_hdlr->error)
> 
> You're missing freeing the control handler here. But you can just omit the
> error check here as v4l2_ctrl_new_fwnode_properties() does it anyway below.
> 

Right, thank you for the catch, I'll remove the check then.

>> +		return ctrl_hdlr->error;
>> +
>> +	ret = v4l2_fwnode_device_parse(s5kjn1->dev, &props);
>> +	if (ret)
>> +		goto error_free_hdlr;
>> +
>> +	ret = v4l2_ctrl_new_fwnode_properties(ctrl_hdlr, &s5kjn1_ctrl_ops,
>> +					      &props);
>> +	if (ret)
>> +		goto error_free_hdlr;
>> +
>> +	s5kjn1->sd.ctrl_handler = ctrl_hdlr;
>> +
>> +	return 0;
>> +
>> +error_free_hdlr:
>> +	v4l2_ctrl_handler_free(ctrl_hdlr);
>> +
>> +	return ret;
>> +}
>> +

<snip>

>> +static int s5kjn1_set_pad_format(struct v4l2_subdev *sd,
>> +				 struct v4l2_subdev_state *state,
>> +				 struct v4l2_subdev_format *fmt)
>> +{
>> +	struct s5kjn1 *s5kjn1 = to_s5kjn1(sd);
>> +	s64 hblank, vblank, exposure_max;
>> +	const struct s5kjn1_mode *mode;
>> +
>> +	mode = v4l2_find_nearest_size(s5kjn1_supported_modes,
>> +				      ARRAY_SIZE(s5kjn1_supported_modes),
>> +				      width, height,
>> +				      fmt->format.width, fmt->format.height);
>> +
>> +	s5kjn1_update_pad_format(s5kjn1, mode, &fmt->format);
>> +
>> +	/* Format code can be updated with respect to flip controls */
>> +	*v4l2_subdev_state_get_format(state, 0) = fmt->format;
>> +
>> +	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY)
>> +		return 0;
>> +
>> +	if (s5kjn1->mode == mode)
>> +		return 0;
>> +
>> +	s5kjn1->mode = mode;
>> +
>> +	/* Update limits and set FPS and exposure to default values */
>> +	hblank = mode->hts - mode->width;
>> +	__v4l2_ctrl_modify_range(s5kjn1->hblank, hblank, hblank, 1, hblank);
>> +
>> +	vblank = mode->vts - mode->height;
>> +	__v4l2_ctrl_modify_range(s5kjn1->vblank, vblank,
>> +				 S5KJN1_VTS_MAX - mode->height, 1, vblank);
>> +	__v4l2_ctrl_s_ctrl(s5kjn1->vblank, vblank);
>> +
>> +	exposure_max = mode->vts - mode->exposure_margin;
>> +	__v4l2_ctrl_modify_range(s5kjn1->exposure, S5KJN1_EXPOSURE_MIN,
>> +				 exposure_max, S5KJN1_EXPOSURE_STEP,
>> +				 mode->exposure);
>> +	__v4l2_ctrl_s_ctrl(s5kjn1->exposure, mode->exposure);
> 
> Note that these can also fail. Assigning the format to the state should
> thus be done as last.

Likely it could happen due to some obscure reasons, but it is not expected
to happen due to the new applied mode settings, because the settings are
the default ones for the selected mode. Anyway, I agree that in general
an error could appear, I'll add the next check before changing the state:

         if (s5kjn1->sd.ctrl_handler->error)
                 return s5kjn1->sd.ctrl_handler->error;

>> +
>> +	return 0;
>> +}
>> +

<snip>

>> +
>> +static const struct v4l2_subdev_pad_ops s5kjn1_pad_ops = {
>> +	.set_fmt = s5kjn1_set_pad_format,
>> +	.get_fmt = v4l2_subdev_get_fmt,
>> +	.enum_mbus_code = s5kjn1_enum_mbus_code,
>> +	.enum_frame_size = s5kjn1_enum_frame_size,
>> +	.enable_streams = s5kjn1_enable_streams,
>> +	.disable_streams = s5kjn1_disable_streams,
> 
> Could you also add selections support, even if they're all read-only?
> 

Will it be sufficient to set

         sel->r.top = 0;
         sel->r.left = 0;
         sel->r.width = fmt->width;
         sel->r.height = fmt->height;

for the crop selection targets like it's done in ov2640 case for instance?

>> +};
>> +

<snip>

>> +static int s5kjn1_probe(struct i2c_client *client)
>> +{
>> +	struct s5kjn1 *s5kjn1;
>> +	unsigned long freq;
>> +	unsigned int i;
>> +	int ret;
>> +
>> +	s5kjn1 = devm_kzalloc(&client->dev, sizeof(*s5kjn1), GFP_KERNEL);
>> +	if (!s5kjn1)
>> +		return -ENOMEM;
>> +
>> +	s5kjn1->dev = &client->dev;
>> +	v4l2_i2c_subdev_init(&s5kjn1->sd, client, &s5kjn1_subdev_ops);
>> +
>> +	s5kjn1->regmap = devm_cci_regmap_init_i2c(client, 16);
>> +	if (IS_ERR(s5kjn1->regmap))
>> +		return dev_err_probe(s5kjn1->dev, PTR_ERR(s5kjn1->regmap),
>> +				     "failed to init CCI\n");
>> +
>> +	s5kjn1->mclk = devm_v4l2_sensor_clk_get(s5kjn1->dev, NULL);
>> +	if (IS_ERR(s5kjn1->mclk))
>> +		return dev_err_probe(s5kjn1->dev, PTR_ERR(s5kjn1->mclk),
>> +				     "failed to get MCLK clock\n");
>> +
>> +	freq = clk_get_rate(s5kjn1->mclk);
>> +	if (freq && freq != S5KJN1_MCLK_FREQ_24MHZ)
> 
> freq should never be 0, I'd remove checking for that case.
> 

Agreed.

>> +		return dev_err_probe(s5kjn1->dev, -EINVAL,
>> +				     "MCLK clock frequency %lu is not supported\n",
>> +				     freq);
>> +
>> +	ret = s5kjn1_check_hwcfg(s5kjn1);
>> +	if (ret)
>> +		return dev_err_probe(s5kjn1->dev, ret,
>> +				     "failed to check HW configuration\n");
>> +
>> +	s5kjn1->reset_gpio = devm_gpiod_get_optional(s5kjn1->dev, "reset",
>> +						     GPIOD_OUT_HIGH);
>> +	if (IS_ERR(s5kjn1->reset_gpio))
>> +		return dev_err_probe(s5kjn1->dev, PTR_ERR(s5kjn1->reset_gpio),
>> +				     "cannot get reset GPIO\n");
>> +
>> +	for (i = 0; i < S5KJN1_NUM_SUPPLIES; i++)
>> +		s5kjn1->supplies[i].supply = s5kjn1_supply_names[i];
>> +
>> +	ret = devm_regulator_bulk_get(s5kjn1->dev, S5KJN1_NUM_SUPPLIES,
>> +				      s5kjn1->supplies);
>> +	if (ret)
>> +		return dev_err_probe(s5kjn1->dev, ret,
>> +				     "failed to get supply regulators\n");
>> +
>> +	/* The sensor must be powered on to read the CHIP_ID register */
>> +	ret = s5kjn1_power_on(s5kjn1->dev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = s5kjn1_identify_sensor(s5kjn1);
>> +	if (ret) {
>> +		dev_err_probe(s5kjn1->dev, ret, "failed to find sensor\n");
>> +		goto power_off;
>> +	}
>> +
>> +	s5kjn1->mode = &s5kjn1_supported_modes[0];
>> +	ret = s5kjn1_init_controls(s5kjn1);
>> +	if (ret) {
>> +		dev_err_probe(s5kjn1->dev, ret, "failed to init controls\n");
>> +		goto power_off;
>> +	}
>> +
>> +	s5kjn1->sd.state_lock = s5kjn1->ctrl_handler.lock;
>> +	s5kjn1->sd.internal_ops = &s5kjn1_internal_ops;
>> +	s5kjn1->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
>> +	s5kjn1->sd.entity.ops = &s5kjn1_subdev_entity_ops;
>> +	s5kjn1->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;
>> +	s5kjn1->pad.flags = MEDIA_PAD_FL_SOURCE;
>> +
>> +	ret = media_entity_pads_init(&s5kjn1->sd.entity, 1, &s5kjn1->pad);
>> +	if (ret) {
>> +		dev_err_probe(s5kjn1->dev, ret,
>> +			      "failed to init media entity pads\n");
>> +		goto v4l2_ctrl_handler_free;
>> +	}
>> +
>> +	ret = v4l2_subdev_init_finalize(&s5kjn1->sd);
>> +	if (ret < 0) {
>> +		dev_err_probe(s5kjn1->dev, ret,
>> +			      "failed to init media entity pads\n");
>> +		goto media_entity_cleanup;
>> +	}
>> +
>> +	pm_runtime_set_active(s5kjn1->dev);
>> +	pm_runtime_enable(s5kjn1->dev);
>> +
>> +	ret = v4l2_async_register_subdev_sensor(&s5kjn1->sd);
>> +	if (ret < 0) {
>> +		dev_err_probe(s5kjn1->dev, ret,
>> +			      "failed to register V4L2 subdev\n");
>> +		goto subdev_cleanup;
>> +	}
>> +
>> +	/* Enable runtime PM and turn off the device */
>> +	pm_runtime_idle(s5kjn1->dev);
>> +	pm_runtime_set_autosuspend_delay(s5kjn1->dev, 1000);
>> +	pm_runtime_use_autosuspend(s5kjn1->dev);
> 
> I'd put the idle call as last unless the intent is to power it off right
> now.
> 

Agreed.

Thank you for review!

-- 
Best wishes,
Vladimir

