Return-Path: <devicetree+bounces-47048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F34586BF3A
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 04:01:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA0091C21D2C
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 03:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5C48364D2;
	Thu, 29 Feb 2024 02:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atmark-techno.com header.i=@atmark-techno.com header.b="IQKU/dkj";
	dkim=pass (2048-bit key) header.d=atmark-techno.com header.i=@atmark-techno.com header.b="EznoFZhg"
X-Original-To: devicetree@vger.kernel.org
Received: from gw2.atmark-techno.com (gw2.atmark-techno.com [35.74.137.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09ECA1D6BD
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 02:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.74.137.57
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709175576; cv=none; b=STDGkLMQM8DJnzFVNJqEl0zyqDIhhWZwgmMZUcCjJOE7TAS1jCrwJSlKK/9Qx0jTr/yQ3DIuXihkD4Nec3qtJWPGmYm0oLUUHQ2NfwXJqqWbx8BmkN8NvOfJFKMzA9RceBWRGbbq+QsKPer9doVhgZ7gH2QfnbT294ml2EhnpwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709175576; c=relaxed/simple;
	bh=UdnCobZm1yKg9JljgICC3JjwoWw2Qn9amUUWORtkX8A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oBrHKkxb9IUOSpo/c/sB6PTlm6cjHrPljI0hzDSmogSdv09i9GlqGEOGqlJRPoLpor0ZUbAJNd1d1kmc5PoXrxkrMc5uAQb90ym4ohs3rbJPLxRKhTUW0H9rHxkY2rboTj9h1Cheke0GzGZfrnxye6opmFnqYD/2BBCE4dGBJzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=atmark-techno.com; spf=pass smtp.mailfrom=atmark-techno.com; dkim=pass (2048-bit key) header.d=atmark-techno.com header.i=@atmark-techno.com header.b=IQKU/dkj; dkim=pass (2048-bit key) header.d=atmark-techno.com header.i=@atmark-techno.com header.b=EznoFZhg; arc=none smtp.client-ip=35.74.137.57
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=atmark-techno.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=atmark-techno.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1709175573;
	bh=UdnCobZm1yKg9JljgICC3JjwoWw2Qn9amUUWORtkX8A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IQKU/dkjR1DQLztKuYUgq9vBRpm8uqvyLIvG1zjxydI36EZAmokuwak5//Vc6dKQb
	 uneiLydBO0z00yXCmZFU6V6H/I5p8prW9+Lg0DSlWmVsz9W1DzKVszCvjPLTrDtMyP
	 tKS7xuYPT+8xJS8HM5Dt5uI65s/8eW/AYIydbQiXAKqh3TYyfSnnfiIG3IGGJOtZhS
	 YssOwwGg3JQZnCGVG9k0CCIuLmuQPI50QqO8D3ka/v+nUUWrcboxxiyV5ZyUZdjiu9
	 sgCGjaopZmy+WObpGjXbmNVYloHYhCklkFs2EZcD0ZjaMgLCftW8uK/+g2EwUggVYJ
	 0wMtZTj6orMlg==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id C6F144CB
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 11:59:33 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=EznoFZhg;
	dkim-atps=neutral
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 648534C7
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 11:59:32 +0900 (JST)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-6e558ec1a52so254906b3a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 18:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1709175571; x=1709780371; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4AYtAJCp8OrXlw5Zlqun1l6jjsdFx/4rtunorM/Qpsc=;
        b=EznoFZhgGmc/mcv6h+52PgSEbUmn3st5X5i1UaBhltEwj+TcAj35hvpv3Hrit6ttja
         s/nTGwyA3FSaGiUbgkH3B1E/dqZHa7fw4i+vf2a+xAasviDh9PYyxyEevhyecPg8KlLi
         IrgZuIXC3DEaU/eE9mQlUiWUj6UFQ1foY1n4GCacw8/nqTw75U4dfu5074/Qc0J6GU0u
         zivNMzfBIp5KTO9Ly8yesMgf0OIVttDvrlIbbxuBLd+dqvqatYFSpH55ng4UIhikf9er
         PPJ29h6vSo+AN4e8t6whqG7SItsDXO3edYiybzo5QMvlsC8w6pxq08B64n3Tlxb0Wpun
         GaMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709175571; x=1709780371;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4AYtAJCp8OrXlw5Zlqun1l6jjsdFx/4rtunorM/Qpsc=;
        b=LyLGo1DO2FrXclQFg1oULQe4mhMAvL/gISGARg+4D4VqeDn/6m5K1m3Z2Osjb8oaHG
         9mrtVl09fRp3TPjZ+cgT+h4J8jpOfJeFjWWllTQHItPk7fMXDLImjmt0fxQOcyC9Thb9
         fHzKUCiyNIcdNhorbPkD4kyovO+x3ZD8G5eah401izXm8vlxDoJ2yNmIdkJj5qsGznSL
         BtX33p+nNsR7p4gs/bF65ppu4pVYTC0C6NT4e7TcSF4QYNK4khOVFWcCWQiXuVQ+uTe0
         6Yp/8BZurKAt9BV/rGCJ3kyJV/ElIEei+uOMN49YE8FhCNEN61iBoxjsRxylGre37Y5C
         eB+Q==
X-Forwarded-Encrypted: i=1; AJvYcCX3ezSC1ADk0Vsq2JcUsbOEjncxep5h6q1qa9ghg0+vmD6wiTVjd91pH6zrLycs4Co6HjufsgQjI03yVvNx19TkAypVSoqYxQm9rQ==
X-Gm-Message-State: AOJu0YygE5RSXY2vqsQarog1Rp6y19COYNpxzy4rHD3AepWiteBDRurt
	Gp2fFiB03aKB0Swm5oaCeJ6xkq/wuv8f7FeeBs50D/By8xu52ne53RybhBC1bkcFv07+5SJIeDh
	yMKRCCOCx8xFe7Q+gAhdllAL02NLTT4TdKuUXamQegpc92arwI1hAzxCKtNxt
X-Received: by 2002:a05:6a20:d70f:b0:1a1:2a63:9986 with SMTP id iz15-20020a056a20d70f00b001a12a639986mr329191pzb.58.1709175571410;
        Wed, 28 Feb 2024 18:59:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGu8S9lacHTnIjCyHHwjqO8BAAyVJXkp7A0/WG22QwB+vN9dLXEqGBSlHQjC1ztQQtUgudh2A==
X-Received: by 2002:a05:6a20:d70f:b0:1a1:2a63:9986 with SMTP id iz15-20020a056a20d70f00b001a12a639986mr329178pzb.58.1709175571061;
        Wed, 28 Feb 2024 18:59:31 -0800 (PST)
Received: from pc-0182.atmarktech (117.209.187.35.bc.googleusercontent.com. [35.187.209.117])
        by smtp.gmail.com with ESMTPSA id z17-20020a170903019100b001db4433ef95sm177985plg.152.2024.02.28.18.59.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2024 18:59:30 -0800 (PST)
Received: from martinet by pc-0182.atmarktech with local (Exim 4.96)
	(envelope-from <martinet@pc-zest>)
	id 1rfWdt-00015U-1V;
	Thu, 29 Feb 2024 11:59:29 +0900
Date: Thu, 29 Feb 2024 11:59:19 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Syunya Ohshio <syunya.ohshio@atmark-techno.com>,
	Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iio: industrialio-core: look for aliases to request
 device index
Message-ID: <Zd_zB_ymxkx0HB3q@atmark-techno.com>
References: <20240228051254.3988329-1-dominique.martinet@atmark-techno.com>
 <7f03bb12-0976-4cb7-9ca9-4e4e28170bdd@linaro.org>
 <Zd7hSOw3_zosyrn3@atmark-techno.com>
 <daed8ada-9e01-41ad-82af-5da5cbbc865c@linaro.org>
 <Zd7qz1Qte8HWieF_@atmark-techno.com>
 <20240228142441.00002a79@Huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240228142441.00002a79@Huawei.com>

Thank you for the quick reply,

Jonathan Cameron wrote on Wed, Feb 28, 2024 at 02:24:41PM +0000:
> > > Maybe I don't get your point, but your email said "sysfs", so why do you
> > > refer to /dev?  
> > 
> > I wrote /dev/rtc0, but it also sets the name in /sys, right?
> > For example /sys/class/rtc/rtc0
> > 
> > As far as I'm aware iio also creates character devices in /dev with the
> > same name (/dev/iio/iio:deviceX), but our application doesn't use these
> > at all and has to? look in /sys directly, so normal udev SYMLINK+=
> > unfortunately isn't applicable or I wouldn't be bothering with all
> > this..
> 
> A given IIO device driver may create multiple sysfs directories (registers
> device + one or more triggers), so I'm not sure how this would work.

Thanks for pointing this out, the driver I'm using doesn't seem to
create extra triggers (iio_trigger_alloc doesn't seem to be called), but
the current patch would only affect iio_device_register, so presumably
would have no impact for these extra directories.
(There's also no impact without dt changes, it's only adding an extra
way of fixing the X of iio:deviceX everywhere)

> > Unfortunately for iio it looks like labels isn't ignored, but instead
> > create a file in the sysfs directory of the device, e.g. I now have
> > /sys/bus/iio/devices/iio:device1/label which contains the label string,
> > so I'm not sure that can be changed easily as that'd be a change of API
> > for existing users for labels in iio devices?
> 
> Yes, don't touch that ABI.  IIO software assumes naming of
> iio\:deviceX etc.
> 
> > (I checked briefly and didn't find any, but there seems to be an awful
> > lot of code in the iio drivers tree about labels so I'm not really
> > comfortable changing that without some more background on iio first...
> > Jonathan perhaps has an opinion on this?)
> 
> There are labels for channels as well as devices, but the short description
> you have above is it.
> 
> I don't see why that isn't sufficient for your use case though?

I'll have a lot of trouble arguing that one out as I agree it's "not
that hard" to check the names to get the correct IIO device, but it's
still definitely more work than being able to use fixed names.

For more background, we're selling a device+platform where our users can
write code themselves to read the sensors, with a variable number of
sensors (extension cards can be plugged in offline, reboot and you get
one more).
Adding an extra device currently comes in first and renames all
pre-existing ones because that's apparently the order linux gets them
from the dtb after adding overlays, and it'd "look better" if devices
get added in fixed order so our users don't need to deal with the
checking names/labels logic.

toradex apparently has the same need because they provide a script that
crates ugly links from /dev/xxx-adcY to /sys/.../in_voltageY_raw, so
it's not like we're the first ones to want something like this;
I think however that udev isn't appropriate to create links to /sys, so
having some way of fixing names in dts sounds better to me.

> What does a directory name matter when you can write a few lines of
> code to retrieve the IIO device that you want.
> 
> If this was day 0 maybe we could support renaming devices like this
> but we have a long history of those names not being stable and label
> + parentage of the IIO devices being used to establish stable identification.

I'm sure we can make something work out while preserving compatibility,
the patch I sent might not be great but it wouldn't bother anyone not
using said aliases.

aliases are apparently not appropriate for this (still not sure why?),
but if for example labels are better we could keep the current
iio:deviceX path (/sys/bus/iio/devices/iio:device0) with a label file in
it as current software expect, but add a brand new directory with a link
named as per the label itself (for example /sys/class/iio/<label>;
my understanding is that /sys/class is meant for "easier" links and we
don't have anything iio-related there yet)

That wouldn't break users checking through the existing paths, and
provide a new fixed path for anyone looking for it.

> Anything beyond a trivial single use script is going to need to deal with
> not having stable names (old kernel, dt without alias etc) so this doesn't
> help in general.

I'm sure any major software will have to deal with old kernels, but I
disagree that it doesn't help: in our case described above our users are
basically writing trivial scripts and won't ever be downgrading, we want
to guarantee they can rely on fixed names for our hardware because I
know for sure most won't be bothering to check.

Even for major softwares, any feature written now will hopefully be
considered generally available 20 years from now, we need to start
somewhere.

Thanks,
-- 
Dominique



