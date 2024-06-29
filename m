Return-Path: <devicetree+bounces-81659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA4B91CF1B
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 23:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A0791F2172A
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 21:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09DB4139CFE;
	Sat, 29 Jun 2024 21:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b="XReh2JTh"
X-Original-To: devicetree@vger.kernel.org
Received: from polaris.svanheule.net (polaris.svanheule.net [84.16.241.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B2B4B5A6
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 21:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.241.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719694998; cv=none; b=ZZESAmzZbn0QpRn7raN5IAzEzI7faPYHhq4X7uEauaRxrnGTzhi5oH+jTY+v3XVxnkQ7Wwlp9HKjNE9405e1quynLD+UHI8k1eS/g++lDGl3zVpxNzp6JJfiTVCqBjIAEbtRBZxSeirJI56i27GbrJmhO1c8jl7B7MmiDs99Vck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719694998; c=relaxed/simple;
	bh=+jQfiXKKOHuxkd0OeYkrcVbG0bY626ByuZ9J+7PQEjw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=G8DvapTW6aHD2zeyRgKQkYHR/LOksAjjcs/nJFkrj53ZNbGB6zsXB9b2hwlNoWnpuuwZYUJ/tCd26V94FXXOdK3fo4ccVybcLsGC5ehfoz+W9i9viiLAJOAiR8YlqK2J4C2TylIH/QOtZh/sKLAzq8/8KgxdhqvYpWyYi/5cWno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net; spf=pass smtp.mailfrom=svanheule.net; dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b=XReh2JTh; arc=none smtp.client-ip=84.16.241.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=svanheule.net
Received: from mars.vega.svanheule.net (unknown [94.110.49.146])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sander@svanheule.net)
	by polaris.svanheule.net (Postfix) with ESMTPSA id 0C8AF50CF2E;
	Sat, 29 Jun 2024 23:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svanheule.net;
	s=mail1707; t=1719694994;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EOt20HLhQmGQw8jZ8eMvbLL+V4dAOnTiGGiOjMXATI8=;
	b=XReh2JThCDlVXVXO2mHGANRM/Zb4Itn0A+Qwk2MznJ4YIU4qzXYJkrZvE0EBRv3Y1eYQ/9
	8drQBSs/833MK+a9LD8cV6i1nPdT3dhcKsWTaCZI7G2ViB7S4kdfqd3zS7ytiHy90IacN2
	n+Dc0N26vB8RgXWLeCevCbIQ/1wnDpk0VDN7DtinVtLNTQLLH/6zgpJCZhYDdL70U3x1MK
	Y9vjSvbeTjb+6QCNqhbqJUsY6ZyMvuk7c6QkTtmoP26L911U2vFT2BzWz2CZPof5OOmOjs
	EvV2CRFnr0tQgb4cNvhLczAFGjU4XElMwcrrZ0SHAXXyIQUl+73bCVrFrXOo1w==
Message-ID: <e0f0f6ceb37225dd3d85038773b09c7ceee96499.camel@svanheule.net>
Subject: Re: [PATCH v3 7/9] clocksource: realtek: Add timer driver for
 rtl-otto platforms
From: Sander Vanheule <sander@svanheule.net>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, tglx@linutronix.de, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 tsbogend@alpha.franken.de, daniel.lezcano@linaro.org,
 paulburton@kernel.org,  peterz@infradead.org, mail@birger-koblitz.de,
 bert@biot.com, john@phrozen.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-mips@vger.kernel.org, kabel@kernel.org, ericwouds@gmail.com, Markus
 Stockhausen <markus.stockhausen@gmx.de>
Date: Sat, 29 Jun 2024 23:03:12 +0200
In-Reply-To: <20240627043317.3751996-8-chris.packham@alliedtelesis.co.nz>
References: <20240627043317.3751996-1-chris.packham@alliedtelesis.co.nz>
	 <20240627043317.3751996-8-chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Chris,

On Thu, 2024-06-27 at 16:33 +1200, Chris Packham wrote:
> The timer/counter block on the Realtek SoCs provides up to 5 timers. It
> also includes a watchdog timer but this isn't being used currently (it
> will be added as a separate wdt driver).

Do you mean the watchdog timer supported by drivers/watchdog/realtek_otto_w=
dt.c? Or are
you referring to another watchdog timer?

> One timer will be used per CPU as a local clock event generator. An
> additional timer will be used as an overal stable clocksource.
>=20
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> Signed-off-by: Sander Vanheule <sander@svanheule.net>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---

For reference, I submitted a driver for the same hardware back in 2022, but=
 didn't manage
to follow up to finalize the submission:

https://lore.kernel.org/all/cover.1642369117.git.sander@svanheule.net/


> +
> +/* Module initialization part. */
> +static DEFINE_PER_CPU(struct timer_of, rttm_to) =3D {
> +	.flags				=3D TIMER_OF_BASE | TIMER_OF_CLOCK |
> TIMER_OF_IRQ,
> +	.of_irq =3D {
> +		.flags			=3D IRQF_PERCPU | IRQF_TIMER,

In the original review of this code, I had some doubts about the use of IRQ=
F_PERCPU. Maybe
the people in Cc can shed some light on this.

If I understand correctly, the SoC interrupts these timers use are not per-=
cpu interrupts.
(For comparison, AFAICT the MIPS CPU interrupts are)



> +		.handler		=3D rttm_timer_interrupt,
> +	},
> +	.clkevt =3D {
> +		.rating			=3D 400,
> +		.features		=3D CLOCK_EVT_FEAT_PERIODIC |
> CLOCK_EVT_FEAT_ONESHOT,

If the use of IRQF_PERCPU is appropriate, I wonder if the driver should als=
o use
CLOCK_EVT_FEAT_PERCPU.


Best,
Sander


