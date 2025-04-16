Return-Path: <devicetree+bounces-167570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0945A8ACF9
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 02:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 550623B34FB
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 00:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09EF81DE4C3;
	Wed, 16 Apr 2025 00:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ih3vdsj2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E381DDA20
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744764537; cv=none; b=gywmK0za6uIKLyFR2333zkEgVSCoXyNdueS7lXm/VVRA5NiWBtWqIMLO1gE5FvgnOgb+sYoGXFEZiLRISPnS7Xz+3qqPAnAEHr8BiEOVn4UU/mTe7HzuQj4hJb1y3yrtxKniA5AUaJBAtL/2kx/55+/OvMoKLzNBv+p7ifpQP5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744764537; c=relaxed/simple;
	bh=33Q82DN/1LkX4HQTWn1/N29DNYBrd+/PzojjBX1SKMw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KEWQwRJ40kPho5xiMR9eP4rHuU5hKMvAfmurgXusJzQHBLChvNUbFi6PqV1gUr4N6iltU/qvzoXbem1uxYjTWIQUCCogw44PN+waSjUpDXkRtZMGfN4xChApxdyKkNMIotrf0s+DrtzC77Ds+ezsG+7cwbZyRNvQ7z/XwIpH8oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ih3vdsj2; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54998f865b8so1255854e87.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 17:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744764534; x=1745369334; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jPuCm+rqdGwG3G8jrDZZDGo/23fVRFHxYRG9lMWLEJA=;
        b=ih3vdsj2Xjtjk1cFcsqow8z0mlZx1ODUeOe19/b32nTJxBNzXSeaHSFb/gwo7+Jydl
         UiJ6N6GvKTUUHyikIvmhnKzWvK3lu+mA/4kyV3TgcDge7QJkHn70REIgfYN4/a4B+ceV
         KAjtZ58+gU/YyB61gHXIEzlQm8Id0x4x5W/FZDzBQwaFyoDMSLEkmapAsf/g+QH/taSj
         MiachVN4iYE4J4KVQTtYeKr0BzMt2aKjf8HVK/iNM9RIXg5yv8HU6SIa/Xqf+nbuvYGp
         NdXYvOf/kz90O89xdEoYLWNottsFCbh5ZqVAkuR6td4/IFqbgxoPIK40DUSvIqUzWvH6
         Hihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744764534; x=1745369334;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jPuCm+rqdGwG3G8jrDZZDGo/23fVRFHxYRG9lMWLEJA=;
        b=qZefnJLiRxzQORlhgxHu0bOX30X4jEfiE+AjWy8ctHCYGQltmAy3ciFjvJWKTbtooD
         zelcGwpMHsz3F0CK5wn3du0gndt7xRsKadknZisPxP1+MhBZF7O2QrSUaZKNpZzFqIQq
         +NkDtSv1YcMlYkROxtkh4ow0fGNgfPJCmr5EUYcfMFWwEm5RpTi7cjgGU8DM0nvCaJeV
         BGmlQN8K1/hxiqplEJy6Vm9v3I+EGZiGVv7fB2yntWjrWnqGMCF3n70wmjcrXuW1L0NC
         uXwIIDOISoGgMvaGhgTzy1li2HCzazZIGoJIjYGFp9TePUDXJUjVrUpSyaq5xKxvXVtA
         mhfw==
X-Forwarded-Encrypted: i=1; AJvYcCV0EQxEvwNkLyexfl4U6NV/Exnn+D3+euaDr9KmiOQuj7nXJNyGQkrpf0QvQOcgjfzqwxZdAXIwab68@vger.kernel.org
X-Gm-Message-State: AOJu0YzJcxjim5Z6X6Am0XDDQsIIWVtEwUh6hur0EnDH89m+2gmBOZmn
	8NsvUPKkVeE1jmbKHAA9yKsVRpIJjrInB4DppzmkX8HvSLZcXrFDxRKdfzaBoxuHNh2HOVRLlbA
	n9xfZE3TdAhyBWLTfa7wQGfILQrtM/tbAoYg=
X-Gm-Gg: ASbGncvkIbrHDFJ9tDYXNaARoOo2lj5CG9RCcOj+J5aPPY2ueJzvipKHKZdDvUN0Fg1
	C6bItvB3VZI2qJniuIsaHKibeMm9Ee1s3QzAmMmuOYLkL2WcHRE0bcaIlqRWLzYbHhlf58Xa4/U
	NLTa3AAQNXx5Mr1pQdQ87oDcILLoaE1r/AyUPuDAK0mNf5pQKGmL6I
X-Google-Smtp-Source: AGHT+IHevqlecv2dltxTa35zkiIafMdIo1CxrQCwSubeqYYZhYuVA/55pwvpTD7H4AMyPSPDjg8VZ0rmS3Zb3gvZUq0=
X-Received: by 2002:a05:6512:3b95:b0:549:8f15:db2f with SMTP id
 2adb3069b0e04-54d6051d882mr218881e87.31.1744764534024; Tue, 15 Apr 2025
 17:48:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250402233407.2452429-1-willmcvicker@google.com>
 <20250402233407.2452429-7-willmcvicker@google.com> <Z_6OZHYfC0bC5289@mai.linaro.org>
In-Reply-To: <Z_6OZHYfC0bC5289@mai.linaro.org>
From: John Stultz <jstultz@google.com>
Date: Tue, 15 Apr 2025 17:48:41 -0700
X-Gm-Features: ATxdqUEyC1e7tjK1ExejSG-_0fQdpJiMuKIAs5FGSCRFBKdclyuFULIgWiZplgs
Message-ID: <CANDhNCodHATboF2=U2tTwdEkEJ+PsfB2F=fbBrs=J1UzZTEX8g@mail.gmail.com>
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

On Tue, Apr 15, 2025 at 9:50=E2=80=AFAM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
> On Wed, Apr 02, 2025 at 04:33:57PM -0700, Will McVicker wrote:
> > From: Donghoon Yu <hoony.yu@samsung.com>
> >
> > On Arm64 platforms the Exynos MCT driver can be built as a module. On
> > boot (and even after boot) the arch_timer is used as the clocksource an=
d
> > tick timer. Once the MCT driver is loaded, it can be used as the wakeup
> > source for the arch_timer.
>
> From a previous thread where there is no answer:
>
> https://lore.kernel.org/all/c1e8abec-680c-451d-b5df-f687291aa413@linaro.o=
rg/
>
> I don't feel comfortable with changing the clocksource / clockevent drive=
rs to
> a module for the reasons explained in the aforementionned thread.

I wasn't CC'ed on that, but to address a few of your points:

> I have some concerns about this kind of changes:
>
>   * the core code may not be prepared for that, so loading / unloading
> the modules with active timers may result into some issues

That's a fair concern, but permanent modules (which are loaded but not
unloaded) shouldn't suffer this issue. I recognize having modules be
fully unloadable is generally cleaner and preferred, but I also see
the benefit of allowing permanent modules to be one-way loaded so a
generic/distro kernel shared between lots of different platforms
doesn't need to be bloated with drivers that aren't used everywhere.
Obviously any single driver doesn't make a huge difference, but all
the small drivers together does add up.

>  * it may end up with some interactions with cpuidle at boot time and
> the broadcast timer

Do you have more details as to your concerns here? I know there can be
cases of issues if the built in clockevent drivers are problematic and
the working ones don't load until later, you can have races where if
the system goes into idle before the module loads it could stall out
(there was a recent issue with an older iMac TSC halting in idle and
it not reliably getting disqualified before it got stuck in idle).  In
those cases I could imagine folks reasonably arguing for including the
working clock as a built in, but I'm not sure I'd say forcing
everything to be built in is the better approach.

> * the timekeeping may do jump in the past [if and] when switching the
> clocksource

? It shouldn't. We've had tests in kselftest that switch between
clocksources checking for inconsistencies for awhile, so if such a
jump occurred it would be considered a bug.

>  * the GKI approach is to have an update for the 'mainline' kernel and
> let the different SoC vendors deal with their drivers. I'm afraid this
> will prevent driver fixes to be carry on upstream because they will stay
> in the OoT kernels

I'm not sure I understand this point?  Could you expand on it a bit?
While I very much can understand concerns and potential downsides of
the GKI approach, I'm not sure how that applies to the submission
here, as the benefit would apply to classic distro kernels as much as
GKI.

I realize in the time since I started this reply, Will has already
covered much of the above! So apologies for being redundant.  That
said, there are some non-modularization changes in this series that
should be considered even if the modularization logic is a continued
sticking point.
-john

