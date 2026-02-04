Return-Path: <devicetree+bounces-262461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kExeM7yngmk2XgMAu9opvQ
	(envelope-from <devicetree+bounces-262461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:58:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 420A4E09F4
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:58:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 027A230F853D
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 01:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5613A28853A;
	Wed,  4 Feb 2026 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="avjHCfTk"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1F7274B58;
	Wed,  4 Feb 2026 01:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770170153; cv=none; b=MzXKpyFoqFFUj05un5QWr09gYROqhU+IzBix/VJmNh33aTU8AkSFVFoux853imLGnjfkb8MLjEFR+fWYS0LloJfqZOT9EbBrsERc5+gpMsk0rqOcfxARolH/JTLzS1hhlhx/Za0jdP5sZDKjakFlzLXd+ffmO1azE/BxcxRHhq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770170153; c=relaxed/simple;
	bh=2vWtMUBTqUDHKcR1hdrNKFLf3go5BEgPNjSk4du+8gI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DCIJDRQCnZH2+q/HtkyvV/L5fbxBnCKaxNxcJufwAmbdau+tN7osKA7+ycvTvBEW0ijfqmrYyMySVYwCiwNOj7fBHNquTUgHbPpo6lMdqzMt+RLazIapLAxqrf1Hd+2DKTkQZb09F9tB0ltd2lv+A1IioIbH/ru895jDqPBelwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=avjHCfTk; arc=none smtp.client-ip=198.175.65.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770170151; x=1801706151;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=2vWtMUBTqUDHKcR1hdrNKFLf3go5BEgPNjSk4du+8gI=;
  b=avjHCfTkNOMVALDBYMG/Dpnwyr9HXgFXVtuxsp3jr1+fq0a/Lg1xEejs
   dvyDDfwIecFcsqUy9c3O9YQdCKsTGc41AxyguO4XRyHB5TklA1UPyd2Su
   ZCpRi8ypJnPot3G09obJpWnlEgXwUAb7MMDQk2cmuVrwj/pq6m/iHaAnC
   q6ENMq2+eOCCXzte0mXSff8/g9DFrVng+Wr2WYXlEz4kta5/Kpp4US16c
   7BflUY71IEK570KxA2gavZ3rQvW9OeGxgTdYME+YOJkNBkVb2XKLklbGy
   2fQrY+EE2fO3GWxdG9Rdkx2EJCjMBvOw23mB78JotbSj/rlrxbHfzy3zS
   g==;
X-CSE-ConnectionGUID: LiRb1/HeTeGvVPhLKpcDDw==
X-CSE-MsgGUID: SMM+8VGWT9GK+TZ3pQm/cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="94004056"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; 
   d="scan'208";a="94004056"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 17:55:51 -0800
X-CSE-ConnectionGUID: rnZ1hlYJREKhn0eLNPMCJw==
X-CSE-MsgGUID: TIntLBILTFKfVZCmjBJObA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; 
   d="scan'208";a="232948274"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.168])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 17:55:48 -0800
Date: Wed, 4 Feb 2026 03:55:46 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 4/9] iio: amplifiers: ad8366: drop reset_gpio from
 private struct
Message-ID: <aYKnIjBS5OT0MxuY@smile.fi.intel.com>
References: <20260203-iio-ad8366-update-v3-0-5d5636b5181a@analog.com>
 <20260203-iio-ad8366-update-v3-4-5d5636b5181a@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260203-iio-ad8366-update-v3-4-5d5636b5181a@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262461-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: 420A4E09F4
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 11:24:10AM +0000, Rodrigo Alencar via B4 Relay wrote:

> Remove reset_gpio from the device state struct and turn it
> into a local variable, as it is not being used anywhere else.

Why not switching to reset-gpio driver to begin with?

-- 
With Best Regards,
Andy Shevchenko



