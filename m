Return-Path: <devicetree+bounces-46519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87955869E61
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 18:56:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B70D28CD59
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 17:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92F4914A4F8;
	Tue, 27 Feb 2024 17:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="chESIHFZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0281514A4F0
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 17:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709056511; cv=none; b=CPGHbtl5NUIO4hsid4JncM0lYwrTHNxwlkpF8BC25U0LNRBfV1WqdjuF889u4SBW4hnhDMmCk28JGnf4gHIkGmn6gVUv1/JQzdFEAARES5vims3gIHj66vacC1/gpegnqK8h9uY1rBe2WUlWwrKYXO/yNAy1rYQ/yAgSBQYt7Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709056511; c=relaxed/simple;
	bh=4mxpcwtJGmPAx0hGuHiSF19sttpDcfgAzEqkq+js9w0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E/qIG/yQdIer8gch90mNkbCqQ0foAnjUFYcx025FgPcmREBo8OqZNjfNAPiXJLVHFFJfj0YrvRSu7kgTQMMlMFG51ya6FhrL4SQX77Qwpz4JSx1JeFtcf2uPswjTJZ17qqhjXa+3Msu0zS6jNjRqgda2n9e7U9nBSkhxcZKhPcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=chESIHFZ; arc=none smtp.client-ip=209.85.166.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-7bc332d3a8cso309792639f.2
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 09:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709056509; x=1709661309; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0z6oy3tLEwRGgu8/omrsseYREQZqlDjlucfwbridRR4=;
        b=chESIHFZopoekdXZAIn5yr8L36LqKiRAzMmBw0JBzQdug/CTAodhBYAHHvD7wNUm7O
         yo4UCYJAOc4GbOcIf/OFhVNYZ5ssaZkAGjeQcVoSFwmTwDttR51c8WWCh5ULH12ghuGq
         2UZsNyck+l4Ae2E9kGCporZr2CKI+1eDAI/b8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709056509; x=1709661309;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0z6oy3tLEwRGgu8/omrsseYREQZqlDjlucfwbridRR4=;
        b=Rni7pmFaVmtW9PeZLvbe43YTD6sLA9TrC3Wxgmx3BQ6GykVN5gemCsnNTX509U16MM
         xCfyrTeSZfc/3j+NytcCm1ng0+MZvrkOHc34Jde3OW2zhBMWB+J5j8Dg5IvJBYmB0UWR
         leCY5U92Xylrip20xy1e0SZmYyTUNZ92DbdPQ0tcAlaZrnObJMav6YbucalY7T9gFwj0
         05M11Rzjsizr/r1FU2/txYPkNHWCuGYtEHCSQTrOk0f/jOaoP/V2/Ze5blk26k24xOOD
         YnBdHLiuuDvZePTQC4WlIleM+xemtPSg+cr3CQpyxj5pRYhmagNJzuxlYwrU+IEFtR6Y
         4bwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUr+knCZ3Dh+WS+zsD/LqzBRjgS0A4yV2XN5nHHDga013VJT3cCh3dXIo0thrxX0S+Hc3CrowCu8kOTxklu6jK78fpAv5PvWNoEPA==
X-Gm-Message-State: AOJu0YzJ4uttTBxMwNss8Pl2+1Yfmcc/b6RiJI3mqQKZJJbMw52cUCfB
	ODMWRR91sy//ZcWkYgOL0Q13D2uJt3QD+rlaluLoOMHnmdEIzlbJ9sUK8/f3dKxkTqxyeSbAmds
	=
X-Google-Smtp-Source: AGHT+IE99IEm1bwDJq2IEwn8DzuSvhEObNZduooC8XEtgQeAr6li7TB9E5Onf6yMe4pPR4UCVj/fTw==
X-Received: by 2002:a5e:c007:0:b0:7c7:9184:df98 with SMTP id u7-20020a5ec007000000b007c79184df98mr13293582iol.12.1709056509170;
        Tue, 27 Feb 2024 09:55:09 -0800 (PST)
Received: from localhost (147.220.222.35.bc.googleusercontent.com. [35.222.220.147])
        by smtp.gmail.com with UTF8SMTPSA id u14-20020a02b1ce000000b0047464deaba5sm1816183jah.114.2024.02.27.09.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Feb 2024 09:55:08 -0800 (PST)
Date: Tue, 27 Feb 2024 17:55:07 +0000
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
Subject: Re: [PATCH v4 2/8] usb: misc: onboard_dev: add support for non-hub
 devices
Message-ID: <Zd4h-4Nm0Kl-7mqp@google.com>
References: <20240220-onboard_xvf3500-v4-0-dc1617cc5dd4@wolfvision.net>
 <20240220-onboard_xvf3500-v4-2-dc1617cc5dd4@wolfvision.net>
 <ZdZN3FIS4zcKe4Kw@google.com>
 <174ce57a-3197-4251-831f-205ec5cfeae9@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <174ce57a-3197-4251-831f-205ec5cfeae9@wolfvision.net>

On Thu, Feb 22, 2024 at 03:42:26PM +0100, Javier Carrasco wrote:
> On 21.02.24 20:24, Matthias Kaehlcke wrote:
> > On Tue, Feb 20, 2024 at 03:05:46PM +0100, Javier Carrasco wrote:
> >> Most of the functionality this driver provides can be used by non-hub
> >> devices as well.
> >>
> >> To account for the hub-specific code, add a flag to the device data
> >> structure and check its value for hub-specific code.
> > 
> > Please mention that the driver doesn't power off non-hub devices
> > during system suspend.
> > 
> >> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>
> >> ---
> >>  drivers/usb/misc/onboard_usb_dev.c |  3 ++-
> >>  drivers/usb/misc/onboard_usb_dev.h | 10 ++++++++++
> >>  2 files changed, 12 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
> >> index 2103af2cb2a6..f43130a6786f 100644
> >> --- a/drivers/usb/misc/onboard_usb_dev.c
> >> +++ b/drivers/usb/misc/onboard_usb_dev.c
> >> @@ -129,7 +129,8 @@ static int __maybe_unused onboard_dev_suspend(struct device *dev)
> >>  		if (!device_may_wakeup(node->udev->bus->controller))
> >>  			continue;
> >>  
> >> -		if (usb_wakeup_enabled_descendants(node->udev)) {
> >> +		if (usb_wakeup_enabled_descendants(node->udev) ||
> >> +		    !onboard_dev->pdata->is_hub) {
> > 
> > 
> > This check isn't dependent on characteristics of the USB devices processed
> > in this loop, therefore it can be performed at function entry. Please combine
> > it with the check of 'always_powered_in_suspend'. It's also an option to
> > omit the check completely, 'always_powered_in_suspend' will never be set for
> > non-hub devices (assuming the sysfs attribute isn't added).
> > 
> 
> The attribute will not be available for non-hub devices in v5. However,
> if the check is completely removed, will power_off not stay true at the
> end of the function, always leading to a device power off? As you said,
> 'always_powered_in_suspend' will not be set for non-hub devices.

Even without the sysfs attribute the field 'always_powered_in_suspend' could
be set to true by probe() for non-hub devices.

