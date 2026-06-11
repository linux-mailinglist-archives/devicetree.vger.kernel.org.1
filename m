Return-Path: <devicetree+bounces-310464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qGu1FBm0KmokvgMAu9opvQ
	(envelope-from <devicetree+bounces-310464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 15:11:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A23D6723F0
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 15:11:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EVZOAiVS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310464-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310464-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 438A73061F21
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2F1B404BDB;
	Thu, 11 Jun 2026 13:06:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C263F6C50;
	Thu, 11 Jun 2026 13:06:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781183211; cv=none; b=F/UDVXUCKd2C9qnvzvwVUZovitp6POEFr+85kX6mWHHsJiKLkKWAeThFUdA8ba7ybleCA3dXcYxErY76ZllHetEhF5gOMKT2WWSNUGjG0JUZ451rI8Nnxat2hPa34UMkQNMTlSe7nB0hLGDd4uTtYpsp3dHcep9DIJfpWdQzB6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781183211; c=relaxed/simple;
	bh=YUJ74k2CphSMguflLaqqExjhGaj2IbvxuDNlWv8NVdk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DUiLSvyY59oXlyqEhEALLW07t/5P1QdWg3IGXY3yMTJi6JBBUDmukOMaZXz/HsRUGDIoE5t0Ix++Uskf4EVmjDhKLoGkQ7pqC9sGQMOu+nWwvrmKYFwo89rqsxnyf/5PRZUo7vhilHZfIJ9u/PXBDvZhUqUa4yH4SqYhYHI0oUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVZOAiVS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD5651F00898;
	Thu, 11 Jun 2026 13:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781183210;
	bh=Nek/pAMakFxkN/bOR1BIUWPimUnqKVkhj7fkR2sfhxs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=EVZOAiVS75FBro/7Hnm1QTqHQlefZLGijsUTSlG4LwoWBQBsJJBAE0hUUTCUP2C1a
	 2TnL2brhzgxPJmGKfQmbvoi1b7FIcOT4yYF7FOVXO2FW3yJ6SAQXS8lmWgRcUgyQce
	 qH3GRPHdBaVWLpPmklYdQCkaZnSHBZBsR8BIQgUEXSsev4MEviDAPjZcXYYvIjCgUP
	 I4Y+XpcdcIgSWXfP/DMH1qUm85GCT6knRqNR2AzsyGMQufxjpQAwegmJh4NZdIAsrT
	 SMQRuiylxzjeQGofApRbu62BcncMJheKshmF+Auj5Bl6thozXhd3qKY63Q5rNnHl/4
	 /t/H1OKyquPcg==
Date: Thu, 11 Jun 2026 14:06:40 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Md Shofiqul Islam <shofiqtest@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 krzk@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: accel: Convert lis302 binding to YAML
 schema
Message-ID: <20260611140640.4b144bc2@jic23-huawei>
In-Reply-To: <20260610-cytoplast-pessimism-dea888887526@spud>
References: <20260610110051.1228-1-shofiqtest@gmail.com>
	<20260610165640.411c1477@jic23-huawei>
	<20260610-cytoplast-pessimism-dea888887526@spud>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310464-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:shofiqtest@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,baylibre.com,analog.com,kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A23D6723F0

On Wed, 10 Jun 2026 17:40:04 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Wed, Jun 10, 2026 at 04:56:40PM +0100, Jonathan Cameron wrote:
> > On Wed, 10 Jun 2026 14:00:51 +0300
> > Md Shofiqul Islam <shofiqtest@gmail.com> wrote:
> >   
> > > Convert the STMicroelectronics LIS302DL/LIS3LV02D accelerometer device
> > > tree binding from plain text format to YAML schema format.
> > > 
> > > The binding covers two variants matched via their respective bus drivers:
> > > - SPI: st,lis302dl-spi (drivers/misc/lis3lv02d/lis3lv02d_spi.c)
> > > - I2C: st,lis3lv02d   (drivers/misc/lis3lv02d/lis3lv02d_i2c.c)
> > > 
> > > Document all vendor-specific properties read by the driver via
> > > of_property_read_*(), including click detection, IRQ routing, free-fall/
> > > wake-up engines, high-pass filtering, axis remapping, output data rate,
> > > and self-test limits.
> > > 
> > > Also correct the click threshold property names: the driver reads
> > > "st,click-threshold-{x,y,z}" but the old .txt documented them as
> > > "st,click-thresh-{x,y,z}".
> > > 
> > > Validated with: make dt_binding_check   DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/accel/st,lis302dl.yaml
> > > 
> > > Signed-off-by: Md Shofiqul Islam <shofiqtest@gmail.com>  
> > 
> > Hi.
> > 
> > So the conundrum here is whether we want to keep carrying this binding
> > as it dates to a previous era.
> > 
> > The driver never made it to IIO and is still in drivers/misc.
> > The majority of what is the text document should never have been
> > in DT in the first place. I'll guess this dates all the way back
> > to the wild west days before we had regular binding review.  
> 
> I'd say this should be treated like a staging binding but for the fact
> that this has a user in arm. Problem of course is that it's probably
> impossible to get that board and so doing any rework is probably not
> realistic for this submitter?
> Is there a general policy for iio devices in misc? Do they get reworked
> to be moved?

It is tricky if we have upstream users because the ABI will change on them.

I'm not sure how easy this would be to add to the existing st sensors driver
as these are very early parts.  If we could maybe we'd do so and just deal
with the mess of having to disable one or other driver. 

My gut feeling here is ancient part, let it get dropped in a year or
two and not worry about adding support to a standard IIO driver unless
anyone actually has hardware and wants to do it.

> 
> The user funnily enough has the binding's click-thresh properties:
> 		st,click-single-x;
> 		st,click-single-y;
> 		st,click-single-z;
> 		st,click-thresh-x = <10>;
> 		st,click-thresh-y = <10>;
> 		st,click-thresh-z = <10>;
> 		st,irq1-click;
> 		st,irq2-click;
> 		st,wakeup-x-lo;
> 		st,wakeup-x-hi;
> 		st,wakeup-y-lo;
> 		st,wakeup-y-hi;
> 		st,wakeup-z-lo;
> 		st,wakeup-z-hi;
> Dunno what that ultimately means in terms of which should be used
> though.
Set those as defaults in the driver if all upstream users have those
values and then drop reading them from dt?



