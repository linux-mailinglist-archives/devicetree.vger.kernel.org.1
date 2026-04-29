Return-Path: <devicetree+bounces-291483-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONjmMMfd8Wn3kwEAu9opvQ
	(envelope-from <devicetree+bounces-291483-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 12:30:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 375E0492F40
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 12:30:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD62B3056153
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 10:28:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ECBC390C9F;
	Wed, 29 Apr 2026 10:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFfG+xO7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF223D3D13;
	Wed, 29 Apr 2026 10:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777458491; cv=none; b=ptsSekl65cVZEf3fo6IGn5AUfRA3EVtUW60mREIJbtYyxJxC7t5L1uqggTXBAjQ9CM2s7Alhx3PFPglISWqwHFs/6zvt6W0kXVkoyeZBzpTcksqF9nsxjwQI1oDIzBpvss4UE65ixkTglq91btkL2+vh1HytueJ6SUbKMjftFrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777458491; c=relaxed/simple;
	bh=fA/6zhudExSUKY97NXtJOo4zw81B/9NwD0j59Ug491Q=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DS4VrWsdCgUUfv15p9j8H0hja2moQ8ezq9hznNHRaqf64QCcfuJCYmc806b53DcrBcofr9NmEc6sydkIvluM/CRPNWY/DPRQcsNfTVwsK4z7p2HzIPJ3txaLccZY6EXyTYxJ6RUxE8xCmT8QifDCSBXRDZlq/NSVv3C54W3O19g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFfG+xO7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC127C2BCC7;
	Wed, 29 Apr 2026 10:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777458489;
	bh=fA/6zhudExSUKY97NXtJOo4zw81B/9NwD0j59Ug491Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=kFfG+xO76eJmQa8+Na19ueSFE4owRzoj8UJA2tieH1lGW79GmWyurzmvMd5IiiRqq
	 tuh6J1pdGZTj+Gq8WskieRy/JhzM7icMu2rSKY5xZTh/1PPGQXlLgZn/kkscJa0si5
	 M1/fBqydR4KUYEs2bmA8KwnhNaVrtJxwWRgZRSTzdVysW1iO7G29xRAtVVjZR0Gw9a
	 oxUcTGDuTbK92yzCmZMWsfMuwro81H99fdVH4AmzjvZnv9MVdfmIFsJtcq7G9HJUcD
	 51iRRb3C0OnoGuarCqaMfo9If+hWi2QDDK/eSaMrFtXS52fIapmIJNX+CfCGABsXab
	 ocBOnyNn8LWmw==
Date: Wed, 29 Apr 2026 11:27:59 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Joshua Crofts <joshua.crofts1@gmail.com>, Piyush Patle
 <piyushpatle228@gmail.com>, ak@it-klinger.de, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/7] iio: adc: hx711: update Kconfig, module
 description and file header
Message-ID: <20260429112759.0e14c0e8@jic23-huawei>
In-Reply-To: <afHWH8Wq4XNxzQdy@ashevche-desk.local>
References: <20260427100950.33936-1-piyushpatle228@gmail.com>
	<20260427100950.33936-4-piyushpatle228@gmail.com>
	<CALoEA-wAUpZ7_2_3kB33mNB_Y_DAc_p7QwPR9a5pxL1iET_cdw@mail.gmail.com>
	<ae9otn7HuPKVtzsk@ashevche-desk.local>
	<CALoEA-w=giUoevbAh+i66ATKfXCr9WUE0R6G6DOMq2xE8cibEA@mail.gmail.com>
	<20260428185404.26f3da04@jic23-huawei>
	<afHWH8Wq4XNxzQdy@ashevche-desk.local>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 375E0492F40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-291483-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,it-klinger.de,baylibre.com,analog.com,kernel.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email]

On Wed, 29 Apr 2026 12:57:51 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Tue, Apr 28, 2026 at 06:54:04PM +0100, Jonathan Cameron wrote:
> > On Mon, 27 Apr 2026 15:49:06 +0200
> > Joshua Crofts <joshua.crofts1@gmail.com> wrote:  
> > > On Mon, 27 Apr 2026 at 15:46, Andy Shevchenko
> > > <andriy.shevchenko@intel.com> wrote:  
> > > > On Mon, Apr 27, 2026 at 12:26:53PM +0200, Joshua Crofts wrote:    
> > > > > On Mon, 27 Apr 2026 at 12:23, Piyush Patle <piyushpatle228@gmail.com> wrote:    
> 
> ...
> 
> > > > > > +         which are used for bridge sensors such as weigh cells.    
> > > > >
> > > > > Typo here.    
> > > >
> > > > It's better if you point exactly what the typo is.
> > > > I think you meant "weigh" that should be "weight"?    
> > > 
> > > Yep, that's it, my mistake.  
> > 
> > Nope. They are called weigh cells not weight cells.  
> 
> MODULE_DESCRIPTION() is not aligned. Somewhere a mistake is lurking :-)
True enough but that happens to get cleaned up in a rewording in this
patch as it no longer mentions weight or weigh cells.


> 


