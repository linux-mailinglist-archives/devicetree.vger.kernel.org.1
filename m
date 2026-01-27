Return-Path: <devicetree+bounces-259797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEMkC8eHeGk/qwEAu9opvQ
	(envelope-from <devicetree+bounces-259797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:39:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5646B91D6F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:39:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CE9243003BE9
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9D472E11C7;
	Tue, 27 Jan 2026 09:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="m6aYYqgi"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210262C0F7A;
	Tue, 27 Jan 2026 09:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769506753; cv=none; b=s/7bnRFqEdckJNx2X175D6BA/teiw3GEmq/7jpq7RKhxzHhNlzrtBngawqS2QFSexUzOktVDsBUp5l0nOgmO4cAu+Ix50k+2GY73oJiKjzxPpAFlSsnsXiOVXXGKlQNOW0qbywSyrBA8GxelRI6/msecUPWOgvDPD7XoUhdvp4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769506753; c=relaxed/simple;
	bh=0H0A1G/t2czBhckAV5bQ3Z3fhdMMfySyBYFXGzClirc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SM8UkZ3XvWSc78yyFFY2pA0rWXeoRBMHNivbXv7+14nAMaDhe6cJ0Y+/kfW3Vto3zounbUchET0nIMvlTzfhPXsSBhlk3h8Z6KcLvsRTWOe6Ub9tafG/BY5Ugr1/y/dr9Epx9Mj8/ob1a7L8LfqDiQusqqcCzQqGwx6RHPG3/qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=m6aYYqgi; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769506752; x=1801042752;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0H0A1G/t2czBhckAV5bQ3Z3fhdMMfySyBYFXGzClirc=;
  b=m6aYYqgimOLQ1BI02wVUpRNGpO7kCJSveFQgOKDtfnIpyTukmDo6QZQj
   O/JFQCU4tTD2Vj/iljAyXZusrf/obViqueXEYbiCjSzCV/0u8nAUBUIcf
   cHK8ZlRj9Klf2UjZa5uiWkT0JVSRKJpSqvQEn8tkd33jDC5amJgSbG6fL
   4nQyQ08DAtsNVEedBbAA/Id0xipcYXN4jSxtC+HV9XM/GzcLl1rkdRU1r
   9b4htbdj+y2yxLk1q4YrouFYpAUG96M644dLfbfzOBg+nCraE/iFQcVFN
   o1DS8OFNlrtg4vSp7x2c5A/dI6weH0r3ythO0S8Bs+dBXGOrU5B8U6dRe
   A==;
X-CSE-ConnectionGUID: 9fogDHnXRranokl8zqvz5Q==
X-CSE-MsgGUID: yW83l99sS1ygOaOexYmwrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70591626"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="70591626"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 01:39:11 -0800
X-CSE-ConnectionGUID: 0SkoKUduTUCGAiPFvI9HNw==
X-CSE-MsgGUID: tGE2q9KeSt6oYs33nFTn6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="212787380"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.248])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 01:39:08 -0800
Date: Tue, 27 Jan 2026 11:39:06 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: abdurrahman@nexthop.ai
Cc: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, info@mocean-labs.com,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 3/6] i2c: xiic: switch to devres managed APIs
Message-ID: <aXiHunnXmHb8oqTN@smile.fi.intel.com>
References: <20260126-i2c-xiic-v5-0-88a16a28721c@nexthop.ai>
 <20260126-i2c-xiic-v5-3-88a16a28721c@nexthop.ai>
 <aXiG5p9BQ-vkAgbV@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXiG5p9BQ-vkAgbV@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259797-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smile.fi.intel.com:mid,intel.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5646B91D6F
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 11:35:38AM +0200, Andy Shevchenko wrote:
> On Mon, Jan 26, 2026 at 05:08:18PM +0000, Abdurrahman Hussain via B4 Relay wrote:

...

> >  	if (ret < 0) {
> >  		dev_err_probe(&pdev->dev, ret, "Cannot claim IRQ\n");
> > -		goto err_pm_disable;
> > +		return ret;
> 
> 		return dev_err_probe(...);

Actually you are right as here we remove the message in the next patch,
so discard my previous comment.

> >  	}

...

> >  	ret = xiic_reinit(i2c);
> >  	if (ret < 0) {
> >  		dev_err_probe(&pdev->dev, ret, "Cannot xiic_reinit\n");
> 
> Ditto.
> 
> > -		goto err_pm_disable;
> > +		return ret;

But here it will stay, so

		return dev_err_probe(dev, ret, "Cannot xiic_reinit\n");

> >  	}

-- 
With Best Regards,
Andy Shevchenko



