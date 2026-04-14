Return-Path: <devicetree+bounces-287405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHRKHoGI3mlXFgAAu9opvQ
	(envelope-from <devicetree+bounces-287405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 20:33:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC903FDB5D
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 20:33:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BAC5303DD0D
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 18:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C90C303CB0;
	Tue, 14 Apr 2026 18:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzdLSAF7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AD01E511;
	Tue, 14 Apr 2026 18:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776191364; cv=none; b=PbymFub+aXJCjadmUJTsFfKWpH51HoYaXFs/UCILnQb51TPLCqzSga0e3j8knCM7/fw7d0nikvAh2s2zkbdg3SRFU4ZpmZK79qCr3r9jbw2tJYDvk5T/VbmYyQOpwpivlm8heynHbhlaQaPNrnsuvPqaGm8AivqYbNJCP4Ziqnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776191364; c=relaxed/simple;
	bh=bZhOSn23zxWxgujY4eCddNVUXmuhP+1hxbBgE3l3NJE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Z9+V6hPGZ8LWdjAsItFXYVwKzLA8MVfUGny5Iv5sJZRXGt4rbFYyyy8pcSzEABbX8ox+6nwP0bxsTmwYqEVpjLH4SMjbLm2loj5AFWoOGTo8MSl+F/1B1zYn4QXwvpHhgDMd0Cy2FKY7c43KgAW5dwrHQB9Hug34U4nzhbIwer0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzdLSAF7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00AD6C19425;
	Tue, 14 Apr 2026 18:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776191364;
	bh=bZhOSn23zxWxgujY4eCddNVUXmuhP+1hxbBgE3l3NJE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=RzdLSAF7SCjY1x3Ksr02OMk2D9F+QBPgy0OglB9AUj5Ow9wfpjacx2uJoEjD0jetk
	 6e6Zn6hj3HALkv8OGTy0B857v4C38fgEQ3o5DPp4uLakPld8UokMiVHd7l0y2kiV0B
	 /q3McSRY1rV8Rifen3pPi+QfzO9EMX0dB6TQ25Pl/Bx3FQ3cADcNksK/RpBFCYIfnX
	 lpaMN1UPQ6KY/9NlIuHkMNWHbA53SsBXl8pYXY+7mIcw232IUeatRRhb/507jqLFnr
	 h51yCifXOVLvAewTmqdfHhRkvMpD/wMxZhkv6LvlcXz+ecd8kIqXULyyY1Jd/juw0e
	 jI7D82POV3pYw==
Date: Tue, 14 Apr 2026 19:29:14 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 2/9] iio: imu: inv_icm42607: Add Core for
 inv_icm42607 Driver
Message-ID: <20260414192914.3661409b@jic23-huawei>
In-Reply-To: <ad3paMbRXtq6BrCu@ashevche-desk.local>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
	<20260330195853.392877-3-macroalpha82@gmail.com>
	<20260413200547.75bfd672@jic23-huawei>
	<ad3paMbRXtq6BrCu@ashevche-desk.local>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287405-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,hotmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BBC903FDB5D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 14 Apr 2026 10:14:48 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Mon, Apr 13, 2026 at 08:06:54PM +0100, Jonathan Cameron wrote:
> > On Mon, 30 Mar 2026 14:58:46 -0500
> > Chris Morgan <macroalpha82@gmail.com> wrote:  
> 
> ...
> 
> > > +	if (!conf->temp_en)
> > > +		val |= INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL;  
> > 
> > Could make this 
> > 	val |= FIELD_PREP(INV_ICM42607_PWR_MGMT0_ACCEL_LP_CLK_SEL,
> > 			  !conf->temp_en);
> > Not particularly important though if you prefer the if.  
> 
> Isn't this becomes FIELD_MODIFY()?
> 
Yes, in this particular case as the bit has never been set before
this line, they end up the same. If the compiler fails to notice it
doesn't need to zero the bit if conf->temp_en is true might make it more
efficient to do it the way I had it but given this isn't a fast
path, FIELD_MODIFY() is fine.

Jonathan

