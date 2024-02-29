Return-Path: <devicetree+bounces-47450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA9286D3B1
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 20:52:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BC651C21DBA
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 19:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB79D13C9FE;
	Thu, 29 Feb 2024 19:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HypF3EI9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DBB13C9D6
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 19:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709236351; cv=none; b=Ue2hR+wVugefsdzZim56uzAl0+eYB/HSjvPvQcqNCs5Z8iJahFTllYOWhVYWPUvIUBcCq/CbtR1aHcqAp+fy5OqeR8+D82J8RCmZHE3eMQv5SdbjgT5+wbMFsJSQK7KgfdAv8435W18ufTERoboxGNFSUTJ73CQhRmzgnzmkyXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709236351; c=relaxed/simple;
	bh=BP7MIA4aqWsMyk/DGZfI6PyI07QVMNIRBi3JywY0eHw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nu/Lh/OyqMojqmeBfeOo+J33uuT0o7ku0CDzvwdsXiUQWVkvi4NnT8/i0h2ma24rtTZOAD1VmVGtQpgwah/3gRpt8XD1gP1XU/ZPJUT3b2wYsIOXMDrbDHTz/91pjggPnr/b+dDWgPnnQMu5sQ5k4MqsHwXPYYxcqSrIYb2gVgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HypF3EI9; arc=none smtp.client-ip=209.85.166.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-7c81e087882so1422939f.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 11:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709236349; x=1709841149; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2t6iwGhsnNUxY4xM8qxSPssm7+cm45B8gw+DhHQKME4=;
        b=HypF3EI9hLgQur8I6NBhRnURfqFI7olBYhAmwesAxfVtKJ6jcKGaOFMnuEL4pd+Cnb
         rCzJyadxlNFrmvS9HJrV6QSm/B2irlD8WqJrVpiM411kdNarXQJgZz0HGwz53/H13oLK
         35vOknB0OWFPxxFCT9XdgoPn7FvQI8XYZRbLA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709236349; x=1709841149;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2t6iwGhsnNUxY4xM8qxSPssm7+cm45B8gw+DhHQKME4=;
        b=omBPfhjpRadN7vg6WOrr56pMvWVhC670Gpl7n+63Ny673BgeIuQDoEifv36EAkiGQE
         3YZhH5UoOmLkEcZDOskPJe7DMpEG0ZTHNI+E058Icy1FHx1Ynw9lZAo4QiuztPLE8zL1
         jwjQ6GNXh2ivtrPemUqEMpkwm4P4n6OVLesrMyyTEsdgKitjETLc2dUtPpoYBKT8yjCc
         oYJaQS4D6aWPd0JwTngwOEc5lns58d1GTRH8zTT8kW+2+Be0QMHN/xhXKINiL0rGH0h3
         WpV4CLCfe2z81XHj3H+gLP61ujZVLt81oNOwjecoaQGsXbEIaeWaE9yKRA6341rr4UPg
         Y2Wg==
X-Forwarded-Encrypted: i=1; AJvYcCWjEAJA/gYrL1zvDrQ/blJCTjdod9MlMYVhzB+zrGPkP+DCtAMssujH1eczp58vptp0Q/RWvSDzB3HGgHFL1/asdbvbBY/Q/O7Ibg==
X-Gm-Message-State: AOJu0Yzv6rZoZ8ttJoNYOb7TYZfh7Pld+kacuo144wWKgQeS4bIRn3hW
	GHzBZZUVjJCkZBy0LbOJaNA4ptgATm+RdtWOsc9tCYWfqTmY62skk/zAtLN/Bg==
X-Google-Smtp-Source: AGHT+IEZumlIxb4G0d4K62o0AbkepaXShc33hqlL9UEbLbxcWjF6LoBXCm4td2IpRYXolb4bY9ObCA==
X-Received: by 2002:a05:6e02:1a8e:b0:365:185a:83ed with SMTP id k14-20020a056e021a8e00b00365185a83edmr1768942ilv.10.1709236349457;
        Thu, 29 Feb 2024 11:52:29 -0800 (PST)
Received: from localhost (144.57.222.35.bc.googleusercontent.com. [35.222.57.144])
        by smtp.gmail.com with UTF8SMTPSA id 6-20020a056e020ca600b003653eb24e14sm492989ilg.78.2024.02.29.11.52.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 11:52:29 -0800 (PST)
Date: Thu, 29 Feb 2024 19:52:28 +0000
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
Subject: Re: [PATCH v6 7/9] usb: misc: onboard_dev: add support for non-hub
 devices
Message-ID: <ZeDgfIojODIbhs6N@google.com>
References: <20240229-onboard_xvf3500-v6-0-a0aff2947040@wolfvision.net>
 <20240229-onboard_xvf3500-v6-7-a0aff2947040@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240229-onboard_xvf3500-v6-7-a0aff2947040@wolfvision.net>

On Thu, Feb 29, 2024 at 09:34:50AM +0100, Javier Carrasco wrote:
> Most of the functionality this driver provides can be used by non-hub
> devices as well.
> 
> To account for the hub-specific code, add a flag to the device data
> structure and check its value for hub-specific code.
> 
> The 'always_powered_in_supend' attribute is only available for hub
> devices, keeping the driver's default behavior for non-hub devices (keep
> on in suspend).
> 
> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>
> ---
>  drivers/usb/misc/onboard_usb_dev.c | 25 ++++++++++++++++++++++++-
>  drivers/usb/misc/onboard_usb_dev.h | 10 ++++++++++
>  2 files changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
> index 4ae580445408..f1b174503c44 100644
> --- a/drivers/usb/misc/onboard_usb_dev.c
> +++ b/drivers/usb/misc/onboard_usb_dev.c
> @@ -261,7 +261,27 @@ static struct attribute *onboard_dev_attrs[] = {
>  	&dev_attr_always_powered_in_suspend.attr,
>  	NULL,
>  };
> -ATTRIBUTE_GROUPS(onboard_dev);
> +
> +static umode_t onboard_dev_attrs_are_visible(struct kobject *kobj,
> +					     struct attribute *attr,
> +					     int n)
> +{
> +	struct device *dev = kobj_to_dev(kobj);
> +	struct onboard_dev *onboard_dev = dev_get_drvdata(dev);
> +
> +	if (attr == &dev_attr_always_powered_in_suspend.attr &&
> +	    !onboard_dev->pdata->is_hub)
> +		return 0;
> +
> +	return attr->mode;
> +}
> +
> +static const struct attribute_group onboard_dev_group = {
> +	.is_visible = onboard_dev_attrs_are_visible,
> +	.attrs = onboard_dev_attrs,
> +};
> +__ATTRIBUTE_GROUPS(onboard_dev);
> +

nit: remove one empty line

>  
>  static void onboard_dev_attach_usb_driver(struct work_struct *work)
>  {
> @@ -286,6 +306,9 @@ static int onboard_dev_probe(struct platform_device *pdev)
>  	if (!onboard_dev->pdata)
>  		return -EINVAL;
>  
> +	if (!onboard_dev->pdata->is_hub)
> +		onboard_dev->always_powered_in_suspend = true;
> +
>  	onboard_dev->dev = dev;
>  
>  	err = onboard_dev_get_regulators(onboard_dev);
> diff --git a/drivers/usb/misc/onboard_usb_dev.h b/drivers/usb/misc/onboard_usb_dev.h
> index 4da9f3b7f9e9..58cf8c81b2cf 100644
> --- a/drivers/usb/misc/onboard_usb_dev.h
> +++ b/drivers/usb/misc/onboard_usb_dev.h
> @@ -12,60 +12,70 @@ struct onboard_dev_pdata {
>  	unsigned long reset_us;		/* reset pulse width in us */
>  	unsigned int num_supplies;	/* number of supplies */
>  	const char * const supply_names[MAX_SUPPLIES];
> +	bool is_hub;			/* true if the device is a HUB */

nit: either drop the comment (the variable name is pretty self explaining),
or s/HUB/hub/ ('hub' isn't an acronym).

Acked-by: Matthias Kaehlcke <mka@chromium.org>

