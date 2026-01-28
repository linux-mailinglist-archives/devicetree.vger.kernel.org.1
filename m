Return-Path: <devicetree+bounces-260516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMQaMuw0eml+4gEAu9opvQ
	(envelope-from <devicetree+bounces-260516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:10:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC52A532E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:10:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BAA11300362B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FAC52D1F7B;
	Wed, 28 Jan 2026 16:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="WPs051z4"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FFC29E0F8;
	Wed, 28 Jan 2026 16:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616381; cv=none; b=m+YTAGEOWy8Z0MUglN0o3gRDktuRlvPzghXz6oQWHNHUKDEGEI+VMhyI+fx8y+dsgyyXMNB/BZ12jPwj5+6sTgtq5N6Gqo4cfo4SEDLJU8p7k/07f1Cvlp9ffKdiJu28vFDKuUmszBONYqmeGC1P9SVL0dyCbuAWrhXH0VN8LqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616381; c=relaxed/simple;
	bh=a5f/qHahHVMqvq2j3+g/5RwSWC+rr/ywSbBxNTGrVLw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DyuV5p/ErLexSeMdXqkrLkqAaSKAIJ0iwhu92DtLBnBEMvHvdQ+0axUEELOR/tPBcVxCU0JzaSJL1f61fuMY2daykAGtkyBYPwWKXkVRa5ugNJB3mDpixJ06fyx/mfGt7PPrL3JAX72vfPj1ahbEmWP9IfNj8WAKGsTe7Bch7c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=WPs051z4; arc=none smtp.client-ip=192.198.163.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769616380; x=1801152380;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=a5f/qHahHVMqvq2j3+g/5RwSWC+rr/ywSbBxNTGrVLw=;
  b=WPs051z4bJ0Rs/EPHLZCMGuv1jLzU7s9mPGRflg8GpR7XjigCc6rItqn
   WEuw1qQ+Aee+8N26KlNWEePkryT6IUkgECYHkOiBpDd8IvH3/2a5wjG4o
   9j6yvDvpj2NcxP/3zqZDQhO+D1Xw7JRzouDtdTPuZZP0zGYFkoB7rK5gv
   Kg5r7v7E9CmibxlLlmSoBdLp7FHFBgpzwerQ1bSY/3We1tOeHFN4X4mV9
   hAXphHKiSf2V62cVzvwI/HQJZIvgvxFKtVQ0+r6NHevPBv9581ff3Iw1G
   4phSwLHHx3mDWeRjSKQcD0SDyjsd6au9WdKQtAZe79G1GwA3/HV6fCg1Y
   g==;
X-CSE-ConnectionGUID: OXRxH4CxQ+umkW9y2hYoGA==
X-CSE-MsgGUID: 7MdkGrI7QZWyPecA5IMcdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70033046"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; 
   d="scan'208";a="70033046"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2026 08:05:59 -0800
X-CSE-ConnectionGUID: vWdRqZNqRf+sY/vtIUrilQ==
X-CSE-MsgGUID: 4WmMqs1JTneERcvMolESMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; 
   d="scan'208";a="208741809"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.57])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2026 08:05:55 -0800
Date: Wed, 28 Jan 2026 18:05:53 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Danny Kaehn <danny.kaehn@plexus.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Benjamin Tissoires <bentiss@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jiri Kosina <jikos@kernel.org>,
	devicetree@vger.kernel.org, linux-input@vger.kernel.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Ethan Twardy <ethan.twardy@plexus.com>, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, Leo Huang <leohu@nvidia.com>,
	Arun D Patil <arundp@nvidia.com>, Willie Thai <wthai@nvidia.com>,
	Ting-Kai Chen <tingkaic@nvidia.com>
Subject: Re: [PATCH v13 1/3] dt-bindings: i2c: Add CP2112 HID USB to SMBus
 Bridge
Message-ID: <aXoz4Xs8csdxXeZU@smile.fi.intel.com>
References: <20260127-cp2112-dt-v13-0-6448ddd4bf22@plexus.com>
 <20260127-cp2112-dt-v13-1-6448ddd4bf22@plexus.com>
 <20260127160217.GA3776731@LNDCL34533.neenah.na.plexus.com>
 <20260128-magnificent-faithful-otter-c4f900@quoll>
 <aXoF4zi4SZrXaku5@smile.fi.intel.com>
 <3db84b61-e463-4362-b142-59d3ca6eae90@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3db84b61-e463-4362-b142-59d3ca6eae90@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[plexus.com,kernel.org,vger.kernel.org,gmail.com,linaro.org,nvidia.com];
	TAGGED_FROM(0.00)[bounces-260516-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: 8FC52A532E
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 04:48:18PM +0100, Krzysztof Kozlowski wrote:
> On 28/01/2026 13:49, Andy Shevchenko wrote:
> > On Wed, Jan 28, 2026 at 11:35:25AM +0100, Krzysztof Kozlowski wrote:
> >> On Tue, Jan 27, 2026 at 10:02:17AM -0600, Danny Kaehn wrote:

...

> >> That's actually rule communicated many times, also documented in writing
> >> bindings and in recent talks.
> > 
> > Does DT represents HW in this case? Shouldn't I²C controller be the same node?
> > Why not? This is inconsistent for the device that is multi-functional. And from
> > my understanding the firmware description (DT, ACPI, you-name-it) must follow
> > the HW. I don't see how it's done in this case.
> 
> What is inconsistent exactly? What sort of rule tells that every little
> function needs a device node? It's first time I hear about any of such
> rule and for all this time we already NAKed it so many times (node per
> GPIO, node per clock, node per every little pin).

That we should represent the HW as is. There is no "rule", there is a common
sense. Of course, it's possible to have all-in-one node, but this may lead
to a disaster when there are tons of devices in the Multi Functional HW
and some of them use the same properties. How would you distinguish HW
with two GPIO banks, two I²C controllers, et cetera? That's what my common
sense tells to me, putting all eggs into one bucket is just a mine field
for the future.

-- 
With Best Regards,
Andy Shevchenko



