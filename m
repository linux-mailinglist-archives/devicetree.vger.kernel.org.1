Return-Path: <devicetree+bounces-317333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jL/lFHIVQ2pAPgoAu9opvQ
	(envelope-from <devicetree+bounces-317333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 03:01:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1016DF798
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 03:01:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LCGqOuVo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317333-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317333-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97EB9302BE19
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 01:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0258D1DF248;
	Tue, 30 Jun 2026 01:00:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E137417BA6;
	Tue, 30 Jun 2026 01:00:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782781258; cv=none; b=E9JvkfHIqYv4MAxM2o3lwwBCFpbELDxzeNqIjLp31BC4OkmxiHQn5C9qAXhapMRCl0HEmudviiqMsjSbDuXpWbbpCPl/NBB3u7317HCYh5zavMkjvwBCdAb/xu2xWcFYSqGRgf5YGgQ0a6BJAGDZixnUitlZ+3gQyK5JLZC/LAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782781258; c=relaxed/simple;
	bh=9BvMWXWQYjc8bkFb7RHVo83k04ikln81QjdolyEZsDc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NU34oMmmwPg8f1DdZx0YKwg0ahK5ioywi6JN2jejg8bPKSrgTOKX+JmiaXJxZCKLlhEbIY2DL6P4UX59KugCUtnjqUu6HkBI+4Yxep7EerTLG5gWtls8Z2RaAdTexIVchaSatD1G6FnAExLX2c3B/qGGEnQh9m7kp41wYYOo1QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCGqOuVo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 310E41F000E9;
	Tue, 30 Jun 2026 01:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782781257;
	bh=7cFCbOviyoJ9l7qiwXuNTTXkeVTrNBKsuwG7mxP9+RU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=LCGqOuVoDRKYlaUtFzfyn6MjPD4PtBNHJAWaTM6M7IF++qEe57RuC9me+61AmzTno
	 TXlbNzU72R/8ldEj3r7NFPWTo86zdOMZcOgne9mzlWMr6O367p0ayU/M8tXxgbOPuU
	 f01RfV2n6Ffqg0zC1bFwkte4SSoAhtDbQc65mEBg+TdQ2/wA6jJrEb281hejohISiv
	 0NvzjRoZZq6FQpMjY9I6NqqGJGyb/LZl/B12cWsTBtyFvUXeUPzYq015gg/m5NAIN9
	 QRL+NduiKOPMNYrCsDm1qgBvXkQaR93TPUXV79XFSzzT50YorKxEo0fGKpL08snhvR
	 t6YJz8KetLHLA==
Date: Tue, 30 Jun 2026 02:00:52 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Kurt Borja <kuurtb@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] iio: adc: Add ti-ads1263-adc2 driver
Message-ID: <20260630020052.4ab593f4@jic23-huawei>
In-Reply-To: <8da7db13-5c6a-42cf-8546-f0e580c3b278@baylibre.com>
References: <20260628-ads126x-v2-0-4b1b231325ba@gmail.com>
	<20260628-ads126x-v2-7-4b1b231325ba@gmail.com>
	<caf89e08-6ce1-4dbb-adc1-7fbb2a60fd7b@baylibre.com>
	<DJKYDBR2CR3V.JU80TA4QDQLT@gmail.com>
	<8da7db13-5c6a-42cf-8546-f0e580c3b278@baylibre.com>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317333-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:kuurtb@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,analog.com,vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,baylibre.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F1016DF798

On Mon, 29 Jun 2026 11:38:26 -0500
David Lechner <dlechner@baylibre.com> wrote:

> On 6/28/26 3:08 PM, Kurt Borja wrote:
> > On Sun Jun 28, 2026 at 12:22 PM -05, David Lechner wrote:  
> >> On 6/28/26 12:36 AM, Kurt Borja wrote:  
> >>> The TI ADS1263 embeds a second 24-bit delta-sigma ADC (ADC2) with its
> >>> own input mux, reference, gain and sample-rate selection.
> >>>
> >>> Model ADC2 as a separate IIO device on the auxiliary bus: the ti-ads1262
> >>> SPI driver instantiates the auxiliary device and exports a small set of
> >>> TI_ADS1262-namespaced helpers for the conversion and register accesses
> >>> that must go through the shared bus. ADC2 channels are derived from the
> >>> parent's configured channels.
> >>>  
> >> Can these just be additional channels in the main iio device rather
> >> than a separate iio device?  
> > 
> > I guess we can do it, but wouldn't it be quite a mess? I think doing it
> > that way adds a lot of complexity: channel naming, available scan masks
> > (because both ADCs can be sampled at the same time), optimized software
> > sequencing would only work in ADC1 channels, ADC2 doesn't have a DRDY
> > IRQ, etc.  
> 
> Channel naming is easy, e.g. just add 100 to channel and channel2 for
> ADC1 and 200 for ADC2.
> 
> And if ADC2 is mostly for diagnostics, do we really care about trying
> to optimize it?
> 
> > 
> > IMO separating both drivers makes everything simpler, easier to
> > understand and easier to maintain in the future.
> >   
> 
> Sure, I don't have any strong objection to doing this way. We just
> usually try to avoid multiple IIO devices for a single chip. Although
> one of the exceptions to this is when a chip has independent cores.
> I guess this fits that description, although it is a little muddled due
> to sharing the same input pins, sensor bias, IDACs and probably a few
> other things - i.e. doing buffered reads on both cores at the same time
> requires a static IDAC output to avoid issues.

There are (I think) still some gaps in the multibuffer support.
Ideally we'd have long ago solved those, but without that (I think we
can't support different triggers for example) I'm not sure we could do
this as a single device if we support buffered capture.

The question that comes to mind is do the usecases for this 'debug'
ADC need that support?  If it were just sysfs then a single device
would be easy to do.  On the other side, splitting it is up later
isn't something we can easily retrofit.  There is precedence for
multiple devices like this for sensor hubs (also driven by the lack
of complete multibuffer support).  That doesn't hit all the isseus
here though as I can't immediately think of a case where properties
set for one iio_dev effect another (I didn't check though!)

To me the multidevice support is fine - particularly if it's optional
- so the sub driver can be skipped if someone doesn't care about
this extra ADC.

Thanks,

Jonathan


