Return-Path: <devicetree+bounces-272611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wK2HCpi6rWk+6gEAu9opvQ
	(envelope-from <devicetree+bounces-272611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 19:06:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0C12318C8
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 19:06:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 468F0300FB61
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 18:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E01738A70D;
	Sun,  8 Mar 2026 18:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ginrbJDG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2506D31D362;
	Sun,  8 Mar 2026 18:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772993173; cv=none; b=lONVbZX1hwCZWSWAI7VJVE1D5rvqBVcXvqOQrQyX3XblSTXYef+xKyK9LhwoK7g4hMTgmJuIH4qEt/8LRJuoP8v/rGfjVhjfOJayYUOZdR1rH3dTqhAxVt3zKT7li7zcIq7MyEFPULKKymZv2ac4scMVPGld3HFl4iupZmnI++Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772993173; c=relaxed/simple;
	bh=RQ5e1VfjQ99SXUx36n5QsZtQsdk8ZiVXgksKcX/xRC8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qYkY6lyrrzggtiVZqnqijeu6rNbDx5jyOdQ9vSiDiU9alckuNeEQ/em/0B2OS6HVm4TQ0GOOuNfyaKMHkuzxTTd53SuCwob/2EuOkgUR4sHmfdkPAFbGv+7wvYQCfoGcHugyB64mf1Z/XoHUZ4VyV0HoDS7ztAV1wYJ6TWay8K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ginrbJDG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13D5DC116C6;
	Sun,  8 Mar 2026 18:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772993172;
	bh=RQ5e1VfjQ99SXUx36n5QsZtQsdk8ZiVXgksKcX/xRC8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ginrbJDGxoXRw27jViP+V+kAen6M6ZgpwgxIymljf5rmlazJzto1XfUs0Fl2jG0dO
	 6/TYTz/IBDIPxVxrfMHupQh4I+3n4eVBRHAcughoPnIpBLhM97B7mYBcvfwmfSKVn7
	 cOFtX8Rmo3qL/U7ofNcyNjD4UOGVgbjPujRCCxzA49o54ng+5T+rXWOUZ251Dd604A
	 jxL5AuCxxLzBVquD/Ofa9tfregmJGy5KBcd6Im3IFbpZv6dny1/W1DEPfFpVJXuZua
	 8FlBa0AmyFHqs+oK+3+Wmxugd4TCqbwMdsvwsSEhAwFoCFRnKHRzl4tBVAiUtfWQgK
	 6YQN6bu9/iWmQ==
Date: Sun, 8 Mar 2026 18:06:03 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Sirat <email@sirat.me>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] iio: proximity: add driver for ST VL53L1X ToF
 sensor
Message-ID: <20260308180603.61eb03ab@jic23-huawei>
In-Reply-To: <CANn+LWL57iruSLnmg8rY5qrgnzLww+Z9hUc=ZveA31dKh9k6Fw@mail.gmail.com>
References: <20260303090253.42076-1-email@sirat.me>
	<20260303090253.42076-3-email@sirat.me>
	<20260307135917.398891db@jic23-huawei>
	<CANn+LWL57iruSLnmg8rY5qrgnzLww+Z9hUc=ZveA31dKh9k6Fw@mail.gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 9D0C12318C8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272611-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.969];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action


> > > + */
> > > +
> > > +#include <linux/bits.h>
> > > +#include <linux/delay.h>
> > > +#include <linux/gpio/consumer.h>
> > > +#include <linux/i2c.h>
> > > +#include <linux/irq.h>
> > > +#include <linux/interrupt.h>
> > > +#include <linux/module.h>
> > > +#include <linux/regmap.h>
> > > +#include <linux/regulator/consumer.h>  
> >
> > Check that you have includes for all things used directly in this
> > driver. For example dev_err()
> >
> > We use a slightly relaxed version of include what you use for IIO
> > (and the kernel in general). So sometimes there are headers that
> > are well documented as including others, but when that's not true
> > we don't make assumptions and so include everything relevant even
> > if it happens to be included via another path today.
> >  
> I've added linux/device.h, linux/bitfield.h, linux/completion.h, and
> linux/mod_devicetable.h. Hopefully this covers everything. For dev_err(),
> I was conflicted between linux/dev_printk.h and linux/device.h, but
> ended up using the latter.
Preference there is for the lesser header, so would be linux/dev_printk.h
There are two big headers like this that we are trying to reduce includes
of, kernel.h and device.h
For device.h more or less only need it in drivers if you are actually
directly dereferencing something in struct device.

Thanks,

Jonathan

