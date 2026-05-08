Return-Path: <devicetree+bounces-294389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBO/AzyV/WmXgAAAu9opvQ
	(envelope-from <devicetree+bounces-294389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 09:48:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBE54F340C
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 09:48:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 34012305616E
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 07:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A7437186A;
	Fri,  8 May 2026 07:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="BaA0kvgO"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67B1358D00;
	Fri,  8 May 2026 07:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778226251; cv=none; b=nvvc07rI5ZoBX+v5INF3IDXdsJ3i+o7/y6g4IyamVZj7h4GB+DVWcvhbAVjVmVKqK7RUII2ojizznWLQM7OArIrP4uRftwNJuuQWH1JfyzNe+Cq8on/cs+3zAN95AN6ATaGGgpngLYlJH4vrITaJR7vUo2qZNatVzh1SGR9j5J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778226251; c=relaxed/simple;
	bh=CrsXYFpqHYrZaXj9ChLf5+1itY93SlAB4pux08nvjmw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wsm0WLDSVq2SWPJzLGpuZztzJtTcba2AgpCQgBPFK9gmpcFt4HOFYQkfxsItpOBdPheliJZDcAbOfiNSFBCelH6W+9QpaDBBJxZnpAeN45COOFyNdtUlo/zj7nlCLdClG1KsaVMzCxFZIKRbNRPgW5oRNgf8fy3KJN/RjirI1X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=BaA0kvgO; arc=none smtp.client-ip=192.198.163.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778226250; x=1809762250;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=CrsXYFpqHYrZaXj9ChLf5+1itY93SlAB4pux08nvjmw=;
  b=BaA0kvgOs3WxAbCNLZEM1cA3lRcDCOfqld3y++m6nqgfx0nkqci5y09A
   U/oAJGfIbzJ0L8l6xs/zU5HJfFXBp/sYmnLWN3TZLWRaM28ZdiVBwBwas
   CL9HlldSQnckx2zFJSSxTRbL0DNkoLrzS/IpKGKYSIYVOl0LiJ5bdsjk3
   zNEeCBFvPDaaBwlwH2omodd3j1IqgVljlLxKfOFxKSmWFsSxytTbKjzo4
   L7FRH5ZYsD4c67oHe/0sErreioTD1CYDtP5LjZeVN3Zdt+dJ0nevl7p1R
   o4h7dydwPLSgbwH0hp6SPYNmGOb0TTK9R1loHJzgIksVa2WszLJQoYwL3
   w==;
X-CSE-ConnectionGUID: x8NLZ7xgTSq0f6YpqG7qtA==
X-CSE-MsgGUID: DLNyqjWJR8m+qKXozLaDqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79044684"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; 
   d="scan'208";a="79044684"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 May 2026 00:44:09 -0700
X-CSE-ConnectionGUID: 2sOjOMRGR4qWhlzl+qM7uw==
X-CSE-MsgGUID: WU7+5RjsT+2TqnLXElsUGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; 
   d="scan'208";a="240692275"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.237])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 May 2026 00:44:06 -0700
Date: Fri, 8 May 2026 10:44:03 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: "Stan, Liviu" <Liviu.Stan@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	"Hennerich, Michael" <Michael.Hennerich@analog.com>,
	"Sa, Nuno" <Nuno.Sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] iio: temperature: ltc2983: Add support for ADT7604
Message-ID: <af2UQ7ZLA2DL4FWY@ashevche-desk.local>
References: <20260427132526.272716-1-liviu.stan@analog.com>
 <20260427132526.272716-3-liviu.stan@analog.com>
 <ae-pvxKhqmkWwXdX@ashevche-desk.local>
 <SA5PR03MB837776014440C2594B811BF7F63C2@SA5PR03MB8377.namprd03.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SA5PR03MB837776014440C2594B811BF7F63C2@SA5PR03MB8377.namprd03.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 7CBE54F340C
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
	TAGGED_FROM(0.00)[bounces-294389-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:dkim]
X-Rspamd-Action: no action

On Thu, May 07, 2026 at 03:31:14PM +0000, Stan, Liviu wrote:
> On Mon, Apr 27, 2026 Andy Shevchenko wrote:

...

> > > +	bool sub_ohm;
> > 
> > What does this mean? Perhaps rename to is_in_milliohms or something like
> > that?
> 
> The datasheet describes two cases for the copper trace sensor type: < 1ohm and > 1 
> ohm copper traces. The difference between the two is that < 1 ohm copper traces
> have bits 17:0 zeroed (excitation current and custom sensor data pointer configuration
> bits). For > 1 ohm copper traces an excitation current needs to be specified and the 
> custom table bits are optional. "Sub_ohm" reflects the selection of the sub-ohm variant,
> not the result units. For me "sub_ohm" or "is_sub_ohm" feels more in relation to the 
> datasheet, but if something like "is_in_milliohms" feels more understandable to you I can
> change it in v2.

So, this needs a good comment. And is_sub_ohm is definitely better.

...

> > chann? Perhaps just "chan"?
> 
> This, also, was present in the original code, the error messages I introduced 
> for leak detector and copper trace follow the same pattern though. Should I
> modify it everywhere?

Maybe the idea was to represent 'chan<N>'? Either way, the current message is
unclear, please add a preparatory patch that fixes that ambiguity and use the
same pattern in your new code.

-- 
With Best Regards,
Andy Shevchenko



