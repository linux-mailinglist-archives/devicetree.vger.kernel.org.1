Return-Path: <devicetree+bounces-286822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHiCNdy822kQGAkAu9opvQ
	(envelope-from <devicetree+bounces-286822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 17:40:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 528FF3E48BA
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 17:40:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0B049300B3D7
	for <lists+devicetree@lfdr.de>; Sun, 12 Apr 2026 15:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BC651F3D56;
	Sun, 12 Apr 2026 15:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evt8M91K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD41B533D6;
	Sun, 12 Apr 2026 15:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776008409; cv=none; b=QJq8tPvKdn7bON1+cCt59iq/KC14UE3ITrENWUXqplaJ33a02HfoOrjUFhgz3WTJafD6YTZTVcEaNzcfazvHIugg1fffQz7N+gjmoue9//GMhmTQtjz1yNEuf50ngNRrYjROjEnMlaiiEydVbY3Yt7VQAbU093SEV2r5px3Ma1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776008409; c=relaxed/simple;
	bh=f5wUG/HQAbFW3ThR/GOQ3VzDR+VHeOtl6AZu1VxieI0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mD8xPT/Rap5zTv5F3Gmwm9On+I8corRkzPpVKuANmpNmHTQ1+x2XgYD8JAsmxwq+KLrvZmJ1jVSHRXLcY5bpyj9ygVVen0ghO7B+spbHRQ8kA5CXuyHiHeGvKZx7q8ytJFH7EqDLibKPV+xV98QIynT4PPcXtl3eod+kPWVAp8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evt8M91K; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20D20C2BCB0;
	Sun, 12 Apr 2026 15:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776008409;
	bh=f5wUG/HQAbFW3ThR/GOQ3VzDR+VHeOtl6AZu1VxieI0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=evt8M91KgrcSMplv3z4eB6e01ETH8k8RmhpCpF52FNLU+nx++Jke3c5/r2otviciA
	 0ADiv399li6K1poiemcA1lUCQcAXpabe1QHqeJQWU0/9NfBcAEy/JYjg3OyuuzMhCo
	 5+p1D3kdz1tfUMScH+jdaY6MI9ZAVVJIfEf5trB9YboaZjtVIpPJiavYEgAiOrCdrC
	 X525pmvx/023osFCw5xDVcj5GiCBDUmUDpOndBTt1IFmbgO8whttcX7o7FfvP/2+FP
	 QUyr14mZ6E6hrm+2jxy2OHfc2bQtqkxEoi+sLhO83JXogFZ3+Qp5AKQVCI3j9w+9vG
	 NN3lgwE9hVXNQ==
Date: Sun, 12 Apr 2026 16:40:02 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jonathan.cameron@huawei.com>, Siratul Islam
 <email@sirat.me>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/2] iio: proximity: add driver for ST VL53L1X ToF
 sensor
Message-ID: <20260412164002.55191c16@jic23-huawei>
In-Reply-To: <acT48bou7k15NTQD@ashevche-desk.local>
References: <20260325063254.18062-1-email@sirat.me>
	<20260325063254.18062-3-email@sirat.me>
	<20260325144719.00005a92@huawei.com>
	<acT48bou7k15NTQD@ashevche-desk.local>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286822-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 528FF3E48BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 26 Mar 2026 11:14:25 +0200
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Wed, Mar 25, 2026 at 02:47:19PM +0000, Jonathan Cameron wrote:
> > On Wed, 25 Mar 2026 12:32:23 +0600
> > Siratul Islam <email@sirat.me> wrote:  
> 
> ...
> 
> > > +		trig = devm_iio_trigger_alloc(dev, "%s-dev%d", indio_dev->name,
> > > +					      iio_device_id(indio_dev));
> > > +		if (!trig)
> > > +			return -ENOMEM;
> > > +
> > > +		trig->ops = &vl53l1x_trigger_ops;
> > > +		iio_trigger_set_drvdata(trig, indio_dev);
> > > +		ret = devm_iio_trigger_register(dev, trig);
> > > +		if (ret)
> > > +			return ret;
> > > +
> > > +		indio_dev->trig = iio_trigger_get(trig);  
> > 
> > So Sashiko had a comment on this that has me thinking.  Don't bother fixing it
> > in this driver as it true it's a common bug (and leaks a trigger structure).
> > I'll look into it.  
> 
> This probably can be worked around by introducing a flag devm_allocated and set
> it in devm_iio_trigger_alloc(). If set, the release might automatically put the
> trigger at the error cases. 

(see below as your second point is key to what I'm saying here!)

Approximately what I had in mind, but not there - rather in a new
devm_iio_trigger_get() which would set a flag somewhere to say clean up needed.
The fiddly bit is when to clear it.  I think logically needs to be both:

1) When the trigger is changed as we put the trigger there anyway
2) (maybe implicitly) if the flag is still set on a devm callback registered
by devm_iio_trigger_get().

That devm callback is to ensure correct ordered tear down.  I really dislike
reasoning what happens if we do that stuff out of order.  

> BUT, do all drivers that allocate trigger actually
> bump its reference count?

Not all drivers set the default.  I actively discouraged this for a long time
due to it putting a strong preference for internal triggers when the
right choice is very usecase dependent.

The ones that set the default 'should' all use iio_trigger_get().
We had a whole bunch of fixes for this a long time back.

Anyhow, was complex enough and a common enough problem I wasn't
going to ask this contributor to deal with it.  I should have some time
in the next week or two to put together all the test cases needed to
make sure a solution works for this.

Jonathan

> 
> > > +		ret = vl53l1x_configure_irq(dev, client->irq, indio_dev);
> > > +		if (ret)
> > > +			return ret;
> > > +
> > > +		ret = devm_iio_triggered_buffer_setup(dev, indio_dev, NULL,
> > > +						      &vl53l1x_trigger_handler,
> > > +						      NULL);
> > > +		if (ret)
> > > +			return ret;  
> 


