Return-Path: <devicetree+bounces-275814-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEXJAnv3tmk2LAEAu9opvQ
	(envelope-from <devicetree+bounces-275814-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 19:16:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 609B0291E05
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 19:16:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 294ED301652A
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 18:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45EFD34D4D2;
	Sun, 15 Mar 2026 18:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMFlO8dJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2114A81AA8;
	Sun, 15 Mar 2026 18:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773598582; cv=none; b=ENSPKHbxyIZsIR9HELyYwQVK6C7O1iCAp0/TGMwzsJDsYRxc6fy+foPp08puV8ecVe5QT5Eoxp0x5SFmHE16NF/5nzrBlO8nV/6007r1EALS4uzfYEMT2gXBhHIRkvRtpumBGrlnn67Nj6o/wQpQjSTa4s3+EHyfAXRZ2gxjTZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773598582; c=relaxed/simple;
	bh=71RIg7xRGVJjhjqpJ7ft9mWQQXDFw3/vQjLHuEITUXk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ueap1dz9OZWooEy3TCIdj6xpiV9IviD1UCTCyQqrI6TiRxdfCWh7I7TQVjMne8DasmJiHTc9xgugxUSf+mmOiH5fXxAbKmEZXoQzZie1RKlwj6SjU3Iz+IT+bvdYFdeWvCTlbowx/OKjPILsdNyJia8z1O2xvNX0yN2gMcHI8/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMFlO8dJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12100C4CEF7;
	Sun, 15 Mar 2026 18:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773598581;
	bh=71RIg7xRGVJjhjqpJ7ft9mWQQXDFw3/vQjLHuEITUXk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=KMFlO8dJ8RW5T4iTDVQEGaoVqTj4Va4XWEDeKJ4GlAB4fIsO1eBBNa+TleBKMp5dr
	 +o4FUOQsb2Fk0Xaox4JRd9gzZv604IuMaNtt5LaIxJaB51/n0niMNGbxGDdo5when1
	 RPOr2a/3Lk/K1r5n+rAijadatOXc7DwN61L71WkZ2LDdjFgImkeseIDg/KS6gS5gIo
	 /Qteara/p5aD+DfWUiM//ZAvdj9616hl5BTwt0DBefvj0IItwgDXfjzspjl3OosjEu
	 1zAnO2oWm2tEh99YNg8N9K6dSHAUtWijYwlaAH+wiYGNGFG2sNVjJIgTNiNthIE8mu
	 RFhWG20dGNMtA==
Date: Sun, 15 Mar 2026 18:16:10 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Erikas Bitovtas <xerikasxx@gmail.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter
 Meerwald <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, Raymond
 Hackley <raymondhackley@protonmail.com>
Subject: Re: [PATCH 2/2] iio: light: vcnl4000: add regulator support
Message-ID: <20260315181610.4a99e985@jic23-huawei>
In-Reply-To: <abFejMb3uLbg4fiu@ashevche-desk.local>
References: <20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com>
	<20260311-vcnl4000-regulators-v1-2-66b6038ce563@gmail.com>
	<abFejMb3uLbg4fiu@ashevche-desk.local>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275814-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,baylibre.com,analog.com,kernel.org,pmeerw.net,vger.kernel.org,lists.sr.ht,protonmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email]
X-Rspamd-Queue-Id: 609B0291E05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 11 Mar 2026 14:22:36 +0200
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Wed, Mar 11, 2026 at 01:38:03PM +0200, Erikas Bitovtas wrote:
> > Add supply, I2C and cathode voltage regulators to the sensor and enable
> > them. This keeps the sensor powered on even after its only supply shared
> > by another device shuts down.  
> 
> > Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> > Reported-by: Raymond Hackley <raymondhackley@protonmail.com>  
> 
> Where was it reported? Do you need Closes tag?
> 
> ...
> 
> > +#include "linux/array_size.h"
> > +#include "linux/regulator/consumer.h"  
> 
> Double quotes, huh?!
> 
> >  #include <linux/bitfield.h>
> >  #include <linux/module.h>
> >  #include <linux/i2c.h>  
> 
> Also, please keep the list ordered.
> 
> ...
> 
> >  	mutex_init(&data->vcnl4000_lock);
> > +	ret = devm_regulator_bulk_get_enable(&client->dev,
> > +				      ARRAY_SIZE(regulator_names),
> > +				      regulator_names);
> > +	if (ret < 0)
> > +		return ret;  
> 
> You can't add devm_ after non-devm calls.

This one happens to be fine because there is no cleanup of the
mutex_init(), so it is sort of not mixing devm and non devm.
That is kind of a historical thing where I for one wasn't convinced
it was worth the annoyance of mutex_destroy() until the devm
easy way of doing it came along.

Now, as the code is being touched anyway, I would
like that moved to
ret = devm_mutex_init();
if (ret)
	return ret;
as a precursor patch both as it makes it obvious we are still devm and
to get the advantage when lock debugging is turned on.

Thanks

Jonathan

> Also it would help you to have
> 
> 	struct device *dev = &client->dev;
> 
> at the top of the function.
> 
> ...
> 
> With the above being said, I expect a series out of two patches at least.
> 


