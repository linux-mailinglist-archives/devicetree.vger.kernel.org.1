Return-Path: <devicetree+bounces-268734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMXFNzIcoGmzfgQAu9opvQ
	(envelope-from <devicetree+bounces-268734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:10:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 532571A40FB
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:10:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FB61308AF4A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ED7539C623;
	Thu, 26 Feb 2026 10:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cik5D4Bt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDDA3A6407;
	Thu, 26 Feb 2026 10:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772100520; cv=none; b=Hl6knTRcX9L+J8cJPq/7C0Ui9mo7tOPYPluARU490vGp8mvpzobVVX/YDYKTmngWmF06Givrm7da23d30Kk0SoRiOkgPdzKCsHtUew9pXga4CN+A7bgtAzZ6UyCVNN8jjtibMm58jQ36y4LXWejCveupP6y1rNjCtgfHHV+S8HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772100520; c=relaxed/simple;
	bh=Yy7VyfcZWv4eqMPZxYpvKoXAOCnFJWkLGVXvxELOIj8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Fm2kAtIoruUujx81DntPoDfuBw2MAS+hrWiQ5duIUPbkZ0xUqsYrX4V77V8K9ZjFhZi5wdg1dzdwmdqJtFvoO4Xjo8skwd6zbbya2PQp+3uPGrjWldtV7V+tG9/kDncDTMTXQxAr0PBU+18a0+rJq6wKeovzKFMP0I2rHB+mVHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cik5D4Bt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A0FCC19422;
	Thu, 26 Feb 2026 10:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772100520;
	bh=Yy7VyfcZWv4eqMPZxYpvKoXAOCnFJWkLGVXvxELOIj8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Cik5D4Bt4H+ynPYfXIH0cOrssL3wsSrD64JZx1VCkaJkqzJOF+GrfdnS1QfzX0Mod
	 1Tb79vQbrHxuOngYmaDOo08OO0Z3kiLiRf7srRuYqC13s6HRZcMSvantS5o7iBJiEs
	 HT2qahF/tCQ5GoGv1cTVJd7ez1APmfivlC5yQ1/tpA7ln2QFi+LlMfq/COZK9qZGky
	 6XjV4dUuh9hdQNNGHHuwjf/9DaHz24PoIVNMoEVZkvCUB0TlztNHJzQkl32rt0LZTf
	 Z291ImjT1cUK7fo5hvZHSeShczL311XIFB5YU628q+0VuqKd8YcX0VX1fzoyb0OQ3o
	 sSOcL98ifsnxA==
Date: Thu, 26 Feb 2026 10:08:33 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 kernel@pengutronix.de, David Jander <david@protonic.nl>, David Lechner
 <dlechner@baylibre.com>
Subject: Re: [PATCH v6 00/12] iio: dac: ds4424: add DS4402/DS4404 support
 and scale
Message-ID: <20260226100833.24fa15b5@jic23-huawei>
In-Reply-To: <aaAHbOVL-83tgIEc@pengutronix.de>
References: <20260210135110.2027073-1-o.rempel@pengutronix.de>
	<aaAHbOVL-83tgIEc@pengutronix.de>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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
	TAGGED_FROM(0.00)[bounces-268734-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 532571A40FB
X-Rspamd-Action: no action

On Thu, 26 Feb 2026 09:42:20 +0100
Oleksij Rempel <o.rempel@pengutronix.de> wrote:

> Hi Jonathan,
> 
> Should I resend this patch series?
No need.   For future reference I use patchwork.kernel.org to track
status of series.   This one is sat there because I need to do a pull
request for the precursor fix (which I'll do shortly).  That then needs
to loop around into a suitable upstream tree before I can pick this
series up on top of it.


Thanks,

Jonathan
> 
> On Tue, Feb 10, 2026 at 02:50:58PM +0100, Oleksij Rempel wrote:
> > changes v6:
> > - rebase on top of iio/fixes-togreg
> > - drop "iio: dac: ds4424: reject -128 RAW value", already included
> > 
> > This series extends the ds4424 IIO DAC driver and its devicetree binding
> > to support the DS4402 and DS4404 current DAC variants.
> > 
> > DS440x devices share the same register map as DS442x but use a different
> > resolution (5-bit vs 7-bit) and a different full-scale current formula.
> > The full-scale current depends on external Rfs resistors connected to
> > the FS pins, so a new optional DT property is added to provide the
> > per-channel Rfs values and allow the driver to report a correct IIO
> > SCALE (mA/step).
> > 
> > While adding DS440x support, a few related issues were addressed:
> > - Port to regmap
> > - Reject -128 in RAW writes on DS442x, which cannot be represented with
> >   sign-magnitude encoding and could silently program an unintended
> >   output.
> > - Preserve preconfigured values on probe.
> > - Ratelimit read error logging and use device context.
> > 
> > David Jander (1):
> >   iio: dac: ds4424: add DS4402/DS4404 device IDs
> > 
> > Oleksij Rempel (11):
> >   iio: dac: ds4424: refactor raw access to use bitwise operations
> >   iio: dac: ds4424: ratelimit read errors and use device context
> >   iio: dac: ds4424: sort headers alphabetically
> >   iio: dac: ds4424: rename iio_info struct to avoid ambiguity
> >   iio: dac: ds4424: use device match data for chip info
> >   iio: dac: ds4424: use fsleep() instead of usleep_range()
> >   dt-bindings: iio: dac: maxim,ds4424: add ds4402/ds4404
> >   iio: dac: ds4424: support per-variant output range limits
> >   iio: dac: ds4424: convert to regmap
> >   dt-bindings: iio: dac: maxim,ds4424: add maxim,rfs-ohms property
> >   iio: dac: ds4424: add Rfs-based scale and per-variant limits
> > 
> >  .../bindings/iio/dac/maxim,ds4424.yaml        |  42 +-
> >  drivers/iio/dac/Kconfig                       |   1 +
> >  drivers/iio/dac/ds4424.c                      | 375 ++++++++++++------
> >  3 files changed, 287 insertions(+), 131 deletions(-)
> > 
> > --
> > 2.47.3
> > 
> > 
> >   
> 


