Return-Path: <devicetree+bounces-259827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4D1HE4mYeGkWrQEAu9opvQ
	(envelope-from <devicetree+bounces-259827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:50:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D8F9328E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 44246301C11A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 771C6345722;
	Tue, 27 Jan 2026 10:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="jodcDgzM"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E4C344DAA;
	Tue, 27 Jan 2026 10:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769510867; cv=none; b=ZXUtM+2XRPw59l7Ede2k6JULijOlS58fPtIzDiEVdpe51BLyWch8LKvhnQegf0BKBjQN8bOAK8C5V0nKfAQ7ySZ6YnNCxoonEMiAxrLNQOcluqokHjSs2xVsOw1awhseOev8kiopqDwxHHRM4FhuRTj2hurQKdOVCZZDjENorKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769510867; c=relaxed/simple;
	bh=FaL1HzhpC1fIUGoJwU2Fpbkn3GvWLv6EZKX1lhQ7GpY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VuFuPaFHQrfYfyBi2T0LQaI40KfEG86z3FG0yUp7IzXW8OhP3YXUehJQpioZD1l5MV2wUsqfUyHc/AD17envjzfl0GTvdacR0VXcs3+myKUuswtJAxAlGGhp+xp337C+iw9EdqE7uNOTaAfmp2mrOoPXOSBfmOX0lSWhzjymdiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=jodcDgzM; arc=none smtp.client-ip=198.175.65.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769510866; x=1801046866;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=FaL1HzhpC1fIUGoJwU2Fpbkn3GvWLv6EZKX1lhQ7GpY=;
  b=jodcDgzMpB7ROWYy4hoJGdVxgP8xAo7mqbQAIRzF6RJXY1Z4oyeFWMSQ
   uJBRM0Q7cdA3XmjUX64PAXtFjvUGzYI/oRB9po/ZGTK1vTcqH/3sYpSR1
   IJTUFAeSWtCHjv3ytfJdAZ5rm+2Z/HYu8q0rvpwabxxKuO95fz3ULF8Zv
   DEBMzgMIgoBcYmmpfaCltXs+9aEZF/StfVFHe8kaV/f+nyUMrUYRldWLg
   g06u2yYB4DRLHCd1RKkK7x0YvBrV71X2pFim+hsZdmY29JLYYUmd/Y6JM
   14TnCL61Rsgifytsp5gDgdhQ0QrL6ORyLEaooJw91oPwij723PDCjlGBP
   w==;
X-CSE-ConnectionGUID: 1jr/V+5RTbumzs6o1DOy6w==
X-CSE-MsgGUID: 8hOHH4vaSWeUN6x7wfk+xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="82133078"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="82133078"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 02:47:46 -0800
X-CSE-ConnectionGUID: wpV0RiQ4SNWIIMKbOxYqRw==
X-CSE-MsgGUID: 8MhrmcFNTv+X4Ld4G3WhSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="245559864"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.248])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 02:47:42 -0800
Date: Tue, 27 Jan 2026 12:47:39 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH v2 8/8] iio: dac: ds4424: ratelimit read errors and use
 device context
Message-ID: <aXiXy8TJfb4eV1va@smile.fi.intel.com>
References: <20260127060939.3914006-1-o.rempel@pengutronix.de>
 <20260127060939.3914006-9-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127060939.3914006-9-o.rempel@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259827-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: C5D8F9328E
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 07:09:39AM +0100, Oleksij Rempel wrote:
> Replace pr_err() with dev_err_ratelimited() in the RAW read path to avoid
> log spam on repeated I2C failures and to include the device context.
> 
> Use %pe to print errno names for faster debugging.

This should have been done before touching this line in the other patch.

...

>  		if (ret < 0) {
> -			pr_err("%s : regmap_read returned %d\n",
> -						__func__, ret);
> +			dev_err_ratelimited(&indio_dev->dev,

Why not physical device?

> +					    "Failed to read channel %d:  %pe\n",

Too many spaces.

> +					    chan->channel, ERR_PTR(ret));
>  			return ret;
>  		}

-- 
With Best Regards,
Andy Shevchenko



