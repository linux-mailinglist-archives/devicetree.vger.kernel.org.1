Return-Path: <devicetree+bounces-278711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLIJB4Lkv2nm+wMAu9opvQ
	(envelope-from <devicetree+bounces-278711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 13:45:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 848242E94B7
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 13:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B2F43006B2A
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 12:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 543D7175A85;
	Sun, 22 Mar 2026 12:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhT8tqTG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBB6A59;
	Sun, 22 Mar 2026 12:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774183549; cv=none; b=O8+Cxd7ddjWrivNKAF3E+deP6mw7yXMdbfgjWQXi9WTHeEMy/H7ja2i5NuPLKMYaWvvMqIiqSi4P7grAYAjmCl+ICtHxR/WXDi8Z9lruMHk5Bem11ySU7//NAbLkLaxrAKcA0MZWhJeUlhsWAd0EsZfNbajwZotPEBpYafMiZEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774183549; c=relaxed/simple;
	bh=SWZfr9CJf6zVcPbz4Tfea8Hwb+uDN64vm/V0+UAL0Gw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=daGzkNyXKLddEfrJ8PSxQ/5HQf+lEUbgbGBvcuwYPPkpIK8u6DIZ3p94iinbqHCOsTZRbk/E8YYKujWILZXCSL310A9oknz5pbJ0PIWtSoqKJlKHFIWvwDvhcXYoOPXoOx7EQ5oTUIJqPbQLWHkC6CXQ+jufulF0VCKUFWIG2SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhT8tqTG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46218C19424;
	Sun, 22 Mar 2026 12:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774183548;
	bh=SWZfr9CJf6zVcPbz4Tfea8Hwb+uDN64vm/V0+UAL0Gw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=uhT8tqTGAxspWVR9pE6wGbGL5nq/9/R7RPgwjz038ntkjz7E+15HKRT1DqiGhHFcV
	 bUvKPzP4xXPpQ2xTVjjp9AIDIN59sE6j1D89JFmFpqAMyPjMp4QW7gnZjWl581ehTD
	 ZGY/Ga9Jpbxed0e0Vs2p8VlRoVKC3FUToDaMEsQxR68LxgJv4Mnhv43NWnRtpynrt0
	 2zv4D3epl44iROAzoIlnsMiTy8gp7nzKi3Rd4qwIlvBTpFGqkLzFrzkcUHsT+fxoWz
	 S9WM9LTkmSUTzsCez4jENeDmpIBsVUDbVmhRBrKwdmvV5M3+Svda3SUhI/Sg1uUdq7
	 oSIZoLvkxuuVw==
Date: Sun, 22 Mar 2026 12:45:39 +0000
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
Message-ID: <20260322124539.64485997@jic23-huawei>
In-Reply-To: <20260226100833.24fa15b5@jic23-huawei>
References: <20260210135110.2027073-1-o.rempel@pengutronix.de>
	<aaAHbOVL-83tgIEc@pengutronix.de>
	<20260226100833.24fa15b5@jic23-huawei>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278711-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pengutronix.de:email]
X-Rspamd-Queue-Id: 848242E94B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Feb 2026 10:08:33 +0000
Jonathan Cameron <jic23@kernel.org> wrote:

> On Thu, 26 Feb 2026 09:42:20 +0100
> Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> 
> > Hi Jonathan,
> > 
> > Should I resend this patch series?  
> No need.   For future reference I use patchwork.kernel.org to track
> status of series.   This one is sat there because I need to do a pull
> request for the precursor fix (which I'll do shortly).  That then needs
> to loop around into a suitable upstream tree before I can pick this
> series up on top of it.
> 
I merge 7.0-rc4 into the testing branch of iio.git and applied this on top.
If the build bots are happy I'll push that out as togreg in the next few days.
A little bit of fuzz in a few patches but otherwise it went on pretty cleanly.

Please take a quick look to make sure I didn't mess anything up.

Thanks,

Jonathan

> 
> Thanks,
> 
> Jonathan
> > 
> > On Tue, Feb 10, 2026 at 02:50:58PM +0100, Oleksij Rempel wrote:  
> > > changes v6:
> > > - rebase on top of iio/fixes-togreg
> > > - drop "iio: dac: ds4424: reject -128 RAW value", already included
> > > 
> > > This series extends the ds4424 IIO DAC driver and its devicetree binding
> > > to support the DS4402 and DS4404 current DAC variants.
> > > 
> > > DS440x devices share the same register map as DS442x but use a different
> > > resolution (5-bit vs 7-bit) and a different full-scale current formula.
> > > The full-scale current depends on external Rfs resistors connected to
> > > the FS pins, so a new optional DT property is added to provide the
> > > per-channel Rfs values and allow the driver to report a correct IIO
> > > SCALE (mA/step).
> > > 
> > > While adding DS440x support, a few related issues were addressed:
> > > - Port to regmap
> > > - Reject -128 in RAW writes on DS442x, which cannot be represented with
> > >   sign-magnitude encoding and could silently program an unintended
> > >   output.
> > > - Preserve preconfigured values on probe.
> > > - Ratelimit read error logging and use device context.
> > > 
> > > David Jander (1):
> > >   iio: dac: ds4424: add DS4402/DS4404 device IDs
> > > 
> > > Oleksij Rempel (11):
> > >   iio: dac: ds4424: refactor raw access to use bitwise operations
> > >   iio: dac: ds4424: ratelimit read errors and use device context
> > >   iio: dac: ds4424: sort headers alphabetically
> > >   iio: dac: ds4424: rename iio_info struct to avoid ambiguity
> > >   iio: dac: ds4424: use device match data for chip info
> > >   iio: dac: ds4424: use fsleep() instead of usleep_range()
> > >   dt-bindings: iio: dac: maxim,ds4424: add ds4402/ds4404
> > >   iio: dac: ds4424: support per-variant output range limits
> > >   iio: dac: ds4424: convert to regmap
> > >   dt-bindings: iio: dac: maxim,ds4424: add maxim,rfs-ohms property
> > >   iio: dac: ds4424: add Rfs-based scale and per-variant limits
> > > 
> > >  .../bindings/iio/dac/maxim,ds4424.yaml        |  42 +-
> > >  drivers/iio/dac/Kconfig                       |   1 +
> > >  drivers/iio/dac/ds4424.c                      | 375 ++++++++++++------
> > >  3 files changed, 287 insertions(+), 131 deletions(-)
> > > 
> > > --
> > > 2.47.3
> > > 
> > > 
> > >     
> >   
> 
> 


