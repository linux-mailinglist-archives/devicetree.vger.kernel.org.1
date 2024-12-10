Return-Path: <devicetree+bounces-129000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CB59EA478
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 02:45:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A924D18888F4
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 01:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA9B92E40B;
	Tue, 10 Dec 2024 01:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T2g4fbmf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D5728E37
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 01:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733795125; cv=none; b=YHdSqElAtup8s1LhPacalpIcGGitZynOKP0VIyt/Jlor6pLpxCYgqypyAjmrpLFlQTrblfObwsNiD760sOIdcVk6MdF7dgskZpxiw4O6JBcCPrHdpKZ2F23mqINa8vurkca9YR6mM39NOrESjtDr5FrTC7B01OO+1BsQfTdJeGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733795125; c=relaxed/simple;
	bh=f/VOvLcpFGdSwyD/bwa5x3xxYOFeWx8ZvwNTh873AMs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uS1Kh5ZzoWKHwCIQm9ZNQeakXHxacyM7Q+UpKdkz7EfkKWHmL6oPCrnYHpcmwpaNWetTcIuK7o9R9UE9GklJAuykGtc36ByN57E8ZV1M5wb1wjgOVudYcswap9b3Bsu2p4DAR3ZqzeGhGGWjhVxWpblXjuge5LufE55FsMbC4WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T2g4fbmf; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e3a5125c024so935953276.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 17:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733795123; x=1734399923; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bDeSzNmG0r25Rn5nUf/295MidZQ+oiAWsebYRxIgxz4=;
        b=T2g4fbmfh40FRTk4XwcgZbHtkxnvcXJvPsN90V61ntLKvrpGeDP1qM0M7q3W3/EaaB
         jc6aPdFPU/OVeP98Lwxq16a70wfupsa8VkIQya55eMU0OZVh6Zy6elQQrMHukmDbBNjb
         mNBbWQPHxk92cSCe924txd0edrREHDOeJn7mjemegC5uDImm9U76rYLFW/J0DCGbKx+c
         0YCscA2Bpyby3rj2TWPmn6WmBaNNjf+sw0HASXyAJ9d69CFH+LSzboLB6FJb8gzqTdZM
         xFDXa1J7CzuFLBQPWPDerJoLL8YEXFBj7OqzeE2N3v/NMUORyPvlEum/yeTKLcC6o49h
         +OqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733795123; x=1734399923;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bDeSzNmG0r25Rn5nUf/295MidZQ+oiAWsebYRxIgxz4=;
        b=itD0YuntG6b2z9Wze6DI1z1izaPO/4Q2bDgM7XVvp1pXNQrJvIpS0RNFy6/ZLGPU2T
         Fiz/JbSu05GsvqppV43YRmTm1eQBskL5JzxlOcW9iplJ3fP2wTqBwO6k0HMj6gJYyKAW
         ILIPU08/mhCYMsk9NInmE3MZO8I7FYMLHFKBovDaMhDAUzIusZtYFKm/eYJI0mpxk0I3
         Who2gI+FKQ5YE0Q5ngSlFCiqeWGmcGqf9AMvc4oaDEqEQZSuC4Z7zWPY1fGzyEYrr0Hg
         1yXsVKaFNzTzaM1fn/nPJuGukqfuHd53ccVw/XEF3KSvnxJ9p9CjWho45CA+gFMaKGlV
         fq5w==
X-Forwarded-Encrypted: i=1; AJvYcCVibW5mMySWD4uFG+gx6ypjw1xhYkyd2voOMhzCNUfRgZdh2PUWzd/x8exQjcgRpEKKJWe6QU+J+VZm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0vzwb55/s+BrOI6b/NSkgVW9TsTsVlMnRVhJWzsve2bdX/Jy5
	R+YhSO1ZHbwXJttm2JjwXf6XBjbRXKiJfmJ7lYaPZCFAwXEEPh+wHobikgHBDRffkJ4EzRkc6mk
	rWWES1iL8IEApXO8MueAYU5bz3HhHqkWTyhHOug==
X-Gm-Gg: ASbGncuilbX24WSw9m/nEvaiRAr5dgbMdwXox0GtqkPA6chInVU0/pm/LxqOrwTNovt
	J0iMq8fjOKqAjjEAnzMcmSijfw0qaQe1j9qaB
X-Google-Smtp-Source: AGHT+IH9FYdZyuYf6+rQs47uyzndT1wVwnYcReW2ltFVfptMntuMiqQM909xz0QThYmGJkZYxK5rC55WkYQfh3JUnOo=
X-Received: by 2002:a05:6902:150b:b0:e38:b2fb:f57d with SMTP id
 3f1490d57ef6-e3a0b12a8c7mr11436978276.28.1733795122949; Mon, 09 Dec 2024
 17:45:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241203165450.1501219-1-heiko@sntech.de> <20241209150619.33998-1-dse@thaumatec.com>
 <D67AV178CEBD.3QA9VD4ZPRNQ1@cknow.org> <2203458.KiezcSG77Q@diego>
 <4e015ea9.960.193ae0c236a.Coremail.andyshrk@163.com> <ay5hbnqqjhopaqof6z7j2rzm2bc6xa2vbzan2ak3if6wzmyip2@kqh7gtrajnm2>
 <33e2c5db.1300.193ae284b6d.Coremail.andyshrk@163.com>
In-Reply-To: <33e2c5db.1300.193ae284b6d.Coremail.andyshrk@163.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 10 Dec 2024 03:45:11 +0200
Message-ID: <CAA8EJprLA09NP0KAztc5eoAMkGcrom84jg_pcbNcwN0FAaSLrw@mail.gmail.com>
Subject: Re: Re: [PATCH v3 0/3] drm/rockchip: Add driver for the new DSI2 controller
To: Andy Yan <andyshrk@163.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Daniel Semkowicz <dse@thaumatec.com>, Diederik de Haas <didi.debian@cknow.org>, andy.yan@rock-chips.com, 
	Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, jernej.skrabec@gmail.com, jonas@kwiboo.se, 
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	neil.armstrong@linaro.org, quentin.schulz@cherry.de, rfoss@kernel.org, 
	robh@kernel.org, tzimmermann@suse.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 10 Dec 2024 at 03:22, Andy Yan <andyshrk@163.com> wrote:
>
>
> Hi Dmitry,
>
> =E5=9C=A8 2024-12-10 09:01:38=EF=BC=8C"Dmitry Baryshkov" <dmitry.baryshko=
v@linaro.org> =E5=86=99=E9=81=93=EF=BC=9A
> >On Tue, Dec 10, 2024 at 08:50:51AM +0800, Andy Yan wrote:
> >>
> >>
> >> Hi,
> >>
> >> At 2024-12-10 07:12:26, "Heiko St=C3=BCbner" <heiko@sntech.de> wrote:
> >> >Am Montag, 9. Dezember 2024, 17:11:03 CET schrieb Diederik de Haas:
> >> >> Hi,
> >> >>
> >> >> On Mon Dec 9, 2024 at 4:06 PM CET, Daniel Semkowicz wrote:
> >> >> > On 03.12.24 21:54, Heiko Stuebner wrote:
> >> >> > > This series adds a bridge and glue driver for the DSI2 controll=
er found
> >> >> > > in the rk3588 soc from Rockchip, that is based on a Synopsis IP=
 block.
> >> >> > >
> >> >> >
> >> >> > I did more tests with different LVDS displays. I tested following
> >> >> > configurations with DSI/LVDS bridge:
> >> >> > - 1024x600@60.01
> >> >> > - 1024x768@60.02
> >> >> > - 1280x800@60.07
> >> >> > - 1366x768@60.06
> >> >> >
> >> >> > All of them worked without issues, except 1366x768.
> >> >> > With this resolution, video is blurry, and offset incorrectly
> >> >> > to the left. There are also repeating errors on the console:
> >> >> >
> >> >> >   rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY ir=
q err at vp3
> >> >> >
> >> >> > In correct operation with other resolutions, there is no error.
> >> >> > I am not sure if this is a problem in your series or rather in VO=
P2
> >> >> > driver.
> >> >
> >> >This really sounds like something is wrong on the vop side.
> >> >The interrupt is part of the vop, the divisable by 4 things likely to=
o.
> >>
> >> This is a hardware limitation on vop side:
> >> The horizontal resolution must be 4 pixel aligned.
> >
> >Then mode_valid() and atomic_check() must reject modes that don't fit.
>
> We round down to 4 pixel aligned in mode_fixup in our bsp kernel,

What is meant by the "bsp kernel" here? I don't see it being present
in the mainline kernel. So, if the mode is unsupported, it should be
rejected.

> because sometimes, some boards do indeed choose a screen that is not 4 pi=
xel aligned
> >
> >>
> >>
> >>
> >
> >--
> >With best wishes
> >Dmitry



--=20
With best wishes
Dmitry

