Return-Path: <devicetree+bounces-261575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eHF1D91Jf2mDnAIAu9opvQ
	(envelope-from <devicetree+bounces-261575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 13:41:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E1BC5E82
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 13:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 063553004CB7
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 12:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A32EB32F75B;
	Sun,  1 Feb 2026 12:40:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2874033CEA7
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 12:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769949657; cv=none; b=TMS5r0x1I40cV+ZPtYc7bF1FOMUMc180zbXSm5Vmtu72AhALSAmLcnAPVdscKhu32ocaCRdGyaX7HaN2hEhuqmsN0WbiFtrs26cX9P6MGGeuR20eXXE2/g+IUUZMvToRIb+ArYE+DEWy1UBjRQAlhDX3g6Ng2d/RWXeGdx5g32E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769949657; c=relaxed/simple;
	bh=vJqFt+FVGUvjaOSRBjCX6+NMl1s9GZI+rj1BQx5YYYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lKiPzkdQd08GYKPL5AV3Jng+ahcRaSZrNMlZOTSQ8n5dyjUM5N9aSxpx/DVxNtGrnugsgPIxtC3L8R6w3Tr9OwH9l0+jd/e+rOabF8g6dwBUN5W0jy4Kw4rEjAwypCyLlU7hFq2ZuFPjyuhQbGcWwxorYoyYyFxRtBEiY625o3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1vmWkt-0004qd-Kn; Sun, 01 Feb 2026 13:40:43 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vmWkt-003ZSU-11;
	Sun, 01 Feb 2026 13:40:42 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1vmWks-00AJy7-1b;
	Sun, 01 Feb 2026 13:40:42 +0100
Date: Sun, 1 Feb 2026 13:40:42 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, stable@vger.kernel.org,
	kernel@pengutronix.de, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH v3 1/8] iio: dac: ds4424: fix -128 rejection and refactor
 raw access
Message-ID: <aX9Jysah66FlHfLZ@pengutronix.de>
References: <20260128153824.3679187-1-o.rempel@pengutronix.de>
 <20260128153824.3679187-2-o.rempel@pengutronix.de>
 <20260129175819.789a99ac@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260129175819.789a99ac@jic23-huawei>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-261575-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,pengutronix.de:email,pengutronix.de:url,pengutronix.de:mid]
X-Rspamd-Queue-Id: 64E1BC5E82
X-Rspamd-Action: no action

Hi Jonathan,

On Thu, Jan 29, 2026 at 05:58:19PM +0000, Jonathan Cameron wrote:
> On Wed, 28 Jan 2026 16:38:17 +0100
> Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> 
> > The DS442x DAC uses sign-magnitude encoding, so -128 cannot be represented.
> > Previously, passing -128 resulted in a truncated value that programmed 0mA.
> > 
> > Fix this by validating the input against the 7-bit magnitude limit.
> > Additionally, refactor the raw access logic to use symmetrical bitwise
> > operations, replacing the union structure.
> > 
> > Fixes: d632a2bd8ffc ("iio: dac: ds4422/ds4424 dac driver")
> > Cc: <stable@vger.kernel.org>
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Hi Olkesij
> 
> This is good stuff but, this fails the test of being the minimal fix
> suited for a trivial backport.
> 
> The right solution here is split it.  Just apply the correct
> limit in the fix patch, then the refactors in a patch on top of
> that which most likely won't be backported for stable.

The v1 of this patch was implemented according to the fix patch
requirements:
https://lore.kernel.org/all/20260119182424.1660601-5-o.rempel@pengutronix.de/

May be keep v1 as is and rebase v3 as refactoring stage on top of it?

Best Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

