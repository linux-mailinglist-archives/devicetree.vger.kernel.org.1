Return-Path: <devicetree+bounces-202256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CFBB1C8BB
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 17:29:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 097355656F2
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 15:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97DB4293C67;
	Wed,  6 Aug 2025 15:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u7P08CXk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA7B292B38
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 15:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754494140; cv=none; b=UsrstteLyzLUxarU2hKG8WhSxr8i7jB063CXYwrt+E9VMcrbBWX1qT2IhBz2xZUfV06l8jHUEq3OeSoz3paZACHg1yIgtKkjfgMuQWp2T/AK13fSQV4+gCxi4+q/zhmxFmMEEvtNsdB1nE++n/99L9LZa6Fw+P1Mq4mQYV0RhUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754494140; c=relaxed/simple;
	bh=njnkMeXbBDfv59fZU5JyPP1/vQsmLknJZSUpgVpQIic=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=Pr548VwEsg2aKP9d4Rvt6E9ryy8b00BcweOPIj7Dn7rE2fjwhy+B/2v/b6YRYcSxsXKfJhnJxBmtuEAm+wr87zrK1tLmGFNi4BIy1twN3TgK7UoBGQYhzWc9Nlx4ONeAwsoQI1vrGEueRNh5bwPEDpfuQqHVYGf4csxN6uXRdrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u7P08CXk; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3b782cca9a0so4082948f8f.1
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 08:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754494136; x=1755098936; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ASSxJEQXfE633CevXWqyyh5f9WPRpCDbV8wTQIWfMY=;
        b=u7P08CXklqtrakIE7WQtSZt9fTEh9XfBYF0vu9B6liWJjyNQ5Wef+qDfYQQUnHl7E3
         qrdIp7Uo9nBrQ9VP2ldUknh2jA88XN/TPUqu0sfePGGNMQDAhGrVaMLEZaCF9yK7KL+F
         Fb2f2GxF/eTd3d00nk9Ryji0lqW4vFhO/bT3Rd0Bxs8/jwXj5j+TUvcxTEVWta+pp1qX
         IgTU68NoEA7ABggj0D25BhvBfjhO/8u4j5Tmy7Qpsa21hDrDwZt6BgMJbIFpbms9GPj6
         8667NnK52xUICloHNOtOSOrRRpvBQbt3gwFR/XKuRkqdSpiqEcO+e1zJblVfNZ+z4J5t
         aBfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754494136; x=1755098936;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6ASSxJEQXfE633CevXWqyyh5f9WPRpCDbV8wTQIWfMY=;
        b=IgmyLcdNfa0m/ExwPyN9ptwF0oHOWpNmES28ajWvnrOgcBNKGPTO18S3E+UOrgf6Zg
         fxd0FDX1ikx+UILio9LOfYw7IaI6zzDoJkHVQRJ04AKQ9XNC58k3IBdb783RZ/Nkq94W
         eUASxg5bDjnP2lR8/FVfLmc8xpuSNlNwBIpaEaPgMu0+uJ+8rLBcGAOERlD8yicK15aL
         qoTW3w9niq50kY33YDRGQSYUsBCjU3AKCMOY5WvHwkei7snDWCyVe9nLS8O+K3ugUpS4
         49etgxcG2RdpoWXeUBRjmBaI9GQ3Wcz/EKKx8LztChzJ5mxjc8Fi8BaGzhpxSVioxH5y
         qUlw==
X-Forwarded-Encrypted: i=1; AJvYcCUOX+XxopmcTbJz1gSjVynjIvZh6Wtz6Xqm0VfJAYJItvWyj/7OQvdkmRLhpm/GrceHnyP1710yYwiw@vger.kernel.org
X-Gm-Message-State: AOJu0YzlQu7F84Tta4GNPp25tnt2XXwOyeyxVPAqs9U21Ls1gKTRefY8
	bOEbVf2QDe92SSW8uuCRpEAD4qLD5ZAak3S8CjsAVtCuR8/xzpZnmzBXaqT22mHns80=
X-Gm-Gg: ASbGncs9uw9v2XtBJk3pTENrxnd8whTyQkCXIOGZuz2oRKu1HXrbbLmdBul4FOq8Fju
	GMobQSLON7YPt2l0aPo2Z1tM4oY17HdhzNntxnHQ+T7Q+pZtUAMzfzIJIaNjSxZ5UqHY/OiZMLv
	pboPTn92EukYaI8mkonyb6lOxdMn9JaYCgQxzdNTHoMQaWJ5C+9vt0EYLrHN6c4sXr+eIGXiMkH
	uOZFk9Y0I6gZTXnY37jzU6GGr4Njw8CMfafQFwtdLHh5u/E22nKfIdyobBvtv8ENkyr5Lu4CpOW
	EMc5nS1FAzilyyOdnM8G0IT6sstDMcpX4DbjQr+cN9AihMta5Q2uBIEgpMPM1cLwUymPpMTjBf1
	iCPG0BSc8n6+zzQukDGpdFcRABj4=
X-Google-Smtp-Source: AGHT+IGms6BpP/B6mpjSuEArIcBP3P6tAGM77/jKb6ok4h3wKMwoMthR/0suEVsblhKxO8hTtm5llg==
X-Received: by 2002:a5d:64e8:0:b0:3b8:d3cc:8dc with SMTP id ffacd0b85a97d-3b8f491cc2emr2641189f8f.28.1754494135791;
        Wed, 06 Aug 2025 08:28:55 -0700 (PDT)
Received: from localhost ([2a00:2381:fd67:101:6c39:59e6:b76d:825])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c48de68sm23490188f8f.67.2025.08.06.08.28.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 08:28:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 06 Aug 2025 16:28:54 +0100
Message-Id: <DBVG9ID1KS59.27QTXCZOWJVNM@linaro.org>
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Griffin Kroah-Hartman" <griffin.kroah@fairphone.com>, "Dmitry Torokhov"
 <dmitry.torokhov@gmail.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Luca Weiss" <luca.weiss@fairphone.com>
Cc: <linux-input@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH 2/3] Input: aw86927 - add driver for Awinic AW86927
X-Mailer: aerc 0.20.0
References: <20250806-aw86927-v1-0-23d8a6d0f2b2@fairphone.com>
 <20250806-aw86927-v1-2-23d8a6d0f2b2@fairphone.com>
In-Reply-To: <20250806-aw86927-v1-2-23d8a6d0f2b2@fairphone.com>

Hi Griffin,

On Wed Aug 6, 2025 at 4:10 PM BST, Griffin Kroah-Hartman wrote:
> Add support for the I2C-connected Awinic AW86927 LRA haptic driver.
>
> This driver includes a hardcoded sine waveform to be uploaded to the
> AW86927's SRAM for haptic playback.
> This driver does not currently support all the capabilities of the
> AW86927, such as F0 calibration, RTP mode, and CONT mode.
>
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
> ---
>  drivers/input/misc/Kconfig   |  11 +
>  drivers/input/misc/Makefile  |   1 +
>  drivers/input/misc/aw86927.c | 841 +++++++++++++++++++++++++++++++++++++=
++++++

[...]

> +static int aw86927_probe(struct i2c_client *client)
> +{
> +	struct aw86927_data *haptics;
> +	unsigned int read_buf;
> +	int err;
> +
> +	haptics =3D devm_kzalloc(&client->dev, sizeof(struct aw86927_data), GFP=
_KERNEL);
> +	if (!haptics)
> +		return -ENOMEM;
> +
> +	haptics->dev =3D &client->dev;
> +	haptics->client =3D client;
> +
> +	i2c_set_clientdata(client, haptics);
> +	dev_set_drvdata(&client->dev, haptics);
> +
> +	haptics->regmap =3D devm_regmap_init_i2c(client, &aw86927_regmap_config=
);
> +	if (IS_ERR(haptics->regmap))
> +		return dev_err_probe(haptics->dev, PTR_ERR(haptics->regmap),
> +					"Failed to allocate register map\n");
> +
> +	haptics->input_dev =3D devm_input_allocate_device(haptics->dev);
> +	if (!haptics->input_dev)
> +		return -ENOMEM;
> +
> +	haptics->reset_gpio =3D devm_gpiod_get(haptics->dev, "reset", GPIOD_OUT=
_HIGH);
> +	if (IS_ERR(haptics->reset_gpio))
> +		return dev_err_probe(haptics->dev, PTR_ERR(haptics->reset_gpio),
> +				     "Failed to get reset gpio\n");
> +
> +	/* Hardware reset */
> +	aw86927_hw_reset(haptics);
> +
> +	/* Software reset */
> +	err =3D regmap_write(haptics->regmap, AW86927_RSTCFG, AW86927_RSTCFG_SO=
FTRST);
> +	if (err)
> +		return dev_err_probe(haptics->dev, PTR_ERR(haptics->regmap),
> +					"Failed Software reset\n");
> +
> +	/* Wait ~3s until I2C is accessible */
> +	usleep_range(3000, 3500);

3 ms or 3 seconds?

[..]

Best regards,
Alexey

