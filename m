Return-Path: <devicetree+bounces-272441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2K1JMDgxrGn2mgEAu9opvQ
	(envelope-from <devicetree+bounces-272441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:07:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4045322C07D
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 15:07:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B24C302A06F
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 14:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E4D92DAFA5;
	Sat,  7 Mar 2026 14:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exz2CSUk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC8B2D9EEA;
	Sat,  7 Mar 2026 14:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772892466; cv=none; b=EEMAF9GmqGeFl6mFerFt9aXo04tmB2LgKHnSGJ7q+lMjnHZSFkkV25HT+b4QhHoC3SvfWon9wyZvL6Wvqw8tsDXCbBmxPAS+mGLDWvmJHwLMIOYg8mZryhrnTm6JE+jpYaIjQ4VEq19iHcPq8ctotutdNcbiS5EnJiNIMjTApR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772892466; c=relaxed/simple;
	bh=R8lfWdNa1cQSEgsnwh/vRLWREzz9Qwym1BKEmTaDDY8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=edIOsft2uZzHroYOQ/SkvcUM/LxMERS2FromRAgCoa/u27H9AAGtlPcYgS9I1Lii2tKj8OBq+wtn7h9HBhSYFn0YtptTqZ6PkG+2aVxOomrphG0qSVMSIQSXsEBYq0Ov1ZjT2CFZ/RsfCMnMO3k+R1nyArcX4akpXxwk7Alrt08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exz2CSUk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D25F9C19422;
	Sat,  7 Mar 2026 14:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772892465;
	bh=R8lfWdNa1cQSEgsnwh/vRLWREzz9Qwym1BKEmTaDDY8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=exz2CSUkzjOW1UaGl2wwxxeqJ2OLmt/DikbjWFPaoF5TKX1oV6FyhVySSvfdnK0QZ
	 PpW1Yf/naZaFlcSRsS1eV/pLtKXr7dvuqc/7H0oxW2/HB6WOM2iBaiokvn5mVRhTAJ
	 w0IRtWOhL/B2s7/d39TFaBgZQChoCc6p+8a0hDyuoHuA9p48WDUdIJ+PUEaMofTF77
	 0psonkjsgva8SqAEDAi3/Ce8CQ2E2Ef12QLWUr5Hb8NNcsmt577C1F5i513LpQKfZv
	 n7e5Dp/BBipbDg0i3CW4QduvT/TBsNISW3D0lhmBkJZTFWRlNfxUOvLPSBfCiKK75S
	 kciET7KoI/0iQ==
Date: Sat, 7 Mar 2026 14:07:35 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Philipp
 Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 6/8] iio: frequency: ad9910: add RAM mode support
Message-ID: <20260307140735.5ec2e608@jic23-huawei>
In-Reply-To: <20260301133153.7f2f8501@jic23-huawei>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
	<20260220-ad9910-iio-driver-v1-6-3b264aa48a10@analog.com>
	<20260301133153.7f2f8501@jic23-huawei>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4045322C07D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272441-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.970];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Sun, 1 Mar 2026 13:31:53 +0000
Jonathan Cameron <jic23@kernel.org> wrote:

> On Fri, 20 Feb 2026 16:46:10 +0000
> Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> 
> > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > 
> > Add RAM channel with support for profile-based control. This includes:
> > - RAM data loading via binary sysfs attribute (ram_data);  
> 
> I'm not sure that's a long term viable path.  We either need
> to figure out how to do it as firmware file load, or via an output buffer.
> 
> Firmware load would probably be too static and I'm not sure quite
> how we map these to IIO output buffers.

We would have to carry it for ever which is very much not ideal.
The firmware approach has the same issue, but can be thought of
as defaults at boot time forever.  If no defaults then we use whatever
we come up with as the long term solution.

> 
> > - Per-profile RAM configuration (start/end address, step rate, operating
> >   mode, dwell control);
> > - RAM destination control (frequency, phase, amplitude, polar);
> > - RAM operating modes (direct switch, ramp up, bidirectional ramp,
> >   continuous bidirectional, continuous recirculate);
> > - Profile switching for RAM playback;
> > - Sampling frequency control via profile step rate;
> > - ram_en-aware read/write paths that redirect single tone
> >   frequency/phase/amplitude access through reg_profile cache when RAM is
> >   active;
> > 
> > When RAM is enabled, the DDS core parameters (frequency, phase, amplitude)
> > for the single tone channel are sourced from a shadow register cache
> > (reg_profile[]) since the profile registers are repurposed for RAM control.
> > 
> > Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > ---  
> 
> 
> 


