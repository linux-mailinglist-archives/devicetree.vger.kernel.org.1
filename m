Return-Path: <devicetree+bounces-278746-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAvKFo4lwGniEAQAu9opvQ
	(envelope-from <devicetree+bounces-278746-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 18:23:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A0A2EA2A2
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 18:23:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D1E2300D60E
	for <lists+devicetree@lfdr.de>; Sun, 22 Mar 2026 17:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA15136B07F;
	Sun, 22 Mar 2026 17:23:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0EE36AB75
	for <devicetree@vger.kernel.org>; Sun, 22 Mar 2026 17:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774200192; cv=none; b=MzuQnaWTqWYDsD7GnDBJQgD4JRiLFRHW46G+f9cOC01DzeA34ai+a8rFiblwJ32uBfHKXA743ATsuKTmF/axWDxk1aP75uaULg9FN4ftdcMZm+4oPHeC7Tp/9CGO2oUUamFpZx0ahDASW5MPJhTUZZ/qAIg877hBrMQ4GRnt91Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774200192; c=relaxed/simple;
	bh=eX0bMyQPn5KGVvIqo0BQQ1L5w7k5BdKAxmTmGe4uD70=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SnIYyYaXjGIdPy503pEbasEs0HXFXf27Wci58w5BWE2RnKLXLXhfNPlLZKQL1XU67ypMFSJ42dlwW6v0M+pR/kuo5jR607oTwn/sjbRk1uSks9wZJBQK9liongxjvEBO2BUDEzow4ObTj119rMBnjp33zIw7Kcn/Wv1jDJzACPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1w4MVj-0005Wx-5u; Sun, 22 Mar 2026 18:22:47 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1w4MVi-001awa-0G;
	Sun, 22 Mar 2026 18:22:46 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1w4MVh-0000000GaXd-45Vq;
	Sun, 22 Mar 2026 18:22:45 +0100
Date: Sun, 22 Mar 2026 18:22:45 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Shevchenko <andy@kernel.org>, devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, kernel@pengutronix.de,
	David Jander <david@protonic.nl>,
	David Lechner <dlechner@baylibre.com>
Subject: Re: [PATCH v6 00/12] iio: dac: ds4424: add DS4402/DS4404 support and
 scale
Message-ID: <acAlZe8Y5Qj5a_Vf@pengutronix.de>
References: <20260210135110.2027073-1-o.rempel@pengutronix.de>
 <aaAHbOVL-83tgIEc@pengutronix.de>
 <20260226100833.24fa15b5@jic23-huawei>
 <20260322124539.64485997@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260322124539.64485997@jic23-huawei>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-278746-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pengutronix.de:email,pengutronix.de:mid,pengutronix.de:url]
X-Rspamd-Queue-Id: D1A0A2EA2A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 22, 2026 at 12:45:39PM +0000, Jonathan Cameron wrote:
> On Thu, 26 Feb 2026 10:08:33 +0000
> Jonathan Cameron <jic23@kernel.org> wrote:
> 
> > On Thu, 26 Feb 2026 09:42:20 +0100
> > Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > 
> > > Hi Jonathan,
> > > 
> > > Should I resend this patch series?  
> > No need.   For future reference I use patchwork.kernel.org to track
> > status of series.   This one is sat there because I need to do a pull
> > request for the precursor fix (which I'll do shortly).  That then needs
> > to loop around into a suitable upstream tree before I can pick this
> > series up on top of it.
> > 
> I merge 7.0-rc4 into the testing branch of iio.git and applied this on top.
> If the build bots are happy I'll push that out as togreg in the next few days.
> A little bit of fuzz in a few patches but otherwise it went on pretty cleanly.
> 
> Please take a quick look to make sure I didn't mess anything up.

LGTM. Thank you!

Best Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

