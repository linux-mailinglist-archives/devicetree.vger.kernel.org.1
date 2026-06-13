Return-Path: <devicetree+bounces-311384-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ikQ8E9qoLWp2iQQAu9opvQ
	(envelope-from <devicetree+bounces-311384-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 21:00:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D394267F62D
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 21:00:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gPV8HZgU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311384-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311384-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5372D30041E3
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 19:00:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A12131987D;
	Sat, 13 Jun 2026 19:00:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1645F19992C;
	Sat, 13 Jun 2026 19:00:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781377240; cv=none; b=UD3NOIVHfwZaXHcIWCFuLpmbV/OD2S0D8i277KsqG7yGkrz5jCs71boReX6VFsSTbiTv9RzScaRs/arzLAKoGeS5q6QZZYakbRaQBce57+3Q0Ovlo2O9l3WcGhFyts2nbbeahw06lNdNz5enmDwwn/aQJqTwv07g/oRckocB5Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781377240; c=relaxed/simple;
	bh=BfJD/iatd+RDz5fm7RAYlP1tDaTXqM70/d22nPe9ACY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T0u7DSFLgrbpJuDzjgtK1GoNGvPKHT44QiHLI7JqLfRigIfBrNOS3Bu3lUIZGlVAX+QB0YLRMSpogftgTDg5yI1PevmqXz/fVSNuKIK07zZkpDoHFPtmlQl3NxwOQwgCj48Wlt3/0Aml90/cxkCA15qLO1e/jtP9ZVRikqWQkmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPV8HZgU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D3BB1F000E9;
	Sat, 13 Jun 2026 19:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781377238;
	bh=BfJD/iatd+RDz5fm7RAYlP1tDaTXqM70/d22nPe9ACY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gPV8HZgUCGctykEv64ukS5+Sb8ZjgFwC9Xu/NFOQfRchUYdt9vbbGpBTkjebxTQbQ
	 Vm43dlp31vf7axX/phsIWpwmLgET1h1xPYfhJlFP9wnyIVNggTvyTutS2oi7KoL433
	 LjW14NsZOkWXaHgfQUSMAj2kJGbMbbvdiZzc1oM5op4mGELm8qExFC0qelp+JUlaC8
	 5xyXLEIMmVh6ekgCyVUDFiZOou7Vs8vs07cFj0MGTCjDXAjJOEJQSd3VSdu5MkzTeh
	 MsnAVA6uiaXc1H3KdB2zQFsb2b61i/PhAxoDFnQBbDPecIgAfTeBuCknzeodZiVyH0
	 rhiU5zQUCLb4g==
Date: Sat, 13 Jun 2026 21:00:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Kurt Borja <kuurtb@gmail.com>, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/5] iio: adc: Add ti-ads1262 driver
Message-ID: <20260613-graceful-berserk-rook-cc5ecb@quoll>
References: <20260612-ads126x-v1-2-894c788d03ed@gmail.com>
 <20260612230132.E04DB1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260612230132.E04DB1F000E9@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:kuurtb@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311384-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,quoll:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D394267F62D

On Fri, Jun 12, 2026 at 11:01:32PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 15 potential issue(s) to consider:
> - [High] Architecture Compatibility / Undefined Behavior due to direct bitfield mapping.
> - [High] Out-of-Bounds Memory Access / Hardware Misconfiguration during active channel iteration.
> - [High] Infinite Loop / Denial of Service in IDAC microamp parsing.
> - [High] Logic Error: Inverted bounds check rejects valid pin numbers.
> - [High] Race Condition / Lost Wakeup due to reinitializing completion after hardware trigger.
> - [High] Missing Error Handling / Type Mismatch: Unsigned check of negative error code.
> - [High] DMA Memory Corruption: Unaligned DMA buffer in union.
> - [High] Uninitialized Memory Read (KMSAN) on stack variable.
> - [High] Illegal DMA from Stack in regmap bus implementation.
> - [High] Logic Error: GPIO get_multiple returns pin states incorrectly.
> - [High] Hardware State / Timing violation during device reset.
> - [High] Logic Error / Performance: Unconditional stall without IRQ.
> - [Medium] Memory Leak of fwnode_handle reference on the error path.
> - [Medium] Resource Leak of runtime PM usage counter on the error path.
> - [Medium] API Contract Violation: Buffer mode lock released with direct mode API.

Amount of findings is horrifying. You should probably involve some
internal review before posting next version.

Best regards,
Krzysztof


