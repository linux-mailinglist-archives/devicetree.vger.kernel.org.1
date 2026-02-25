Return-Path: <devicetree+bounces-268234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCqCB+rCnmnsXAQAu9opvQ
	(envelope-from <devicetree+bounces-268234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:37:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 160EC1951D6
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 10:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3AEA030BD267
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2B70299950;
	Wed, 25 Feb 2026 09:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="KY7tBbWa"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B272DFA4A;
	Wed, 25 Feb 2026 09:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772011573; cv=none; b=MeWUpLv05KY3bpKloFihpGJrv6f0i9cOHKpLnFeYuz//YQkfIZmYsou9Euony2178wv9bux5wwZdAb+O9MDgqkmSJAcWLlrtQ2s9T+qJzrKcfn8JUMiEIj6oqxaCDWrJiackixewCV5OF7fSZd+dyCXvcZqlcL9kb3PzTKTMnug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772011573; c=relaxed/simple;
	bh=mPwI4I+oZQ5ODvyOPP95xP6WQ6WwlfvbRFtPwLS9hsg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EYZ9vTjUeAeb+q292oe7Rm4V8pEfECSlrYnzDi3oxwkDheP3/X38CtUbetzZJnS9dXhoBnFiItwJtIvSPYZBMAWXDEdxmhdSX79/YN23MtRFmJPhCPu/JDabs7LkPzxZCef3GUPNeWOUXrcG8ex9Stt6dR0xRQPicHgTrq1mqCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=KY7tBbWa; arc=none smtp.client-ip=192.198.163.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772011573; x=1803547573;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=mPwI4I+oZQ5ODvyOPP95xP6WQ6WwlfvbRFtPwLS9hsg=;
  b=KY7tBbWa/jeUtbnQ5oymivBTFjQcUjvcEIY4UgnZA8YLFElRBlx17e4X
   imKwDi7/vtAxX8DkPMh1QENpDzO8g0SXtivyFPMaUtz/kC2rITCspChmN
   E1Z2ae/vNtnDwPm9DiQC53xv878UXtjTvrq6sJPByWlVe0zh1kW7zZSR+
   E1reQy155msxRAqZhEvCf/67MjtQN0Es/XKsg5WdAxfIeiSWConzyH/MB
   FpvBKadTSd6hKq9lQ1FXER+ESk4udckuYQbj2CG6U3iwBuDtZFtWzvsaQ
   QjwR5PKHj42KAiMFHZF4J5FhnVKYRuio+59k3l7y02mZ53a5OxGllelU1
   A==;
X-CSE-ConnectionGUID: WBH4Kau+RHSrjvW0/9G5Vw==
X-CSE-MsgGUID: 1N/RIEoDTGyft5AugoScRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="72253725"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="72253725"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 01:26:08 -0800
X-CSE-ConnectionGUID: e1zhuwQ3Qm2Zs7HHwx0LKQ==
X-CSE-MsgGUID: ox47Z8fCTPSE2AHdXEJ5zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="216193210"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.71])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 01:26:06 -0800
Date: Wed, 25 Feb 2026 11:26:03 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v1 1/1] dt-bindings: cache: bt1-l2-ctl: Remove soon be
 unused bindings
Message-ID: <aZ7AK4NRKIztHlnG@smile.fi.intel.com>
References: <20260224152711.3615622-1-andriy.shevchenko@linux.intel.com>
 <20260224-unfounded-blizzard-3f3adb0eecc3@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260224-unfounded-blizzard-3f3adb0eecc3@spud>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[microchip.com:server fail,smile.fi.intel.com:server fail,sin.lore.kernel.org:server fail,intel.com:server fail];
	TAGGED_FROM(0.00)[bounces-268234-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,smile.fi.intel.com:mid,microchip.com:email]
X-Rspamd-Queue-Id: 160EC1951D6
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 04:43:58PM +0000, Conor Dooley wrote:
> On Tue, Feb 24, 2026 at 04:27:11PM +0100, Andy Shevchenko wrote:
> > As stated in [1] the Baikal platforms are not supported and
> > the respective driver code is going to be removed. Remove
> > soon be unused bindings.
> > 
> > Link: https://lore.kernel.org/r/20260224150616.3585591-1-andriy.shevchenko@linux.intel.com [1]
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> This feels like it should have been in a series with the driver removal.

Yeah, he pointed out to the DT submitting patches documentation, so now
it's clearer.

> If Krzysztof wants to take it with the driver to avoid warnings in his
> tree:
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks!

> Otherwise I'll revisit this in a day or two and grab it.

It will be a v3 of the combined patches in a series.

-- 
With Best Regards,
Andy Shevchenko



