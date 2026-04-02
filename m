Return-Path: <devicetree+bounces-283862-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHe0BFstzmnIlQYAu9opvQ
	(envelope-from <devicetree+bounces-283862-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 10:48:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69841386453
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 10:48:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E920A300D6A5
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 08:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B4AB38C2C7;
	Thu,  2 Apr 2026 08:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="LawKv5O5"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87B1388E69;
	Thu,  2 Apr 2026 08:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775119276; cv=none; b=F27daKb3e+2UbFrDh+JFa7f1OoNuLFNmj4NmLEpmV4GDK1mh1Pc4KUarsvKifYZnJiy+HKB1AnOqlYlyjh4N/zZAzxpGj1lmYoKMfpb9wbwQI0vdLeXJRPJFMSeiFZliXG8dGYzb6H56ZVBVCGF4fkKBnLr0Z7dzA7vE/ctsI1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775119276; c=relaxed/simple;
	bh=AH31cdEdkXRJ+mzQD9yy7jphqQE0kCv+LgLq/VqHV50=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CzPL+yBbF5RURTR2XUaivWvRYRQmjdIuixCK4a1Ed6VhRDxFYzjIFfh+dudIoxwT/zY2m1v/i41trAwFdRrW88HckSjOLHTVpgx84i7yWuTUxdvck5k7fHIXnuA6klYdsPY+2eJ604hHuOrTDw90gqnqpaXk47HnmBhKDq3JfSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=LawKv5O5; arc=none smtp.client-ip=198.175.65.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1775119275; x=1806655275;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=AH31cdEdkXRJ+mzQD9yy7jphqQE0kCv+LgLq/VqHV50=;
  b=LawKv5O5mPIKNRfPZ08V4nzFUp/qlefPOjPPSyFVvuK7QqSSM9/4jY8v
   LzkTu5BFj4OpheNlJFCZIlt6yvqX+to5N96sAJdlOdc4ZBr+iXihUYCCe
   PQKJt1CE73GjVRjxH3OQAn/lcblsEzCbMCQ81H1yqgJPeSiVJywzvX3sE
   ZJWFwNv27gNWRwOHMAtrke2/umbZNJ65eI/Ia7Ur7GYTNxsySzHDXmNyG
   TNsAQgAn6yjfuhz69uLpZtA8eCfDeOcxQaptkfaX4VJJE5whbgxaWG+g2
   KEMBR7s+wJG6q5KaM4zLjPM62j3GZvlhY/FO5+KtMIHrPJnVGfLlU5xTo
   w==;
X-CSE-ConnectionGUID: GS34fIBTTaeGK9TiJFxnqg==
X-CSE-MsgGUID: CHFBMglERAGUuwZG51FBVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="76361637"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; 
   d="scan'208";a="76361637"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2026 01:41:14 -0700
X-CSE-ConnectionGUID: g/0uBSCIQ/+4W3PD7naK9w==
X-CSE-MsgGUID: vqHMbQQhSqGsqpFiSQQ5sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; 
   d="scan'208";a="231716922"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.31])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2026 01:41:11 -0700
Date: Thu, 2 Apr 2026 11:41:09 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Sheng Kun Chang <nothingchang@mirrorstack.ai>
Cc: jic23@kernel.org, lars@metafoo.de, Michael.Hennerich@analog.com,
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
	gregkh@linuxfoundation.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-iio@vger.kernel.org,
	linux-staging@lists.linux.dev, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] staging: iio: adis16203: align MODULE_LICENSE with
 SPDX identifier
Message-ID: <ac4rpSyxTg2qPy86@ashevche-desk.local>
References: <20260401162458.88110-1-nothingchang@mirrorstack.ai>
 <20260401162458.88110-3-nothingchang@mirrorstack.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260401162458.88110-3-nothingchang@mirrorstack.ai>
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
	TAGGED_FROM(0.00)[bounces-283862-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid]
X-Rspamd-Queue-Id: 69841386453
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 01, 2026 at 04:24:56PM +0000, Sheng Kun Chang wrote:
> The SPDX license identifier is GPL-2.0+ (GPL v2 or later) but
> MODULE_LICENSE was set to "GPL v2" which indicates GPL v2 only.
> Change to "GPL" which means GPL v2 or later, matching the SPDX
> header.

This description has nothing to do with the macro parameter. GPL is new,
GPL v2 is just legacy alias.

Also I think this is unneeded churn. If we want to unify this, needs to
be done for all drivers in IIO.

-- 
With Best Regards,
Andy Shevchenko



