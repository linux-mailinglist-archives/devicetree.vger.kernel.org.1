Return-Path: <devicetree+bounces-252246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 096C6CFCA90
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:44:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20C783031A08
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352032BE7BA;
	Wed,  7 Jan 2026 08:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HO+J/mFf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7862528B4E2
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767775215; cv=none; b=aPTQUw6dZ1SAjgUJ1hSKKlSzymJAGQh/TpNj55982JbB1uvEnKKmjMbMdbqBJ2RvVvbQtbbb7KKJ8OJpg6+n1J7h3/tX585+Ydd4rLbypE9Orht0PI956xMxkQ1fdXIK4NdohnuGrNvmYzyv2ghA3C3bqF2AnkNCa5gjOHrP52M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767775215; c=relaxed/simple;
	bh=/FkOGFo8g1cSpZe2gOZ8w+2bAT1CvYH5znNXRG79Gh0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=anDO9nOElia7Q202OGVg9lj2SCeJbCM7xig3Hz1YV3roqKEJHLUeXspz/Y54bqzVSD2XAh0wpHRngLU1RotqZs/LjQTwPx1bD9yPNoqy7RZu+xsDeQ7XSGKWGVcpaicmwhGNVAZJRmuXXdaT0j4WPV1IKsY4U9nh3CgPj30EAWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HO+J/mFf; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4779aa4f928so18428725e9.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 00:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767775212; x=1768380012; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3vOMipufGcGKuelPXUN9rVs1wLSPnDQy94IgZFqYtmo=;
        b=HO+J/mFfrXiPIMsQvB9dkIfTVwap3XTgLF4M5NhO4vOgXhgdniZARLgLApy2REYFAe
         GPZipzXLlJfWY+8h6pV4W/jKGzZ8YVr+OuLep166ozrRYtk+HV7Lqb3AHBQz94jZlDhr
         6ZVZaabcs1i0rY/HNzkJJXYKqJtjXz8hXLGXCh8NXXI2sko87CJ99xVDv0yPGNf0afDe
         T6z0GfYPeHS2mJG55pCxq0yus7cSJfz4MGCTtUYr3OwYcBvXW5Ybl9CjXVqzbI3i7ntx
         XscV9ZScD6w6aHkwCZNtBq9qJpVqUvaN1k9E8dcfxijzPVEDvJ9QaMTZplk5MrYjSf4x
         UkYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767775212; x=1768380012;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3vOMipufGcGKuelPXUN9rVs1wLSPnDQy94IgZFqYtmo=;
        b=NPxChP9NrZRChnZakzYj9qu3TuAqvamj5mKTe7vkiJXFCK/QqvT4RZoPJ5i3Mard32
         xY1wUoLzV2tViA09WjS5Tow7IbN3Op1DtN70IYuMhGmkIC6wWRlObsbYAZhC6YtazrkS
         0fPj8BKr8FELXWva203d2AXeYkQqWL+/IDbIpoRrPJDtETLJYPPYYbFKAcYvk+2OvUbJ
         M3ldnbYiLXH/51G2MLKgt5Fw/HrwsR1Npw81KoRhb6jsPEb2UqphFBGzycd2KDzLjxXo
         64pEwyYD6n2UWJMJdPrVlr6lWCQQSNQBW1jmicm2sZkqreDaao34ZWITCVxGn1N7HI8F
         KbnQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGzoQXipChfhEf5QIrKMJhhgbH5r/KtdvXBYsw8l3KnGHCh8uRoTkf9W+ecxn9zg1B7PXwmNvdQ0Jf@vger.kernel.org
X-Gm-Message-State: AOJu0YyWkHLt0kRFKYfZwxV12gPawzrDmmgnFHw3AMyxZfg+QU/CkTIp
	s+3HLqD6mTa68PRp9yAtnCLwy1E0PIOSE9qyMvfRDOgiBbrSHZKSbA8g7Eb9LE3Or2ZfGyLOWzf
	oiMOy
X-Gm-Gg: AY/fxX4mzyw00cpqpi/uuS6xJzeFZcLFoW5R7z2ezPtwMtwWxhcTTdjHy9ogZfEoZca
	4ff051vHclvujF8ab9XblZxvuXqvTJUkGb6FmQxL6kjLgKpr8AdpAu5MZS/4ALGzRBCrPR2GceU
	VOqTnkb2slylbSYAxydmb+F3auH/PW6FVTxrMuMKMorF0M4L0R2gR6FF0Zcn6pGAdSIZ3Zhng6M
	UI7Qbe4Fv+RRd4zSr4IaPl7oqxwlfeW3EMgmHt4Zj5bA+MEZ8Y4F71L8p88i+iUtonfNoeJuzG8
	rbGlYEe2rzqNv9ukhtNAEuyZPbHyekEAmLbiFzSg7JuUTMWepx2MTv9gje5g9AyCSl3VTZEaKS+
	PExbbhv6kDyYuWqLkGXU/q0W9Fj7lht8AeErKvMqtKgQpbR6PMeU2IarZXPXnujjypCoZ0hSvi9
	+ps20bYjfrv9XjHnbh
X-Google-Smtp-Source: AGHT+IEr9Jee3oNgh/rPm8U67PCjrXwoDwrkibED2q6zVqo4sAFR090MQLpBiX5V1OXNPJAxbWMVxQ==
X-Received: by 2002:a05:600c:19cd:b0:477:a246:8398 with SMTP id 5b1f17b1804b1-47d84b09166mr15022315e9.2.1767775211605;
        Wed, 07 Jan 2026 00:40:11 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8636e588sm8712765e9.0.2026.01.07.00.40.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:40:11 -0800 (PST)
Date: Wed, 7 Jan 2026 11:40:08 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jonas Jelonek <jelonek.jonas@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Thomas Richard <thomas.richard@bootlin.com>
Subject: Re: [PATCH v7 2/2] gpio: add gpio-line-mux driver
Message-ID: <aV4b6GAGz1zyf8Xy@stanley.mountain>
References: <20251227180134.1262138-1-jelonek.jonas@gmail.com>
 <20251227180134.1262138-3-jelonek.jonas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251227180134.1262138-3-jelonek.jonas@gmail.com>

On Sat, Dec 27, 2025 at 06:01:34PM +0000, Jonas Jelonek wrote:
> +struct gpio_lmux {
> +	struct gpio_chip gc;
> +	struct mux_control *mux;
> +	struct gpio_desc *muxed_gpio;
> +
> +	u32 num_gpio_mux_states;
> +	unsigned int gpio_mux_states[] __counted_by(num_gpio_mux_states);
> +};
> +
> +static int gpio_lmux_gpio_get(struct gpio_chip *gc, unsigned int offset)
> +{
> +	struct gpio_lmux *glm = gpiochip_get_data(gc);
> +	int ret;
> +
> +	if (offset > gc->ngpio)

This is off by one.  Should be >=.

regards,
dan carpenter

> +		return -EINVAL;
> +
> +	ret = mux_control_select_delay(glm->mux, glm->gpio_mux_states[offset],
> +				       MUX_SELECT_DELAY_US);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = gpiod_get_raw_value_cansleep(glm->muxed_gpio);
> +	mux_control_deselect(glm->mux);
> +	return ret;
> +}


