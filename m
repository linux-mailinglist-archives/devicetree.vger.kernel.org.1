Return-Path: <devicetree+bounces-125719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 190389DF030
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 12:37:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A23341638E8
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 11:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3648B198E74;
	Sat, 30 Nov 2024 11:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tNQeEBik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698AB188717
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 11:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732966615; cv=none; b=GkpMvK4m3CuFPd39owHpwru9F5QPiZvS926TmmUOTBu3/HY+OgPCBis5F1SDN3Ol33E0Nw0S6HrFOMwnwFoUt11RNe+rhZ0OhPUpFjiY7S8Jm2taqcOZdc0rFcKgEZ3tCda7/PinbptJGEtLRjIXY42cuXEeUsyNeBJy67rA1p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732966615; c=relaxed/simple;
	bh=cs9uDUZB2++se5eVEafXkaa+FpWCY9F8GcDMnkcUmpI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D3CIILtdA8s4U+LfFGk5FLsYkRomMloIkMsh68NJKGt4nykBeq0xOddZYA2rKyNfpPKOrnEM7Zoy/Cxctx1ap8a8QtJJo5jPBlglV9cSHrKdLyn6v83ifszM4TGOV0ki9eA1JMYbxYU3H+imJnX3RbYv8eZdEukBpk0JaPrWmfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tNQeEBik; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53df19bf6a9so3197660e87.1
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 03:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732966611; x=1733571411; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S/Pf8loTaik8LYCta5Jf2Zin0SqS3BgDup0y9NRq4n4=;
        b=tNQeEBiketj3ErhnxjUOND3PPJHIaHj3ZLmwJF9Y2HhRLjfYLjRla91ZgdJkDRjpbv
         4IoVX1flWcm38hTYYpvjzLbmQJDk/fkidrkxmV4GGrdFKew12jsaAnQKHi9v1/H/zXAV
         wye5m3Maq34BJehEze8FxevHvTZo1YW0uBWgZw20wgPswmS6KXo5/o2mUft8V61QvzoL
         C24Ipo7JIljMYGUYNRE4Gbwrc75aUfelba5gS4AHQt/JLFcescz5SW3r2FMhUNxWpHQ8
         Rle7XUtnlKtwMWpxj/BLWgRF0lcCFLEg07KJ1WSiLTRS0JxHvy4TSq3uF+lqvXCwF/7t
         pxkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732966611; x=1733571411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S/Pf8loTaik8LYCta5Jf2Zin0SqS3BgDup0y9NRq4n4=;
        b=SYfpKUdBUcYk4Ql2epgiTRLvCMYE/0RflpMmOHYYAVic/Pz0KtH78JSDLrys09IPOV
         2Sv2MrHzH7JvlZZe1FVi8Hg5sKdRmAhdS0cUre7wOGZHO2Vq8dxUyIojvPlZEf9dC72K
         SPMcJ4pMwEXq6PEH3/e4PnoQKkWsAnGd7IRKFILuEBoPagV0r0KhJML0pMjj3vmyiTAY
         RfzIwnFtr5jD6jjXagHXTOmYdSObyqUcHCtO5UnuM41fw0rATYOX2lE/UJ9XWl7BhAXD
         DXSuZ1J7mU4XJHh5HqVwsugRm7N4Op+FIdslpCErrMeQTBLgsA+FRvXDSKhULYaGbI37
         MiGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxGIK1EeDJx92/7pHQwtesywmCu+7xMD8ROEQvfXukOTStWk0mwSoWnChVa37roGyKtv85EqwOrRmV@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1KZsyb08sjLkCNMAxzH71xQJUtVWUy/wIZTcGdbM4YhOeSFuX
	KtJ7FK14pXOMn9o76GMK3HpIl+RA7c4yARQsn6gSr1M8F5tfgczuUjSdPLAv60bYJXrrORewIqr
	T
X-Gm-Gg: ASbGncva7EMxl4JesRTN0g7UYPsNBRzowjlICMirAjnMid7FOIOfHwa56kezIe5x8ta
	ExpXISSj+h/32nfDeLtRUG87bFPrRzgD5CpW7njVF8DKv6p/96jB03dyJXppbw1o3ghYOwJGGAv
	LRewFUeYPIHYKglOb3G0R++M/OdLzx7W26JFPfM8NA5hI229qhEGd1priq2nvWzHL6D5LmakUaa
	be3Xi76NkqfRi3HnWA4CZ9yKs4YTYSkkY1c8kjzX3YzkiysX2V63ehXqgKxroVH/qqYQJtDox2G
	iA/q5m//8wPIXcySu5sWY3VTzl9kjA==
X-Google-Smtp-Source: AGHT+IGIIEiDb6qXnTmJUVDYgM6wgGw7GPagKQ9KPPyyX5Q/cb5H82b2qn+Ew6KeyuYbpTeKoPB4zw==
X-Received: by 2002:a05:6512:3f1f:b0:53d:d3ff:77f6 with SMTP id 2adb3069b0e04-53df010900cmr9945955e87.46.1732966611547;
        Sat, 30 Nov 2024 03:36:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df649f71asm754516e87.244.2024.11.30.03.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 03:36:50 -0800 (PST)
Date: Sat, 30 Nov 2024 13:36:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sasha Finkelstein <fnkl.kernel@gmail.com>
Cc: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Nick Chan <towinchenmi@gmail.com>
Subject: Re: [PATCH v2 3/5] drm: panel: Add a panel driver for the Summit
 display
Message-ID: <qowuzrx7s76r3soelwcvlbnksvstlpdind5xxejuqeeohjzsbh@evmuvvzxp3qh>
References: <20241126-adpdrm-v2-0-c90485336c09@gmail.com>
 <20241126-adpdrm-v2-3-c90485336c09@gmail.com>
 <pokf4zrrm7utx4dlq7sfob3pb4m2dh47eyw2g345tvh75x3s2s@ylajym3brih3>
 <CAMT+MTTGtmMvbPy7HvTQ+AdF_X4dTcfXV5n=krm414MnXYqxjg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMT+MTTGtmMvbPy7HvTQ+AdF_X4dTcfXV5n=krm414MnXYqxjg@mail.gmail.com>

On Sat, Nov 30, 2024 at 12:15:25PM +0100, Sasha Finkelstein wrote:
> On Sat, 30 Nov 2024 at 10:29, Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> > > +
> > > +static int summit_resume(struct device *dev)
> > > +{
> > > +     return summit_set_brightness(dev);
> >
> > Doesn't the generic code already handle that for you?
> 
> Apparently not, I have commented out the pm ops, entered sleep
> and the display stayed on.

Please add BL_CORE_SUSPENDRESUME option to the backlight device.
But interestingly enough, none of the panels set that flag.

-- 
With best wishes
Dmitry

