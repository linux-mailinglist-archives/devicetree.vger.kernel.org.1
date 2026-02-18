Return-Path: <devicetree+bounces-266508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cK+xAdAKlmmaZAIAu9opvQ
	(envelope-from <devicetree+bounces-266508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:54:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7506D158D3E
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 19:54:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 03EA6300B3D0
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECB8C3446CF;
	Wed, 18 Feb 2026 18:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6w9KTNb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74773016F5;
	Wed, 18 Feb 2026 18:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771440842; cv=none; b=N7/sYfDaifH2bk4DHWVkPPuSLYHrpr903YWEMbX8y5sSEl1NDONKoZCSVPFZAPfIxl6gdzeKs1up24Hgj4RpdG6XMVFVoOZpJqlfUFEGyD1avW3DPBB2z10nvgmagqANJaBdfXTQ+mblwlf3PchRvBMDfJZu8/GYYmXxV9/jsQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771440842; c=relaxed/simple;
	bh=xNvNOm9l67Vz/Gje40W/kpdQB7SebXZ4Fg6SUTfPbIw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qSzKwmEdSjgdIQ0q3xjWfWgLwewpHu5d//0IoL8GCVNOF3Y2X5QVZs9Ae7aHFJyHgN25cmCg/yFq5FHJP7HFkJqucBNKCgSvNFHD3PCp0wd5aPRPUVWGqU7Bn16R9sG7tpG6k0N7HTN6+dmcS3d7XBYfjnOFR3Mzww4QBNHem4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6w9KTNb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C27FEC116D0;
	Wed, 18 Feb 2026 18:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771440842;
	bh=xNvNOm9l67Vz/Gje40W/kpdQB7SebXZ4Fg6SUTfPbIw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=S6w9KTNbxPyf42yuJADmJ/NRT5ago7D1KXh4+c2/izRPM8+sgXQdgbAe+JJVYagVY
	 bl1+jro7bHZ5YqZfPfCbIIvsYZWrJRwI3M3XhG+E3D1XHc3eHDBC2yyj/Nb39FlxR2
	 jWouVFxNu9FEEVDSjbDVNaOk4mSv6RsdlG9Li70deKusLzIR3WyPqCFwQwM6o4RkBB
	 8sS7BRf6SGn7P2QB1UJUGHIZ3mLJyc10hxD4K9m4SRApsiX0z5RBHs0yBkDxpYC051
	 0ZKB7iL3jFcxxUINSAMPxWN5yW3BHtPaqSM7Llhpylhzh+PxJeXZFuTWoZuqnB82Re
	 LlpsTCVu0CfQA==
Date: Wed, 18 Feb 2026 18:53:51 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Jonathan Cameron <jonathan.cameron@huawei.com>
Cc: Mark Brown <broonie@kernel.org>, David Lechner <dlechner@baylibre.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Marcelo Schmitt
 <marcelo.schmitt@analog.com>, Michael Hennerich
 <michael.hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Sean Anderson <sean.anderson@linux.dev>,
 <linux-spi@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-iio@vger.kernel.org>
Subject: Re: [PATCH v6 0/9] spi: add multi-lane support
Message-ID: <20260218185351.40a744d9@jic23-huawei>
In-Reply-To: <20260204135315.0000580b@huawei.com>
References: <20260123-spi-add-multi-bus-support-v6-0-12af183c06eb@baylibre.com>
	<ed1331d4-2e34-4b30-a0d7-f0e1d6093af8@sirena.org.uk>
	<20260204135315.0000580b@huawei.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266508-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[huawei.com:email]
X-Rspamd-Queue-Id: 7506D158D3E
X-Rspamd-Action: no action

On Wed, 4 Feb 2026 13:53:15 +0000
Jonathan Cameron <jonathan.cameron@huawei.com> wrote:

> On Mon, 2 Feb 2026 23:22:59 +0000
> Mark Brown <broonie@kernel.org> wrote:
> 
> > On Fri, Jan 23, 2026 at 02:37:23PM -0600, David Lechner wrote:  
> > > This series is adding support for SPI controllers and peripherals that
> > > have multiple SPI data lanes (data lanes being independent sets of
> > > SDI/SDO lines, each with their own serializer/deserializer).    
> > 
> > The following changes since commit 8f0b4cce4481fb22653697cced8d0d04027cb1e8:
> > 
> >   Linux 6.19-rc1 (2025-12-14 16:05:07 +1200)
> > 
> > are available in the Git repository at:
> > 
> >   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git tags/spi-multi-lane  
> 
> Thanks. Given timing, I plan to hold the last two patches until next cycle.
> I'll pick them up nice and early though so they'll be in next shortly after
> rc1.
> 
I've rebased so now have the bits that went through SPI.  I'll rebase again
on rc1, but for now applied patches 8 and 9 to the testing branch of iio.git

Thanks,

Jonathan

> Thanks,
> 
> Jonathan
> 
> > 
> > for you to fetch changes up to 0ec5ed7c95d1ba6a74491928ff38abb351dbed36:
> > 
> >   spi: axi-spi-engine: support SPI_MULTI_LANE_MODE_STRIPE (2026-02-02 12:12:47 +0000)
> > 
> > ----------------------------------------------------------------
> > spi: Add multi-lane support
> > 
> > This series is adding support for SPI controllers and peripherals that
> > have multiple SPI data lanes (data lanes being independent sets of
> > SDI/SDO lines, each with their own serializer/deserializer).
> > 
> > ----------------------------------------------------------------
> > CL Wang (1):
> >       spi: dt-bindings: Add support for ATCSPI200 SPI controller
> > 
> > David Lechner (7):
> >       spi: dt-bindings: change spi-{rx,tx}-bus-width to arrays
> >       spi: dt-bindings: add spi-{tx,rx}-lane-map properties
> >       spi: support controllers with multiple data lanes
> >       spi: add multi_lane_mode field to struct spi_transfer
> >       spi: Documentation: add page on multi-lane support
> >       spi: dt-bindings: adi,axi-spi-engine: add multi-lane support
> >       spi: axi-spi-engine: support SPI_MULTI_LANE_MODE_STRIPE
> > 
> >  .../bindings/display/panel/sitronix,st7789v.yaml   |   5 +-
> >  .../devicetree/bindings/iio/adc/adi,ad4030.yaml    |  42 +++-
> >  .../devicetree/bindings/iio/adc/adi,ad4695.yaml    |   5 +-
> >  .../bindings/spi/adi,axi-spi-engine.yaml           |  15 ++
> >  .../bindings/spi/allwinner,sun4i-a10-spi.yaml      |   6 +-
> >  .../bindings/spi/allwinner,sun6i-a31-spi.yaml      |   6 +-
> >  .../bindings/spi/andestech,ae350-spi.yaml          |  87 +++++++++
> >  .../bindings/spi/nvidia,tegra210-quad.yaml         |   6 +-
> >  .../bindings/spi/spi-peripheral-props.yaml         |  40 +++-
> >  Documentation/spi/index.rst                        |   1 +
> >  Documentation/spi/multiple-data-lanes.rst          | 217 +++++++++++++++++++++
> >  drivers/spi/spi-axi-spi-engine.c                   | 145 +++++++++++++-
> >  drivers/spi/spi.c                                  | 144 +++++++++++++-
> >  include/linux/spi/spi.h                            |  30 +++
> >  14 files changed, 724 insertions(+), 25 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/spi/andestech,ae350-spi.yaml
> >  create mode 100644 Documentation/spi/multiple-data-lanes.rst
> >   
> 
> 


