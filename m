Return-Path: <devicetree+bounces-50781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD11787D0B6
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 16:53:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7107D2818FA
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 15:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9A983FB26;
	Fri, 15 Mar 2024 15:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hc7aOesX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6978B3CF63
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 15:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710518032; cv=none; b=iVxKTyFbCIvIMRKDeH1tj4oyRD1kHP7GG37H0+kiCf3s7VUJKwi1oI0isbyeg9SHyd4WkDRDOlUxC25N3J2xmn2tJzFOd+vOOJNheg08YiqDN/zoDq7UUrMCUKxcHzR3Xv8Fb3GGfK/s5vVmaO/bRRiIu6H4wV5Me4CLBxT3rAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710518032; c=relaxed/simple;
	bh=mO879abPOFEEh+GbocuwQJS8eHGb7R0UFTlONy3AG7s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rkkX+TvXPBcG7kupUQ45erH/u8ixqqo/GkUHx6lrv+OOqsfUgMIE1G72HUSUDYWKKgMH+QhtAnX06+KZXsjJ2Nu7h096Ax+rq3nrlLvHSn62a5Oyqbgv1tK/MJyNGj9QuoArwurLWqEaDZG+4mS3kDoqgpwJmbzXJi2Fh+UeqGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hc7aOesX; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-51320ca689aso2566794e87.2
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 08:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710518028; x=1711122828; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JVdJX1dxAeJ0yuMsoq5fwlcT3DxyqadWTW2RZ/hgZE4=;
        b=hc7aOesXV5OTqtCHZni522wyr8wpcT8aRYOMgvVGSiki/pAh6jCf5v+EzX+pfRrJsG
         cGSGwstIIschUS+LiTEJ49nsb3gZCyJuFNVSLlfjySnfSrRFyLyEkBORbOtzmXovjfdF
         baF1OM8gndEaPfgZucYJXL3NGLwAz8oQyjke+GVufzL6Oy5XK06WrJs+NBagLPmoSxpy
         3HA82X/DUHk49lF4jbGUSOCX0YrKLHJtrFuwfKYv+R8tBjivZ+PVFlH9MSOkJR+0rOdw
         sBSM8bbPbMaAOnkGraVq9pjIfWKKqEOK9ry7em1wRoGjW87j7x6RFxXn3LfGbDBUdZFs
         x3xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710518028; x=1711122828;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JVdJX1dxAeJ0yuMsoq5fwlcT3DxyqadWTW2RZ/hgZE4=;
        b=ooQ0jzz62/a3lM6KlZUZUcyMe8tts6z1vErY5rCOUoiCfiALzEJM376+v0CbBqohzb
         0VBOZ969ZnAFHY7J4cNgx+bv/QST8wDGX/GMnvJ9GVq3x+BiSl5FBtnprfRtVamftyi7
         iVKosMMjQbfOLLbNaEobibsCM733lwWPQEfxK8qQ13r/4F31MlY6S6cUz2qusTsVHkv5
         LXcgjpEgIcfDrteXKVASfLWRLSoJmDeQSc1BnTEzCsX1x8m1O5tQRyOB96NO+AvnM8Ju
         3yG3GFmKzAmc25cpRa1KijLfnAKtOTP0MoAkWqvvr3vFQq6jinQZSro0/8J5d6TGZDT6
         gW1g==
X-Forwarded-Encrypted: i=1; AJvYcCWOCSFPxh34u7S5Ag9vh2lPROxedqJq/URXnBPs6MDURhJnsEsSFnb93zFxH0XNNGIo0SjiaYZiDWHuCSXe4nGUTZjHc8RoQSCEow==
X-Gm-Message-State: AOJu0YysSdJd1RXvQfnz4iZZHqD/PxrlcDLoGnqtK1YkDGCc24+Ixnz3
	0zxS0/Gx4Hu3sInQiguF6Q/TFaGkr8+T+lKHqrgmb1gHhaOUuYLO85/T7QyOYwJKfzgO/EMfKXD
	en7yJUKe9ESL3rupGW3VtuLJqT7PelNjUOyD3Ug==
X-Google-Smtp-Source: AGHT+IFS9eUXz0+3iJmOTFhIiXJyVfCjO8lbnV9V/PnYQRR8s9TcJ2qqY5y8mPSjyygkafaBkb1IYbIRMoSkyjL0ZWA=
X-Received: by 2002:a05:651c:543:b0:2d2:478a:83e with SMTP id
 q3-20020a05651c054300b002d2478a083emr2706172ljp.24.1710518027519; Fri, 15 Mar
 2024 08:53:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228051254.3988329-1-dominique.martinet@atmark-techno.com>
 <7f03bb12-0976-4cb7-9ca9-4e4e28170bdd@linaro.org> <Zd7hSOw3_zosyrn3@atmark-techno.com>
 <daed8ada-9e01-41ad-82af-5da5cbbc865c@linaro.org> <Zd7qz1Qte8HWieF_@atmark-techno.com>
 <20240228142441.00002a79@Huawei.com> <Zd_zB_ymxkx0HB3q@atmark-techno.com> <ZfPg-nMANUtBlr6S@atmark-techno.com>
In-Reply-To: <ZfPg-nMANUtBlr6S@atmark-techno.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 15 Mar 2024 10:53:36 -0500
Message-ID: <CAMknhBG_kJx8JPvTBQo7zpy3mFAkUjZpRY3DLBfXt+39nRJWiA@mail.gmail.com>
Subject: Re: [PATCH] iio: industrialio-core: look for aliases to request
 device index
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Jonathan Cameron <jic23@kernel.org>, 
	Syunya Ohshio <syunya.ohshio@atmark-techno.com>, =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 15, 2024 at 12:58=E2=80=AFAM Dominique Martinet
<dominique.martinet@atmark-techno.com> wrote:
>
> Hi Jonathan,
>
> Dominique Martinet wrote on Thu, Feb 29, 2024 at 11:59:19AM +0900:
> > Jonathan Cameron wrote on Wed, Feb 28, 2024 at 02:24:41PM +0000:
> > > A given IIO device driver may create multiple sysfs directories (regi=
sters
> > > device + one or more triggers), so I'm not sure how this would work.
> >
> > Thanks for pointing this out, the driver I'm using doesn't seem to
> > create extra triggers (iio_trigger_alloc doesn't seem to be called), bu=
t
> > the current patch would only affect iio_device_register, so presumably
> > would have no impact for these extra directories.
>
> So my device doesn't have any "built-in" trigger if that's a thing (let
> alone multiple), but I've played with iio-trig-sysfs and also had a look
> at what's in the tree's dts, and as far as I can see the 'name'
> (/sys/bus/iio/devices/trigger*/name, also used when registering a
> trigger for a device) seems to be fixed by the driver with parameters of
> the dts (e.g. 'reg'), so if there are multiple triggers and one wants
> something in the triggerX directory they're supposed to check all the
> names?
>
>
> So as far as I can see, I keep thinking it's orthogonal:
> - devices get a link as /sys/bus/iio/devices/iio:deviceX ; which contains=
:
>  * 'name', set by driver (some have an index but many are constant), and
>    does not have to be unique,
>  * 'label' contains whatever was set as label if set
>  * 'of_node', a symlink to the device tree node which is what we
>    currently use to differentiate devices in our code
> - triggers get /sys/bus/iio/devices/triggerX, which has a 'name' file
> that probably must be unique (as it's can be written in device's
> trigger/current_trigger to select it)
>
> > I'm sure we can make something work out while preserving compatibility,
> > the patch I sent might not be great but it wouldn't bother anyone not
> > using said aliases.
> >
> > aliases are apparently not appropriate for this (still not sure why?),
> > but if for example labels are better we could keep the current
> > iio:deviceX path (/sys/bus/iio/devices/iio:device0) with a label file i=
n
> > it as current software expect, but add a brand new directory with a lin=
k
> > named as per the label itself (for example /sys/class/iio/<label>;
> > my understanding is that /sys/class is meant for "easier" links and we
> > don't have anything iio-related there yet)
>
> I've looked at this /sys/class/iio idea (could use the label or fallback
> to iio:deviceX for devices, and name for triggers), but /sys/class seems
> to be entierly managed by the linux core driver framework so that
> doesn't leave much room for compromise...
> The links there use the device name (so iio:deviceX for devices), and if
> creating such a link fails it'll also fail the whole device creation
> (cdev_device_add() -> device_add() -> device_add_class_symlinks()), so
> my evil plan is foiled. (/sys/bus/iio/devices links are also
> automatically created by device_add() -> bus_add_device() from the
> device name)
>
>
> I guess we could manage another new directory somewhere or haphazardly
> create extra redundant links in the current bus directory, but that's
> not exactly something I'd consider workable given there is no possible
> deprecation path down the road, so ultimately I still think the aliases
> patch I sent is amongst the least bad options we have here:
> - there's currently no alias for iio so it won't break anything;
> - even if one adds some on a device with multiple iio devices all that
> can happen is some indices will be shuffled, but paths will still be
> compatible with all current applications.
>
>
> Did you have time to think about this or another possible way forward?
>


How about using udev rules to create symlinks for each device based on
the label attribute? No changes to the kernel are needed.

