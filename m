Return-Path: <devicetree+bounces-268641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACHpNrj6n2n3fAQAu9opvQ
	(envelope-from <devicetree+bounces-268641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:48:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 658E21A20B7
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:48:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AC92D30A02DD
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A3438F955;
	Thu, 26 Feb 2026 07:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="hNxHDNZR"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB4938F92E;
	Thu, 26 Feb 2026 07:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772091885; cv=none; b=A5BweCNxRBvFGn8fTtQeOc/jOj4e+ZnK60gJPT9523cq52Hapd1ppXNvxV+9OI1WAROoDAkS2zvfL6B06ccEjRudnLO8ur92OxXS1WZhQZTr3AoRXHRGL8VmnYYqoKIEm9wNKth/K7RoXWhlwx4w6j6EWz+XQN+npcGU+mskEQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772091885; c=relaxed/simple;
	bh=AU1H44c1hO6RHJPQyHc/FUgvRhXI9cDJz2drs+7HWpM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B5LRlHJ5nSPXu++ejKgfg5mLVdLdXXW1NpmJMsWVvsO7hSGwCw5mLJnBFAQeudhE5y9urCswFmgYNA7+PZirBEq80DrhEd5KTYNwN4Am9qccixYSUEP53iPw1t0BUZf9TpWSmYTHCUaqUV26JIosZ33aU68EMZOamNtOcpc5rQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=hNxHDNZR; arc=none smtp.client-ip=192.198.163.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772091884; x=1803627884;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=AU1H44c1hO6RHJPQyHc/FUgvRhXI9cDJz2drs+7HWpM=;
  b=hNxHDNZR58h7p9REA3YY0MzbzzLFjgq3bcDD088V6odRgahNdwaBRxZ7
   KaBbAmyKGdUKyHAJUlXDD7kg2tKGHi3+1kLHSMs3YlHKD2e0SrRE+7VHy
   5LDvSaPvOamzs1RDxml0RYexjb10nUQDvZ6PcE1mUt35g3OzEpz13L7eu
   eXD7OXEpYXPW5met20bTKHpV0BWS/Xv16ShyBlFFC3EYF0wWqxyDGW4uz
   2yHKccVqPsg/PLXZUyrAvsAU+33RL9EMoUW5FHWjMkA57k5k8AKa76+FT
   5sHfVGVTsPpp5T9MZNhQYpm1iVKa9W8JpounU4gFYKMPKUq94numiep0i
   g==;
X-CSE-ConnectionGUID: ovvpVsa9Ro2qU8D/vhIxtw==
X-CSE-MsgGUID: IK7IqqYFTCO4vKcbGGFFQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83776593"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; 
   d="scan'208";a="83776593"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 23:44:43 -0800
X-CSE-ConnectionGUID: M7H5OMOzQJyc5EE6ZCsinw==
X-CSE-MsgGUID: mTf5gK7vQyGXEnVBsbb6vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; 
   d="scan'208";a="214067332"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.244.167])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 23:44:42 -0800
Date: Thu, 26 Feb 2026 09:44:39 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v3 0/2] memory: Drop Baikal SoC code and bindings
Message-ID: <aZ_55_FiJOJjDBER@smile.fi.intel.com>
References: <20260225173930.3819351-1-andriy.shevchenko@linux.intel.com>
 <177209100398.15256.1580511983897104091.b4-ty@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <177209100398.15256.1580511983897104091.b4-ty@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268641-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: 658E21A20B7
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 08:30:03AM +0100, Krzysztof Kozlowski wrote:
> On Wed, 25 Feb 2026 18:37:19 +0100, Andy Shevchenko wrote:
> > The platform is not going to be supported, remove stale code and bindings.
> > 
> > In v3:
> > - combined patches in a series (Krzysztof)
> > - collected tags
> > 
> > In v2:
> > - split bindings removal to a separate patch (Krzysztof)

[...]

> Applied, thanks!

Thank you for your guidance and patience!


-- 
With Best Regards,
Andy Shevchenko



