Return-Path: <devicetree+bounces-326791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MhyPFGpQV2p4JAEAu9opvQ
	(envelope-from <devicetree+bounces-326791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:18:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C41E75C5DC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:18:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PMlijiOy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326791-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326791-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4655E31BD74E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8350E3EFFC6;
	Wed, 15 Jul 2026 09:09:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FC73E8686;
	Wed, 15 Jul 2026 09:09:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784106590; cv=none; b=t13U/HsdDBOageu1+wpt9uTvLTqcazNdEV/yFhNlUJmcfgINpLAefoxgwSABM51lXsNvfmIIP9CjMPh81h2BjpjBMJ3tEpMaXPujS2lSqgew4oW3sdH4l+ueUGxzgz4rNMS9zGKbDVQNQw3o1N0QdcgbsnPh4IMFjaMcV9lOWhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784106590; c=relaxed/simple;
	bh=wdfNjOKA2HL5qdE3HJU90IgxCzHMRF70h3J97b2e7Kk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UULvyLXTGcIAPyRfByw4iSJa4LtUFixdnMSIcu4BbXQX+LMmT1cJ88tpjinF+gVJL/WM0mvSUx66bphte3xSUh87aeBJasuESxEO+jlEaee7DIrbFJcy/GqurMMtPtmYJe95EnOP7W4LH0+VNgUm/aKiEuwg2ofL6UwXQTGwkUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=PMlijiOy; arc=none smtp.client-ip=192.198.163.14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784106589; x=1815642589;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=wdfNjOKA2HL5qdE3HJU90IgxCzHMRF70h3J97b2e7Kk=;
  b=PMlijiOyey+5yrcF+5b6QISM42Zb9aHL/2kR84KJzjui1CMFqqfW2Vfm
   0WN31N52eTgwtR4xYzbqyREPeQcEZEwcLAZFd8MpJzKYifDmlbd+8WDh1
   Y14zPQ7hSE4TB+HQPO2z2TORRPLvlMOuSIAiG4R5Y8XUnd9e1AtOongRd
   Lj8fHCPkVpDljW5r83rpcvtp7sGfrIE2xmT9B8VgJRWvA26+kEMiyZ3af
   4xefrzFxM3XsAS8eGKg3ueXhLTZeNoMiNtG3Xl+M17QMQ4FT5HNAi0Rje
   X1JMY5Aa1/kxEyMQhN3upUo3HDwdEWAq0KERXdD5LZs/f0lAUdLSS9O23
   Q==;
X-CSE-ConnectionGUID: 5YZl5btXTxKcEkhR3MOJ7w==
X-CSE-MsgGUID: ezOET7NcT4KYfv0WmuyB+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="84780212"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; 
   d="scan'208";a="84780212"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2026 02:09:49 -0700
X-CSE-ConnectionGUID: i3W0x0G/Smq35N+Ws3A/xA==
X-CSE-MsgGUID: X9YpvOfSSd+K6YQ6IcmCDQ==
X-ExtLoop1: 1
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.129])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2026 02:09:45 -0700
Date: Wed, 15 Jul 2026 12:09:43 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Esben Haabendal <esben@geanix.com>, Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Martin Kepplinger <martink@posteo.de>,
	Sean Nyekjaer <sean@geanix.com>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Martin Kepplinger <martin.kepplinger@theobroma-systems.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] iio: accel: mma8452: Allow open drain interrupt pin
 configuration
Message-ID: <aldOVx6_TvIDz4Yx@ashevche-desk.local>
References: <20260715-mma8452-open-drain-v1-0-b1dd2a440c60@geanix.com>
 <20260715-mma8452-open-drain-v1-2-b1dd2a440c60@geanix.com>
 <20260715104542.0000433d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260715104542.0000433d@gmail.com>
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
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-326791-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:joshua.crofts1@gmail.com,m:esben@geanix.com,m:jic23@kernel.org,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:martink@posteo.de,m:sean@geanix.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:martin.kepplinger@theobroma-systems.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid,intel.com:from_mime,intel.com:dkim,vger.kernel.org:from_smtp,geanix.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C41E75C5DC

On Wed, Jul 15, 2026 at 10:45:42AM +0200, Joshua Crofts wrote:
> On Wed, 15 Jul 2026 10:07:39 +0200
> Esben Haabendal <esben@geanix.com> wrote:

...

> > @@ -108,6 +110,7 @@ struct mma8452_data {
> >  	struct iio_mount_matrix orientation;
> >  	u8 ctrl_reg1;
> >  	u8 data_cfg;
> > +	bool open_drain;
> 
> Hmm, i checked pahole and it says there is a 1 byte hole, maybe try some more
> reordering to pack it?

Taking into account that the usual frames are 4 bytes and that there were
already 2 1-byte members, the place is good enough.

> >  	const struct mma_chip_info *chip_info;
> >  	int sleep_val;
> >  	struct regulator *vdd_reg;

-- 
With Best Regards,
Andy Shevchenko



