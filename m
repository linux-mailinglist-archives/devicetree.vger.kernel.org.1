Return-Path: <devicetree+bounces-128989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 984359EA404
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 02:01:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B88562858BB
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 01:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE3F4C81;
	Tue, 10 Dec 2024 01:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q0MW9LcY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3FD02FC23
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 01:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733792505; cv=none; b=I3xU2wHM7Pcee+RinveV5qtMuTu5bH43Q3U5uN03xqKTcxK2IiKUcXJxHhjibYx8I9M+tKvJz2+zu8UtVaEYPrBFqtAeoMHIqxPCmxNsEYHYmZnhBfyli4u1PatOGNjMTWiOgOjIiuWfuP/BSeEpYXOPmwGZn/hOYQw+Rzr1ML4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733792505; c=relaxed/simple;
	bh=XX0aZtY/X20hNHVp6f0cILXJpC24N7Co4zM5rSDo6jg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=excW1nfl2OBreqaI1CPkrvRS/3mOBMQkfpW9+4comH4XYSL02wFkRW/XSh4mShpkGFJAcRyBH7fyfWPRfRhD9davQK/4CXQ0FCMENSWg/eUrfQYgcS5Uh/1O4P4Rj82GkwSsgM/q1JDWB0OsyJlkfPUWE8Z06AGoJEQjmVoXCKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q0MW9LcY; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-540201cfedbso1304143e87.3
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 17:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733792502; x=1734397302; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L3LcvQjrTDMU2Xstb8PTcViDl9lW1bNhQu6ciqVQKbE=;
        b=Q0MW9LcYDM++/jb3dC/lK+DEvQqHE9Mz6mLcIN5zuT9VnzoYZr1ENWhitnqhA/Dy0m
         FKZTsp4QYsWg4eWVi+z+p5Vvg25ufTSswFIwIbgyn7y+PXCDg/wdULsKYrzsw6Okti+c
         LjEWnBbEkQJwogt9a6rIQ0/LIqQ5z6cQWJpz7LaoLXOTENieZHuVJsweScoaTLYiL1Pt
         HKyfoId/r1+kToc8pG3fOuMPmWmMwH0k6f+C5BDZaCjNBMkSLM5sE/98fXZMAGh0FhQq
         q0GhLQIvdY9RKgvnbuZwEPoRM4fPZK9U/wWGhh7p4Wb2PsbxAMLlKviOnruVOWhlVolQ
         Rq2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733792502; x=1734397302;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L3LcvQjrTDMU2Xstb8PTcViDl9lW1bNhQu6ciqVQKbE=;
        b=mIjRola2m+sGtDUz12XrwTTD2bSmqFebRqd/TMvTHxv4M3NB9fAhZLdfYk1IThBgnl
         3xKG873Tum2Q42OgR1xS9UCuYsVGGWTbGs/jLmYp2ExoRYOlVOL3FMZvlOItWs1H5WVC
         s5dwYeXS4EsMD2TMWZOXPWxnDP2ozwt0ZjlBRnEuQcv7IAvVgp5UULgbfcyoLP3nz2bl
         /j05t4jJ69jX8UuJ4ndZk31OfF1UdjR1vYJp0GA6amVjoF5W0SrKWjYXWSFDjEABRbSD
         dJA0H5E0FTTdtBqSW59VmR/ALYtghf11eZKM/UBEEhNWGIU0LhQvH7tln+AgujT/LrL6
         WiVA==
X-Forwarded-Encrypted: i=1; AJvYcCW4qX/hxvZXm6PXTZAFZFI4cIS8by+WWwJDzibCKoDxyBdojQD9tmTfv4llQ/MrIBKwDGWR8tnImlMn@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4D/G3nVe1wgCdLE82tBpYM73YPcizxljNqlayHvHbp8BnQnJw
	ZL4/rglx/MV0XsSVNkMshXAxOJ4bak9f0lYCctfxEYv9u5bZNEAxwKu7Wg5XJmY=
X-Gm-Gg: ASbGnctkn7I6Ww5IIl+anPLKICRRVLwOfg3tj6D186GkTKlxa20mOf3EKp7I6Oy8Mv/
	9s1fnPbrIhznatTzyp+QyIMNuuvhR0OIKTXHEMBKuEId++0H6DWVvfW1c58EneLCNregHG6udgN
	QxR0zKrTumrUgvnHYjr/BGS28TJ39nI3FG2dpiaPqhFPg7kX6Yefm56BRr2lEIEK6bfCnzNKfYH
	lhP0ehJsZRplBqUCXv+XuXJI9FAX5Nd/t3K5a4m6Y5pw4uK84ooEq3E4NzGkWqeJpgLFC4XUwc6
	Tv4s2C3ML3MyaWWHglLdLNv+IkmEqu4Cew==
X-Google-Smtp-Source: AGHT+IGILM694LFfCANVTXh/z3425jGIXUHVbOTTzyrGuCY/MpJfTZw0o+GZqr4bkrlnIoLzl3nnUg==
X-Received: by 2002:a05:6512:3b89:b0:53e:239b:6097 with SMTP id 2adb3069b0e04-54024115ffdmr968809e87.50.1733792501835;
        Mon, 09 Dec 2024 17:01:41 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e3ab8dd61sm919009e87.44.2024.12.09.17.01.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 17:01:40 -0800 (PST)
Date: Tue, 10 Dec 2024 03:01:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Daniel Semkowicz <dse@thaumatec.com>, Diederik de Haas <didi.debian@cknow.org>, 
	andy.yan@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	jernej.skrabec@gmail.com, jonas@kwiboo.se, krzk+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, neil.armstrong@linaro.org, 
	quentin.schulz@cherry.de, rfoss@kernel.org, robh@kernel.org, tzimmermann@suse.de
Subject: Re: [PATCH v3 0/3] drm/rockchip: Add driver for the new DSI2
 controller
Message-ID: <ay5hbnqqjhopaqof6z7j2rzm2bc6xa2vbzan2ak3if6wzmyip2@kqh7gtrajnm2>
References: <20241203165450.1501219-1-heiko@sntech.de>
 <20241209150619.33998-1-dse@thaumatec.com>
 <D67AV178CEBD.3QA9VD4ZPRNQ1@cknow.org>
 <2203458.KiezcSG77Q@diego>
 <4e015ea9.960.193ae0c236a.Coremail.andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4e015ea9.960.193ae0c236a.Coremail.andyshrk@163.com>

On Tue, Dec 10, 2024 at 08:50:51AM +0800, Andy Yan wrote:
> 
> 
> Hi,
> 
> At 2024-12-10 07:12:26, "Heiko Stübner" <heiko@sntech.de> wrote:
> >Am Montag, 9. Dezember 2024, 17:11:03 CET schrieb Diederik de Haas:
> >> Hi,
> >> 
> >> On Mon Dec 9, 2024 at 4:06 PM CET, Daniel Semkowicz wrote:
> >> > On 03.12.24 21:54, Heiko Stuebner wrote:
> >> > > This series adds a bridge and glue driver for the DSI2 controller found
> >> > > in the rk3588 soc from Rockchip, that is based on a Synopsis IP block.
> >> > > 
> >> >
> >> > I did more tests with different LVDS displays. I tested following
> >> > configurations with DSI/LVDS bridge:
> >> > - 1024x600@60.01
> >> > - 1024x768@60.02
> >> > - 1280x800@60.07
> >> > - 1366x768@60.06
> >> >
> >> > All of them worked without issues, except 1366x768.
> >> > With this resolution, video is blurry, and offset incorrectly
> >> > to the left. There are also repeating errors on the console:
> >> >
> >> >   rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err at vp3
> >> >
> >> > In correct operation with other resolutions, there is no error.
> >> > I am not sure if this is a problem in your series or rather in VOP2
> >> > driver.
> >
> >This really sounds like something is wrong on the vop side.
> >The interrupt is part of the vop, the divisable by 4 things likely too.
> 
> This is a hardware limitation on vop side:
> The horizontal resolution must be 4 pixel aligned.

Then mode_valid() and atomic_check() must reject modes that don't fit.

> 
> 
> 

-- 
With best wishes
Dmitry

