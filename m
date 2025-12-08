Return-Path: <devicetree+bounces-245153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B74CACE3F
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 11:36:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B1183031CC5
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 10:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34972310625;
	Mon,  8 Dec 2025 10:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="nMhn5PTL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B7930F94C
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 10:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765190163; cv=none; b=LCnnnoKLtvr/Jb9DXnyKg6GCe+m5KNWXRuAYHb0mKheW5QpxRwb9t6AT23Gj7rcAkOHhgl7vi+S888Tcpp88HfBT2GJwSQhCCSBpVCDdwgcJ8ZknNFLmZFoTlrDSVirM2w7CSO+cwfeyyFeLa8b/UhCSMxyBlvsMgiuPNfofji8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765190163; c=relaxed/simple;
	bh=s0L/F0IMsYB37Rxo4CHT7apF8oSazdCraUwxwRSEMFw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OtxoAGQ58Ff19YD2zqPf0sEDfjwV3njffMtFHKCiZhpCmlN1XszT5En8vJo5A+GlRrRXcj28ZPjKM/Z7oPjdqWagef9dv/lEsOLAmivFM7PR9+sY0yto0l03tQPAAm6+5v59LSniVwro/PwkO2DIzQzTsUkh4qLQGEwG+fkutIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=nMhn5PTL; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4779ce2a624so54842095e9.2
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 02:36:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765190159; x=1765794959; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+E3SOYkqsEc+5aDXpHHAZRqmKpJ7LXworventsdWgtI=;
        b=nMhn5PTL7mWngGMbeboSyi0dP4zWTcbikcsfwcPLTx5aKFoQ6YACS3xEp7I5wQDn19
         8+2oMBb4KM3f7xm5TgP9iNxIw/2JGVRoGc/fIIAHZCJuKS2POcqde2W0oj0v2OJZXhry
         SGzWvtxeP2UNR1Ac3c0KW4Iy328FdcyzlRVD1YFVYiJpFajCmcYmS/YYa83/nJwGzhL5
         taurYQskIYL4QueLkW7MvOdtVB/nOFF3a5YJUQMYQ/Qus+r3ic3+3YR3sdJ52y8CFwIw
         1BF2mfTZdOGsRkm1dGNzEBa+ZtAMAKYlVhHE9DqtAcDBWxU6MWii/vchH0S8uzaWaY5x
         Ip6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765190159; x=1765794959;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+E3SOYkqsEc+5aDXpHHAZRqmKpJ7LXworventsdWgtI=;
        b=MBLrkNFVc9vIJWIQXPn3R4/bc9/ccOxzYE9uU0KyyE8r0LjekbR2afj/Dri6Lg0c9r
         UEgPu5qvvskDTLFhbRMWvPKFiunjr5Z7zi/bLRKLURfJCDTqMeK6R8cKNjikjE2aj8qO
         E2llKHtxKNMWPnyAMH/QWJqzirExEAsfZ9IzAs+t2/OIKU6QNIMPQYIrZZQPFTjVr02C
         1oDTN921TU4TbubXXhLzoet/P+oq01BiPPMQO8clPDKlc8H/gIEc5q0Yl0DDID8MWOge
         P+ZvGp6ue5ZdKjNRX4VI/hZ36M/fEaLBSxvyLvHOTaspJdj/Au7GClWN1dl8JYkIAT8n
         c7Dw==
X-Forwarded-Encrypted: i=1; AJvYcCX1/7NbFA1P+FP2Sc4mwj4ly6sh7qRHR7ENrgFzuSQlin1ojQnh0tvJC3bb4Fq3FBuzN4LKN9dXcK1Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6c0DEk3epS7xJnORg0qZryBLyjLLxTVntlz9bPLo1gEzRB0UU
	Wk/jUddvb5jdzTRMDVm57f0UGoNZBl3iWzSjLC81ZV7/o5hA4NR2lwlE479Ob2hnoiY=
X-Gm-Gg: ASbGncskehcWKfYtUcRca8g6E5nRudEXC4YFb3U5JxybAyjcHiw0/YegvsfrEBMAsXn
	e4I9qxN8k+FENiK+jiu60HjKz+fXgLw5C9pnEuYjI9AoTMSozA432lMl68eXDXz8lV/iQOh6HpW
	97HRoKrtKLxidRC+ME0IIKjf2wMTIyq7d2tdgj2RpkgVEk0Marc/u0jg0F3T32Yn3mIt5R23smx
	Jf58yQ9nLxNOE26fuP38D6gVJvdZOJwFnxWB7jYjd7Ov90Cw42iq7NTgR7YyZewya0kZp51Yx/a
	d0/A14rjeR6hmdz2Taqv7zj3av9Yvs2AwRKpy8LmgQT6N+HQIg24hsaTWAS189SyptPUj246Ad2
	AwWkzcF1lbastJ9xNOyJgm3Usq3ThsbscscGgeNeAW58BXARw4OXdj90kCyRhn+nJHlvf2yhENU
	g3k8TleY0K6rtww/LYMeY50wldzH11grVFCyIPjb4lsO8iSQ0Xy15Zu5U+2tNBvz9DL4vetA==
X-Google-Smtp-Source: AGHT+IGge21HXj48TLUzsA7ggUbHSFC0xO5HgqxGNKT4MTX7Oe0oV8kQd6FtV8OIYLtnHQGrRwLESw==
X-Received: by 2002:a05:600c:818e:b0:477:9fcf:3fe3 with SMTP id 5b1f17b1804b1-47939c87088mr76977635e9.0.1765190159388;
        Mon, 08 Dec 2025 02:35:59 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479311e712fsm240407865e9.9.2025.12.08.02.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 02:35:58 -0800 (PST)
Date: Mon, 8 Dec 2025 10:35:55 +0000
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
Subject: Re: [PATCH v6 2/4] backlight: add max25014atg backlight
Message-ID: <aTaqCxsGj_waN92Y@aspen.lan>
References: <20251201-max25014-v6-0-88e3ac8112ff@gocontroll.com>
 <20251201-max25014-v6-2-88e3ac8112ff@gocontroll.com>
 <aTG0EK_zuSB-U_bb@aspen.lan>
 <8a9a59b8-d5c0-46b3-8f86-a4cd910b7af3@gocontroll.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8a9a59b8-d5c0-46b3-8f86-a4cd910b7af3@gocontroll.com>

On Fri, Dec 05, 2025 at 04:20:55PM +0100, Maud Spierings wrote:
> Thanks for the review.
>
> On 12/4/25 17:17, Daniel Thompson wrote:
> > On Mon, Dec 01, 2025 at 12:53:21PM +0100, Maud Spierings via B4 Relay wrote:
> > > The Maxim MAX25014 is a 4-channel automotive grade backlight driver IC
> > > with integrated boost controller.
> > >
> > > Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
>
> <snip>
>
> > > +static int max25014_update_status(struct backlight_device *bl_dev)
> > > +{
> > > +	struct max25014 *maxim = bl_get_data(bl_dev);
> > > +	uint32_t reg;
> > > +	int ret;
> > > +
> > > +	if (backlight_is_blank(maxim->bl))
> > > +		bl_dev->props.brightness = 0;
> >
> > This isn't right. Why would you change the backlight level just because
> > it is currently blanked (and sorry I missed this one last time).
>
> so just remove this bit then jeah?

Yes. backlight_get_brightness() is all you should need.


> > > +
> > > +	reg  = TON_STEP * bl_dev->props.brightness;
> >
> > The correct way to honour blanking is just go call
> > backlight_get_brightness() instead of reading the property directly.
>
> will do.

Thanks.


Daniel.

