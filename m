Return-Path: <devicetree+bounces-167517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B407A8AA12
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 23:25:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 133EE3A5387
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 21:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFAD22512E4;
	Tue, 15 Apr 2025 21:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="iCIksnsj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A684222577
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 21:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744752349; cv=none; b=qU6sGo8W87ynT7muh95evA2XXI2uYH7qMnjiL/QWoKQhvzGp0v4vpbE887GX17i0LYZSg5PmP6NSQnykaJjPeBpWlz+WfSDBWBstsRDOb3BheUNC2MaCQaAo7hEpOHFa30K1zvfsnCawoF1xIPDAa/LEdmzp+tAJsVHND07Zc04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744752349; c=relaxed/simple;
	bh=JwU8AHx8PeAN8AtgSHA3D7DJk5pbqTcZbLy8XxPRcck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DB329EkBQweqXvQ/N+xNE1IwEyrDJkDnVpAjCZT4DnBKuoll/hXzyrrAYt3wUkg/+VIuL+CuAzLpegR9FHETBfHYn5wVBY8haGVDIqDH1vedonq/N8pEZaBBRoRr/89wDYknKF9Xz5z1CKB01Fqh2EFx7/EuedW+Pe5BIznozFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=iCIksnsj; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2254e0b4b79so82805885ad.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 14:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744752347; x=1745357147; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UwJG8J1iyTH8V+SfRmZi+ISFZpJOYpkT7vaEBR18O5k=;
        b=iCIksnsjKqkhihQIYg19sKVmkq2e+Jia7Bpsluw2ZFQvTCM9GvurtEAF6sHTCQcofI
         yDrKpBRuYYxFBnyeVi+2R3WvQtiXdqlrhE2so/t1sU6NC0wQW9xd7Xw8towIAWmyGdMq
         H6B5AsLNwBu4iPDTvSJCJ6zDB5UlQeqd2H8cHy6qiS178s+fU3TAd0fOF6f1i29ZNTYP
         KS6iGzAKr36q9cZGrx6uiUwA6dicdQu4ckd0ebtSmIzGJQzmuG0TFqiBpucAjst9gyWA
         /q2GXEQYpBhlj+0hnHWGQ/psUG54gQtQplCpj36EMT8nmKkVhQItC9/HpdYREPeFF0BX
         +vfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744752347; x=1745357147;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UwJG8J1iyTH8V+SfRmZi+ISFZpJOYpkT7vaEBR18O5k=;
        b=AncW6yUzlMoJPMXMO4khew+cs3ahxNyFWtmQHbsg7/eZJN+mt8grTIl3rzzxqTQMJy
         dOF+azaA7tm4cRJ70amUe0jFyjhc7NGHY2g90SFI8tNlkBYb7+yXXHZfMiy7A6IGwqiS
         gSgN0+fGBQa/SggNw28lojSdYv6NezwwmtGktu4MwJq/PxjijUTZJ7SjwcaZn6xCKSQ6
         BzGMM+vBCfG3IhQUajJNgPByivhwzItYYbyCVPFRpSbyorjGQFJrP46tnresFBVhNAJU
         iZtnXF3LU8psJFrE5F9brlsexvjzbJvXhhy59LTx1LN9Yj0CLbizsuY8A2sbCbg4fjaE
         Cpbw==
X-Forwarded-Encrypted: i=1; AJvYcCVwz2mdxE3/hA6hz0HQPxB+E4Wm7fRQG6AbiB2uh0jRK6fkWUMOWZs+g096eu2b5GTjEIOc0XVc3Ur6@vger.kernel.org
X-Gm-Message-State: AOJu0YyjK266lOoxjT+RCLQ5sLI95pk27jVJuxqhPzMYl80Grtr55Fsi
	F8M+8atR1bgV3JWENA10FpR67EKp80LUaAREC0GGJSXrx+V4sw3oes81+60fjg==
X-Gm-Gg: ASbGncs7qyXwPp0ZBhTcMY7I/sIAmHGRKWrdeVEkzB6hg/yo2pWXWeCG9nOjrVFFp5x
	WB5xp3MZBtUoLh3Py+DqQuKSAZjun4YKuwYh251l7g5bHQphdu5ZqOD4JlIsQRkY0N65oyspOky
	0JLhTGPZzGnrn9rZ66FbFuI6KApKwTvo4t1ho4jjJt7f+5N6tTYPYtES/CuOeXUWUoIUfYPB1Rr
	/fiEqUGu0wbSINsL/PQiD0sE5Dzoqb7mwm3PEl5cTUgkPbxXL9DuWQQQs0Wr1XHMEBkbyByDcJP
	dSiuS836PQf8PImZjsjBg5JYyAWsmxxQlFx/cW3qWv4nLUCBlEc9IV2LLUxVnO3YHNAYJBAaTK7
	LrgOjJQ==
X-Google-Smtp-Source: AGHT+IFbV5rZHgTJXmvY63NNUPHF83MLOSfyfSDJgneqMsKOmSCLVHVGlipkv2ZUH8ySI1osZFQGUA==
X-Received: by 2002:a17:902:ef4c:b0:224:f12:3734 with SMTP id d9443c01a7336-22c319f7f6bmr11029435ad.30.1744752347289;
        Tue, 15 Apr 2025 14:25:47 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd230e8b1sm9292900b3a.148.2025.04.15.14.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 14:25:46 -0700 (PDT)
Date: Tue, 15 Apr 2025 14:25:43 -0700
From: William McVicker <willmcvicker@google.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
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
Message-ID: <Z_7O1xi2-ZGhJ1r_@google.com>
References: <20250402233407.2452429-1-willmcvicker@google.com>
 <20250402233407.2452429-7-willmcvicker@google.com>
 <Z_6OZHYfC0bC5289@mai.linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z_6OZHYfC0bC5289@mai.linaro.org>

On 04/15/2025, Daniel Lezcano wrote:
> Hi Will,

Hi Daniel,

> 
> On Wed, Apr 02, 2025 at 04:33:57PM -0700, Will McVicker wrote:
> > From: Donghoon Yu <hoony.yu@samsung.com>
> > 
> > On Arm64 platforms the Exynos MCT driver can be built as a module. On
> > boot (and even after boot) the arch_timer is used as the clocksource and
> > tick timer. Once the MCT driver is loaded, it can be used as the wakeup
> > source for the arch_timer.
> 
> From a previous thread where there is no answer:
> 
> https://lore.kernel.org/all/c1e8abec-680c-451d-b5df-f687291aa413@linaro.org/
> 
> I don't feel comfortable with changing the clocksource / clockevent drivers to
> a module for the reasons explained in the aforementionned thread.
> 
> Before this could be accepted, I really need a strong acked-by from Thomas

Thanks for the response! I'll copy-and-paste your replies from that previous
thread and try to address your concerns.

>   * the GKI approach is to have an update for the 'mainline' kernel and
> let the different SoC vendors deal with their drivers. I'm afraid this
> will prevent driver fixes to be carry on upstream because they will stay
> in the OoT kernels

I can't speak for that specific thread or their intent, but I can speak to this
thread and our intent.

This whole patch series is about upstreaming the downstream changes. So saying
this will prevent others from upstreaming changes is punishing the folks who
are actually trying to upstream changes. I don't think that's a fair way to
handle this.

Also, rejecting this series will not prevent people from upstreaming their
changes, it'll just make it more unlikely because they now have to deal with
upstreaming more changes that were rejected in the past. That's daunting for
someone who doesn't do upstreaming often. I'm telling this from experience
dealing with SoC vendors and asking them to upstream stuff.

With that said, let me try to address some of your technical concerns.

> * the core code may not be prepared for that, so loading / unloading
> the modules with active timers may result into some issues

We had the same concern for irqchip drivers. We can easily disable unloading
for these clocksource modules just like we did for irqchip by making them
permanent modules.

> * it may end up with some interactions with cpuidle at boot time and
> the broadcast timer

If I'm understanding this correctly, no driver is guaranteed to probe at
initialization time regardless of whether it is built-in or a module. Taking
a look at the other clocksource drivers, I found that the following drivers are
all calling `clocksource_register_hz()` and `clockevents_config_and_register()`
at probe time.

  timer-sun5i.c
  sh_tmu.c
  sh_cmt.c
  timer-tegra186.c
  timer-stm32-lp.c (only calls clockevents_config_and_register())

So this concern is unrelated to building these drivers are modules. Please let
me know if I'm missing something here.

>  * the timekeeping may do jump in the past [if and] when switching the
> clocksource

Can you clarify how this relates to modules? IIUC, the clocksource can be
changed anytime by writing to:

 /sys/devices/system/clocksource/clocksource0/current_clocksource

If there's a bug related to timekeeping and changing the clocksource, then that
should be handled separately from the modularization code.

For ARM64 in general, the recommendation is to use the ARM architected timer
which is not a module and is used for scheduling and timekeeping. While the
Exynos MCT driver can functionally be used as the primary clocksource, it's not
recommended due to performance issues. So building the MCT driver as a kernel
module really shouldn't be an issue and has been thoroughly testing on several
generations of Pixel devices which is why we are trying to upstream our
downstream technical debt (so we can directly using the upstream version of the
Exynos MCT driver).

Thanks,
Will

[...]

