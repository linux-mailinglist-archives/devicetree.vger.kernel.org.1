Return-Path: <devicetree+bounces-167932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5431EA90C93
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 21:49:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2F715A4D23
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 19:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12D3A215F50;
	Wed, 16 Apr 2025 19:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="MekUp0bZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AFA154423
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 19:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744832952; cv=none; b=elm15FGw+l7UW+7rkW4O6so3DMHKDral/6mSYBFkbTD4KeJa8EhJiBXNZT53gN+Cxr4fi2BZcZI2KvuwkyokoUkc4PEpgWVb6ynxsQfpSz4gtncJclz5VLVvriaNSRV3Xe0s6o+xMx/mDbepzaAlj5Kn6Zt1g4QJwh0iZ+pBV5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744832952; c=relaxed/simple;
	bh=0QtCXBFLssMe6mP3r7XXqmWHMBiSSUr/S1vpa0rbx+4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XBrMH8uwkuCp+F4+orSYjmYa5hoCbYJEjMyKSoeM8h7C9ZGKZowrklQjiVGokkA3ymKWXyfbNV8xKGDLmTVu/NmMtLhopHV3nc62IxGtqt9nrpNmRBp/n7K11yT7GGnXlMKge9IQ2XwApGAIvBNPduJCDnpz+pCmAO5jLa1miFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=MekUp0bZ; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-549b116321aso30286e87.3
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 12:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744832948; x=1745437748; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3TC4Zrs0RXqB1dUPW23QEFn3OTq38f66De7spKPbcIQ=;
        b=MekUp0bZtlT7Z+u6+g906dR/t8xLENRp0bF2171q+nDQeDIAWxsPCotStZFNHzfeYa
         At0rgILsyR1MGxkXrnHEKqQpitGoN+MF0blPZ5ptheimNhDX7cER3Una7//i9mIXLC9D
         U1KIENUNl/iOngX89M4sJDjP66+BSeckgiBSuP+LZwSdflwn7Ds/n3Z387CptMxICuqg
         lEoGCuFREa9Rs47gp4GeUFfyuQ7fQXGzZujc90FlN3sE+vWQzHNyVO4eRTmncKUudiLp
         CAvhySUMZwMm/bj3RgI7JXOGDKNaEcUzODt3miAOuLN++w30nW2zAj1WFAKulNuCsGWF
         bVhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744832948; x=1745437748;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3TC4Zrs0RXqB1dUPW23QEFn3OTq38f66De7spKPbcIQ=;
        b=FF6QzIf/IJEfZ5pvs6u+PhUwzzd+4buBPbFYT4zPcY1HPUOny4oaJFBs+X0cwQBor0
         awqvYllONiibVbGDGMB5m2NeqMUKqbTxpoxDGMv81+hmB0tFInZnf/XFIdmsN3hK/C7P
         k/U1tVi8TaM0OHDEi67Jv04oW3JuT9SQaLHVKjK5LMux3J+uge7zp/U0sFcaZP3hbJK6
         CmQ/XF7oqhswOEefd7OrpfYgNVYuHuy2teB0YQyIDgC8i185NbKhe8FXz2FLtzSaudsP
         B4img12YkgAYfNITJHTYCZw9SCe1lkn20r/OrQjwPEKrtBA5v6tfum0HxCq6F4POgkSR
         mCfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLDeAFYpVyUdpuSXAEJzQ1cDHxnf6YpUQK68XLPcqHujWrqqad5f0wg2p6PxSRzWCSGjMRlTOqcjQm@vger.kernel.org
X-Gm-Message-State: AOJu0YwKcFPejeXL6YOoO7WL8k8dLDLWU3/4lkPCqKRi4975keQqE0FU
	5llHT7UCwrm2tc0gqd0eVH+c0eqhRYYF1wXSLCPtyXlsYPoBmBZYxZiPaENC75BX22mEUYxunqo
	xSulPRoG3gJf6Xm9Nw7rEf6q5zUnpTGqWXlQ=
X-Gm-Gg: ASbGncsOoRgia0WyaZ/3aZAXffJa01GKJa6Gs2MugCqYZNh3euSxplagjHYvJrBHN9h
	TDJygGTBwbaT/BXXaLx3k3hnyHBiv7bJy8TVVoNVZCd7tZT/lhTVuFM3k/YAtk6s0psLdsYBNiZ
	OgAtjVCtQjKbLBoahMfXhBCP5qZI5OVxDzr/2OyyN0Z+PF4igla4c=
X-Google-Smtp-Source: AGHT+IENZff/EwFgqH5CaojFFud4BOKJc5fnWdYHR640ZJfapthbsLkQ3339oAJkdcXWdGqjdKbkWAeQlGaLeHlHPtI=
X-Received: by 2002:a05:6512:686:b0:54a:cc25:dbe9 with SMTP id
 2adb3069b0e04-54d64aa9f25mr1006781e87.26.1744832947769; Wed, 16 Apr 2025
 12:49:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250402233407.2452429-1-willmcvicker@google.com>
 <20250402233407.2452429-7-willmcvicker@google.com> <Z_6OZHYfC0bC5289@mai.linaro.org>
 <CANDhNCodHATboF2=U2tTwdEkEJ+PsfB2F=fbBrs=J1UzZTEX8g@mail.gmail.com> <Z_-0nX3Z-DLPjL_j@mai.linaro.org>
In-Reply-To: <Z_-0nX3Z-DLPjL_j@mai.linaro.org>
From: John Stultz <jstultz@google.com>
Date: Wed, 16 Apr 2025 12:48:56 -0700
X-Gm-Features: ATxdqUGIHpJvogsXv77cbd-uWZLFBRe1FimucafM0Ov8s0XThKAvFusqPM44Q1k
Message-ID: <CANDhNCr5n+HtHQEqCq0ZxbvX-nC3u9ewJ1_fj0h1gFQZ3nB8iA@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] clocksource/drivers/exynos_mct: Add module support
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Will McVicker <willmcvicker@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Donghoon Yu <hoony.yu@samsung.com>, Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Youngmin Nam <youngmin.nam@samsung.com>, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 16, 2025 at 6:46=E2=80=AFAM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
> On Tue, Apr 15, 2025 at 05:48:41PM -0700, John Stultz wrote:
> > On Tue, Apr 15, 2025 at 9:50=E2=80=AFAM Daniel Lezcano
> > <daniel.lezcano@linaro.org> wrote:
> > > I have some concerns about this kind of changes:
> > >
> > >   * the core code may not be prepared for that, so loading / unloadin=
g
> > > the modules with active timers may result into some issues
> >
> > That's a fair concern, but permanent modules (which are loaded but not
> > unloaded) shouldn't suffer this issue. I recognize having modules be
> > fully unloadable is generally cleaner and preferred, but I also see
> > the benefit of allowing permanent modules to be one-way loaded so a
> > generic/distro kernel shared between lots of different platforms
> > doesn't need to be bloated with drivers that aren't used everywhere.
> > Obviously any single driver doesn't make a huge difference, but all
> > the small drivers together does add up.
>
> Yes, I agree.
>
> So the whole clockevent / clocksource drivers policy would have to be mak=
ing
> impossible to unload a module once it is loaded.
>
> Do you have any ideas how to ensure that the converted drivers follow thi=
s
> rule without putting more burden on the maintainer?

Permanent modules just don't have a module_exit() hook, so that is
pretty easy to look for.
Obviously, I don't want to add more burden to the maintainership.

From a given clockevent driver (or maybe a function pointer), we could
check on the registration by calling __module_address(addr) [thanks to
Sami Tolvanen for pointing that function out to me] on one of the
function pointers provided, and check that there isn't a module->exit
pointer.

For clocksources we already have an owner pointer in the clocksource
struct that the driver is supposed to set if it's a module, but
clocksources already handle the get/puts needed to prevent modules
unloading under us.

> > > * the timekeeping may do jump in the past [if and] when switching the
> > > clocksource
> >
> > ? It shouldn't. We've had tests in kselftest that switch between
> > clocksources checking for inconsistencies for awhile, so if such a
> > jump occurred it would be considered a bug.
>
> But in the context of modules, the current clocksource counter is running=
 but
> what about the clocksource's counter related to the module which will be
> started when the driver is loaded and then switches to the new clocksourc=
e. Is
> it possible in this case there is a time drift between the clocksource wh=
ich
> was started at boot time and the one started later when the module is loa=
ded ?

The clocksource code already has support for modules, and will do the
module_get and call enable hooks before switching to the new
clocksource. So the clocksource from the module has to be functioning
and running before timekeeping switches to using it.

By drift, its true changing clocksources can change the underlying
crystal so NTP has to begin again to determine any long-term frequency
adjustment needed, but we signal that properly.  And there should be
no time inconsistency during the switch as we accumulate everything
from the current clocksource and read a new base value from the new
clocksource. If there is, it's a bug.

> > >  * the GKI approach is to have an update for the 'mainline' kernel an=
d
> > > let the different SoC vendors deal with their drivers. I'm afraid thi=
s
> > > will prevent driver fixes to be carry on upstream because they will s=
tay
> > > in the OoT kernels
> >
> > I'm not sure I understand this point?  Could you expand on it a bit?
> > While I very much can understand concerns and potential downsides of
> > the GKI approach, I'm not sure how that applies to the submission
> > here, as the benefit would apply to classic distro kernels as much as
> > GKI.
>
> Ok let's consider my comment as out of the technical aspects of the chang=
es. I
> can clarify it but it does not enter into consideration for the module
> conversion. It is an overall feeling about the direction of all in module=
s for
> GKI policy. I'm a little worried about changes not carried on mainline be=
cause
> it is no longer an obstacle to keep OoT drivers. The core kernel is mainl=
ine
> but the drivers can be vendor provided as module. I understand it is alre=
ady
> the case but the time framework is the base brick of the system, so there=
 is
> the risk a platform is supported with less than the minimum functionality=
.

So separately from this patch submission, I agree that the GKI
approach does not enforce vendor participation upstream. But there is
no rule *anywhere* that makes folks participate, and with the old
vendor trees it was definitely worse.

The GKI does result in vendors having a common interest in the
*actual* common portions of the kernel to be working well, so we can
make sure things like bug fixes, etc are submitted upstream first.
That is a clear benefit over separate vendor trees, but it's not a
magic tool to get everyone submitting all of their code upstream.

Trying to cajole upstream participation via barriers (not supporting
modular drivers upstream to try to enforce vendors submit patches to
add built in drivers for support) won't really work because they will
just be enabled as modules anyway out of tree. And it's hard to argue
against, as there isn't really a technical benefit to the GKI
requiring lots of SoC specific hardware support be built in.  So it
only ends up being another reason to not bother with upstream.

<Sorry, I'm getting a bit soap-boxy here>
I personally think the best tool we have to improve participation and
collaboration with the community is to do what we can to make it a
positive/beneficial/worthwhile experience. Every time I've submitted
patches and had bugs pointed out or fixes suggested, is a huge value
to me, and I have tremendous appreciation for folks sharing their
knowledge and expertise. And every time a patch I send gets merged or
a bug I reported ends up being fixed, there is a real sense of pride
in the contribution made to such an important project. Then, to get to
a point of a maintainership, and to be able to consider these amazing
influential developers as (relative)peers feels like such a career
accomplishment!  As an individual, those moments feel awesome and
motivate me over and over to want to reach out and share patches or
issues or thoughts.

And yes, there are organizations that focus more on how to exploit the
community for their benefit without contributing, and I get the
protective reaction that maintainers have to that. But I also know
there is *a lot* of amazing expertise inside the heads of
*individuals* who don't participate because they don't feel the "us vs
them" combative interactions are worth it. I think we/the community
are missing out, and those folks are the ones we should be trying to
welcome and include in order to build up our community.

Maintainers and the community need to keep high technical standards
and make the right long term choices, and developers won't agree all
the time on what those are, and I think that's all fine! But I think
if we want to grow the community and have more participation (as well
as growing folks into maintainers), I think we'll have more success
focusing on the honey than the vinegar.

thanks
-john

