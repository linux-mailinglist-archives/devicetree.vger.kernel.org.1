Return-Path: <devicetree+bounces-266105-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id xA8oLTxblGmrDAIAu9opvQ
	(envelope-from <devicetree+bounces-266105-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:12:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 493CC14BCDA
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 487CC3023E2A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1DAE3382EE;
	Tue, 17 Feb 2026 12:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="c9xXlYYE"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461533382DB;
	Tue, 17 Feb 2026 12:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771330360; cv=none; b=YSkOoiDDCcBwp3kb2HPwrU+tdsFMrBpPyVyeNvGpSsKU7nTPnhIqvJhvsf7iQ2BE2WtJ9MMo2g9ZAEdIi4nJ19ilc8bg82zmqGcHfmbETnG8yV1Xz4IovQl/7HJvjAxRlKPTMWjeSCbqStMhq8X61SIFWjsXqtBLKHaV1YQBYBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771330360; c=relaxed/simple;
	bh=DffEBAU0Otkt0AfWLTXwQI5GxIv0mVRQAsGRRGvA7u0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E5b6SGdsZ7Yka5DNWiFLlMyGDIeCDkFTaVdt0dxDs6lmylEHP/4nZUt4WCnZOrqolKd+/G+h/98qYXfYdQQXUd5z44qjXFLz2bTIZzqGOyKNCXCztE41EHmPUGtoVrW5vusyDckzmZvnCnD83MHB59itOZ4gufnA/VbAEeVy+7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=c9xXlYYE; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771330359; x=1802866359;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=DffEBAU0Otkt0AfWLTXwQI5GxIv0mVRQAsGRRGvA7u0=;
  b=c9xXlYYEK3ffkhqcfQbo3GCmlH14wmaIHqkxYM8ZN12PZrkXET3lmDqx
   K64IJz13UcBS1ssy5UealAIdiGqeAJcSufBJUDk+24dyh5dXpjODpuwVA
   ngh4H+A2GxAJlcKJSuJX/zs6bZJFHWr2JpSWfLFba0gnwL+tBYgwSLs/F
   rLNxX8xRXP45VaLODkvxzsROlA1vhU2lzC+3yWPVEGWcdhZvgr7CMp0a0
   jq4UYXIovXPO8m0Muyq7W73WT6WMrDGEVYR0Yier2MToS4XbFwm9YvmA9
   xdopDQ5IFMOcpqB3t65SUXIGCLNWcCNLSb0+7IorxIc4fprCWmv+Qrk05
   w==;
X-CSE-ConnectionGUID: 4BNZ4wPVQgizisDzuH3ftQ==
X-CSE-MsgGUID: WXhvYK4rT+ScNyrmMdGUfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="72463030"
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; 
   d="scan'208";a="72463030"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Feb 2026 04:12:38 -0800
X-CSE-ConnectionGUID: mgQjT8coQYiArRbNSVpcYw==
X-CSE-MsgGUID: X8DA1lGHRFSZTnn0X9D4xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,296,1763452800"; 
   d="scan'208";a="212950667"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.245.123])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Feb 2026 04:12:36 -0800
Date: Tue, 17 Feb 2026 14:12:33 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Ariana.Lazar@microchip.com
Cc: dlechner@baylibre.com, nuno.sa@analog.com, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, robh@kernel.org, jic23@kernel.org,
	andy@kernel.org, krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 2/2] iio: dac: add support for Microchip MCP48FEB02
Message-ID: <aZRbMaavH14pV2Mv@smile.fi.intel.com>
References: <20260212-mcp48feb02-v1-0-ce5843db65db@microchip.com>
 <20260212-mcp48feb02-v1-2-ce5843db65db@microchip.com>
 <aY3m5V05FOH5sut6@smile.fi.intel.com>
 <f8e45b0ef7af336dbde04ce53d117c6e47d2190d.camel@microchip.com>
 <aZQepHXptVvBsQuL@smile.fi.intel.com>
 <d910218942390c6cbb9be403b6ff6261b84260d3.camel@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d910218942390c6cbb9be403b6ff6261b84260d3.camel@microchip.com>
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
	DKIM_TRACE(0.00)[intel.com:+];
	HAS_ORG_HEADER(0.00)[];
	TAGGED_FROM(0.00)[bounces-266105-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: 493CC14BCDA
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 11:38:10AM +0000, Ariana.Lazar@microchip.com wrote:

> > I think something like a second variant. But as it seems going to be
> > an
> > agreement that this driver is not needed and rather we need to
> > refactor
> > existing one to add the support for SPI chips, these comments won't
> > make
> > much value.
> > 
> > --
> Thank you fo the review. I think these comments are revelent because
> that code is common for both drivers, the SPI and I2C.
> I will refactor both drivers to be merged into a single one and in
> order to avoid multiple code refactoring, if you agree, I will
> implement those changes as well.

Sure, if you have time for that. I'm not insisting...

-- 
With Best Regards,
Andy Shevchenko



