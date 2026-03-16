Return-Path: <devicetree+bounces-276380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2INWL4ViuGlbdAEAu9opvQ
	(envelope-from <devicetree+bounces-276380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:05:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA6D2A003E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:05:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C671302C75B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5BC93D47D9;
	Mon, 16 Mar 2026 20:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Rq9PZyw1"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9112874FB;
	Mon, 16 Mar 2026 20:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773691521; cv=none; b=liLHxX/axgfzpk+Pri9Ni3C7eBlph6B4xHvmXIcKJqh4MaPc8qGeAZUJnFhrdJ+zTC8r5ELbbUumYOaF/m1dtjJMstLysBeMk3Wh4q8bkWx5lkp5nt7s2U5CJ2ESPgoVzPTn1pcIDuplS0U4c4ZEnwpQ+67mJZ7XOd/wdgVnXJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773691521; c=relaxed/simple;
	bh=638skbVIn0DAkoP3JK1HeFCzxHBpKM83DUAvIob7Ohc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rSDu9x5D9pk3ouk3HOzz2Q4wVGtia5Te06G8yw078mWRB7mzhWRDj/3cBFA76HhfIArYtC+sn+1W7kxC/W1VinU1T1otjnqhzRN0mC/jbBitNdarz+2w+Mt2DOmusNnTq0vDDlAosN4MzNozOY5yraOzwSQrcSQ53GDA1160C6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Rq9PZyw1; arc=none smtp.client-ip=198.175.65.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773691519; x=1805227519;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=638skbVIn0DAkoP3JK1HeFCzxHBpKM83DUAvIob7Ohc=;
  b=Rq9PZyw1eWep0aNj5eSo+5DIueKMHcMLqYJSiIgL4eqcwHTbeU4E4X/L
   onZ1b5U1XCqHw44DPAMj81+1S8HdCV3NOQupBy4InWO5F4XyK9dAUZMEt
   0g3DRsBDusvZOT9X7dSPPHYhxTM1IHKKb6+nvzVQgiDje3/ZXhP5mxC9h
   oYDJy+bRhbokErrpRONIzltKt6ADsyDSF64WIA3MHZ1m0P5KICrSWk1n+
   F92VDUxAwafJ0YqLeKxLGUEj/GExDKSzxfyH+vpBdSksl3IwtC089Pu2e
   wuJ2wpq3m7A+3mer6a8PzN9bx4lNOzm9L4D97YZ1kLUlLI1wwPKm9l8mv
   w==;
X-CSE-ConnectionGUID: VpovVNS9QZ6oZAsD1mxB6w==
X-CSE-MsgGUID: ZWle/7GNThyL100OKZQFVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="86195912"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="86195912"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 13:05:19 -0700
X-CSE-ConnectionGUID: Rj+Up9r9ROaukiVc2XF40w==
X-CSE-MsgGUID: qrORxW75TOmEpuALbY26zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="217809876"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.237])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 13:05:15 -0700
Date: Mon, 16 Mar 2026 22:05:13 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Erikas Bitovtas <xerikasxx@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Meerwald <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Raymond Hackley <raymondhackley@protonmail.com>
Subject: Re: [PATCH v4 7/7] iio: light: vcnl4000: add support for regulators
Message-ID: <abhieY9gFHhMo8iO@ashevche-desk.local>
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
 <20260316-vcnl4000-regulators-v4-7-854fc2eaf54b@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316-vcnl4000-regulators-v4-7-854fc2eaf54b@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-276380-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,pmeerw.net,vger.kernel.org,lists.sr.ht,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ashevche-desk.local:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 3DA6D2A003E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 07:19:51PM +0200, Erikas Bitovtas wrote:
> Add supply, I2C and cathode voltage regulators to the sensor and enable
> them. This keeps the sensor powered on even after its only supply shared
> by another device shuts down.

...

> +	ret = devm_regulator_bulk_get_enable(dev, ARRAY_SIZE(regulator_names),
> +					     regulator_names);

I was suggesting just to fix an indentation in your original approach,
but okay, this is not a big deal to have less logical split between lines.

> +	if (ret)
> +		return ret;

-- 
With Best Regards,
Andy Shevchenko



