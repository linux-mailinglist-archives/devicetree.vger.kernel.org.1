Return-Path: <devicetree+bounces-47011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C3186BA00
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 22:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 20D02B240B0
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 21:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD1AB70041;
	Wed, 28 Feb 2024 21:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VGNa5PE6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A047002F
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 21:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709156077; cv=none; b=UXRMeCmCToap1yiV4/RvQ3zB7A6Nt6lODG9L9unRA4Qy0F6RxWxVu6owL9ny2iOQEY3Lu6RAao9jgMsxTCcruRM5rUJ9Oa9dDgalVdYwzram6SLirHrMa3JQW3ULrcZV3QuCfXFgkzo73Kco59ILOrHMqkuYPpbYH8oAkPFsWOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709156077; c=relaxed/simple;
	bh=fGgId9fOgxTjTCBv6QAWpcdQDhKv3hvIs0a258L+ioI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pEsZ7wevhPew38LdMUjMrHy9gCuqVVxijSNPPVSx6BFVMSR3XlptdPDOnwrZ1OcnH74CKfYDRS+WD4k2Xob+cENs5r+0/TO4MV4mDjVqtFzH+hAiMY4spbsfvUpvvODnTA8ESUPhAXrjDaDtrAnxf8Snzfi0AW0ZjAeKgg4RbaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VGNa5PE6; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-36517cfd690so1227405ab.2
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 13:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709156074; x=1709760874; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ud3jsbNEeuU2tmgvB1e9X78Ey55SQRcSwnTZ1T/aebs=;
        b=VGNa5PE6ihdOMJd6fP5tUnRYa5yfi5bheRhoj8N9lkV/fwcp83EZ/FywcIM68iNZzi
         TJ0XpADDblc3MtWeRDmqOvMwPbJgzLq1UmbtwlFWilD+lsCM3p7Wd0CzGnpHgBcVAHe2
         o9FcaZp0h1seZ1Irmg8XXl2sT0vQ3Mi4YaRIU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709156074; x=1709760874;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ud3jsbNEeuU2tmgvB1e9X78Ey55SQRcSwnTZ1T/aebs=;
        b=ebPNiWDytj3hV0vgm3ySfWskcaHUfsJ9L86sdwXhtqVVhUw4JmzaBBzvCagtgEgFHf
         G6JMOvPfFbhPgYUyU59o7jRI9tCS+MaRb6s+rro9Hzmtxd9S155oNLYxPnxo0m14UH9P
         RLEeZiJJNrwQMhAWwizbJe+gr3tM+Wq3+EgTImVieWkIiWKevTmF7ReVwS08dETPGXgZ
         KTWJwoKAl40RtazMUZ5lSBBXiUIWSY8eLb1T3k7ZSa47G7rMHITDtrWSyX35tG83mPvw
         78Gg8FV7Bd9MG372afnTlxpjCl+SJQcNtZK0mHusYgxrP6eX81EO+mIA62ebfX5k/WWK
         LekQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8pQDzjQwnQ8FaTfs6S9uA0OEkzq/QjSX+CQ0b+nnrSRNziQ/UpJAsdVz9qsphRjQr0L1Ag3UwwmtRmdQ+sWjaq1BlBHw+rldVTQ==
X-Gm-Message-State: AOJu0Yxmvh7+vr8XE2TvQiVKfk0p28OhO89WZcyGVlvLs2KTYWHOP8Kf
	LMsoeAwlmkw9zxpim3dM+V1hPzDf0jdFlAXsulgh3NMCqYufYKmI4+upd1VXlQ==
X-Google-Smtp-Source: AGHT+IFRn4MDh7nvzu0eSOUCvjYdM8/HpCDcsTdPwQHR4UeGWg9wLpczoWIYWROWR4Qj4A2q46iIUg==
X-Received: by 2002:a05:6e02:524:b0:365:1749:cadf with SMTP id h4-20020a056e02052400b003651749cadfmr613056ils.16.1709156074288;
        Wed, 28 Feb 2024 13:34:34 -0800 (PST)
Received: from localhost (144.57.222.35.bc.googleusercontent.com. [35.222.57.144])
        by smtp.gmail.com with UTF8SMTPSA id e4-20020a92de44000000b00365760eb777sm68026ilr.81.2024.02.28.13.34.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 13:34:33 -0800 (PST)
Date: Wed, 28 Feb 2024 21:34:33 +0000
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
Subject: Re: [PATCH v5 6/8] usb: misc: onboard_dev: add support for non-hub
 devices
Message-ID: <Zd-m6WNd5ukXyJGx@google.com>
References: <20240228-onboard_xvf3500-v5-0-76b805fd3fe6@wolfvision.net>
 <20240228-onboard_xvf3500-v5-6-76b805fd3fe6@wolfvision.net>
 <Zd93JZTlN4BCxWm7@google.com>
 <ecf303c3-d7a1-49d5-a997-32596215e43d@wolfvision.net>
 <Zd-ahtPpI8zbAYQ9@google.com>
 <63d9be60-40dd-49f6-9a75-72d4be746024@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <63d9be60-40dd-49f6-9a75-72d4be746024@wolfvision.net>

On Wed, Feb 28, 2024 at 09:50:22PM +0100, Javier Carrasco wrote:
> On 28.02.24 21:41, Matthias Kaehlcke wrote:
> > On Wed, Feb 28, 2024 at 09:21:00PM +0100, Javier Carrasco wrote:
> >> On 28.02.24 19:10, Matthias Kaehlcke wrote:
> >>> On Wed, Feb 28, 2024 at 02:51:33PM +0100, Javier Carrasco wrote:
> >>>> Most of the functionality this driver provides can be used by non-hub
> >>>> devices as well.
> >>>>
> >>>> To account for the hub-specific code, add a flag to the device data
> >>>> structure and check its value for hub-specific code.
> >>>>
> >>>> The 'always_powered_in_supend' attribute is only available for hub
> >>>> devices, keeping the driver's default behavior for non-hub devices (keep
> >>>> on in suspend).
> >>>>
> >>>> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>
> >>>> ---
> >>>>  drivers/usb/misc/onboard_usb_dev.c | 25 +++++++++++++++++++++++--
> >>>>  drivers/usb/misc/onboard_usb_dev.h | 10 ++++++++++
> >>>>  2 files changed, 33 insertions(+), 2 deletions(-)
> >>>>
> >>>> diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
> >>>> index e1779bd2d126..df0ed172c7ec 100644
> >>>> --- a/drivers/usb/misc/onboard_usb_dev.c
> >>>> +++ b/drivers/usb/misc/onboard_usb_dev.c
> >>>> @@ -132,7 +132,8 @@ static int __maybe_unused onboard_dev_suspend(struct device *dev)
> >>>>  	struct usbdev_node *node;
> >>>>  	bool power_off = true;
> >>>>  
> >>>> -	if (onboard_dev->always_powered_in_suspend)
> >>>> +	if (onboard_dev->always_powered_in_suspend &&
> >>>> +	    !onboard_dev->pdata->is_hub)
> >>>>  		return 0;
> >>>
> >>> With this non-hub devices would always be powered down, since
> >>> 'always_powerd_in_suspend' is not set for them. This should be:
> >>>
> >>
> >> May I ask you what you meant in v4 with this comment?
> >>
> >>> Even without the sysfs attribute the field 'always_powered_in_suspend'
> >>> could
> >>> be set to true by probe() for non-hub devices.
> > 
> > struct onboard_dev always has the field 'always_powered_in_suspend',
> > even for non-hubs, that don't have the corresponding sysfs attribute.
> > Currently it is left uninitialized (i.e. false) for non-hubs. Instead
> > it could be initialized to true by probe() for non-hubs, which would
> > be semantically correct. With that it wouldn't be necessary to check
> > here whether a device is hub, because the field would provide the
> > necessary information.
> > 
> 
> That is maybe what is confusing me a bit. Should it not be false for
> non-hub devices? That property is only meant for hubs, so why should
> non-hub devices be always powered in suspend? I thought it should always
> be false for non-hub devices, and configurable for hubs.

I suspect the confusion stems from the sysfs attribute 'always_powered_...'
vs. the struct field with the same name.

The sysfs attribute defaults to 'false', which results in USB devices
being powered down in suspend. That was the desired behavior for a device
I was working on when I implemented this driver, but in hindsight I think
the default should have been 'true'.

We agreed that non-hub devices shouldn't be powered down in suspend. It
would be unexpected for users and could have side effects like delays
or losing status. Since (I think) we can't change the default of the
attribute we said we'd limit it to hubs, and not create it for other
types of USB devices. Other USB devices would remain powered during
system suspend.

Are we in agreement up to this point, in particular that non-hub
devices should remain powered?

struct onboard_dev has the field 'always_powered_...', which in the
existing code is *always* associated with the sysfs attribute of
the same name. But there is no reason to not to use the field when
the sysfs attribute does not exist. For any device at any given time
the field could indicate whether the device should be remain powered
during suspend. For hubs the value can be changed at runtime
through the sysfs attribute, for non-hubs it would be static and
always indicate that the device should remain powered.

Does that clarify your doubts?

