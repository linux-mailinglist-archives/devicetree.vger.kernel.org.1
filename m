Return-Path: <devicetree+bounces-176785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 817C4AB57A3
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:52:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05FF719E34E3
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:52:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6C191ACE0C;
	Tue, 13 May 2025 14:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M9/YyRDf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC31D1A8412
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747147962; cv=none; b=gCvGRhN+FFlBPQEHElsi49/6XEg94QzmChAqtjXGQhNrgsaolElEs8okFLiZbaI68o+gTM7ZgxA7AYpSxZspMzHyl3G4BNKB2sMwSFowFDhT/nVfQeaIj5zZ60o5QIs4wfclB+leGzf/sQMm6mfxdLw7fwjuqlHleNS/8FoYzV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747147962; c=relaxed/simple;
	bh=7eTd/KlYKdNBE0gVtB8pRaG5SNHtwy49OeApK0fIKBo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I2JhWqeyORWxu3PftUvjLEXEELMndCYjanKSp3YSD0TfO48QoPKj0eh9fC8KFv4AE7uHbUNsar3Fv9cWCbNuf+s/tzApvVpXcuTeAn6pfHoKuZDXWgT3SlMQKF1bokuX1KpEHD91k3+6+PTUvY2Ynt00u10f7WR6Ba49ZtfMg1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M9/YyRDf; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3a0b646eff7so4913909f8f.2
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747147959; x=1747752759; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NprQZFd0msRuigKqMDzXfWDuMemIh6oSVb1Z2bS8NyY=;
        b=M9/YyRDfc3lZmZf078fLA06/K9MYKxFgXxCBxaa+mJIosp9HlH4Wy092cubEqd+qG0
         1A1TgLrCLcug1t/nt2RmCeTyNCkusflDweFdarSpZ/EqeCEq/PAUgmvd8yxHVaVkvgxa
         4oj5paQzNopFRBvLQ/R4AQl/9qGLZ07mUqtt1zFb7ROfb/i0/eHtTB2XwNy3ohYgsiVk
         /UK5pP9sh8xqGR5Yfvz17YaU+AO1AU0fj6OAioExEm2qH219EUtpbhCLppIy53KciHcd
         gM8dQJIMAs/Rs88kAxntiNvH6cnMHNx8kIFpTPKVriNIHdSxfFzcoeYgv530U+aNAdNN
         fvhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747147959; x=1747752759;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NprQZFd0msRuigKqMDzXfWDuMemIh6oSVb1Z2bS8NyY=;
        b=nE0/Uef1CUMewp7jv2c3Mzz1GuiCoqOTwlCst95mrj4Ico/HBQoVO1eHptWI9L6zLj
         KSOxX4LqyykFRTDpL4rZd9RDzQxlJaXyK5J00uvZhopx063MR/2vfnR2xplNhj9TtZgf
         JMZctHw+gIPX3BrxgHUo3qtGWypxiMV7KQb2U3qtwFQiD89cAPgEVZPYeWNH9QBWaTTd
         pcVrwFMC7CkJjvkvigiv1cwR9uEahtfVczpImof3tF8WM+HsfKNWxmyzrg6HTBVfZyON
         NOWuJflXtuOCoxqBdfw3GA8SSF4PYtmhbEmppFshvxZTlOcMU9JF0+e52OLU9CnZOZxy
         K/xw==
X-Forwarded-Encrypted: i=1; AJvYcCVIVwdusYnGOaLQFUu3xSlY+TQQeQDIhDz0bjjqOBb+xlscz4wmv3PB5CNRNjjV/GGLUEtSYFREZYdc@vger.kernel.org
X-Gm-Message-State: AOJu0YzlEZMXoZw/3Q73EJRV7UKvhdgwLzAEUeaMrEEuUptEK0asOcdC
	nP9WCDQMsMcVBTpxxUN+RGlHOgNmQdzojWHUFLpqb84R1McVD+8OZZqAKFTtNb0=
X-Gm-Gg: ASbGncu+bwO7oDD5NwGz0HufO4SFusAWjXcmvK3LkSbdhR+nIGp7JV1o5eo0QC9Wl4G
	P1WoDCMgYGGXSk9+TZGjIHEmx7dT1s1gUmZqvFu+ln3+iVLN7AOrOwXzG+TFYgeQ0Kj4YwrKCiq
	TccOViRYnIJKFLxNmn2PDEXq/O4biH+nSN61qOhD8vZlFppoTkG3GD7jECTa2alnd8GJtnLUVyc
	sppWhw6ivbivV4LK0rGjoTDxbcjrokZXOMDHlk73BMttfapu4J1Z4OoJM21nnjA3B2Ai60Mt8zS
	A5L8iwKHWI5YW4Dul5DYJe5szsxpS+lZ1LsdQ4O3/jsNqLrbxJch62hR/u81CQy/vMe7ObsL+Wh
	ezLJTrJ4hiaATZQ==
X-Google-Smtp-Source: AGHT+IGYDcAG8pLfPmYFTyeqzeIaOvsHfnmcsUp0uHL3fXQ+4Wvxm5ZCV+BGXbRBT2JBatXikF9ENg==
X-Received: by 2002:a5d:6a11:0:b0:3a1:faf3:b608 with SMTP id ffacd0b85a97d-3a1faf3b6c6mr10089134f8f.56.1747147959102;
        Tue, 13 May 2025 07:52:39 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a2ce36sm16710394f8f.71.2025.05.13.07.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:52:38 -0700 (PDT)
Date: Tue, 13 May 2025 16:52:36 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: John Stultz <jstultz@google.com>
Cc: Will McVicker <willmcvicker@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Saravana Kannan <saravanak@google.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Donghoon Yu <hoony.yu@samsung.com>,
	Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Youngmin Nam <youngmin.nam@samsung.com>,
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 6/7] clocksource/drivers/exynos_mct: Add module support
Message-ID: <aCNctHq6K7uqFF05@mai.linaro.org>
References: <20250402233407.2452429-1-willmcvicker@google.com>
 <20250402233407.2452429-7-willmcvicker@google.com>
 <Z_6OZHYfC0bC5289@mai.linaro.org>
 <CANDhNCodHATboF2=U2tTwdEkEJ+PsfB2F=fbBrs=J1UzZTEX8g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANDhNCodHATboF2=U2tTwdEkEJ+PsfB2F=fbBrs=J1UzZTEX8g@mail.gmail.com>

On Tue, Apr 15, 2025 at 05:48:41PM -0700, John Stultz wrote:
> On Tue, Apr 15, 2025 at 9:50 AM Daniel Lezcano
> <daniel.lezcano@linaro.org> wrote:
> > On Wed, Apr 02, 2025 at 04:33:57PM -0700, Will McVicker wrote:
> > > From: Donghoon Yu <hoony.yu@samsung.com>
> > >
> > > On Arm64 platforms the Exynos MCT driver can be built as a module. On
> > > boot (and even after boot) the arch_timer is used as the clocksource and
> > > tick timer. Once the MCT driver is loaded, it can be used as the wakeup
> > > source for the arch_timer.
> >
> > From a previous thread where there is no answer:
> >
> > https://lore.kernel.org/all/c1e8abec-680c-451d-b5df-f687291aa413@linaro.org/
> >
> > I don't feel comfortable with changing the clocksource / clockevent drivers to
> > a module for the reasons explained in the aforementionned thread.
> 
> I wasn't CC'ed on that, but to address a few of your points:
> 
> > I have some concerns about this kind of changes:
> >
> >   * the core code may not be prepared for that, so loading / unloading
> > the modules with active timers may result into some issues
> 
> That's a fair concern, but permanent modules (which are loaded but not
> unloaded) shouldn't suffer this issue. I recognize having modules be
> fully unloadable is generally cleaner and preferred, but I also see
> the benefit of allowing permanent modules to be one-way loaded so a
> generic/distro kernel shared between lots of different platforms
> doesn't need to be bloated with drivers that aren't used everywhere.
> Obviously any single driver doesn't make a huge difference, but all
> the small drivers together does add up.

Perhaps using module_platform_driver_probe() should do the trick with
some scripts updated for my git hooks to check
module_platform_driver() is not used.

[ ... ]

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

