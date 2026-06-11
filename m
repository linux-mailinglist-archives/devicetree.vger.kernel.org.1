Return-Path: <devicetree+bounces-310359-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dQkEBpGUKmqfswMAu9opvQ
	(envelope-from <devicetree+bounces-310359-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:57:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 503C1671180
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:57:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eL4RBtpD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310359-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310359-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5637337100A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BC193D8131;
	Thu, 11 Jun 2026 10:52:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D25F25C6EE;
	Thu, 11 Jun 2026 10:52:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781175151; cv=none; b=GO0POa6agXtE52BeXW8dpa6IvHggeLHXZUqmZYXgcov+3u5NuZJOkVJ8uXzAvZM2cnoqPTycs2FA69On6OOgkcGml+FpncN0xVt5atWcvlXNF/OF36y87XIMSgwDe6cOB3t1Roo0MNKUhaubio1UBkvjIXHN3WOlVdScUIsNSo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781175151; c=relaxed/simple;
	bh=Y2UxIhcnIXS6hiR8WYbCaCta2v+gagQ8NnQkMFwotgs=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KYDUHeotmC96ayA7kCRJnBllHOUG9LrD5CnsGp2cQORFCYNcSdFWz2jmj4U4d2M3jKAIxWIY2IOvcpKzgMtCpQ+59pUt5kcEJnKBUSilZOGdDWuZ5K4X5hJTHGwcucedpAukJDwadypAn49ktcruVA91Gs5ufjXWNPuBrnXK5RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL4RBtpD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF7F91F00893;
	Thu, 11 Jun 2026 10:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781175150;
	bh=jryDJyoQuOPseqrNNz87t6jVz7MBbbeS4jrOFkWcCPo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=eL4RBtpDo6T1lxpec7dkBsOXEp3HcE3lCIB7JqsvI+BepK0wZvN8JG0lvLZW0t/x3
	 QA9WrQMnQ4dUlyXNooG9H6zaz+uBTQcj6PnlVlIcHh6tHUU7NF4P6tV5tzudDAlng/
	 M584BTkGHJEz/PCo8+B5YmnaQA3jlM8YDlmGukTNM4G7YcFUWTDoRyml0tWKXO5EKV
	 PzIFFLCDa1Mj4pUOjmtZ2BKyikZKMYvmZS3HgwzcqiMruqObJE1Hl2JC0/Qnd32TSt
	 YcDH29LbwYWeDr3/IThMF8FlWfZ9mY8NeUnpr6GP/v8Hpek1YPDAsYCLQAPcMxdRpu
	 Jxz0LrITCtGCQ==
Date: Thu, 11 Jun 2026 11:52:19 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V11 4/9] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <20260611115219.318fe543@jic23-huawei>
In-Reply-To: <aipolU1W3QNXdd5b@ashevche-desk.local>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
	<20260610175455.19006-5-macroalpha82@gmail.com>
	<aipolU1W3QNXdd5b@ashevche-desk.local>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310359-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:macroalpha82@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:jean-baptiste.maneyrol@tdk.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:macromorgan@hotmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,hotmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,jic23-huawei:mid,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 503C1671180

On Thu, 11 Jun 2026 10:49:41 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Wed, Jun 10, 2026 at 12:54:48PM -0500, Chris Morgan wrote:
> 
> > Add I2C and SPI driver support for InvenSense ICM-42607 devices.
> > Add necessary Kconfig and Makefile to allow building of (incomplete)
> > driver.  
> 
> ...
> 
> >  drivers/iio/imu/Kconfig                       |   1 +
> >  drivers/iio/imu/Makefile                      |   1 +
> >  drivers/iio/imu/inv_icm42607/Kconfig          |  30 +++++
> >  drivers/iio/imu/inv_icm42607/Makefile         |  10 ++  
> 
> These should be part of the previous patch.
> 
> ...
> 
> > +config INV_ICM42607
> > +	tristate  
> 
> To make it compilable w.o. SPI/I2C make this as
> 
> 	tristate "Inven... Core driver" if COMPILE_TEST
Hi Andy,

Is it worth it?  I'm not convinced - we will get pretty 
good build coverage with a dependence on either SPI or I2C.
Plus as someone who always builds with COMPILE_TEST this
seems overly noisy to me.

Jonathan

