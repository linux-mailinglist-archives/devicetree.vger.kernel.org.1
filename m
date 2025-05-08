Return-Path: <devicetree+bounces-175011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9463BAAF8F0
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 13:45:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB0BA178EEC
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 11:44:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8629B2153CE;
	Thu,  8 May 2025 11:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kBtrIoLL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C093B1917F4
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 11:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746704684; cv=none; b=YL/v086rlQezmrA9OsQvTh6Eq95OUMgNcht6psTsI5S4cfD+I+Baa9YOgljagoA3Q9SyDhuv5US7ovfiZNPmfELc/yXShWXiOyK17Y0DfbJUKcRLWZPJuoGnVb2QLtaQOApRe2UN/mrD9qLUoBlNXIqdvWZOpt5CxrK5nYL9Z9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746704684; c=relaxed/simple;
	bh=mJFhbTThhLFHyqN/MbOoAtaZMkMAPKeRwEdqOwaJZ+o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JX2E5fyCeZd5IJ9wXzNqRrV4x81UngVYRlhEwiwSxW3Qhk5udzXcbSRqh06jkWsd3KQVzuZSLJf6pNcG6uLnV5amg+Lf8i1dPqVBJ96wHFOI+gJ42X0ZxUsvdRcUPECOxeRWnv7uRrzVaq3Qv3n0gbRtEwtm5Zg5uBfHmmh0GXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kBtrIoLL; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-72c40235c34so261345a34.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 04:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746704681; x=1747309481; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/Hp/Zx088l7ufNM7/gEglcaYvteforqJCTr5utu/Y/M=;
        b=kBtrIoLLAZO0lTnGfdXfrfkZT++uTq0sm5gKTFoX1tb9H6B4PYg5Gkj13McOvdqDRo
         l+BJOQVPIrf3o+KTCbqMEpYMNyBdf8+vTep94k1y6iIchOllfvF/K0QvidGj8OOWGjVo
         xHvew46nG0JzRgWbFzgE9wtVBF6My2vA5UhUHVPujEXLlLBmyoKaHFNzEvK26A3/aB1V
         MziMzkAv56x4J+LnZNX7ECFhW6i+f4eKo7U3lJXF29y22XBJn4ostuB8PkY7mM3G6njS
         c0fNqHwCHi8t41Sb/cB828k+mSSET7cmbOwdA+gFSm+X05sG3gulyL8VP8wY2v8ue609
         nYkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746704681; x=1747309481;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Hp/Zx088l7ufNM7/gEglcaYvteforqJCTr5utu/Y/M=;
        b=XHxrCoWj5FFt3469u58Qatw1AbfcbCRA4YH+CIxNsM95wN6oH3t4OEklurIWOgWPEV
         lEIfH/psEoePdUxGz+30ax22Q9hX5wh0cE6BMNhkpFLo1zcxIQCtn4E2uVL7kldSyjLX
         g2RYFvl7yjgWFUbZLroj3ZLpkQDHeULgKyMtGE+W4kCO3jWrbCN7N1P7mPkwwV6n5gw+
         BHLbtEe19Gmno6gMxTYYuss4Oz63EMRTBGwDpAwcPyeebL/KePhh4ha62sTdBSMyrH+G
         20dY1N77TbK8FQ71f65wK3lDLOh9R8DtWkpoqhW06guE8flkuLPQYj+LTmD4aSYkbXZk
         n/Hw==
X-Forwarded-Encrypted: i=1; AJvYcCVwb7feG/oBj+75hMvu7lrbbNXmQsxGjo1LZMMiRtntQqD6gBD22gFJ4jhCqLbo/FCdBEc8di35PPxI@vger.kernel.org
X-Gm-Message-State: AOJu0YxFITMsux9NDohzGFdu1p6T7rLMMJgl10vaMD0ZvSBqtIExGZNk
	y6jiwWfJ+0rvj8NSSJvlFYm0TXhYPeeXbLjzFx6QSVSfk6B4LaKGMyhxQH729D0j/W8rS96iYR7
	jbSDUO84YVA6k+2Stkg0Q1kWchyjZ5u9ki3y6qg==
X-Gm-Gg: ASbGncujg+m4+WWzjntCHsWvQpJvq3VfktY/rR7o7YvigsufbzOUYDd26WhyYUGwIaB
	V7mU9eBOkY8oVj5W4/tDPhLvcUHpjI01Yv7ni4tbfxLJdA+Otl9wupo5KIKEZvfPM8c/7kb5GV+
	QzTnhlyCT86lN4dRfn31VgQ6Y=
X-Google-Smtp-Source: AGHT+IHR8KYLZfRaxr/JXt1MbDStXnfYLmh12kfUK55ebtZ9Q6Un3DnFf5DzZhGiLaPUsqdPll0N8Q4dykGFdmsvGsI=
X-Received: by 2002:a05:6870:891b:b0:29e:69d9:8834 with SMTP id
 586e51a60fabf-2db5b915d6cmr3889315fac.0.1746704680699; Thu, 08 May 2025
 04:44:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250402233407.2452429-1-willmcvicker@google.com>
 <20250402233407.2452429-7-willmcvicker@google.com> <Z_6OZHYfC0bC5289@mai.linaro.org>
 <Z_7O1xi2-ZGhJ1r_@google.com> <Z_-RaYcXHR9--zXA@mai.linaro.org>
In-Reply-To: <Z_-RaYcXHR9--zXA@mai.linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 8 May 2025 12:44:29 +0100
X-Gm-Features: ATxdqUEvbDcAFOTGHzLMBK8svR6T90akaQxSMqcut79zelUxyv-arjNE7fwYfi0
Message-ID: <CADrjBPoePtodu-yYaFBcOMmvv0r2x+gCAdVnZypJ=G_BN4Sn-w@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] clocksource/drivers/exynos_mct: Add module support
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: William McVicker <willmcvicker@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Donghoon Yu <hoony.yu@samsung.com>, Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Youngmin Nam <youngmin.nam@samsung.com>, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Daniel,

[..]

> > > On Wed, Apr 02, 2025 at 04:33:57PM -0700, Will McVicker wrote:
> > > > From: Donghoon Yu <hoony.yu@samsung.com>
> > > >
> > > > On Arm64 platforms the Exynos MCT driver can be built as a module. On
> > > > boot (and even after boot) the arch_timer is used as the clocksource and
> > > > tick timer. Once the MCT driver is loaded, it can be used as the wakeup
> > > > source for the arch_timer.
> > >
> > > From a previous thread where there is no answer:

Aside from the timer modularization part here which is proving a bit
contentious are
you OK with queueing the other parts of this MCT series?

As I need some of the MCT driver changes to enable CPUIdle on Pixel 6 upstream.
Exiting from c2 idle state is broken for gs101 without some of these
MCT changes.

[..]

> > >
> > > https://lore.kernel.org/all/c1e8abec-680c-451d-b5df-f687291aa413@linaro.org/
> > >
> > > I don't feel comfortable with changing the clocksource / clockevent drivers to
> > > a module for the reasons explained in the aforementionned thread.
> > >
> > > Before this could be accepted, I really need a strong acked-by from Thomas
> >
> > Thanks for the response! I'll copy-and-paste your replies from that previous
> > thread and try to address your concerns.
> >
> > >   * the GKI approach is to have an update for the 'mainline' kernel and
> > > let the different SoC vendors deal with their drivers. I'm afraid this
> > > will prevent driver fixes to be carry on upstream because they will stay
> > > in the OoT kernels
> >
> > I can't speak for that specific thread or their intent, but I can speak to this
> > thread and our intent.
> >
> > This whole patch series is about upstreaming the downstream changes. So saying
> > this will prevent others from upstreaming changes is punishing the folks who
> > are actually trying to upstream changes. I don't think that's a fair way to
> > handle this.
> >
> > Also, rejecting this series will not prevent people from upstreaming their
> > changes, it'll just make it more unlikely because they now have to deal with
> > upstreaming more changes that were rejected in the past. That's daunting for
> > someone who doesn't do upstreaming often. I'm telling this from experience
> > dealing with SoC vendors and asking them to upstream stuff.
> >
> > With that said, let me try to address some of your technical concerns.
>
> I won't reject the series based on my opinion. Answering the technical concerns
> will prevail.
>
> Why is it needed to convert the timer into a module ?

MCT is hardware very specific to Exynos based SoCs. Forcing this
built-in is just
bloat for many other systems that will never use it.

The aim of this series is to upstream the downstream OOT code with the goal of
then switching over to the upstream version of the driver.

I agree with your points though that we should be sure the timer framework can
handle this, and we aren't introducing subtle bugs.

>
> > > * the core code may not be prepared for that, so loading / unloading
> > > the modules with active timers may result into some issues
> >
> > We had the same concern for irqchip drivers. We can easily disable unloading
> > for these clocksource modules just like we did for irqchip by making them
> > permanent modules.
>
> In the clockevent / clocksource initialization process, depending on the
> platform, some are needed very early and other can be loaded later.
>
> For example, the usual configuration is the architected timers are initialized
> very early, then the external timer is loaded a bit later. And when this one is
> loaded it does not take over the architected timers. It acts as a "broadcast"
> timer to program the next timer event when the current CPU is going to an idle
> state where the local timer is stopped.
>
> Other cases are the architected timers are not desired and the 'external' timer
> is used in place when it is loaded with a higher rating. Some configuration can
> mimic local timers by settting a per CPU timer.
>
> Some platforms could be without the architected timers, so the 'external' timer
> is used.
>
> Let's imagine the system started, the timers are running and then we load a
> module with a timer replacing the current ones. Does it work well ?
>
> Are we sure, the timer modularization is compatible with all the timer use cases ?

It's a good question. We can say it's been used as a module on
multiple generations
of Pixel devices in production without issues. Whether that covers all
timer use cases
I can't say.

>
> > > * it may end up with some interactions with cpuidle at boot time and
> > > the broadcast timer
> >
> > If I'm understanding this correctly, no driver is guaranteed to probe at
> > initialization time regardless of whether it is built-in or a module. Taking
> > a look at the other clocksource drivers, I found that the following drivers are
> > all calling `clocksource_register_hz()` and `clockevents_config_and_register()`
> > at probe time.
> >
> >   timer-sun5i.c
> >   sh_tmu.c
> >   sh_cmt.c
> >   timer-tegra186.c
> >   timer-stm32-lp.c (only calls clockevents_config_and_register())
> >
> > So this concern is unrelated to building these drivers are modules. Please let
> > me know if I'm missing something here.
>
> We would have to check each platform individually to answer this question.
>
> The interaction between cpuidle and the timer module is about not having a
> broadcast timer when cpuidle initializes and then having it later when the
> module is loaded. Did you check the deep idle states are used after loading the
> module ?

For gs101 / Oriole deep idle states are used after loading the module as if the
MCT timer *isn't* used then the CPU can't wake up from c2 and eventually there
are no CPUs left leading to a hang.

>
> The discussion is not about only the Exynos MCT but as you are not the first
> one asking to convert the timer driver to a module, we should check what could
> be the impact on the time framework and the system in general.
>
> Others proposed to convert to module and I asked to investigate the impact.
> Nobody came back with a clear answer and there is no feedback from Thomas.

Hopefully the above answers go a little bit towards giving a degree of
confidence
that this is a safe change :)

regards,

Peter.

