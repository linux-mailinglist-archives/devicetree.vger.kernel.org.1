Return-Path: <devicetree+bounces-261688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNfbGdBfgGlj7AIAu9opvQ
	(envelope-from <devicetree+bounces-261688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:26:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7ADEC9AE0
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0051E30063AE
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 08:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0447C355808;
	Mon,  2 Feb 2026 08:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="BFdEKFnL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A21A354AE2;
	Mon,  2 Feb 2026 08:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770020761; cv=none; b=mo62YPqqVtFWaz717mkI4yn3J3VP7WHRBTYpyJA4iGPDmsy0+OMr6iNTCaR2JkE+N3xktpP3GSNjoUxSO6s5XhCC/hVZqPNUulIMhcBSkyLkrNWG293D8aLq1SUzyex0ndmK7L8bwxm60eaY/NBGkkowbI95wyvxBz9qM1Sjb20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770020761; c=relaxed/simple;
	bh=phCEsAISm1EXcNibuPfrZAjaH8jQm5Bi33x10pdIXaE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ktC5vaIjLnM8QJkLOUDDGVkc5/DVMKrWw0W5mcBlAdyo+vr1dEGBxDlZwPLqAzhMdH2yVehxRsOEbSXATf3FUgejk88FQNMMNG4YxQQdvIPD9PaoU3yhfyB5WYA/0Px3a6wxFYXoy7jlhm5f7xaEGovlrwZlB/AOjaWtGzvUjHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=BFdEKFnL; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=U/gycSIOgTGnUjvcUt1gVzgzrqctuqnK7adcurWVRKo=; b=BFdEKFnLsQ7B9xXiQ64Kv6nXPx
	EYyNmEZY3tuigNX8cPmLRVVRBkhuY8yzUm0i81JbNWq7KjNcyUCCqvX1PGdw0uaWFr8bejJmIAdRk
	jsrhU1ydfOLrSqak/N+rvFhuAUbpRCYaOIaLSIPa0v+PQOpBsyEznHqdf0px+8mqe/VlG+oyC2rRw
	E2RM4OpET+F4I1dNAQxlwPzjjgdG1ojaAFFXxe/+aD7H3H4JJ3fowEZ+lGWO5n95MlEic8HEydcGg
	a6DetxO4kV3ha9mTdUx+f6xHAhPJwsf6pnNUECcT3/brpwAW/ASL6v6aCT5J3e3Oivls/NLnPEsZH
	J56SmypQ==;
Date: Mon, 2 Feb 2026 09:04:08 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Mithil Bavishi <bavishimithil@gmail.com>
Cc: aaro.koskinen@iki.fi, airlied@gmail.com, conor+dt@kernel.org,
 jernej.skrabec@gmail.com, jonas@kwiboo.se, khilman@baylibre.com,
 krzk+dt@kernel.org, laurent.pinchart@ideasonboard.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
 jesszhan0024@gmail.com, rfoss@kernel.org, robh@kernel.org,
 rogerq@kernel.org, simona@ffwll.ch, thierry.reding@gmail.com,
 tony@atomide.com, tzimmermann@suse.de, andrzej.hajda@intel.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH v5 5/8] ARM: dts: ti: omap: espresso-common: Add common
 device tree for Samsung Galaxy Tab 2 series
Message-ID: <20260202090408.4c3757cb@kemnade.info>
In-Reply-To: <20260129054709.3878-6-bavishimithil@gmail.com>
References: <20260129054709.3878-1-bavishimithil@gmail.com>
	<20260129054709.3878-6-bavishimithil@gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261688-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kemnade.info:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[iki.fi,gmail.com,kernel.org,kwiboo.se,baylibre.com,ideasonboard.com,linux.intel.com,linaro.org,bp.renesas.com,ffwll.ch,atomide.com,suse.de,intel.com,vger.kernel.org,lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,kemnade.info:mid,kemnade.info:dkim]
X-Rspamd-Queue-Id: C7ADEC9AE0
X-Rspamd-Action: no action

On Thu, 29 Jan 2026 00:47:06 -0500
Mithil Bavishi <bavishimithil@gmail.com> wrote:

> Create common device tree for Samsung Espresso series devices
> 
> Let's create a common tree for all the variants first, later we can
> device specific trees based on their screen sizes
> 
> Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
> ---
[...]
> +			OMAP4_IOPAD(0x0c0, WAKEUP_EN | PIN_INPUT | MUX_MODE3)

We had the discussion. This should be done via pinctrl irq if possible instead of
specifying WAKEUP_EN here, You had some trouble to understand how it can be done,
and we agreed to add the wakeup functionality as a follow-up concentrating just
on that detail and for now just remove WAKEUP_EN.
[...]
> +		mount-matrix =	"-1", "0", "0",
> +				"0", "1", "0",
> +				"0", "0", "1";
> +		};
> +
still this strange matrix. This is no rotation matrix. Determinant is -1.
Something is strange here, so also the idea in our earlier discussion was to
also postpone it and maybe separately discuss it with iio.

Regards,
Andreas

