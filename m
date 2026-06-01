Return-Path: <devicetree+bounces-305275-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePFeMg64HWrKdAkAu9opvQ
	(envelope-from <devicetree+bounces-305275-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 18:49:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D91622CAA
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 18:49:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E58A83009B1C
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 16:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 861ED312807;
	Mon,  1 Jun 2026 16:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuIJxUMm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 898B330F957;
	Mon,  1 Jun 2026 16:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780332015; cv=none; b=GTMVE1tvBsdiSscz7jUkHebnMCV9rIjs71KNGU/qqfI4444/eUm+2aHpA1dnNJKEVJoSIN41h/jcXIh+BGQzD9DTchO/F1FEXvdhX88I0rJQfkH47pM1hOObywv5kquoUi6A/oyZ8l6yxizjGYersrRqm+BQbyUvhi2QQYJ4gPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780332015; c=relaxed/simple;
	bh=jY1W+GubHXRzHEaLt6SY88dDzXggtf5zZV1MGH7YmVA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FOyiSSUBJFcG1aco2aJ73Xt5S+KXf2fkSDJHxRj6U+XcQVE6Vbz5W9g0eJ6r+O5SHpG2bYRfz+HOV0L5yL5fHS2p/7RJHwaDb+bn9RaEEiv19BOpShzN8MChBCpjBYLXGTHWN+2UWstI6VLFGRuzmVGZJyxWfFlIpgNSUbtfYDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuIJxUMm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9A011F00893;
	Mon,  1 Jun 2026 16:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780332009;
	bh=ZB98BzvKP6fl3cj8oj/hVyb/i6Q/IymLScAvGq1i3yE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=LuIJxUMmAtXhcMsPZvC0Ma4LmZxwVw1UmO6IrFZAkXq7xYOSLpFTfJIZZB+nKZBFG
	 NpAZNrhLxjTwiAEjLjg5UQ45PLQkpi9rvE0s2oSrs0sNwQ/6UUu9Tfc62WuXq5lDUM
	 l/A+INr01iLtVpenB7CcZ+573gRdYVfPlfDh/kSOjrh899JTw3YgvlKXY5nFDQbeAe
	 3hMLhbAyrc1l7y2mjDOovU4FzDv3Ntmgmyq6N0sDmnKoro4I5/EGt+EQJpdUd89sG0
	 N2PdMyiUkIlcE4mx+x5UUNpPXQIB1DlUChrMw0fqmiYnW6CQ7zDK93Ne4a83Ek26um
	 8f+Kaw6MzML6g==
Date: Mon, 1 Jun 2026 17:39:59 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH V9 10/11] iio: imu: inv_icm42607: Add Gyroscope to
 icm42607
Message-ID: <20260601173959.24082b01@jic23-huawei>
In-Reply-To: <PH0PR19MB997338A6EE5428FC9B058F2E07A5152@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
	<20260530031739.109063-11-macroalpha82@gmail.com>
	<20260531135823.015c4fd1@jic23-huawei>
	<PH0PR19MB997338A6EE5428FC9B058F2E07A5152@PH0PR19MB997338.namprd19.prod.outlook.com>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305275-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[hotmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 03D91622CAA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 1 Jun 2026 09:37:56 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> On Sun, May 31, 2026 at 01:58:23PM +0100, Jonathan Cameron wrote:
> > On Fri, 29 May 2026 22:17:37 -0500
> > Chris Morgan <macroalpha82@gmail.com> wrote:
> >   
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add gyroscope functions to the icm42607 driver.
> > > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>  
> > 
> > Hi Chris,
> > Various things inline.
> > 
> > Thanks,
> > 
> > Jonathan
> >   
> > > diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
> > > index 5b69bf895b35..c45239613344 100644
> > > --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
> > > +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c  
> >   
> > >  int inv_icm42607_buffer_fifo_parse(struct inv_icm42607_state *st)
> > >  {
> > > +	struct inv_icm42607_sensor_state *gyro_st = iio_priv(st->indio_gyro);
> > >  	struct inv_icm42607_sensor_state *accel_st = iio_priv(st->indio_accel);
> > >  	struct inv_sensors_timestamp *ts;
> > >  	int ret;
> > > @@ -491,6 +494,16 @@ int inv_icm42607_buffer_fifo_parse(struct inv_icm42607_state *st)
> > >  	if (st->fifo.nb.total == 0)
> > >  		return 0;
> > >  
> > > +	/* handle gyroscope timestamp and FIFO data parsing */
> > > +	if (st->fifo.nb.gyro > 0) {
> > > +		ts = &gyro_st->ts;
> > > +		inv_sensors_timestamp_interrupt(ts, st->fifo.watermark.eff_gyro,
> > > +						st->timestamp.gyro);
> > > +		ret = inv_icm42607_gyro_parse_fifo(st->indio_gyro);
> > > +		if (ret)
> > > +			return ret;
> > > +	}
> > > +
> > >  	/* handle accelerometer timestamp and FIFO data parsing */
> > >  	if (st->fifo.nb.accel > 0) {
> > >  		ts = &accel_st->ts;
> > > @@ -507,12 +520,14 @@ int inv_icm42607_buffer_fifo_parse(struct inv_icm42607_state *st)
> > >  int inv_icm42607_buffer_hwfifo_flush(struct inv_icm42607_state *st,
> > >  				     unsigned int count)
> > >  {
> > > +	struct inv_icm42607_sensor_state *gyro_st = iio_priv(st->indio_gyro);
> > >  	struct inv_icm42607_sensor_state *accel_st = iio_priv(st->indio_accel);
> > >  	struct inv_sensors_timestamp *ts;
> > > -	s64 accel_ts;
> > > +	s64 gyro_ts, accel_ts;
> > >  	int ret;
> > >  
> > >  	accel_ts = iio_get_time_ns(st->indio_accel);
> > > +	gyro_ts = iio_get_time_ns(st->indio_gyro);  
> > 
> > Sashiko calls out correctly that there is a race with devices finishing
> > coming up that might be hit here.  Probably need some sort of presence
> > check and locking to be sure those are both valid.
> >   
> 
> While I'm not sure how to fix this exactly, I think (attempting to)
> test deadlocks I found a bigger issue... I don't think my interrupt
> line is hooked up at all...
ouch.  Wouldn't be the first time a given device has saved on pins
to the extent of not wiring any interrupts.

> 
> Assuming I should be getting interrupts when enabling the buffer
> (and also assuming I can do that with sysfs) I'm not getting any calls
> to the IRQ routine.
> 
> Would you know a better way to test the hardware buffers? Thus far
> my tests for data correctness involved either `monitor-sensor -a`
> or reading the values directly from sysfs.

There is a basic buffer example in the kernel tree under tools/iio
that should work for this. iio_generic_buffer 

> 
> Assuming I am in fact working with a device with no interrupt line, I
> can just modify this to remove the hardware buffer stuff and the IRQ
> stuff and work with an even more simplified driver. Probably going to
> miss the 7.2 merge window at this time, but still...

Indeed an option to do this as a temporary step. If we get
other users hopefully someone has the interrupt line wired!

Jonathan

