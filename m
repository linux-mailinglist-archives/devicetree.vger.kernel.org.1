Return-Path: <devicetree+bounces-274499-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOElJwmGsml4NQAAu9opvQ
	(envelope-from <devicetree+bounces-274499-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:23:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CA426F7C2
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:23:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2DE26301AABB
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 053EB3B0AEB;
	Thu, 12 Mar 2026 09:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="oFx5tPLA"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCF13AF655;
	Thu, 12 Mar 2026 09:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773307397; cv=none; b=SbLFGzOnaG6GZZM3ydzmBEBJd1vg3/YzHxeCPClNPbtRIBNgTs87prvn0YTbFJbu6CocicU3fjhXT9FXG0EqJ2tlSPD8/2T3gsv+9/4DCtdWP4nywYjCDHwsCySZJhGgQn4vCiZmj+f+iTYQV2eaQ2HDZ81YQN/LW2jCTo5pNnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773307397; c=relaxed/simple;
	bh=cUcEOqZqCTExnyY9I7uulz6Z/aK8JirtFa2WcNoqC5c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FZK9kkW0r2aWGu4N5exJBZI47Oy3FyvvXVh5HEjOPfrP/r9I3q0gCP4OsmwBsJpKhTaayL9uhYCARu/sc5qxqeXHfXeLxXRl40ghr11WgeBHZ+roHV/VkdqO3QG24BaZDzwbU7XFFDE0ltUJyJMwhIwo5UTE6YznOuwUP/Ov/HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=oFx5tPLA; arc=none smtp.client-ip=198.175.65.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773307397; x=1804843397;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=cUcEOqZqCTExnyY9I7uulz6Z/aK8JirtFa2WcNoqC5c=;
  b=oFx5tPLAVb8yN+mwL7UGYgCvGBm/nDlrKCTz0uDdOXNA5Tg7mmt9y8bM
   olCdBMFQ6khyJjcJbdpFhdqXzOXEgJgD53Nss0rNP7XIjzqoxejWcns3E
   Eb/eL6PC1Z//fhisNdczZVD8ylOEs3uEMN0Vo+HToaB4xeeBkmhwEvzNZ
   uyIft16tu7kqmu6nqBj6ERJjFx5ukRWkbkOCwvA45tjVZX4CNItz+dq8n
   0oxmPhWQYOFUx0IpCsvm9VhDa1IPfMkz/0G2zNB3feor7hbE841E3rPHy
   iXwfeib2t/1X4ADYK15I1EPeiJpGlTTiiDbBk78hV2SFuyxDZWCORB9R4
   w==;
X-CSE-ConnectionGUID: +jgyzNHZRNK0yeNE78T8hQ==
X-CSE-MsgGUID: lUKIceZjSJWIZI0qkg2MtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="91772808"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; 
   d="scan'208";a="91772808"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2026 02:23:16 -0700
X-CSE-ConnectionGUID: 7v2YHPbnScmfOD/dr+C72g==
X-CSE-MsgGUID: nHB2NdKUQgexoBQt02s/fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; 
   d="scan'208";a="225464186"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.112])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2026 02:23:14 -0700
Date: Thu, 12 Mar 2026 11:23:11 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v1 0/2] bus: Remove Baikal SoC pieces
Message-ID: <abKF_1WR5_nc2xpL@ashevche-desk.local>
References: <20260227072726.1142944-1-andriy.shevchenko@linux.intel.com>
 <20260311224356.GA1078900-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311224356.GA1078900-robh@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274499-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,ashevche-desk.local:mid]
X-Rspamd-Queue-Id: 13CA426F7C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 05:43:56PM -0500, Rob Herring wrote:
> On Fri, Feb 27, 2026 at 08:26:24AM +0100, Andy Shevchenko wrote:
> > Baikal SoC and platform support won't be finalised, remove stale pieces.
> > 
> > Andy Shevchenko (2):
> >   bus: Remove not-going-to-be-supported code for Baikal SoC
> >   dt-bindings: bus: Remove unused bindings
> 
> As there doesn't seem to be a maintainer for drivers/bus/, I just took 
> both patches.

Merci!

-- 
With Best Regards,
Andy Shevchenko



