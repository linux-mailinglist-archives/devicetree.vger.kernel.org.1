Return-Path: <devicetree+bounces-239267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F060DC631FC
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:19:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55D123A92E3
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 09:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 373FC324B3A;
	Mon, 17 Nov 2025 09:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="ibGneCOc";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="ZkFBDSDu"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F3A6324B3E;
	Mon, 17 Nov 2025 09:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763371004; cv=none; b=gcTZx+7aE7hK+IR1XpcH6aLU5VVOdnkdjTPQeJwsyM3ikW/5TF+/LT4KKkLzzkKGHsVM62Kq5H5LqtYZ2W4IAlpg95lMUq9ctCoNwrGFmHE7lO3Lx1uatE52tE5UD2aytoOlAq2svJHmpgTpENGNVE086rENsBAUMWkzrYEJOlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763371004; c=relaxed/simple;
	bh=gDVq5kG+0ZUTFK34RkqjdUHH3wg2xP0Yc1mxJyx7FN4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=QRZ3IWZCkvgWBk3+Ril73yXuGsMHjKjwbcBza7zRCjcfcZ2jxGP066o4lIcPvzrpQhSXNZbugHWAcRfO2GdedhVKZmko7pjyK1EEK4U9iSDvroH1DCXoPrCMtCMW/ittiqUnbZ3fyLfONk2d8Dc6pRTUtJvsb/Eg2Ezdsj0Crac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=ibGneCOc; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=ZkFBDSDu; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1763371000;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=i6fdPv9UJz7OWefZ82+++hXICXoBPCRf3MToQXAlL6o=;
	b=ibGneCOc4R6fo87nX/T506YugbHqDw1jB0BWCbKtfhd3Iye+ZrZqd1y5zKj8fLmanVxXPD
	IVrexiL9vjj2GyQdgNwuHbpMGhT5rcRg2HgkailAEJbN4f2m4+M6wgmir7d9Kuvv22neHr
	5mAEqhiPp3JPBpVtk7K3u2fLhRZZBpjKAvHOh1e3XuoW4afuHSfbmLN/d3nAeRq03ZBpd/
	IlTwO3qKSy/sB4iq5tO25y511FNOrgyVIK0Zv2FkkjRqEcQWEGMQBl/Fvqqd1W1r76AQR2
	i5qIDub6hrUyAksqpNtQS9Eq7NR6BGx6dxxBDGM4FGhNEaxhN7Kz4uXvqrEKmQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1763371000;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=i6fdPv9UJz7OWefZ82+++hXICXoBPCRf3MToQXAlL6o=;
	b=ZkFBDSDuoYl/asAelbHJSce2GiwFqTWwu+DrR9wI/3pj9ClxshmVuEPw6BylQ+Y1NXW6WK
	D7maZ/2fDm/PP/Bw==
To: Hao-Wen Ting <haowen.ting@realtek.com>, daniel.lezcano@linaro.org
Cc: jinn.cheng@realtek.com, edwardwu@realtek.com, phelic@realtek.com,
 shawn.huang724@realtek.com, haowen.ting@realtek.com, cy.huang@realtek.com,
 james.tai@realtek.com, cylee12@realtek.com, phinex@realtek.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stanley_chang@realtek.com
Subject: Re: [PATCH v3 2/2] clocksource: Add Realtek systimer as tick
 broadcast driver
In-Reply-To: <20251117073408.428190-3-haowen.ting@realtek.com>
References: <20251117073408.428190-1-haowen.ting@realtek.com>
 <20251117073408.428190-3-haowen.ting@realtek.com>
Date: Mon, 17 Nov 2025 10:16:39 +0100
Message-ID: <875xb981e0.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, Nov 17 2025 at 15:34, Hao-Wen Ting wrote:
> +static u64 rtk_ts64_read(void)
> +{
> +	u64 ts;
> +	u32 low, high;

https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#variable-declarations

> +	/* Caution: Read LSB word (TS_LW_OFST) first then MSB (TS_HW_OFST) */
> +	low = readl(systimer_base + TS_LW_OFST);
> +	high = readl(systimer_base + TS_HW_OFST);
> +
> +	pr_debug("64bit-TS:HW=0x%08x,LW=0x%08x\n", high, low);

Please get rid of these debug prints.

> +	ts = ((u64)high << 32) | low;
> +
> +	return ts;
> +}
> +
> +
> +static int rtk_syst_clkevt_next_ktime(ktime_t expires,
> +				      struct clock_event_device *clkevt)

Pointless line break. You have 100 characters

> +{
> +	u64 cmp_val;
> +	unsigned long flags;
> +	ktime_t now = ktime_get();
> +	s64 delta_ns = ktime_to_ns(ktime_sub(expires, now));
> +	u64 delta_us = delta_ns / 1000;
> +
> +	pr_debug("delta_ns = %lld, clkevt.min_delta_ns = %llu\n",
> +		 delta_ns, clkevt->min_delta_ns);
> +
> +	if (delta_ns <= (s64)clkevt->min_delta_ns) {
> +		delta_ns = clkevt->min_delta_ns;
> +		delta_us = delta_ns / 1000;
> +		pr_debug("Clamping delta_ns to min_delta_ns\n");
> +	}

Why are you using the set_next_ktime() callback instead of set_next(),
where the core code does the conversion _and_ the clamping?

> +	rtk_cmp_en_write(DSBL);
> +	local_irq_save(flags);

Pointless exercise. set_next*() is always invoked with interrupts disabled.

> +	cmp_val = rtk_ts64_read();
> +
> +	/* Set CMP value to current timestamp plus delta_us */
> +	rtk_cmp_value_write(cmp_val + delta_us);
> +	rtk_cmp_en_write(ENBL);
> +	local_irq_restore(flags);
> +	return 0;
> +}

> +static struct timer_of _to = {

What's wrong with a proper variable name instead of this made up '_to'?

> +	.flags = TIMER_OF_IRQ | TIMER_OF_BASE,
> +
> +	.clkevt = {
> +		.name = "rtk-clkevt",
> +		.rating = 300,
> +		.cpumask = cpu_possible_mask,
> +		.features = CLOCK_EVT_FEAT_DYNIRQ |
> +			    CLOCK_EVT_FEAT_ONESHOT |
> +			    CLOCK_EVT_FEAT_KTIME,
> +		.set_next_ktime = rtk_syst_clkevt_next_ktime,
> +		.set_state_oneshot = rtk_syst_shutdown,
> +		.set_state_shutdown = rtk_syst_shutdown
> +	},
> +
> +	.of_irq = {
> +		.flags = IRQF_TIMER | IRQF_IRQPOLL,
> +		.handler = rtk_ts_match_intr_handler
> +	},

https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#struct-declarations-and-initializers

Thanks,

        tglx

