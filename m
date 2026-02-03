Return-Path: <devicetree+bounces-262176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BRjMe/NgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:29:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70828D7A70
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:29:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 377293027B27
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:28:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA88C318EF8;
	Tue,  3 Feb 2026 10:28:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F16299AB4
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770114529; cv=none; b=jxu2Ru51cPMMY96RBs07z4Y6l6hlWaLt79ef2z6H7S3t1u+I81MSxuW/PEK2iuk1tCZMy01/HyOtrl6IfQzNnkpAKUfKWywD/H/UM7FNzHibu9i7mNod9+PM+gremaTV3H7PyOkVKgEw5Yk9JMZD8z8bgbSdoCj21WC5RPqLtJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770114529; c=relaxed/simple;
	bh=/SUfDw43r3dt6Wpf0yKB09fpD6dxuIv6K0uCA4c4bYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UyvlFXb9iAzL3ep+uLHPzIoPWUKRIiqCm8/uYQwCUjyoK/1IA8z0/ED22C+zuBEMVeaJbjGK0BPcCTbv7445NfxjvcJGifgXOo4iLofHaP+iNHb5vDF2hzuhHlNHoZSwLEI8Pzd3PT9hyeXcXSrhbdyi4dEfVy7qSMTGvbzg5u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vnDeI-0003ge-Dn; Tue, 03 Feb 2026 11:28:46 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vnDeH-003tCp-3C;
	Tue, 03 Feb 2026 11:28:45 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vnDeH-00E2NX-0c;
	Tue, 03 Feb 2026 11:28:45 +0100
Date: Tue, 3 Feb 2026 11:28:45 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>,
	kernel@pengutronix.de, David Jander <david@protonic.nl>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v4 01/13] iio: dac: ds4424: reject -128 RAW value
Message-ID: <aYHN3YfKCgEnAfD5@pengutronix.de>
References: <20260203093434.2548978-1-o.rempel@pengutronix.de>
 <20260203093434.2548978-2-o.rempel@pengutronix.de>
 <aYHF29ZR9mdi6Pqx@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aYHF29ZR9mdi6Pqx@smile.fi.intel.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-262176-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pengutronix.de:url,pengutronix.de:mid]
X-Rspamd-Queue-Id: 70828D7A70
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 11:54:35AM +0200, Andy Shevchenko wrote:
> On Tue, Feb 03, 2026 at 10:34:21AM +0100, Oleksij Rempel wrote:
> > The DS442x DAC uses sign-magnitude encoding, so -128 cannot be represented
> > in hardware (7-bit magnitude).
> > 
> > Previously, passing -128 resulted in a truncated value that programmed
> > 0mA (magnitude 0) instead of the expected maximum negative current,
> > effectively failing silently.
> > 
> > Reject -128 to avoid producing the wrong current.
> 
> ...
> 
> >  	case IIO_CHAN_INFO_RAW:
> > -		if (val < S8_MIN || val > S8_MAX)
> > +		if (val <= S8_MIN || val > S8_MAX)
> >  			return -EINVAL;
> 
> I still consider using -127, 127 is better than type _MIN/_MAX.
> This is all due to '='.

The use of S8_MIN here is intentional to satisfy the requirement for a minimal
stable backport, as requested by Jonathan:
https://lore.kernel.org/all/20260201144226.218a43cb@jic23-huawei/

This patch: Strict "Fix only" for stable. Uses minimal logic changes (<=
S8_MIN) to avoid introducing new bugs during backporting.

N++ patch: Full refactoring.

Can we accept this temporary state to facilitate the stable process?

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

