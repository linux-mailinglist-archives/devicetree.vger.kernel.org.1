Return-Path: <devicetree+bounces-265020-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOrXERayjWmz5wAAu9opvQ
	(envelope-from <devicetree+bounces-265020-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:57:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FB212CC0F
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:57:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 559C4300A524
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:57:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626022DEA7A;
	Thu, 12 Feb 2026 10:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="P6FPLi5P"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAD32AE68;
	Thu, 12 Feb 2026 10:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770893843; cv=none; b=j35SjoQ1Z7WUcjg4t7y8rlhErwPU03+TuFYOIAO739ZZrrZF1uR1pMOKnOr+zg71438SzqWhfcnAT0K6fT/daRswUXCMT/tmfs3dmltS1aFMkoGFrA2h4TKE3PAp36DbkUWUyxXkpzPjbV6+uQ+Y5LqXa4Z2Lc8Ro2FRUocCiUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770893843; c=relaxed/simple;
	bh=jdGJ2dIezfzRDJgHrZCaELdwGR15JNsMJiYqPJIdBec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o7narj4CfD+5l99y81y9T3q+IQTlIo3Xfh4TtD+1xqh53Nm+vXZQuk7jPncz8FB+BjUJndmGPtZH5Rp6S55enCTNFkHT/pCfTcTOQ/AHyw4M3M5V5FrPQnp4On4n9nmurZelF6TKO78t8XY5+PKtgsXy+8iWS5V1KLVPsnfjxAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=P6FPLi5P; arc=none smtp.client-ip=198.175.65.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770893842; x=1802429842;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jdGJ2dIezfzRDJgHrZCaELdwGR15JNsMJiYqPJIdBec=;
  b=P6FPLi5P21bJZp6PaWD7A22QEaHGSgYi8Zk4IsDa/r1wHZDt84TtVA/q
   ptawKSACIG3q2bcpH2RIhEirXLCAMS6byPqxG2Qdq2mUM3d+gGTpQtjbj
   6a2ZNdej8h9O1rD3HQFaq1KH1clbsMF+oXbQoP04zUWWllpwuIvND51PS
   lYENhXTPbVF4PHPOqhy/BY40XCPjiSqSN4PjHaappDRLXy/ktnOg4QZzb
   2329hmswbkV2JqtufX407xOJP6qdbtISPVj5xSdnIcubSNqFuLorkMJc3
   AqqWJ4/CfaNPI2eoPqpa10qb/3UYvg3tWIR3+0Nkujf2r7HlI2HfGHHLg
   A==;
X-CSE-ConnectionGUID: DaJIQrtET4SpyAT5x3Lz3A==
X-CSE-MsgGUID: GCOUZBdLRMKudG76SclImA==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="75905528"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; 
   d="scan'208";a="75905528"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 02:57:22 -0800
X-CSE-ConnectionGUID: aX/wEv8uRj+FkIvrKVlXxQ==
X-CSE-MsgGUID: 7JbNJ8dNQ6OGdtvT6ZVlfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; 
   d="scan'208";a="250233477"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.145])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 02:57:18 -0800
Date: Thu, 12 Feb 2026 12:57:16 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Yasin Lee <yasin.lee.x@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/4] iio: proximity: hx9023s: support firmware-name
 property
Message-ID: <aY2yDCY85zuxWpen@smile.fi.intel.com>
References: <20260212-upstream-20260219-v2-0-2b28fce5d09e@gmail.com>
 <20260212-upstream-20260219-v2-4-2b28fce5d09e@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260212-upstream-20260219-v2-4-2b28fce5d09e@gmail.com>
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-265020-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smile.fi.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: A8FB212CC0F
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 02:26:55PM +0800, Yasin Lee wrote:
> Add an optional firmware-name property to specify the firmware file.
> If not provided, the driver falls back to the default firmware name.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

-- 
With Best Regards,
Andy Shevchenko



