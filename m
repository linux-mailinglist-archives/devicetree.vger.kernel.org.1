Return-Path: <devicetree+bounces-46916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3F286B347
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 16:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 016A6283C55
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 15:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25DA415D5D5;
	Wed, 28 Feb 2024 15:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OxBB1/41"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5AD15CD55
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 15:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709134641; cv=none; b=Swuevanj5sy5mC5EHnxVpRrdb19PbQ9WSedTMX+RfwM4VtacjXGCw8nv3E2IyoV5LMEGJoBWDj4EgOk0GJ0/cVfPi1TiLqbRmxi4KLzj2YS68kYJNepHQdN9uh0GaPgVZtSJTNZJcD6flgjfSPNcA3ALU4H3KWn1WUCUBZoJk9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709134641; c=relaxed/simple;
	bh=YrTM7NclhRirvO5ov26nYLcb/cIPqgB149/aYYtK3+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fm0InVVejZ4D9avzGjWcvbQSTsjqhj1ZYTH0kxKgF0OaROv967Zj5GfXrrtWL+hMxWUXQCR7zMoHHv/hmLLm4cxZf5JmhwXLj7FjE2Eih7eNjXPvlDpXGIG6rvOO9fr26C4cW0GqcHNYzrXcaJNHUvra3Y35M1fitcBaXIkuQDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OxBB1/41; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3657d1d4516so19961565ab.2
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 07:37:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709134637; x=1709739437; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=svD1W1a7QFf9Gza+G3SPXvK0VpFKMCR1+Xi0Z1FWhGs=;
        b=OxBB1/41F8A5SVmH7WKmwol1l9JkBUCE2aZRvp0MoMgt14h5YhBEKDK08u/e6MCRz8
         T3+mQ3gcFNwIx+dA5Jcvhew9h9HqHpI7b/oxrD1SYn5MHEea71e2NRaCgi8lzXD2Gzru
         fjPLs/8qPvLxHxrf1LNf3uxIUgFwv91YrC15U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709134637; x=1709739437;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=svD1W1a7QFf9Gza+G3SPXvK0VpFKMCR1+Xi0Z1FWhGs=;
        b=RL08bHpjIRBeF9CKZwc8ZI6LZXrgkxoVifaVJQz7hqZ+bOOq1Bx2mSBFmvrV2e5VQD
         AR0WFrE6ySMxqxSySItEREncgD5deWloxyjAgPsmY/tuiHggNsd1HEUDz7EsQpWbpzFZ
         b+k4aTuF3So94WbQ7sPlautr6z101Jv/4i/Mwppw1u2ZJyctalIeNM36EqzNtF2mMVs9
         LjQ2UFV9zu2hkaiYIAJxWKhFKS0/+x9vb6kPr705OnCv/N62a6+T1fBkjMgVnxkuQVDI
         GUh9lrdDR9v+5SYUUUDokC4NeRIyi7o/Cg+b2Q4XQJ55SuLNR8m450FpbFUqIVuYx1yk
         OqcA==
X-Forwarded-Encrypted: i=1; AJvYcCWZNcxLBucjgkx4jImmjZTKaPraH6vye0dVrq5chPcmEP3Vje/CGJYfHyAF7sQGdorVhYSMXhLl9K+PWtc6Wdp5S5GCJyOs7lurSQ==
X-Gm-Message-State: AOJu0Yw/EzD+/Y5oAtSbhXeYsVbDmO4g50c+x8YnYZ89O72tE6GJAE8N
	0lWdupnMNT12TUm9i6FoyGYOME+P2xXWE9AYcJCz+FkLv2UAa+cBW9G2Gzj4zw==
X-Google-Smtp-Source: AGHT+IFwnHar0bSnDcMYJo9D3FZDjlUk0s+GVf8S+gT0uUdrPI6XVBO5n/eqspfTGLxTLggHdT93YQ==
X-Received: by 2002:a92:de43:0:b0:365:1e8f:1519 with SMTP id e3-20020a92de43000000b003651e8f1519mr13223206ilr.27.1709134637291;
        Wed, 28 Feb 2024 07:37:17 -0800 (PST)
Received: from localhost (144.57.222.35.bc.googleusercontent.com. [35.222.57.144])
        by smtp.gmail.com with UTF8SMTPSA id i6-20020a056e021b0600b00363ce0ac359sm2766041ilv.47.2024.02.28.07.37.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 07:37:16 -0800 (PST)
Date: Wed, 28 Feb 2024 15:37:16 +0000
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
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 1/8] usb: misc: onboard_hub: use device supply names
Message-ID: <Zd9TLL0IM08Wh63i@google.com>
References: <20240228-onboard_xvf3500-v5-0-76b805fd3fe6@wolfvision.net>
 <20240228-onboard_xvf3500-v5-1-76b805fd3fe6@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240228-onboard_xvf3500-v5-1-76b805fd3fe6@wolfvision.net>

Hi Javier,

Thanks for moving this patch to the front of the series!

A few more comments inline.

On Wed, Feb 28, 2024 at 02:51:28PM +0100, Javier Carrasco wrote:
> The current implementation uses generic names for the power supplies,
> which conflicts with proper name definitions in the device bindings.
> 
> Add a per-device property to include real supply names and keep generic
> names for existing devices to keep backward compatibility.
> 
> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>
> ---
>  drivers/usb/misc/onboard_usb_hub.c | 49 ++++++++++++++++++++------------------
>  drivers/usb/misc/onboard_usb_hub.h | 12 ++++++++++
>  2 files changed, 38 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/usb/misc/onboard_usb_hub.c b/drivers/usb/misc/onboard_usb_hub.c
> index 0dd2b032c90b..3755f6cc1eda 100644
> --- a/drivers/usb/misc/onboard_usb_hub.c
> +++ b/drivers/usb/misc/onboard_usb_hub.c
> @@ -29,17 +29,6 @@
>  
>  #include "onboard_usb_hub.h"
>  
> -/*
> - * Use generic names, as the actual names might differ between hubs. If a new
> - * hub requires more than the currently supported supplies, add a new one here.
> - */
> -static const char * const supply_names[] = {
> -	"vdd",
> -	"vdd2",
> -};
> -
> -#define MAX_SUPPLIES ARRAY_SIZE(supply_names)
> -
>  static void onboard_hub_attach_usb_driver(struct work_struct *work);
>  
>  static struct usb_device_driver onboard_hub_usbdev_driver;
> @@ -65,6 +54,30 @@ struct onboard_hub {
>  	struct clk *clk;
>  };
>  
> +static int onboard_hub_get_regulator_bulk(struct device *dev,
> +					  struct onboard_hub *onboard_hub)

Let's call this onboard_hub_get_regulators(), it's an implementation detail
that regulator_bulk_get() is used for getting them.

no need to pass 'dev', there is onboard_hub->dev

>  static int onboard_hub_power_on(struct onboard_hub *hub)
>  {
>  	int err;
> @@ -253,7 +266,6 @@ static int onboard_hub_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct onboard_hub *hub;
> -	unsigned int i;
>  	int err;
>  
>  	hub = devm_kzalloc(dev, sizeof(*hub), GFP_KERNEL);
> @@ -264,18 +276,9 @@ static int onboard_hub_probe(struct platform_device *pdev)
>  	if (!hub->pdata)
>  		return -EINVAL;
>  
> -	if (hub->pdata->num_supplies > MAX_SUPPLIES)
> -		return dev_err_probe(dev, -EINVAL, "max %zu supplies supported!\n",
> -				     MAX_SUPPLIES);
> -
> -	for (i = 0; i < hub->pdata->num_supplies; i++)
> -		hub->supplies[i].supply = supply_names[i];
> -
> -	err = devm_regulator_bulk_get(dev, hub->pdata->num_supplies, hub->supplies);
> -	if (err) {
> -		dev_err(dev, "Failed to get regulator supplies: %pe\n", ERR_PTR(err));
> +	err = onboard_hub_get_regulator_bulk(dev, onboard_hub);

The local variable is called 'hub', not 'onboard_hub'.

> diff --git a/drivers/usb/misc/onboard_usb_hub.h b/drivers/usb/misc/onboard_usb_hub.h
> index f360d5cf8d8a..ea24bd6790f0 100644
> --- a/drivers/usb/misc/onboard_usb_hub.h
> +++ b/drivers/usb/misc/onboard_usb_hub.h
> @@ -6,54 +6,66 @@
>  #ifndef _USB_MISC_ONBOARD_USB_HUB_H
>  #define _USB_MISC_ONBOARD_USB_HUB_H
>  
> +#define MAX_SUPPLIES 2
> +
>  struct onboard_hub_pdata {
>  	unsigned long reset_us;		/* reset pulse width in us */
>  	unsigned int num_supplies;	/* number of supplies */
> +	const char * const supply_names[MAX_SUPPLIES]; /* use the real names */

The comment isn't particularly useful or accurate. Not in all cases
real names are used and outside of the context of this change the
comment is hard to understand.

I'd say just omit it, the name of the field is self-documenting enough,
there is no need to repeat the same in a comment (as for 'num_supplies'
...)

