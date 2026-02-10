Return-Path: <devicetree+bounces-264541-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2KoZBPiOi2mhWAAAu9opvQ
	(envelope-from <devicetree+bounces-264541-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:03:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A438C11EDAD
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:03:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2108730709A3
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E331330642;
	Tue, 10 Feb 2026 20:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="SDEam4Ri"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D7932E751;
	Tue, 10 Feb 2026 20:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770753611; cv=none; b=XH/IYLyXMa1LX/FV0rOVAgXrOA8ysHIKPidennO/hSbBBjp2IkvVbqB2AyGp+xQMKy7Fo/wRVls64ZHqrD2j+JUBEYzg0SfJk+7S41Xi1SvWpeEZwZJ3d0ExUvz3DLbVyxQp8oqvptQwtNUu5uOSrmRedNCi3JTEw2r5XydlkHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770753611; c=relaxed/simple;
	bh=z+PutbAUh3ykS4neKuzP1pPv/kG7+PexxF5rDdykSV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rSgd0SP/o5JiZ18yiCTlftK0pJbs/Mzf71BbesMDLFCuI+B6d0m1I4Z7EmC4t5gcMKceAbrtOSENa8f5uP9KvJtnbXqe6N18S5s0wkLOc1qZwQdy1UaBhlYLchJSEnZU6P2eDxnSR0dzeO4T0AZdxs4Epsazc90S6Ft3WNJ45Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=SDEam4Ri; arc=none smtp.client-ip=198.175.65.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770753610; x=1802289610;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=z+PutbAUh3ykS4neKuzP1pPv/kG7+PexxF5rDdykSV4=;
  b=SDEam4Ri7iwHadlOEXTUx7hEiNxnYiEDyf34LkWkRCMVN4ujOXpdOtok
   TR+8vtdWTLlph4gRfLj5v5gwDDKPm5UYRGLXEFxJuf6fQonh41Gcqf1jg
   KpOaCV5PtknFMrgsFcWH/lz26Wmlp401XcHaJdWuT3vdjvZlN9DQQdc1v
   5rcRWVazi8alOy9y2IZaWA1q9e6lK2Hxz35tL6LPAic0K8YSHctkYcj22
   /6hxUhpHfvcEqAFyvFHSOqD5M9YCvyvuQ27G/+8V2g58O4SbwhoF/f6vx
   9NnOkSSxQb44/X32tt5If51dshuavi8OfP9CN3hhVeJdx+3DR/dt5WL3O
   Q==;
X-CSE-ConnectionGUID: D8XX0Wm2TuqssFxSovoyAA==
X-CSE-MsgGUID: Vovr6/+lRf6IzfxhT1l9Qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="89306413"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="89306413"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2026 12:00:10 -0800
X-CSE-ConnectionGUID: Bj8Wpi7cQnG5D8FtlHaCMg==
X-CSE-MsgGUID: vnGdley7RlGid+U4e90tEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="211482970"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.131])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2026 12:00:07 -0800
Date: Tue, 10 Feb 2026 22:00:04 +0200
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
Subject: Re: [PATCH v4 05/11] iio: amplifiers: ad8366: use devm_mutex_init()
 and drop mutex_init()
Message-ID: <aYuORAaFrifPMRvV@smile.fi.intel.com>
References: <20260210-iio-ad8366-update-v4-0-15505f7b15b4@analog.com>
 <20260210-iio-ad8366-update-v4-5-15505f7b15b4@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210-iio-ad8366-update-v4-5-15505f7b15b4@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264541-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:dkim]
X-Rspamd-Queue-Id: A438C11EDAD
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 07:42:05PM +0000, Rodrigo Alencar via B4 Relay wrote:

> Adopt proper mutex lifecycle with devm_mutex_init(), replacing
> mutex_init(). Also, Include linux/mutex.h header.

mutex.h should be included before as it's not a new API added in this patch.

Otherwise LGTM.

-- 
With Best Regards,
Andy Shevchenko



