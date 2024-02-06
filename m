Return-Path: <devicetree+bounces-39233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5D084BC96
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 18:55:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 00B18B23E41
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 17:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C64BDF42;
	Tue,  6 Feb 2024 17:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XY9ZOgm5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10795DF5C
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 17:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707242147; cv=none; b=RI7lFYz6eNrdnnqVQCkS8WgSVkXisCgu9W+z2deHvW2SOx7/zkaNbwgkVCdzmtBUN7BvtyG+4tE+etVPYAHY79oiQ8Q/sbzY1MhNJwYRI5hscS5H2LcIQJEMJ+KSYHW5/0uHrh7X4Y2EoE1VcWj5n01nkrp3zCdt6cFosXdjyJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707242147; c=relaxed/simple;
	bh=8lFdlTAXaMQYKNjhcwZCI4u14lmHP8FD8O7vw6uNBZ8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KmCOhUQq/txynJzB6Gf9cBZO/rjCwHvi5rwpXBVEvCu02z9tjKNctOsn/lxPfBFSVmG9CqXxyvjXu1U0jTLpkvtAyzCF2kUOCuca+J5DAwROW/8Bermkt1u5zOYGu/TEeQDklc786pCRjZP4HiMbyoco02zyQWzxilY99e2E8oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XY9ZOgm5; arc=none smtp.client-ip=209.85.166.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-7c3e01a7fe0so48910439f.2
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 09:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707242143; x=1707846943; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NoNQuT/2/fYcMZPqf8XcAEgjNV4wPgIdnAAOu6x91K0=;
        b=XY9ZOgm5/p7f0cITAw5R5STD9/m4vztf2a+1CbtByPFPW4j+9031Ca8qbMzqbc9pFY
         tB3zm7aNwrgxQP4hSWeGJ7+ESvHaEMzzhCeOUCoV2FiI9UeWFPgWNymA5Q5CAcAMaXS+
         JRFnrI3K4b4tcY6/th8HQX6nXTCdsGFauBYnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707242143; x=1707846943;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NoNQuT/2/fYcMZPqf8XcAEgjNV4wPgIdnAAOu6x91K0=;
        b=DXUbInRy0qOirlmB0ic2JVOY1drTN7VADRFZE/kE79gjA4c6oqTJtxYfaRfRVoRy4W
         vnuL53lvUyc1Z/2hvCR9CJ7BdNpoYnZO0lNc2YmFzsWf1Hs1fSq/Q+S7tX33th8DdDWX
         ZwSyrDi56fPQ/yl7cEdzFSBV2aglx1BldsvkQDcQeLOi5NlKGG4O2kGNNAFhSnqaLiXn
         T0InatA3wGu1LTb3aXjWnG9saNzrMQJlQb5RhNrSSfQPjsiGq6L5lxdpP6zdM0dP/Ks1
         OLolsLqd4x+vPs2/CRltJcT0UOTfKEhyb+ipv56g1aJCLFQ0da4pLFUq86Ya1qWNxzvC
         mGUA==
X-Gm-Message-State: AOJu0YyvtHeXORQV+i5osrr8XEHZtcdvkhQ1rTLdTh9XlbPL/IZ5soq7
	3iITKAfek4XxKTEY3k0jEND8TruGa0jrfVCRToYnnB7duWpyfyD+7H5cABsmUA06cAjqE/4mWvU
	=
X-Google-Smtp-Source: AGHT+IEVs438WCFZF1kK2HB0aGcq/yB68iTGDfvVSMMD5jxwmp/5TBU9sTW45w4vD83h4xkb1nJHJg==
X-Received: by 2002:a92:dac6:0:b0:363:d92b:1059 with SMTP id o6-20020a92dac6000000b00363d92b1059mr552805ilq.32.1707242143168;
        Tue, 06 Feb 2024 09:55:43 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVOv6k/uIi6TER3yW5X2CcHQLUchbsdeMDRUV2ZGVMnoARCp25REp8WK6CAX9YqMnO6ShNlLthKZ9iwBKPq490/nWwCLp9kvcBFXxXmwwUJZ2hhdH+YDcR0bIf50QwoAq2nRrIM7vJDlnnZOoQfRta9GxbZ9k7TQVgMQDSZJtpUsm5PjGrizdSkIkWrt2oQln1BeCt4I/wP5mTJF6+8Ab70K8OXP7Y2TKopBXCWjPHP5atheHWwSCezVxXe7zLXNxBY3l2r3epPRGylAhsLcfUnSQFgjvqJHg2ujlMKZ56QN+2c84h+wejIrmX7abD30vPbrtoyftcgLElq+bDdnECAbCEzbAvJU+tZS76XWBsaEBiz3dFt51WWcaBv5SnY9mZ/SntevpBmGR4L2w+POVquK8mqAO3IJuy9D5szMJ6U+IPyKA==
Received: from localhost (147.220.222.35.bc.googleusercontent.com. [35.222.220.147])
        by smtp.gmail.com with UTF8SMTPSA id l2-20020a922902000000b0036381c9572fsm644000ilg.43.2024.02.06.09.55.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 09:55:42 -0800 (PST)
Date: Tue, 6 Feb 2024 17:55:42 +0000
From: Matthias Kaehlcke <mka@chromium.org>
To: Javier Carrasco <javier.carrasco@wolfvision.net>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	Matthias Kaehlcke <matthias@kaehlcke.net>
Subject: Re: [PATCH v3 1/7] usb: misc: onboard_hub: rename to onboard_dev
Message-ID: <ZcJynrwp7zcs-aIT@google.com>
References: <20240206-onboard_xvf3500-v3-0-f85b04116688@wolfvision.net>
 <20240206-onboard_xvf3500-v3-1-f85b04116688@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240206-onboard_xvf3500-v3-1-f85b04116688@wolfvision.net>

Hi Javier,

a few comments inline

On Tue, Feb 06, 2024 at 02:59:29PM +0100, Javier Carrasco wrote:
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

> diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
> new file mode 100644
> index 000000000000..e2e1e1e30c1e
> --- /dev/null
> +++ b/drivers/usb/misc/onboard_usb_dev.c
>
> ...
>
> +/*
> + * Use generic names, as the actual names might differ between cevices. If a new

s/cevices/devices/

<snip>

> +static int __maybe_unused onboard_dev_suspend(struct device *dev)
> +{
> +	struct onboard_dev *onboard_dev = dev_get_drvdata(dev);
> +	struct usbdev_node *node;
> +	bool power_off = true;
> +
> +	if (onboard_dev->always_powered_in_suspend)
> +		return 0;
> +
> +	mutex_lock(&onboard_dev->lock);
> +
> +	list_for_each_entry(node, &onboard_dev->udev_list, list) {
> +		if (!device_may_wakeup(node->udev->bus->controller))
> +			continue;
> +
> +		if (usb_wakeup_enabled_descendants(node->udev)) {
> +			power_off = false;
> +			break;
> +		}

The above branch should probably be limited to hub devices (though in practice it
shouldn't make a difference). This should be done by "usb: misc: onboard_dev:
add support for non-hub devices", commenting here since this patch includes the
code.

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

The above branch should probably be guarded by 'if (!onboard_dev->pdata->is_hub)',
this is also a change for ""usb: misc: onboard_dev: add support for non-hub devices"

> diff --git a/drivers/usb/misc/onboard_usb_hub_pdevs.c b/drivers/usb/misc/onboard_usb_dev_pdevs.c
> similarity index 68%
> rename from drivers/usb/misc/onboard_usb_hub_pdevs.c
> rename to drivers/usb/misc/onboard_usb_dev_pdevs.c
> index ed22a18f4ab7..fce860b65958 100644
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
> + * to * the given parent hub. The platform device is in charge of initializing
> + * the * device (enable regulators, take the device out of reset, ...) and can
> + * optionally * control whether the device remains powered during system suspend

Remove '*'s in the above 3 lines.

I'm doubting whether the option to power down the device during system suspend
should be limited to hubs. In particular I'm concerned about the default of
powering the device down, which could be unexpected. Then again, it might be
desired to power down a device if it consumes significant power during  suspend
on a battery powered system.

