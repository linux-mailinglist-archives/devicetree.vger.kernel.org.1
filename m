Return-Path: <devicetree+bounces-167802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 195C7A90539
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 16:00:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4471F1907DD7
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 13:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 947CD221D9F;
	Wed, 16 Apr 2025 13:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kfrbmt2/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866E31D5145
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 13:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744811172; cv=none; b=NErRBzTWwF5CPj2F0rWFTI+4uXGPnKwCWAEfjtwDl738lPvdR7Cj7tfZKj4ZfJ5hLxvGFwpwrIpp5vUyUOt4v/pFG5aXf1SJTDQClDRDyXvDyRoB/vSmZnpL/4F05cZ1QuodvsE7Bd8PIFBaycmZlf4oozlY6jOtdBUHEwRiESc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744811172; c=relaxed/simple;
	bh=t+jlbKBTkg3+/hs9ZVICnnlmyrYUYqdcHWmZM6Rv6hw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hh9ddTqo/CXFKXm3REaqesu9uSLcXPYNa4Ql4bbCSoDDTJLd3HLzXJd4AQiwG27sp/fC7do5eaM3Fqh+oYe2e4cCkuP+w3flZTgVW5cRpW+H1FB1mVWjN54jFRMJWIRbs98+e0o6yNBe8J8LEa3b8noNG6UR9Nu+71udM552fp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kfrbmt2/; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-39c1ef4ae3aso475202f8f.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 06:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744811169; x=1745415969; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/VGTw2OCtCwNoikhMS1xSw/P9HzEaDz2YmQHVZNP6Cw=;
        b=kfrbmt2/S6WL/ORkdeYnxwAB5fjVRitH+4VwLe0WRFFvLCMScgXZYPnDsZWoDIdXLL
         5pDRHAiPZvrGS4y/1WDiJ1JYOaZ1Ghq2d/rAyMGPvbiMSqBiIlnvECQASlzf4sB9fYNq
         ULNxxhOE+nNsyTpgsY/l5/a46kFMQoabTofnQNq7UF86CjvjKxoxoRTTg3KBM8Py7CJe
         02CweFMYJYCXQmo7oxTIbXsnWqp5FI3kzXP92K7je/GlgPahaPT/CKTm7uxgUTx6ba5H
         QSAYCi8AcWwYUALdJbTb6kxL9GFQCI85U7EKuxK1alJxKVXCkb+AOdVmCzjQKB4RBh+t
         GR0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744811169; x=1745415969;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/VGTw2OCtCwNoikhMS1xSw/P9HzEaDz2YmQHVZNP6Cw=;
        b=Cr1+bVjoK35v4Rq0UmCbz9UkO0LQkNJpGZMWac2D+pS6ZOSvoImYWjuUVckeC+Yxkr
         qWf687bxJxVdpCaF1CdiVtOO6oQwDCFXbdlg2ShgF0Fde1HAqf51uZC7g+mMC2GxlnSr
         ORdR+RdoE4bzp5st0hvUM2T0DKCXb3fC72I8rnKvKyt4yzD951qwGG/fenx8VDf7k54I
         tLFpThMFyhRuHF1A5nJcirV99kkXC32LEQN58OIU/Pico7t9OvmJQMuqks7qrKXB81zy
         /i3fZmrfAGseSqoPC7/6taiyaEFMM08zlLnc9fWByLac38214s8sbnb0rGpfF4TjxvKZ
         vAEw==
X-Forwarded-Encrypted: i=1; AJvYcCUFUSM3j3Yq2ASQpeRvPAuVOjCulTp05+rCdMtY9ATzHXcYUdlhiEsLA3MPYF6cidiggTaVv2kuOLfn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7AeUH59LbMH0b9c0TvieLjq41pQGuP9Q8JKhC7pcvWddJK16T
	csAlqkwOOyvFYyAwznYEE8dCHiDIdBMiwb1Z1Q28udqxQDKMUpLH+JtRMs4mpw0=
X-Gm-Gg: ASbGncvCbUWl4o79OuKfn8q/6KuOww+8OHtDjLNMHYXpElw6lzLlb2s4j6/3XgtgWfG
	R4+/VCTlyWj56hiCv1wSk6yrHXd5xEaGYQrbJ4xyN1kg7Pw5X31GpvxniS+fVzRTpHUtnHVi0WN
	8yku7u4YPLDrSV6Csym4ErYFtc/WGyB3NsFdVZ3bsDYB+sET12k1lswIINXrF8RwLev8a2USZ/U
	EILow2yiF3twvOa1MpRR1qzybXdTmGePp3Bv2UxfhEN7+gBctSqDN3HxKr4K00PBpXI4FmBbdbl
	msW94dJyRLmzvZxVSIBnj9Rh7QTw5jxP6Aysi9ty4O640Q62kJEGobn7DAcR0SIVL5nwG3xhc6z
	DRio=
X-Google-Smtp-Source: AGHT+IE4YAl2mZjXep57P1NBcGIHNuPRNP7vshUejNnQtQU0uCb6wkLBjcmMTW/advV5IiWmlcYETQ==
X-Received: by 2002:a05:6000:2901:b0:39c:30f7:b6ad with SMTP id ffacd0b85a97d-39ee5ee2546mr1463106f8f.18.1744811168641;
        Wed, 16 Apr 2025 06:46:08 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf44579bsm16937709f8f.87.2025.04.16.06.46.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 06:46:08 -0700 (PDT)
Date: Wed, 16 Apr 2025 15:46:05 +0200
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
Message-ID: <Z_-0nX3Z-DLPjL_j@mai.linaro.org>
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

Yes, I agree.

So the whole clockevent / clocksource drivers policy would have to be making
impossible to unload a module once it is loaded.

Do you have any ideas how to ensure that the converted drivers follow this
rule without putting more burden on the maintainer?

> >  * it may end up with some interactions with cpuidle at boot time and
> > the broadcast timer
> 
> Do you have more details as to your concerns here? I know there can be
> cases of issues if the built in clockevent drivers are problematic and
> the working ones don't load until later, you can have races where if
> the system goes into idle before the module loads it could stall out
> (there was a recent issue with an older iMac TSC halting in idle and
> it not reliably getting disqualified before it got stuck in idle). 

Yes, that is that kind of issue I suspect.

> In
> those cases I could imagine folks reasonably arguing for including the
> working clock as a built in, but I'm not sure I'd say forcing
> everything to be built in is the better approach.

When the first driver converted as a module will be accepted, I'm pretty sure
there will be a wave of patches to convert more drivers into modules. 

What tool / use cases / tests can we put in place to ensure it is not breaking
the existing platforms for the different configurations?

> > * the timekeeping may do jump in the past [if and] when switching the
> > clocksource
> 
> ? It shouldn't. We've had tests in kselftest that switch between
> clocksources checking for inconsistencies for awhile, so if such a
> jump occurred it would be considered a bug.

But in the context of modules, the current clocksource counter is running but
what about the clocksource's counter related to the module which will be
started when the driver is loaded and then switches to the new clocksource. Is
it possible in this case there is a time drift between the clocksource which
was started at boot time and the one started later when the module is loaded ?
 
> >  * the GKI approach is to have an update for the 'mainline' kernel and
> > let the different SoC vendors deal with their drivers. I'm afraid this
> > will prevent driver fixes to be carry on upstream because they will stay
> > in the OoT kernels
> 
> I'm not sure I understand this point?  Could you expand on it a bit?
> While I very much can understand concerns and potential downsides of
> the GKI approach, I'm not sure how that applies to the submission
> here, as the benefit would apply to classic distro kernels as much as
> GKI.

Ok let's consider my comment as out of the technical aspects of the changes. I
can clarify it but it does not enter into consideration for the module
conversion. It is an overall feeling about the direction of all in modules for
GKI policy. I'm a little worried about changes not carried on mainline because
it is no longer an obstacle to keep OoT drivers. The core kernel is mainline
but the drivers can be vendor provided as module. I understand it is already
the case but the time framework is the base brick of the system, so there is
the risk a platform is supported with less than the minimum functionality.


-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

