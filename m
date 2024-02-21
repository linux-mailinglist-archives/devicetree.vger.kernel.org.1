Return-Path: <devicetree+bounces-44473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFDB85E613
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 19:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E99FA284902
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 18:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 320608562A;
	Wed, 21 Feb 2024 18:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="X9AH01D9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B7EC3C068
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 18:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708540393; cv=none; b=IGolkQpJA6RBXJLSQ3/lZQrvs++J+vol6dS03KH25J99EA9nwCCVTcKQCHHLuHyRutapshyp2f4ndl/oe7iCGuoDspBTLTjZU4wxYFxmq+oCOJ4eDjPmlPEkFuu2J1v7CtOVmR8EBUOfH1Bj7rHfHIf7WkYAFqEYe1SJozzOSh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708540393; c=relaxed/simple;
	bh=89purHZkKcLXQHZInAgN1YPrrQ+QBmPNt/5xpga4zZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nvGIj8f0KrSXC0vFudIbry/+vI68tbjtyPAHonmrGUaqofq3Lnz1+LDAXM7Vpz1Zr7EbmD+FRTio5iFUy6AURCexrYO49WfH0Jl6f28UC+CpGetkBzF8Y0HTCrb95LLPB4ib7xyl1Xqsk2BL7+x07+yH0QwpJ+KhzX+RrQL+RT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=X9AH01D9; arc=none smtp.client-ip=209.85.166.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-7c7674446c0so41222039f.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 10:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1708540391; x=1709145191; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/YQ+k2u4/KRCl3gB+BuuroOtM62WkzZOyZVtF18iF8E=;
        b=X9AH01D97fqw2isfcfBMZOrlCiaIhvf6vhdH5qaTSJMZJMDjy8Q358YEMRrJq4mvQt
         g2/ZCUOO25BftYn8LAtpspQS4PjWo+FGIJjjxSi58dSZrQyroyq0tfpr/Q3Fv4GCdln6
         2ISQQRXGPOqPO+S77WuicFYaK5VX03mUEO5Zg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708540391; x=1709145191;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/YQ+k2u4/KRCl3gB+BuuroOtM62WkzZOyZVtF18iF8E=;
        b=TWFiYX+fDAMEWg0lzK7Lml94JSVH39mG3KtQxh5f3IFCm2wmidbr8a7RPrFlbZuYso
         70nNof34VB5WsZnBSQjPrEoZXFWGgH71bIQiIDRQwfziiOUk2GNZqEotd/RRH4x4N1wi
         o3kIa1nySL2RusggugWwQ0TCdz3w2lOwVC92EdIFT87g0ATh8DHo2Ilku0gTogOkbByw
         qfk7fINRAKzT1JXzEfGxfpTEolORIrEsEiWdnwQuOhOZBuldXSKmSYbKfKbBDFOCgfb7
         arzZ5jZrmAlWcBUzZA0jq3KQU6KlMFuVH4O/BI3VjNpcVFLxTvdk9cLdCJELRow7t8fA
         kybw==
X-Forwarded-Encrypted: i=1; AJvYcCUXUSXUF89DmDL99t+nDppaHix5PaQ8fQXZOJ4E2m30KHaNq4J44e5OocXniTjPeWr8UVPLj75A6Y+3iVEPRgtwhxMFAfG2zw6lOw==
X-Gm-Message-State: AOJu0YwlJNNHwbJS7aRwG1dr1l8IAqyF1exKXo8JLm+8DG4IvphXVVGD
	UxzD285MFEJrb7c6dQa16eZT+r6KcF6tOuHXrRce1A57NFzuQIvYMmeQ99dnDA==
X-Google-Smtp-Source: AGHT+IFHndbwvPi9HKM94gjUT+3r1Ko6m+vh9uNJ/tA+SNYvwRMb5Y+Io18p6G2V3UkJiZURF7V0DQ==
X-Received: by 2002:a6b:e713:0:b0:7c7:4f34:3ab6 with SMTP id b19-20020a6be713000000b007c74f343ab6mr11332480ioh.19.1708540390759;
        Wed, 21 Feb 2024 10:33:10 -0800 (PST)
Received: from localhost (147.220.222.35.bc.googleusercontent.com. [35.222.220.147])
        by smtp.gmail.com with UTF8SMTPSA id i19-20020a056602135300b007c762411fa4sm1058727iov.21.2024.02.21.10.33.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 10:33:10 -0800 (PST)
Date: Wed, 21 Feb 2024 18:33:09 +0000
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
Message-ID: <ZdZB5S2bU3TFaj4u@google.com>
References: <20240206-onboard_xvf3500-v3-0-f85b04116688@wolfvision.net>
 <20240206-onboard_xvf3500-v3-2-f85b04116688@wolfvision.net>
 <ZcJ9OnYOtUVMu2Yk@google.com>
 <2a23817d-b797-4659-a4e6-5c8a75864c90@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2a23817d-b797-4659-a4e6-5c8a75864c90@wolfvision.net>

On Tue, Feb 13, 2024 at 11:00:43AM +0100, Javier Carrasco wrote:
> On 06.02.24 19:40, Matthias Kaehlcke wrote:
> > On Tue, Feb 06, 2024 at 02:59:30PM +0100, Javier Carrasco wrote:
> >> Most of the functionality this driver provides can be used by non-hub
> >> devices as well.
> >>
> >> To account for the hub-specific code, add a flag to the device data
> >> structure and check its value for hub-specific code.
> >>
> >> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>
> >> ---
> >>  drivers/usb/misc/onboard_usb_dev.c |  3 +++
> >>  drivers/usb/misc/onboard_usb_dev.h | 10 ++++++++++
> >>  2 files changed, 13 insertions(+)
> >>
> >> diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
> >> index e2e1e1e30c1e..3ac21ec38ac0 100644
> >> --- a/drivers/usb/misc/onboard_usb_dev.c
> >> +++ b/drivers/usb/misc/onboard_usb_dev.c
> >> @@ -123,6 +123,9 @@ static int __maybe_unused onboard_dev_suspend(struct device *dev)
> >>  	if (onboard_dev->always_powered_in_suspend)
> >>  		return 0;
> >>  
> >> +	if (!onboard_dev->pdata->is_hub)
> >> +		return onboard_dev_power_off(onboard_dev);
> > 
> > Why turn the device always off when it isn't a hub? It could be a device
> > with wakeup support.
> > 
> > I really regret making 'off in suspend' the default :(
> > 
> 
> 
> The power management seems to be a critical point to consider.
> 
> Maybe we keep the current implementation and add support to non-hub
> devices by simply adding a check to set power_off to false:
> 
> static int __maybe_unused onboard_dev_suspend(struct device *dev)
> 
> {
> 
>         struct onboard_dev *onboard_dev = dev_get_drvdata(dev);
> 
>         struct usbdev_node *node;
> 
>         bool power_off = true;
> 
> 
> 
>         if (onboard_dev->always_powered_in_suspend)
> 
>                 return 0;
> 
> 
> 
>         mutex_lock(&onboard_dev->lock);
> 
> 
> 
>         list_for_each_entry(node, &onboard_dev->udev_list, list) {
> 
>                 if (!device_may_wakeup(node->udev->bus->controller))
> 
>                         continue;
> 
> 
> 
> ~                if (usb_wakeup_enabled_descendants(node->udev) ||
> 
> +                    !onboard_dev->pdata->is_hub) {
> 
>                         power_off = false;
> 
>                         break;
> 
>                 }

It isn't really necessary to perform this check in the loop, it isn't
dependent on any properties of the USB devices, right? It could be
combined with the check of 'always_powered_in_suspend' above.

