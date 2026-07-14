Return-Path: <devicetree+bounces-326119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oY3lIdYbVmoNzQAAu9opvQ
	(envelope-from <devicetree+bounces-326119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:21:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22313753D8E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:21:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nTgMN0Xo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326119-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326119-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 782B530074AB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6922C37E2F3;
	Tue, 14 Jul 2026 11:21:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141BA363C60;
	Tue, 14 Jul 2026 11:21:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784028116; cv=none; b=ujjnW5CY3yTOxf5HfCwKuITXH/ZBBF27b6k12Vdc8bDnSvpu18fMUaF2tDjLQYE3uJy8TTRC9uACRRdzD2sD+fyReSNoZfHkXWgK+5jU5gFjqS018nk9psILL2v0wPBIEkYs69cAXZgc8LQeep2q9xuxQ8P4FM87AqPf1/hpfbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784028116; c=relaxed/simple;
	bh=9rpCI0fMrl7LA6kFB/qj/ZB1zdhvy14XSIRcOLdqurM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fG2swD/D9w2lSV+J0lVbPKD3sXEWn+nYXDMUtw1E7hGXZ5mYENWgv7nFblChBBIgR4BLfW1j6nClWQlGO/LjymFeYSW16amKtBx6Jgun+6JOr97miZ899cgW0GX9FSdhMreCOJUGr6Sfy/8S7maCGAsn4OHXfO7kPSwickU6vR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=nTgMN0Xo; arc=none smtp.client-ip=198.175.65.19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784028115; x=1815564115;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=9rpCI0fMrl7LA6kFB/qj/ZB1zdhvy14XSIRcOLdqurM=;
  b=nTgMN0Xof+tpa7yhLO7MFq8vpuXWB8hU0rZkRPwlChmPeHT/TKCNMXXc
   O2CSvklRKJ9AeFqnRg1WHhMG5NFHIszH8M1VJQCVuLnirfkOK64lHe1+9
   bq/AeIZ1dXHpDU4Kn0Lo9Sgrki+XZ7qiBtk6shTVHUttA2ZUWhQgup6bF
   u1hohYBvS92uSpmTu39rZ+dl14X+swLtLgatbCwtlV1jbCOJrlIJQiWn+
   gu5QWIK4efXnvTACls8m+SLuxAvfmUDR5hniw1+ZvRjdSZJH60mXMO2N7
   BofgMBsywpxLYJLZhF/zs8LZPJTWd5OdFrzXY29RqwbxVs6CjxV/MIa94
   w==;
X-CSE-ConnectionGUID: LFJVA/4ES161xrNkh0cjqQ==
X-CSE-MsgGUID: Pp/AW4mrSpGL0LVvvVjyWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84611727"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="84611727"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 04:21:54 -0700
X-CSE-ConnectionGUID: BB4Vv10wT96Ch7YOSUNuwQ==
X-CSE-MsgGUID: gysOuOYxS02M7T0t6H19+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="251418891"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.189])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 04:21:51 -0700
Date: Tue, 14 Jul 2026 14:21:49 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v16 07/10] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <alYbzXguJXsdi75i@ashevche-desk.local>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-8-macroalpha82@gmail.com>
 <alYbi_Bp0wVOlJ1i@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alYbi_Bp0wVOlJ1i@ashevche-desk.local>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326119-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:jic23@kernel.org,m:jean-baptiste.maneyrol@tdk.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:macromorgan@hotmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,hotmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,ashevche-desk.local:mid,intel.com:from_mime,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 22313753D8E

On Tue, Jul 14, 2026 at 02:20:48PM +0300, Andy Shevchenko wrote:
> On Mon, Jul 13, 2026 at 04:58:37PM -0500, Chris Morgan wrote:

...

> > +int inv_icm42607_read_sensor(struct iio_dev *indio_dev,
> > +			     struct iio_chan_spec const *chan,
> > +			     s16 *val)
> > +{
> > +	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
> > +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> > +	struct inv_icm42607_sensor_state *sensor_st = iio_priv(indio_dev);
> > +	struct device *dev = regmap_get_device(st->map);
> > +	unsigned int reg;
> 
> > +	u8 data[2];
> 
> Define using the correct type. AFAICS it should be __be16 data;
> 
> > +	int ret;
> > +
> > +	if ((chan->type != IIO_ANGL_VEL) && (chan->type != IIO_ACCEL))
> > +		return -EINVAL;
> > +
> > +	switch (chan->channel2) {
> > +	case IIO_MOD_X:
> > +		if (chan->type == IIO_ANGL_VEL)
> > +			reg = INV_ICM42607_REG_GYRO_DATA_X1;
> > +		else
> > +			reg = INV_ICM42607_REG_ACCEL_DATA_X1;
> > +		break;
> > +	case IIO_MOD_Y:
> > +		if (chan->type == IIO_ANGL_VEL)
> > +			reg = INV_ICM42607_REG_GYRO_DATA_Y1;
> > +		else
> > +			reg = INV_ICM42607_REG_ACCEL_DATA_Y1;
> > +		break;
> > +	case IIO_MOD_Z:
> > +		if (chan->type == IIO_ANGL_VEL)
> > +			reg = INV_ICM42607_REG_GYRO_DATA_Z1;
> > +		else
> > +			reg = INV_ICM42607_REG_ACCEL_DATA_Z1;
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> > +	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
> > +	if (ret)
> > +		return ret;
> > +
> > +	guard(mutex)(&st->lock);
> > +
> > +	/* enable sensor */
> > +	conf.mode = sensor_st->power_mode;
> > +	conf.filter = sensor_st->filter;
> > +	ret = inv_icm42607_set_sensor_conf(st, &conf, chan->type);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* read sensor register data */
> > +	ret = regmap_bulk_read(st->map, reg, data, sizeof(data));
> > +	if (ret)
> > +		return ret;

> > +	*val = get_unaligned_be16(data);

In this case it will be be16_to_cpu() instead (from asm/byteorder.h).

> > +	if (*val == INV_ICM42607_DATA_INVALID)
> > +		return -EINVAL;
> > +
> > +	return 0;
> > +}

-- 
With Best Regards,
Andy Shevchenko



