Return-Path: <devicetree+bounces-276379-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIi3DitiuGlbdAEAu9opvQ
	(envelope-from <devicetree+bounces-276379-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:03:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CA72A0027
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:03:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A71D43031AE6
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:03:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33200350D7E;
	Mon, 16 Mar 2026 20:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="K5iuNgfk"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DA1332EB1;
	Mon, 16 Mar 2026 20:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773691422; cv=none; b=rcanOM5XMVV93hAHnc7LRNx9pAoLDLkghIUMeeIi5QJeLre+y0THrvaM1AHKVB5Kpt0RDJxbgMFRuNVcrzEEssDVjZB92Xb/nFcKugMwIQ9G4des7CtrjW59vFD1zFqOvCINAwP6xySsWv8tl5Tu9Gzf2ZR46TwODVwwlTSsGKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773691422; c=relaxed/simple;
	bh=WmJk3d4Eh2g4nj7UvzRL25l9/wZbFe2Sce6INapVXh8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bSB8j9Q0liNy9RsCFVPTsSw9CZ2YA58JwOmn5k7zNz1uWprRDeXNW16hO0N9IV+UF775bTnkRuQDmcK7jSEGtjfGSg8B/+tXdUO0P5HuoqqBsI/TJs7WWnMBOG5cJ2dZdBmjBxBnjaodvJmg0SbmSewgHtUScH1NtHlLxjsB2Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=K5iuNgfk; arc=none smtp.client-ip=192.198.163.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773691421; x=1805227421;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=WmJk3d4Eh2g4nj7UvzRL25l9/wZbFe2Sce6INapVXh8=;
  b=K5iuNgfkgrJawWrRiDh1VCRVUEv3I1emdaFl7a+LeQTm9K+UR56Ag/82
   JL0KSC57OCi+T3eNP1yo+v0JlYpxuXUALl8Ylqmo0iGZoxB9DgYJWvUBp
   CLjXWAppotfiPNx26SyS8mCHKQOPAhbU2ugkKepiFwqSqGEjnQ4zH+ztH
   qOTXiH4PcJukpzZcNE33lQLf9qNl2pkFaoU5xchV9XbZCcXRXrBuHNcmC
   jJpWriWb3yIMFlY88jKgaIE5WNTAdoH4FiTtvyss4li7kMAxOtqtDEvTR
   vZZmQLIbuEDi1Xte1oTmOV4gfjjnoz7CToGelqMMgLTTIRTAl19bOLlcq
   A==;
X-CSE-ConnectionGUID: B1nnOPZQQZaVkH5I+nyMHg==
X-CSE-MsgGUID: IkgWPr7qRH+yEtUNX2RZtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74633710"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="74633710"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 13:03:40 -0700
X-CSE-ConnectionGUID: qzghM7K4Tpye4V6gZIfaGA==
X-CSE-MsgGUID: 2Jwy/jMeSVylIYXi2GHINw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="227009280"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.237])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 13:03:37 -0700
Date: Mon, 16 Mar 2026 22:03:33 +0200
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
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH v4 6/7] iio: light: vcnl4000: use variables for I2C
 client and device instances
Message-ID: <abhiFdSAs2RbnGVT@ashevche-desk.local>
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
 <20260316-vcnl4000-regulators-v4-6-854fc2eaf54b@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316-vcnl4000-regulators-v4-6-854fc2eaf54b@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276379-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 90CA72A0027
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 07:19:50PM +0200, Erikas Bitovtas wrote:
> After moving data->client and client->dev into variables of their own,
> replace all instances of data->client and client->dev being used in
> vcnl4200_init and vcnl4000_probe by the said variables to reduce

vcnl4200_init()
vcnl4000_probe()

> clutter.

...

> -	if (device_property_read_u32(&client->dev, "proximity-near-level",
> -				     &data->near_level))
> -		data->near_level = 0;
> +	device_property_read_u32(dev, "proximity-near-level", &data->near_level);

I meant to see this change in a separate patch after the current one.
This will be associated with a commit message explaining why it's okay
because it looks like a potential behaviour change (but actually not).

-- 
With Best Regards,
Andy Shevchenko



