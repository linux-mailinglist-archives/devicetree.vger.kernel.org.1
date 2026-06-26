Return-Path: <devicetree+bounces-316037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZS24K59QPmp+DQkAu9opvQ
	(envelope-from <devicetree+bounces-316037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:12:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 431126CBF31
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:12:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FdsVa1fE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316037-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316037-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5218B30268A7
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E80853EB0ED;
	Fri, 26 Jun 2026 10:12:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2863EB0F0;
	Fri, 26 Jun 2026 10:12:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782468763; cv=none; b=mQjXo+TMr0PoErx2MQIbP2hmNpPo1ful/VC9vOEiVwiLUIohjekjW8wVEh4zCZ+7ymlmI9ujSJEJywPAJrxwWKO2np3t5buV8Lu3JbVNIYQfgSNTvRye2fX5eU4s0+KpqvlpZuQO2lXNc2w6WkCEobZZzaBj6uwRzpiH8rqZ3+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782468763; c=relaxed/simple;
	bh=SzdOWx+Vy8TBHX5TAygPNVYMB5Nfs+ItDDFX3MvprEU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NiuOZPl0bAYUtRDmLo+WoFgeW3SGo4t6prmBwarp5tz/iwyr6oaCA/hzyc3YWMpNpZjWdwAnHihx9F0ZwLfmHJRiW7RV37AokHy/tLxY5ZhSkFlgmFRT4tkjGtl4F8T9foa4e8Kh+6eIcPgaTZyRXaQyUMf98KFn/S9w9uxTqHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=FdsVa1fE; arc=none smtp.client-ip=198.175.65.14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782468762; x=1814004762;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=SzdOWx+Vy8TBHX5TAygPNVYMB5Nfs+ItDDFX3MvprEU=;
  b=FdsVa1fEIaiiwu495RFaq+z8Tv6DlwflEYVxk8I2EQXrSGsVbpLNgo9U
   t4klUTU4+nwWB/hxHXiXDIqhcTwYW9ETsyTBS1DlDJvDciS/pYy2vVuhe
   mI/kEyfPi68KfDBywmn3tc6kau7axCAsLKiH2fpFnYnxh9No0riVx3me/
   AiX0Jey5jjhrKv8OriOFscoRNU3LE6Z5RAB6rNG+gWTcVYpPZo/BqIQ0I
   LJKNZNnYN9CY4zN+093nSBpEpl6erW01IQKv2WkoFzQtyi7/5KvVhWBDg
   2r34TfG9JHwXjzAmtQBKRoh5y1V7Qr2tGZqVm2CRSvzMX7uWatg5Cw8o0
   A==;
X-CSE-ConnectionGUID: ODXDuBf6RfydPABXuoh9Qw==
X-CSE-MsgGUID: ydl2cTLcTjuuM+lvOMi1dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="87163080"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; 
   d="scan'208";a="87163080"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2026 03:12:42 -0700
X-CSE-ConnectionGUID: cpTng0r6Sa6sGzC3CbpDcA==
X-CSE-MsgGUID: UF38ZpnPSqyehC85gRPoaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; 
   d="scan'208";a="251954075"
Received: from conormcd-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.244.1])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2026 03:12:33 -0700
Date: Fri, 26 Jun 2026 13:12:30 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: "Paller, Kim Seer" <KimSeer.Paller@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	"Sa, Nuno" <Nuno.Sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
	"Hennerich, Michael" <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	linux <linux@analog.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 1/4] iio: dac: ad3530r: Refactor setup to table-driven
 register bank approach
Message-ID: <aj5QjuQDPX9Oa-Y0@ashevche-desk.local>
References: <20260615-iio-ad3532r-support-v2-0-84a0af8b83fa@analog.com>
 <20260615-iio-ad3532r-support-v2-1-84a0af8b83fa@analog.com>
 <ai_PCrlH49Qqw-Po@ashevche-desk.local>
 <PH0PR03MB7141B6D49AA897B29C42A121F9EB2@PH0PR03MB7141.namprd03.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PH0PR03MB7141B6D49AA897B29C42A121F9EB2@PH0PR03MB7141.namprd03.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316037-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:KimSeer.Paller@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:Nuno.Sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 431126CBF31

On Fri, Jun 26, 2026 at 08:44:57AM +0000, Paller, Kim Seer wrote:
> > -----Original Message-----
> > From: Andy Shevchenko <andriy.shevchenko@intel.com>
> > Sent: Monday, June 15, 2026 6:08 PM
> > On Mon, Jun 15, 2026 at 02:20:15PM +0800, Kim Seer Paller wrote:

...

> > > +	for (unsigned int i = 0; i < num_regs; i++) {
> > > +		ret = regmap_write(st->regmap, regs[i], val);
> > > +		if (ret)
> > > +			return ret;
> > > +	}
> > 
> > Can the above helpers use bulk operations or regmap_multi_reg_write()?
> 
> I think bulk operations don't apply for the AD3532R case, since bank 0 is around 0x102x
> and bank 1 around 0x302x  two register banks, not one continuous block.
> For regmap_multi_reg_write(), since all the registers get the same value, we would
> have to build a reg_sequence, and it ends up being the same number of writes with
> just more code. So I think the simple loop helper is better here, but happy to switch if
> regmap_multi_reg_write() is the preferred form.

No need, thanks for the explanation.

-- 
With Best Regards,
Andy Shevchenko



