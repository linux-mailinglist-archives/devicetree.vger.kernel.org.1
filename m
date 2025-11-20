Return-Path: <devicetree+bounces-240623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 00618C737E2
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 11:38:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 993BA4E6CD7
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F14B32E12B;
	Thu, 20 Nov 2025 10:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="KC+rmiWN";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="+8kQzenj"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23E232C94F;
	Thu, 20 Nov 2025 10:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763635086; cv=none; b=oVV9QS9GaH7VM89CADigxxZNwHEfOHEqHjcUtGM8itPO02G8dZvTJ76LLXGaANSJYpL5BT4pGPu2xHd9KObxBXnsUrF1R0UEtuKmD6L8z0BEYVz3sB+LkTcZh4fMQJ3TnWLwCwe+L85x29TNYNKtS/H4ij/u0xi4PXf01XH9XxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763635086; c=relaxed/simple;
	bh=kH+k2xSgrEnZBQwWdde7oCJKJmyVT1Wv2J4duOGUBSs=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=lq7Q+WUa91yhu1nDA3lI3O/FGkh4GGJNpM57TZNsWKHXpUgR0VG/2lbg0vhX4cl2aFSFwVNtqbp16ul5d0Kob5LyqfnxAGh+wcTE5ypnTF/8oW1NWKwr4TtI05DIzs8bEg9Ir2an11SPQ1C4Vpo84L2hF4hXS42FulQ6OmFTgN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=KC+rmiWN; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=+8kQzenj; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1763635082;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kH+k2xSgrEnZBQwWdde7oCJKJmyVT1Wv2J4duOGUBSs=;
	b=KC+rmiWNCSB51ppZjyJCkn2Loo8taIibMLoISRnQPcYSozwmSB9wkoGD13vKgI7Qzrm1uW
	EqcMZXPTjCIT6iQVcgKRnxsywt2VAEagDR1d1lYDrP5IAOTZyZVdfSROMROHjut0/lLugH
	37+1ccyRGUmnCPvcxTth1jtEKtLDInGbR2ptp5nebhjsQGss9S3VfSxDBpA4YJ8ine5jAA
	VaRFBMd+GHrOUC1awv6SDe1JQAKYjd4mZZ+oKltCkGQ28SKL4UGsAduNQpv3gb06uw5Crj
	2i13JE6jdE64ho7/fykQkC75tcLtEYcMepWkHyTUgVAOItdKbUNSAwj5Wb3ROQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1763635082;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=kH+k2xSgrEnZBQwWdde7oCJKJmyVT1Wv2J4duOGUBSs=;
	b=+8kQzenj0cSKSsWChGyZTGcC0xQ6uTlbcU/IulWJSNg9W1witlBpfFECLGhflUaYi1xM8J
	/ZcxywYEp2NvGaDQ==
To: Hao-Wen Ting <haowen.ting@realtek.com>, daniel.lezcano@linaro.org
Cc: jinn.cheng@realtek.com, edwardwu@realtek.com, phelic@realtek.com,
 shawn.huang724@realtek.com, haowen.ting@realtek.com, cy.huang@realtek.com,
 james.tai@realtek.com, cylee12@realtek.com, phinex@realtek.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stanley_chang@realtek.com
Subject: Re: [PATCH v4 2/2] clocksource: Add Realtek system timer driver
In-Reply-To: <20251120063010.830805-3-haowen.ting@realtek.com>
References: <20251120063010.830805-1-haowen.ting@realtek.com>
 <20251120063010.830805-3-haowen.ting@realtek.com>
Date: Thu, 20 Nov 2025 11:38:01 +0100
Message-ID: <87a50hkn06.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Thu, Nov 20 2025 at 14:30, Hao-Wen Ting wrote:
> Add a system timer driver for Realtek SoCs.
>
> This driver registers the 1 MHz global hardware counter on Realtek
> platforms as a clock event device. Since this hardware counter starts
> counting automatically after SoC power-on, no clock initialization is
> required. Because the counter does not stop or get affected by CPU power
> down, and it supports oneshot mode, it is typically used as a tick
> broadcast timer.
>
> Signed-off-by: Hao-Wen Ting <haowen.ting@realtek.com>

Acked-by: Thomas Gleixner <tglx@linutronix.de>

