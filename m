Return-Path: <devicetree+bounces-236608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0C3C45C77
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:59:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5C3B9347BB3
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ECE2301707;
	Mon, 10 Nov 2025 09:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="CU4X2lut"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599AD2FC87E
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762768745; cv=none; b=Egct48pi5uAFLgjsvLZsgs8mccWIxbyCpZ7K5HyNo561NLVyLRq2HnglZh5hHIjEvKKPbqCYzmdItxzBlQaVBKCL0jUB+2P2Tdw3J4k3yvx6h9rb19XR9UalU/h67VQJfZlqX6+q6W5je2xsjSI9g7mU22n7lQr3rVevKC4pjd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762768745; c=relaxed/simple;
	bh=Ldxb3xiosslpoOJubQchwtbD2Q0t8Tiz2RiN7Ya71NU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ol102cMm+/i0J0EIbCS1vEG31sJ78cPkEvO7cPFAA8gnZaYhVLUEIHoj5DdGhYB8i1KWXCWWiPOUcDFTFFL1X/ObLvl5Aps3ssrcMk2nMFIH2L1KTfmk5Hp7Xr1SWrlUouh7g4Q424zSxg/Qi1CjRbO5P2U3rjhzj65nfqrjYvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=CU4X2lut; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-429c7e438a8so2458205f8f.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1762768741; x=1763373541; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wKdtCn/XoTBMU0W91zbNyyVRdCbCwPGBIxEuE5k5q+8=;
        b=CU4X2lutMaoMp7050vNzWAMZ+EMXpJt11Kci27RsnTIl2yDssByHkBj8jMTgXdJ7dc
         Pi35qWLiOt36vrj4uZGBBRCDvasuLEpJqHQYRoGN+WkhCWagOO2/EvZc/TZy6zBEUOgU
         dOseGOeC5P200rjflSAm7dyWMNiR3jRjYfiiWLOcLf+KqSiURh+hOB8DP587ztAzqgxp
         WpJTeth0Ay0n7WnKSLb2/E9qPQYUEwlNgsGqcDlx4kfd5jfN7zcl212Is8Rz2OSvigRG
         zcAZwSUMNe/W4U8Mj/XLqoLjmUpYRk9LIfSLo9jagpd8NsIexgbap3qnq30iXiB0tUdu
         ZqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762768741; x=1763373541;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wKdtCn/XoTBMU0W91zbNyyVRdCbCwPGBIxEuE5k5q+8=;
        b=ayHfzt5iUhvrArO144/DpxeW/BjSaHWx+gluQno6bWIXTMuWF2iAY0+Okm0m9VX49h
         RJArSehQNbTR1rBVxhd3Z02lg9iXHA8LjoWK14QvrbfreDw1khUE9zKyB8Ht77BHxRrX
         Ii8EFHfo7b1YcAyGq2zkMZvcmOAIhy4qhB28cXLyEPE+o+Mwr4QvT4kfAlhGLy43SRv3
         usSAtd1vk0+30SHP0Qzxuuvhqpy71O5C76f5TPQa6j3371AZvTKZzA4UsKhaRr1c+WOS
         K28ML5iyI7dZ9Wa1hGhdrdoqsyYnC8IYwFIe9saAPL2mv3L3eRdJNTwwgJzTgJXHUk62
         HE/g==
X-Forwarded-Encrypted: i=1; AJvYcCV+5t5nSvHRagGvutVfQvYDeddHgCsIfWw0bSxKFeUK7f2sxXPcxKrqHacIj0NGD8o4l95k+ekv9PGq@vger.kernel.org
X-Gm-Message-State: AOJu0YziSLgeNFbzpujhnf1ayKN2XgrZQCF6Kif/aBJe0a94doREBDPd
	8bP+oeNsyzNRTXkysHGFBV2IhQUN0M9ZdM7MC06Uw4nhERuQi9vRtg3PBoHMRsW86kY=
X-Gm-Gg: ASbGnctLWnO7F0TzIbMmWIcExrFuTTZtPpBdaPSUOCkF1IWlgHFw6KdRxR1rsSyUaEc
	mDr3lbkJn9qu7Lg7kDcIrDh6GTDCvta5QZmcp3WBeK4vITqJ06AzJQU5YPV8Ks4wAcGjD6HMdwm
	0tisQq/2yVUyr5i3b78TxU1hpDurVimDL0wJmUXNNgAsb2Ezc/ChD/nq8cOFYWnfgxD2wgamR9V
	KP5OYXaHL92NdqY1Tp5Oln2rNKXhg+UwiWgqp1Kg1M0UlrA/86JTrz+m6wafcZpkTAv8z/sEOc1
	KnOaQMm4Hky6kz5TjMifvHT3oPF0w+CBQyZZFLrZU8sebZ5KbYme1JXmDLn+KF0UphT6aCJnB40
	ND9qis91ufTFMhzazywZy/t6SRK7Jkv79aLONcbzUcXbhn/BH5ima/7qTTbZBYI7uC6OI9ByjaT
	SgbxY777q2bcToJw4jSVJqTDros53U+GqzPK7ywcfz4PLiI320OnQzG1fElog=
X-Google-Smtp-Source: AGHT+IESDCHlcbXRXRa2TG5aApGtSH2moJB6JVIAkSw02ybwWPI2qmXCnmEZcdOIcRiKJ320ee1qvg==
X-Received: by 2002:a5d:5885:0:b0:429:d19f:d959 with SMTP id ffacd0b85a97d-42b2dc1ab24mr7071023f8f.15.1762768740534;
        Mon, 10 Nov 2025 01:59:00 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b32ecf522sm9799000f8f.45.2025.11.10.01.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 01:58:59 -0800 (PST)
Date: Mon, 10 Nov 2025 10:01:11 +0000
From: Daniel Thompson <daniel@riscstar.com>
To: Maud Spierings <maudspierings@gocontroll.com>
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, dri-devel@lists.freedesktop.org,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 2/4] backlight: add max25014atg backlight
Message-ID: <aRG359gIeP48V2ZZ@aspen.lan>
References: <20251107-max25014-v5-0-9a6aa57306bf@gocontroll.com>
 <20251107-max25014-v5-2-9a6aa57306bf@gocontroll.com>
 <aQ4a2SBDldYgQb56@aspen.lan>
 <f4e52cc1-9c5f-4069-9079-83be794ab2b3@gocontroll.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f4e52cc1-9c5f-4069-9079-83be794ab2b3@gocontroll.com>

On Mon, Nov 10, 2025 at 09:40:07AM +0100, Maud Spierings wrote:
> On 11/7/25 17:14, Daniel Thompson wrote:
> > On Fri, Nov 07, 2025 at 01:49:59PM +0100, Maud Spierings via B4 Relay wrote:
> > > +/**
> > > + * @brief control the brightness with i2c registers
> > > + *
> > > + * @param regmap trivial
> > > + * @param brt brightness
> > > + * @return int
> > > + */
> > > +static int max25014_register_control(struct regmap *regmap, uint32_t brt)
> >
> > This isn't a good name for a function. It doesn't really say what it
> > does. Please find a more descriptive name.
>
> Having a lot of difficulties find a succinct name that fits better,
> max25014_register_brightness_control()?
> max25014_i2c_brightness_control()?

I'd focus on what it does rather than how it does it meaning something
like max25014_update_brightness() would work.

However, at present, this code is only called from
max25014_update_status() so the simplest thing to do is to move the
code into max25014_update_status() and remove this function entirely
(then it doesn't matter what it is called ;-) ).


> > > +/*
> > > + * 1. disable unused strings
> > > + * 2. set dim mode
> > > + * 3. set initial brightness
> >
> > How does this code set the initial brightness? It doens't set the
> > MAX25014_TON* registers.
>
> Yep forgot to remove that, I discovered the backlight core takes care of the
> default brightness, so I removed it from here.

What do you mean by this? Are you sure you aren't relying on another
driver to enable the backlight rather than the backlight core?

> > > + * 4. set setting register
> > > + * 5. enable the backlight
> > > + */
> > > +static int max25014_configure(struct max25014 *maxim)


> > > +static int max25014_probe(struct i2c_client *cl)
> > > <snip>
> > > +
> > > +	/* Enable can be tied to vin rail wait if either is available */
> > > +	if (maxim->enable || maxim->vin) {
> > > +		/* Datasheet Electrical Characteristics tSTARTUP 2ms */
> > > +		usleep_range(2000, 2500);
> > > +	}
> >
> > If you really want to keep the devm_regulator_get_optional() I guess
> > maybe you could persuade me it's need to avoid this sleep... although
> > I'd be fairly happy to remove the NULL checks here too!
>
> Just wait unconditionally?

If you think it will be unusual for the driver to be used without enable
or regulator then it's ok to wait unconditionally (all examples you
have added so far have an enable pin).


Daniel.

