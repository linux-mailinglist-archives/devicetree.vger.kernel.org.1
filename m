Return-Path: <devicetree+bounces-318090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Uv64Ob9xRGqguwoAu9opvQ
	(envelope-from <devicetree+bounces-318090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 03:47:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 403876E9191
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 03:47:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TcfaV7fh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318090-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318090-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F4126301C896
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 01:47:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C67A35F19B;
	Wed,  1 Jul 2026 01:47:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51488225A38;
	Wed,  1 Jul 2026 01:47:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782870461; cv=none; b=H2BrIF/w+MYYIrJcAUscwxnOCVfRmnXn348Y8+Oi7GqoAu6ujz7Afvv/0o9SFBZ91WBC+ysrtV5xYu76JMlH7RkvWL3TC7ngc09GPmpu5VgBOwdmrvgbfAs1maKObIjS4HxJaifjkmRcYKd51xVwr21GXjeGJQa54RSyoiVO7EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782870461; c=relaxed/simple;
	bh=Vem6NI0NDzuhJlnQtnKfSeTr2UWvXXI1AXa5FxpY3XU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ldZneTPLlbDi/mJicYsFbb753Wm6eCfmaUIzdb2JiS3NQcWoQmQt243Z1eM8gTXsA4BelvyKzzL3ROA5ngbrXSJNrBXGxdyN3em/pxOCx98xdgSr9cJ9gHCa1G5C/7ORo54NsJoNEU/DE+mAFUwcTvteHtX1oUMdKJqll3dEVlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcfaV7fh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 506221F000E9;
	Wed,  1 Jul 2026 01:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782870459;
	bh=Rpdy5426Xc0zJZnjqUjuFXTHpOkdNMvNBX6jY1HfgE8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=TcfaV7fhPPT0+zcFP0jREJujju2MaeWSsaOPxooGHAV6RfffTFQY0FVkbyFeXpVMx
	 34xi+8T4UTmVSmI16MYSwSJhWKKEl23A/OLU8GvEAHzo//l8Rx2NBrD59egwITcclO
	 o0J+v17W7oYqBGJw2JMdHJC7n9TSxS+hLG7rZfDe0d6bSWIXNBKNl0VLieD/8UA54x
	 3SADibwU0TgtbXKCxjFYpLjtRbPBwMqKvGOD4CRyzd3jJU1lc5zK35gE/0BOL0LPI7
	 EPCRIMyFqdMewyQfjsojLIxhPxkN6FdZ8w7ZCmUzDgKTWwVcYliyBrtuRndjeVrmNB
	 5IEK0BPj42svQ==
Date: Wed, 1 Jul 2026 02:47:34 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH V14 0/9] Add Invensense ICM42607
Message-ID: <20260701024734.36a5148c@jic23-huawei>
In-Reply-To: <PH0PR19MB997338A2CC95E8E0C2670713F8A5ED2@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260624182350.50467-1-macroalpha82@gmail.com>
	<PH0PR19MB997338A2CC95E8E0C2670713F8A5ED2@PH0PR19MB997338.namprd19.prod.outlook.com>
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
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:macromorgan@hotmail.com,m:macroalpha82@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:jean-baptiste.maneyrol@tdk.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:andriy.shevchenko@intel.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[hotmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-318090-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 403876E9191

On Wed, 24 Jun 2026 16:18:23 -0500
Chris Morgan <macromorgan@hotmail.com> wrote:

> > Changes Since V13:
> >  - Refactored inv_icm42607_set_accel_conf() and
> >    inv_icm42607_set_gyro_conf() into a single function.
> >  - Refactored inv_icm42607_accel_read_sensor() and
> >    inv_icm42607_gyro_read_sensor() into a single function.
> >  - Merged inv_icm42607_set_temp_conf() into initial init function
> >    since it only really needs to be called once.
> >  - Saved adding temp sensor for last and updated
> >    inv_icm42607_temp_read() to either confirm other sensors are already
> >    enabled or enable the accelerometer so it can get a reading.
> >  - Updated inv_icm42607_set_pwr_mgmt0() so that it does not update the
> >    sensor mode and forcibly keep the sensor enabled.
> >  - Added inv_icm42607_temp_filter_bw enums since it appears to use
> >    different values than the accel or gyro sensor.
> >  - Set the temp startup time from 77ms to 77us, as I previously misread
> >    the datasheet.
> >  - Additional minor fixes.
> > 
> > Chris Morgan (9):
> >   dt-bindings: iio: imu: icm42600: Add mount-matrix
> >   dt-bindings: iio: imu: icm42600: Add icm42607
> >   iio: imu: inv_icm42607: Add inv_icm42607 Core Driver
> >   iio: imu: inv_icm42607: Add SPI For icm42607
> >   iio: imu: inv_icm42607: Add PM support for icm42607
> >   iio: imu: inv_icm42607: Add Accelerometer for icm42607
> >   iio: imu: inv_icm42607: Add Gyroscope to icm42607
> >   iio: imu: inv_icm42607: Add Temp Support in icm42607
> >   arm64: dts: rockchip: Add icm42607p IMU for RG-DS
> > 
> >  .../bindings/iio/imu/invensense,icm42600.yaml |  20 +-
> >  .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |   8 +-
> >  drivers/iio/imu/Kconfig                       |   1 +
> >  drivers/iio/imu/Makefile                      |   1 +
> >  drivers/iio/imu/inv_icm42607/Kconfig          |  30 +
> >  drivers/iio/imu/inv_icm42607/Makefile         |  13 +
> >  drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 423 ++++++++++++
> >  .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 317 +++++++++
> >  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 606 ++++++++++++++++++
> >  .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  | 313 +++++++++
> >  .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |  98 +++
> >  .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 108 ++++
> >  .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |  99 +++
> >  .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |  37 ++
> >  14 files changed, 2072 insertions(+), 2 deletions(-)
> >  create mode 100644 drivers/iio/imu/inv_icm42607/Kconfig
> >  create mode 100644 drivers/iio/imu/inv_icm42607/Makefile
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_temp.h
> > 
> > -- 
> > 2.43.0
> >   
> 
> I got sashiko.dev's review, and agree with everything except 2 points.
> 
> 1) It asks "Is it appropriate to omit the interrupts property based on
> driver behavior rather than hardware wiring?" I would say no, but in
> my case the hardware is not wired for an interrupt so it's moot.


I think the key thing it gets wrong is 'required'.  Obviously an interrupt
isn't required if it isn't wired ;)  My only question is why is
it required for the other devices?  That makes no sense - so I think
you can get rid of that change to require it in the binding (I'll reply to v15)


> 
> 2) It asks "Does this code update the software state cache for the
> sensor mode?" No, it doesn't. The goal is for the device to stay
> powered up for up to 2 seconds until runtime PM turns it off if it
> isn't active, but I don't mind something turning around and shutting
> the hardware down if it's not in use before then. Anything that needs
> to read the specific sensor in question will be holding the mutex so
> that there shouldn't be a risk of another thread turning stuff off
> while I'm trying to use it, I don't think. What I want to avoid is
> calling to turn the hardware on for a one-shot read and then
> immediately turning it off once I'm done. I can wait the two seconds
> for runtime PM to do it when the alternative is to call the shutdown
> routine every single time for one-shot reads and wait for the startup
> and in the case of the gyro shutdown times otherwise.
> 
> Thoughts?
> 
As long as the locks are doing their jobs, this seems correct.

Jonathan

> I can fix the remaining issues it points out and resubmit.
> 
> Thank you,
> Chris


