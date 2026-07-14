Return-Path: <devicetree+bounces-326087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2p9QEkYXVmohzAAAu9opvQ
	(envelope-from <devicetree+bounces-326087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:02:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B626F753ADA
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:02:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ez8SHUmT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326087-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326087-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6AC1630B911B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3D9F3769EF;
	Tue, 14 Jul 2026 11:00:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A9136A02F;
	Tue, 14 Jul 2026 11:00:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784026853; cv=none; b=lC+zPiTlyLRyvaGptHPnukczN1DMVzNZPcJtCRaTkqDm3dorOnqpVqDRhGBtAJUDo9QU5RHWMFOZ4x1zUGgdy9fLK+h9fjmqLdEswP+OKGw+ICswk1WGcklwt8gcNG+8iVs06Qj1Du3d9An2ahnRq2S1ovYcMFvHgTWKnzHicL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784026853; c=relaxed/simple;
	bh=Yw3UByh9lza4l+oROGbFdHgEwE9MVd7gDa2MvYy2QbA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ngpBSD4MWK4GX1mVvWeTw//Pfaq89/rPMOnNh0AF5ixIFWxp9mwoTuqNIFA+O1BD3RbrCEnN6wpImflZal3K4fJjJU4d8+joPJ2wOevblWaVjZPPZI53FF0bP5n6rDHyGeEMOKFYrmIlqicNnlbEGNKgCjkbHHFoVhJSEWpOZ9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ez8SHUmT; arc=none smtp.client-ip=192.198.163.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784026851; x=1815562851;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Yw3UByh9lza4l+oROGbFdHgEwE9MVd7gDa2MvYy2QbA=;
  b=ez8SHUmTul4uUk0qItjnm2d7h8HVxCZc6LGEbXmGbGi/sycpAi3S4lZN
   sLnsIorkuh2n9QPUN+jByYLEyWbltk2TNqDZ0zSH0t/mUjbChosokbES+
   tM39mSOIaFojF6EyKkZvkR1iAhEstlN6MKyUxFqGrrd92e5lTOLY+Xmz4
   6D/sgYFaGhJRIND293O1rOBZXUIdoWltQoZ1vofjSXyJ/79B5S8JusuWO
   pVf0LSNUWGfzTbtokZVskoV7XE4Qj8sOntH4CdZW46MT0HO3iZgyTS2mt
   ENP4hX9J04Gm98m8y/62wRfK3zrGr3sHRNosvOja6/rq40oeD9Zgpkv2S
   A==;
X-CSE-ConnectionGUID: +VMD1IJTRzC9965f2E7GIg==
X-CSE-MsgGUID: FAVNDz4zSFieUbdXrBegdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="102198195"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; 
   d="scan'208";a="102198195"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 04:00:50 -0700
X-CSE-ConnectionGUID: OCETTmGHRDaDqfO9C4ls2w==
X-CSE-MsgGUID: tdAzxbYhTeyhJs6x74p/zQ==
X-ExtLoop1: 1
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.189])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 04:00:47 -0700
Date: Tue, 14 Jul 2026 14:00:45 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v16 05/10] iio: imu: inv_icm42607: Add SPI For icm42607
Message-ID: <alYW3YEbjnCqrY2k@ashevche-desk.local>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-6-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260713215842.69097-6-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326087-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:dkim,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B626F753ADA

On Mon, Jul 13, 2026 at 04:58:35PM -0500, Chris Morgan wrote:

> Add SPI driver support for InvenSense ICM-42607 devices.

A few nit-picks below, otherwise
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

...

> +static int inv_icm42607_spi_bus_setup(struct inv_icm42607_state *st)
> +{
> +	unsigned int val;
> +	int ret;
> +
> +	/* Only support 4-wire mode for now. */
> +	ret = regmap_set_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
> +				      INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_clear_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> +				INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN |
> +				INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN);
> +	if (ret)
> +		return ret;
> +
> +	val = FIELD_PREP(INV_ICM42607_DRIVE_CONFIG3_SPI_MASK,
> +			 INV_ICM42607_SLEW_RATE_2NS);
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DRIVE_CONFIG3,
> +				 INV_ICM42607_DRIVE_CONFIG3_SPI_MASK, val);
> +	if (ret)
> +		return ret;
> +
> +	val = FIELD_PREP(INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
> +			 INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS);

+ blank line?
(Not sure, this is an interesting case and I have no strong opinion on
 either style.)

> +	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,

> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
> +				  val);

This can be a single (a bit longer) line.

> +}

...

> +static int inv_icm42607_probe(struct spi_device *spi)
> +{
> +	const struct inv_icm42607_hw *hw;
> +	struct device *dev = &spi->dev;
> +	struct regmap *regmap;
> +
> +	hw = spi_get_device_match_data(spi);
> +	if (!hw)
> +		return dev_err_probe(dev, -ENODEV, "Failed to get SPI data\n");
> +
> +	if (spi->mode & SPI_3WIRE)
> +		return dev_err_probe(dev, -ENODEV, "SPI 3-wire mode not supported\n");

Hmm... I would distinguish these two by the error code, perhaps -ENODATA for no
match data?

> +	regmap = devm_regmap_init_spi(spi, &inv_icm42607_regmap_config);
> +	if (IS_ERR(regmap))
> +		return dev_err_probe(dev, PTR_ERR(regmap),
> +				     "Failed to register spi regmap\n");

> +	return inv_icm42607_core_probe(regmap, hw,
> +				       inv_icm42607_spi_bus_setup);

This is perfectly a single line.

> +}

-- 
With Best Regards,
Andy Shevchenko



