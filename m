Return-Path: <devicetree+bounces-262316-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BR/DEIYgmmZPAMAu9opvQ
	(envelope-from <devicetree+bounces-262316-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:46:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B61ABDB76B
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:46:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9537B304803F
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 15:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5A013BFE34;
	Tue,  3 Feb 2026 15:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="jD9uMYwl"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6793AE6FE;
	Tue,  3 Feb 2026 15:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770133516; cv=none; b=HzLqjYPMVbnVk0EWrgwHnuBqQ3MzEGEpIpsjSdjz2bY6AEVBRoD0zSzNj9WXdqc7Bh6vXovvID/EhXlNzQfSUkXG5XjOz+b2W+Iuz4Yin5SafTMdTvLBX+iELbhYz5nJxYrDmFhh8gpFUslA/bhh8RAJl6iiGerj/Cns0Lu7pS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770133516; c=relaxed/simple;
	bh=0x3vFQU8/eP9ntepQ8YV4JtZJnkkQ0g4VvYS3BjMUJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nmFFicgliaa/JUsmTAoF0iLtrSRhD/EBP4qx+kRGg2P9+R5fbrFAr1u0oSUz3VySoPeNtJAH33bdBl50K99pKpmi1S/R29rAwI5abPHBwdGAbbSE16w7L8Hpnbipnig67ZxzBxIEGF9ACqNiSJW+ogXnbIA9Pq7P++fxCSHkAmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=jD9uMYwl; arc=none smtp.client-ip=198.175.65.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770133515; x=1801669515;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0x3vFQU8/eP9ntepQ8YV4JtZJnkkQ0g4VvYS3BjMUJ4=;
  b=jD9uMYwly17XQ1TXXbuKPs3/IlQv1PvhQzEtOX3dy9Q0txhdRHaMOH2d
   XMNsnNXRhmsBCm2Q47uNVqEVJSovDDtH3nvyKF2BC4gexnDK9n22Rn7gd
   TWmGfMrvNZS2xRe92HFwUCMASBPVnP3OdnR5a2vNCqJ1x2GTJU168EpGc
   0BH6LHoL8n3t9HsfDv0VSB2/EkdkDbPva/YxfAq8KQOyu8aGq4NwI4Qnj
   pTlxKRD0xwx2FgUktwyScYlItJnv0ZqocrR+frcNRgDumKhOY5oPyWnnK
   wjeKfG6f/AW68JvHxsauPjO34gz/JpGkXaM4E8e/UuOI1hAa/G9RYX9Fu
   g==;
X-CSE-ConnectionGUID: /fyqVB8rRIe5BQ2hp8C/UA==
X-CSE-MsgGUID: F+r7ouDbQVWmMzMMnpxDyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="81621445"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; 
   d="scan'208";a="81621445"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 07:45:14 -0800
X-CSE-ConnectionGUID: XN+HF3k4S2Cl1Yo6oN3vLQ==
X-CSE-MsgGUID: BuX/WtSYRvWgfK4bwye7wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; 
   d="scan'208";a="214363128"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.99])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 07:45:12 -0800
Date: Tue, 3 Feb 2026 17:45:10 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: abdurrahman@nexthop.ai
Cc: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v9 6/7] i2c: xiic: use numbered adapter registration
Message-ID: <aYIYBheQgIN71os8@smile.fi.intel.com>
References: <20260202-i2c-xiic-v9-0-ce4695f5267d@nexthop.ai>
 <20260202-i2c-xiic-v9-6-ce4695f5267d@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202-i2c-xiic-v9-6-ce4695f5267d@nexthop.ai>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262316-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: B61ABDB76B
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 08:37:23PM +0000, Abdurrahman Hussain via B4 Relay wrote:

> Use i2c_add_numbered_adapter() to allow platform devices to specify
> fixed bus numbers when needed.

Not sure about this. Doesn't it break the current approach? Please, double
check that.

-- 
With Best Regards,
Andy Shevchenko



