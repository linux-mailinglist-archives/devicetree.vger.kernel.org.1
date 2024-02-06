Return-Path: <devicetree+bounces-39242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2593784BD04
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 19:41:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF814287F4E
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 18:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7CD413AC9;
	Tue,  6 Feb 2024 18:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DPsh6ovd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF98134BC
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 18:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707244863; cv=none; b=eyakMeAm6S5jxeNQGLKyHImHbF332HMuGOaZyMSO6BdMvtz9s4ho588xrl+HaTtbFHCxJdrEnFgPlK0AkzkEQMSS0VAL6Z+hrRH4pXdnTnrMCY1hAodU+QclvQw/QK9mD8TtUwAEUll+jn5Mb+KBp1FmKug68GurwK68n/G3MVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707244863; c=relaxed/simple;
	bh=4iMUCDRK0tbwCoq9ax96HYxDL0mnKXeCT6CGUsUHlLY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZyWzKi2txtW4ZTL17+u9VSioA6qF2O1rYKRRpcW81OVQ+R/tZ9J6ijqnzwObNNXmjl5qO34ibhtQlTpRsMK7xpUUs7udgkO6j2kJm8b+1IgQRksp1OHHCBGN2cTukLMj/I1OTooGJbtWQgu2+qCmSvAJxI6H+wUMqAWOS9791bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DPsh6ovd; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-363b361ba6dso4057585ab.3
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 10:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707244859; x=1707849659; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+Xv9kD5QhjTCn8Q0pWh79kSOAjDdZQG/rInb+Rd12sQ=;
        b=DPsh6ovd0cSK3rj11e7ONTc9yz4uuL4plAcyRNbUMiqMVKxKvyoTCkcn8eft79qa5n
         E5Ej7nCko1mRC8nRJD0d9KbAaJ0swKBgccCdwXXQe94PGxgWjNayxEJDXRCvnLiF72Lb
         VX3PPsAlCLzAeL78dYMIlvMKjrTUdDn4fOhzI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707244859; x=1707849659;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Xv9kD5QhjTCn8Q0pWh79kSOAjDdZQG/rInb+Rd12sQ=;
        b=Ywe3agrxNLaT3H6WnPvOie1jYR94PurufDm/j//M7rg/kGaWHL1fAEwrpAWvbllCOw
         Llc+0J1pvFg6glJaeB+f/CDv+78XsaYt9ob6nJ23zUuq7kE3XVpQkh2aWRh3FupVxtZL
         /2vB1pIu4xnPj7a0Ih79vLZ6te1E5FnzpHNphLVG4Ik2pOhADHqpsw9RiX5zcEQqg0k+
         DMbt/0iybNmtZkOe6+TkslA+x8HC6LTK2wNb4LqAMsMZOISyXlkPZor3JK85dwL5Gswi
         5Vq4HgfEC9iHS/5KUXKjhsDBejwC7Vz4gITm6KX8V518HXh/Jfy244yQHXH09hay3vjI
         h/Pg==
X-Gm-Message-State: AOJu0YwVub5D3wV+U7FkBOh23wVQyXVcHB61TM7qU2jsm3lN7bk+s8T9
	btM0a73BlG14/UksTbomgq4FVn9yQS+viOljHS0tZmkyzsLDFzg7QG3VUsoh0A==
X-Google-Smtp-Source: AGHT+IH/hHo4kYBuL5vCw54nvX8pPrZtO2JH3Q3ZlUbStO7TCJYcZnDxXL5gfiQUMQeIheFecJGkuw==
X-Received: by 2002:a92:cd83:0:b0:363:bc81:47f8 with SMTP id r3-20020a92cd83000000b00363bc8147f8mr4910691ilb.21.1707244859728;
        Tue, 06 Feb 2024 10:40:59 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVr5FtOxk/NPujxjkxVAGBIFYTCd68ni8q4C1vR0Wa9BaHegqYv6Q/GEOczSL0kI7ZNx6NBqpgs/wUd+QwVY/bt2uow70wn0cCw60Ehlx08PSO77hd2EZVpWqo4AapEYw3YL4eqqbIbPqWQvR9Vt9O/5t6PDaYGIr6qV9Wo+TcT2yRmiwA05PSd2BW/A89Jy5THeLi8iOxte+gFCo/IFA90t0CNAvJJioD9eBrRbpV5AncwkM3WxgE2x00ewnfaOKO586M2Yl7Qqd7ZjwbfjLgVhi4450iNxIsjGrTDiEyFnWfNuVRNSlm5cPa4vc6uuER8wO0H2XAkA5IJrM7V/CkTgUi6u6hHVcMi1hWrzGjYQF5tV2O5tZJxKLpEVsa4UbBs1Dpa2gEoJfTnLFc=
Received: from localhost (147.220.222.35.bc.googleusercontent.com. [35.222.220.147])
        by smtp.gmail.com with UTF8SMTPSA id t5-20020a05663801e500b00471476d36a1sm234311jaq.116.2024.02.06.10.40.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 10:40:59 -0800 (PST)
Date: Tue, 6 Feb 2024 18:40:58 +0000
From: Matthias Kaehlcke <mka@chromium.org>
To: Javier Carrasco <javier.carrasco@wolfvision.net>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 2/7] usb: misc: onboard_dev: add support for non-hub
 devices
Message-ID: <ZcJ9OnYOtUVMu2Yk@google.com>
References: <20240206-onboard_xvf3500-v3-0-f85b04116688@wolfvision.net>
 <20240206-onboard_xvf3500-v3-2-f85b04116688@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240206-onboard_xvf3500-v3-2-f85b04116688@wolfvision.net>

On Tue, Feb 06, 2024 at 02:59:30PM +0100, Javier Carrasco wrote:
> Most of the functionality this driver provides can be used by non-hub
> devices as well.
> 
> To account for the hub-specific code, add a flag to the device data
> structure and check its value for hub-specific code.
> 
> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>
> ---
>  drivers/usb/misc/onboard_usb_dev.c |  3 +++
>  drivers/usb/misc/onboard_usb_dev.h | 10 ++++++++++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
> index e2e1e1e30c1e..3ac21ec38ac0 100644
> --- a/drivers/usb/misc/onboard_usb_dev.c
> +++ b/drivers/usb/misc/onboard_usb_dev.c
> @@ -123,6 +123,9 @@ static int __maybe_unused onboard_dev_suspend(struct device *dev)
>  	if (onboard_dev->always_powered_in_suspend)
>  		return 0;
>  
> +	if (!onboard_dev->pdata->is_hub)
> +		return onboard_dev_power_off(onboard_dev);

Why turn the device always off when it isn't a hub? It could be a device
with wakeup support.

I really regret making 'off in suspend' the default :(

> +
>  	mutex_lock(&onboard_dev->lock);
>  
>  	list_for_each_entry(node, &onboard_dev->udev_list, list) {
> diff --git a/drivers/usb/misc/onboard_usb_dev.h b/drivers/usb/misc/onboard_usb_dev.h
> index f13d11a84371..ebe83e19d818 100644
> --- a/drivers/usb/misc/onboard_usb_dev.h
> +++ b/drivers/usb/misc/onboard_usb_dev.h
> @@ -9,51 +9,61 @@
>  struct onboard_dev_pdata {
>  	unsigned long reset_us;		/* reset pulse width in us */
>  	unsigned int num_supplies;	/* number of supplies */
> +	bool is_hub;
>  };
>  
>  static const struct onboard_dev_pdata microchip_usb424_data = {
>  	.reset_us = 1,
>  	.num_supplies = 1,
> +	.is_hub = true,

Depending on when 'is_hub' is checked it could be an option to initialize
it at runtime (depending on USB_CLASS_HUB), e.g. in onboard_dev_add_usbdev().
Might not be worth the hassle tough if more than the current check(s) get
added.

>  };
>  
>  static const struct onboard_dev_pdata microchip_usb5744_data = {
>  	.reset_us = 0,
>  	.num_supplies = 2,
> +	.is_hub = true,
>  };
>  
>  static const struct onboard_dev_pdata realtek_rts5411_data = {
>  	.reset_us = 0,
>  	.num_supplies = 1,
> +	.is_hub = true,
>  };
>  
>  static const struct onboard_dev_pdata ti_tusb8041_data = {
>  	.reset_us = 3000,
>  	.num_supplies = 1,
> +	.is_hub = true,
>  };
>  
>  static const struct onboard_dev_pdata cypress_hx3_data = {
>  	.reset_us = 10000,
>  	.num_supplies = 2,
> +	.is_hub = true,
>  };
>  
>  static const struct onboard_dev_pdata cypress_hx2vl_data = {
>  	.reset_us = 1,
>  	.num_supplies = 1,
> +	.is_hub = true,
>  };
>  
>  static const struct onboard_dev_pdata genesys_gl850g_data = {
>  	.reset_us = 3,
>  	.num_supplies = 1,
> +	.is_hub = true,
>  };
>  
>  static const struct onboard_dev_pdata genesys_gl852g_data = {
>  	.reset_us = 50,
>  	.num_supplies = 1,
> +	.is_hub = true,
>  };
>  
>  static const struct onboard_dev_pdata vialab_vl817_data = {
>  	.reset_us = 10,
>  	.num_supplies = 1,
> +	.is_hub = true,
>  };
>  
>  static const struct of_device_id onboard_dev_match[] = {
> 
> -- 
> 2.40.1
> 

