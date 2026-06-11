Return-Path: <devicetree+bounces-310518-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XXTKKLzgKmqzygMAu9opvQ
	(envelope-from <devicetree+bounces-310518-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 18:22:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2696736FE
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 18:22:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Drk2SBYV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310518-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-310518-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 42271302160A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 16:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC5F3425CCE;
	Thu, 11 Jun 2026 16:18:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4792409E0A;
	Thu, 11 Jun 2026 16:18:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781194712; cv=none; b=TuODXR80HiSFfFcS681GdA5K/aZb8C4b8Dy/TdGO3BJJ3FdUO4L6VkBCfOQCBazK2UH1aqwlrBWxQfNgp0aZhDJQSxT/gpM1Gs3lw2W8jBFnGt1UhdxbxVSMR40CmoTlafRR7ZjMR67nVekF9HRmwH8NGgw9DrilqNucvvEAEPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781194712; c=relaxed/simple;
	bh=fRzN8kkamd+k6dJQ/kRrk2yDExhgXYIsqBsRAAtJvus=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tL2bSAdnQt60Wa2NVAFNddPvSvQ+qHIZEH4wEnYfwPE4B0J+IwXFiBEFTW1sx9dfbG1MEVEo1BLINcUA+xmgBbiIm4vrgLSDezlrOk2SWCuYtMvG8kql3G/Z1DGR5kCmQgprNjTVMqw9xUpuwCmsR8a41QSR6A2eHVgeRfpul4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Drk2SBYV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FACD1F00893;
	Thu, 11 Jun 2026 16:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781194711;
	bh=qQppVLeWH0TOuEFEy5iQoyvPB6/Yhmt/u7HRd/Sg38Y=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Drk2SBYVjVsfl1R5r2BwLZ7ZzeCkwakkMXe25YZE9Hk00mYyvR7CiQkdpJ+DGJ2bq
	 n3LYxOcC30rWmpT9t2LRClEbc97fCxgaUE0o3uKErfgzGDzfWWgCBAcIT+VMR1lkkc
	 XVpByt2Wkx+17tMMHLoaZ3IwwwyJxfGQ1hoFdwi5RqMEUv+1m50GHATKf5LeHg0Ysn
	 IdliOCVB4P97CCzttGJuS5v25KCUWpufiZvnAW2P3pc8Xjfuz8FLKcSCKFFiz5iFlY
	 x2vB8hwwlerMErmQW1CF/2JG41/3HDUMhKQvctga9ZFZamgMs8twp7RNBZDSwfQrvo
	 F5Mi3K9/Td9ZA==
Date: Thu, 11 Jun 2026 17:18:24 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH V11 0/9] Add Invensense ICM42607
Message-ID: <20260611171824.0f932f3f@jic23-huawei>
In-Reply-To: <PH0PR19MB99733845CDEFA1D8441200B60FA51B2@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
	<20260611115938.27712b66@jic23-huawei>
	<PH0PR19MB99733845CDEFA1D8441200B60FA51B2@PH0PR19MB997338.namprd19.prod.outlook.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:macromorgan@hotmail.com,m:macroalpha82@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:jean-baptiste.maneyrol@tdk.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:andriy.shevchenko@intel.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[hotmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-310518-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D2696736FE

On Thu, 11 Jun 2026 09:36:08 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Thu, Jun 11, 2026 at 11:59:38AM +0100, Jonathan Cameron wrote:
> > On Wed, 10 Jun 2026 12:54:44 -0500
> > Chris Morgan <macroalpha82@gmail.com> wrote:
> >   
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add support for the ICM42607 IMU. This sensor shares the same
> > > functionality but a different register layout with the existing
> > > ICM42600.
> > > 
> > > This driver should work with the ICM42607 and ICM42607P over both I2C
> > > and SPI, however only the ICM42607P over I2C could be tested.  
> > Hi Chris,
> > 
> > Just a quick reminder to check if there is useful feedback at:
> > https://sashiko.dev/#/patchset/20260610175455.19006-1-macroalpha82%40gmail.com
> > 
> > I didn't look into most of the but the last one about no avail mask bits
> > being set for gyro channels was easy to verify as correct and suggests
> > a testing gap.
> > 
> > Jonathan
> >   
> 
> Thanks, I've been checking sashiko on every patch and trying to address
> what it says to the best of my ability. Honestly I wish there was a way
> to simply push to that bot first and *then* push to the mailing list
> once I've resolved all of its comments.

Agreed - that would be helpful.  I believe it is possible to run locally
against a bunch of LLMs - I recall seeing something saying there
is a git repo with scripts. No idea if that is possible with a free level though.

Jonathan

> 
> Thank you,
> Chris


