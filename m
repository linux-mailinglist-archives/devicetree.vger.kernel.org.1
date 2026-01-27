Return-Path: <devicetree+bounces-259817-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAYUCI2TeGmxrAEAu9opvQ
	(envelope-from <devicetree+bounces-259817-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:29:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 378E892C9E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:29:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8543301A711
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5077933D4EC;
	Tue, 27 Jan 2026 10:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="kBSOOw6Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAEA1DEFE0;
	Tue, 27 Jan 2026 10:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769509657; cv=none; b=MkBR/S5+pZN2CI4tY0LJkkIO0zW2PoQXqgLayAKjov9wR20zTtbXnMK+zd+p/E8PDkFg/W0iM8a20hUYClVwc0kgzvKtFskVViS3yRbV0a+sSP/ciEJLPWdIC6iY8/bnhab8J8U+UObcdB5sxf0yUugGgZIrkYxXN/y+gDC1klU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769509657; c=relaxed/simple;
	bh=CjHuV3qGuHUbHTKmaPvMx6YJMmJj9aKu5E4zdV9gJwA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rOO1T77i8yZhs9wGJUpfgLanuO4Vrbj8fLc+oMwOpIiU8X/JxOLYZi6a0V4iir+aQHzOG8DI/GAxOpmd9Cc47tHYN5XGleIdEZQgXK6+9VAxrHBny0Zc410PqO7WmYsX+/p2h2ufq5KmaRjUqMBY4eH0IQUWuv1BR+3WYYu10ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=kBSOOw6Y; arc=none smtp.client-ip=192.198.163.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769509655; x=1801045655;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=CjHuV3qGuHUbHTKmaPvMx6YJMmJj9aKu5E4zdV9gJwA=;
  b=kBSOOw6Y2ugTRwR+1sHBBeIJYwW7huJnwTX0DmILeqXf/bzgfRUyCadL
   PL8XIr3uU8ZgQBOltBXa85X89UlASrbpw+TBToT0D7GhOqoPeN94ZYJoU
   RW+dsM/NOZH+IvMZeTq+nZR0T+7W9HvWdocewAj46OuW+CC5rsn5YfL1f
   O3GH/3lmVFx6oFXj/o91eQ7gcrBGu3UW3xRxBgYWYZzX46lzzc6RWFV35
   BQ/5/7SjuG2DYLqMGNZcbyX0Fcz5RNLpa3kimKloTtp6VqNgSmEBnMHSt
   ElAKWH+fydwBmICx1XtH1F/WwVRbZ80BPd8xgx7hkMfD34+e6Fkx5BrU6
   w==;
X-CSE-ConnectionGUID: FINPmqpCQhmnW6HCyZY+HQ==
X-CSE-MsgGUID: 39WyJonfS0KZX1CmEm0uHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="58275191"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="58275191"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 02:27:34 -0800
X-CSE-ConnectionGUID: srThuj24RkWh0v4Wq2cTIA==
X-CSE-MsgGUID: JmgQZWlSR0q7srVtzj+NtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="212485666"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.248])
  by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 02:27:31 -0800
Date: Tue, 27 Jan 2026 12:27:29 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Jander <david@protonic.nl>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Subject: Re: [PATCH v2 3/8] iio: dac: ds4424: add DS4402/DS4404 device IDs
Message-ID: <aXiTEXOPUANd7vIQ@smile.fi.intel.com>
References: <20260127060939.3914006-1-o.rempel@pengutronix.de>
 <20260127060939.3914006-4-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127060939.3914006-4-o.rempel@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259817-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:email,intel.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,protonic.nl:email]
X-Rspamd-Queue-Id: 378E892C9E
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 07:09:34AM +0100, Oleksij Rempel wrote:
> Add I2C/OF IDs for DS4402 and DS4404 and set the correct channel count.
> Follow-up changes add per-variant scaling based on external Rfs.

> Signed-off-by: David Jander <david@protonic.nl>

Unclear who that is. Co-developed-by? Original author? The From is set to your
address, should it be otherwise?

> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

-- 
With Best Regards,
Andy Shevchenko



