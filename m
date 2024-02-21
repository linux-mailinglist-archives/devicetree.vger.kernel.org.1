Return-Path: <devicetree+bounces-44485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F2D85E705
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 20:14:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB0A71F25C38
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 19:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F3B785959;
	Wed, 21 Feb 2024 19:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IjDpZctr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B068485951
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708542856; cv=none; b=eGBmq40oM+waD5ENn1VnwD5kECUbXVipKI2p/0RbmkyCTXsHwc3/5bVHj2VOPmQFpWGhT8GKzqm9J3Sbo3OXylqeOT5WHNLDzppG0RM+EcaBkIxiux586pGXRmKOng5iY6CjUxFcnkaYZPaqQYgFfbs+5NDrFUNK1H/zyPeV5Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708542856; c=relaxed/simple;
	bh=KkkY3nuQd+sOhx++7XXiy7s4+Qho5xeZFSRciAdv1R4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UkUHe56EPZe/MOK+UP1tib97e5ULDGHtK0W5apHctcybU4u6aRuM4JZ6SU8YZDLTc8j39dVxbQ3C7xqkaIzKVdQLmWhHktRqkGkKH9W3NPh3nKpQtA4+8MTT8rBK6zJJ7PYtRrZCSmXJ0nP1lonOQbJRiboXfKQDPdRFuEDj3h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IjDpZctr; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-7c40863de70so311948139f.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 11:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1708542854; x=1709147654; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F8zo1lAc255qtifgNzkIgJxhJdd7u+u9JZEwC1bq2rM=;
        b=IjDpZctrpM1zPlyIS14ToJNSbiBK/kmVUlJXMA3Ue7snI8jU/xWnNDHLPRcqLTcA7e
         WsDv3dZmXLpp6JKYSnJdYc7ot36asREBK4Mnxp55TztJ/2Lf3NysdAM5BbsIiiFTN8mj
         DcNsQpsIpUaxih2ArMdhVJxEdQXM+uWXvyVjo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708542854; x=1709147654;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F8zo1lAc255qtifgNzkIgJxhJdd7u+u9JZEwC1bq2rM=;
        b=ebFX9FrB4m33/M1M0OhWBpt9CsBBnmP9bo+XXL7zEJ5R0lVeo70fPpQ2qHk0P1WjwS
         8XYFbqrtEjVqdqF/vhr0xZ30tF2NRHATW4nrMuOgA35ConOgK+FqPJ3fnaKE9mgqial0
         yLlxRuVzx1AbFbk/zbXOmQPe/AcQx/p7y0O3f3JBit/Uzn9kX/keeeKaUV9CA02MBGjL
         G51fEZSwTMMMSECH4M2eQZnGL62IX64BjPs2X3xRBczXr11/Cm+e1eWSKlwP2DYpjJ7D
         imQ4BPrXHjyQsIAEgh3rh44J9h5WYQ1G9tMtbvhj7s1yuk3UiW+vmlXr5RzmhhFAmYxH
         /dRA==
X-Forwarded-Encrypted: i=1; AJvYcCUSRVmFCdtshfXctLFS3pnpg5Ld/trqcdlVviN7MEo2/hFxjENoPB+spQ/Z33BmEpInhGScS5OkIg0FynC9L+tS+wvUaIWBrJCCgQ==
X-Gm-Message-State: AOJu0Yz5lLGvFH8t7Og6Q7+QkJmFUcBlu605hh0gga05Msaddy+pBN+Y
	uRHYpFEWu69TlpDiPUYfA0v58ODT/x8vGKvDOJP56CwK/5VjUd84z8nfwB2tyg==
X-Google-Smtp-Source: AGHT+IFe6kiWbZW0h5n9v9hgmN46vZNuLBrbQZ0k9xGnJtql/CBhynZKD+fF5/hyYxlbaLjYE4SkGA==
X-Received: by 2002:a05:6e02:12e6:b0:365:32db:ca6d with SMTP id l6-20020a056e0212e600b0036532dbca6dmr10729260iln.22.1708542853903;
        Wed, 21 Feb 2024 11:14:13 -0800 (PST)
Received: from localhost (147.220.222.35.bc.googleusercontent.com. [35.222.220.147])
        by smtp.gmail.com with UTF8SMTPSA id t41-20020a05663834a900b004716652f89asm2812188jal.130.2024.02.21.11.14.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 11:14:13 -0800 (PST)
Date: Wed, 21 Feb 2024 19:14:12 +0000
From: Matthias Kaehlcke <mka@chromium.org>
To: Javier Carrasco <javier.carrasco@wolfvision.net>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Helen Koike <helen.koike@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	Matthias Kaehlcke <matthias@kaehlcke.net>
Subject: Re: [PATCH v4 1/8] usb: misc: onboard_hub: rename to onboard_dev
Message-ID: <ZdZLhMIEQ_dwG8_m@google.com>
References: <20240220-onboard_xvf3500-v4-0-dc1617cc5dd4@wolfvision.net>
 <20240220-onboard_xvf3500-v4-1-dc1617cc5dd4@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240220-onboard_xvf3500-v4-1-dc1617cc5dd4@wolfvision.net>

On Tue, Feb 20, 2024 at 03:05:45PM +0100, Javier Carrasco wrote:
> This patch prepares onboad_hub to support non-hub devices by renaming
> the driver files and their content, the headers and their references.
> 
> The comments and descriptions have been slightly modified to keep
> coherence and account for the specific cases that only affect onboard
> hubs (e.g. peer-hub).
> 
> The "hub" variables in functions where "dev" (and similar names) variables
> already exist have been renamed to onboard_dev for clarity, which adds a
> few lines in cases where more than 80 characters are used.
> 
> No new functionality has been added.
> 
> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>
> ---
>  ...-usb-hub => sysfs-bus-platform-onboard-usb-dev} |   4 +-
>  MAINTAINERS                                        |   4 +-
>  drivers/usb/core/Makefile                          |   4 +-
>  drivers/usb/core/hub.c                             |   8 +-
>  drivers/usb/core/hub.h                             |   2 +-
>  drivers/usb/misc/Kconfig                           |  16 +-
>  drivers/usb/misc/Makefile                          |   2 +-
>  drivers/usb/misc/onboard_usb_dev.c                 | 518 +++++++++++++++++++++
>  .../misc/{onboard_usb_hub.h => onboard_usb_dev.h}  |  28 +-
>  ...ard_usb_hub_pdevs.c => onboard_usb_dev_pdevs.c} |  47 +-
>  drivers/usb/misc/onboard_usb_hub.c                 | 501 --------------------
>  include/linux/usb/onboard_dev.h                    |  18 +
>  include/linux/usb/onboard_hub.h                    |  18 -
>  13 files changed, 594 insertions(+), 576 deletions(-)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-platform-onboard-usb-hub b/Documentation/ABI/testing/sysfs-bus-platform-onboard-usb-dev
> similarity index 67%
> rename from Documentation/ABI/testing/sysfs-bus-platform-onboard-usb-hub
> rename to Documentation/ABI/testing/sysfs-bus-platform-onboard-usb-dev
> index 42deb0552065..cd31f76362e7 100644
> --- a/Documentation/ABI/testing/sysfs-bus-platform-onboard-usb-hub
> +++ b/Documentation/ABI/testing/sysfs-bus-platform-onboard-usb-dev
> @@ -4,5 +4,5 @@ KernelVersion:	5.20
>  Contact:	Matthias Kaehlcke <matthias@kaehlcke.net>
>  		linux-usb@vger.kernel.org
>  Description:
> -		(RW) Controls whether the USB hub remains always powered
> -		during system suspend or not.
> \ No newline at end of file
> +		(RW) Controls whether the USB device remains always powered
> +		during system suspend or not.

With patch "[2/8] usb: misc: onboard_dev: add support for non-hub devices"
this attribute isn't honed for non-hub devices. With that I'd say leave
the existing comment unchanged, but add a note that this attribute only
exists for hubs. That will also require a change in the patch mentioned
above to omit the creation of the attribute for non-hub devices.

> diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
> new file mode 100644
> index 000000000000..2103af2cb2a6
> --- /dev/null
> +++ b/drivers/usb/misc/onboard_usb_dev.c
>
> ...
>
> +/*
> + * Returns the onboard_dev platform device that is associated with the USB
> + * device passed as parameter.
> + */
> +static struct onboard_dev *_find_onboard_dev(struct device *dev)
> +{
> +	struct platform_device *pdev;
> +	struct device_node *np;
> +	struct onboard_dev *onboard_dev;
> +
> +	pdev = of_find_device_by_node(dev->of_node);
> +	if (!pdev) {
> +		np = of_parse_phandle(dev->of_node, "peer-hub", 0);
> +		if (!np) {
> +			dev_err(dev, "failed to find device node for peer hub\n");
> +			return ERR_PTR(-EINVAL);
> +		}
> +
> +		pdev = of_find_device_by_node(np);
> +		of_node_put(np);
> +
> +		if (!pdev)
> +			return ERR_PTR(-ENODEV);
> +	}
> +
> +	onboard_dev = dev_get_drvdata(&pdev->dev);
> +	put_device(&pdev->dev);
> +
> +	/*
> +	 * The presence of drvdata ('hub') indicates that the platform driver

drop "('hub')"

> diff --git a/drivers/usb/misc/onboard_usb_hub_pdevs.c b/drivers/usb/misc/onboard_usb_dev_pdevs.c
> similarity index 69%
> rename from drivers/usb/misc/onboard_usb_hub_pdevs.c
> rename to drivers/usb/misc/onboard_usb_dev_pdevs.c
> index ed22a18f4ab7..ca56f67393f1 100644
> --- a/drivers/usb/misc/onboard_usb_hub_pdevs.c
> +++ b/drivers/usb/misc/onboard_usb_dev_pdevs.c
>
> ...
>
>  /**
> - * onboard_hub_create_pdevs -- create platform devices for onboard USB hubs
> - * @parent_hub	: parent hub to scan for connected onboard hubs
> - * @pdev_list	: list of onboard hub platform devices owned by the parent hub
> + * onboard_dev_create_pdevs -- create platform devices for onboard USB devices
> + * @parent_hub	: parent hub to scan for connected onboard devices
> + * @pdev_list	: list of onboard platform devices owned by the parent hub
>   *
> - * Creates a platform device for each supported onboard hub that is connected to
> - * the given parent hub. The platform device is in charge of initializing the
> - * hub (enable regulators, take the hub out of reset, ...) and can optionally
> - * control whether the hub remains powered during system suspend or not.
> + * Creates a platform device for each supported onboard device that is connected
> + * to the given parent hub. The platform device is in charge of initializing the
> + * device (enable regulators, take the device out of reset, ...) and can
> + * optionally control whether the device remains powered during system suspend
> + * or not.

The last part isn't/won't be true for non-hub devices. Please change it to
something like ". For onboard hubs the platform device can optionally control ..."


