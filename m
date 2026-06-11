Return-Path: <devicetree+bounces-310171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hA5KNclaKmrynwMAu9opvQ
	(envelope-from <devicetree+bounces-310171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 08:50:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4AE66F28F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 08:50:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=B84Zhgzm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310171-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310171-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 31654303F283
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 06:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A7193803F7;
	Thu, 11 Jun 2026 06:50:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1743769F7;
	Thu, 11 Jun 2026 06:50:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781160645; cv=none; b=jqJ7ii73sYuRTE6HbG0K1tpZPLOSj52D4cwDDmJ/DdUFnsFSN3bkVc8JAnCGawIUwus/aexDb4xBcXqqzoGJlc8AaCt6pDaIVPIt7itUjWFPefurMd1DebvIRNte0aXVb3wuNMMfR6HUFcHliMxJLtyl2kuX5itM70IQ9OCXvrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781160645; c=relaxed/simple;
	bh=iGBe9y93or20Qdzjli2h3cZtD6qMC2vvyAFX5CVUEj8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qgGrojvQmGD5FbY2nOAD2QTe4DTxQ0sfrFQhPqJ5s+Ze1xQV9UBueemuVw48t3T3LbzSMysGRJ0pf04GBJXWVH1KnEzqc9J5Gj+T6lzvCGyNsnqqkxhXLB9jZ6Z2ETrqO2tdG81hB5g+FBDVeLlQ+x1UieQCl1mE4V0ikMzai3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=B84Zhgzm; arc=none smtp.client-ip=198.175.65.14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781160638; x=1812696638;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=iGBe9y93or20Qdzjli2h3cZtD6qMC2vvyAFX5CVUEj8=;
  b=B84ZhgzmdhLqicJV56YeRA/Mzu3ioT3g0QB7cyQsR08MD9Ns7YGUdKX7
   7Ge9qn0q5zZV/z9Ft8pfxQFIDfyy0Lbf5y7ifFEfdnufXmie+vw3+ZoHa
   iYyBU9lWnvGelS0dZvo6zhqI28U3xPo8aNlVk1yb91AYUFu2hvevcMraE
   pOEtRFqOfOkBH59Gw52J/tWRvv0jUMVA/185K9jw0NAWGE9R6TCa0Evkw
   Nn7MzGKYBKN1oDhEss6h2y1ZyMlX7aoh+kIs8XiChsO7927gTzGMW4itx
   LhBE0w0A9xFyWIk1A55dmARgFJlvIVx8eGelgF1iXTH0/lWsGSV4T68f9
   A==;
X-CSE-ConnectionGUID: eGazaUXjQMKwhpNPtkxMjw==
X-CSE-MsgGUID: mWoXU/i1T8CyhztzdR1A7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="85863035"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; 
   d="scan'208";a="85863035"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2026 23:50:37 -0700
X-CSE-ConnectionGUID: j3IQ+7NyR0KhRCeMrQsDLw==
X-CSE-MsgGUID: u9ab8cXeTcCzaW0mcI3jww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; 
   d="scan'208";a="246267613"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.123])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2026 23:50:33 -0700
Date: Thu, 11 Jun 2026 09:50:30 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Maxwell Doose <m32285159@gmail.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	Tomasz Duszynski <tduszyns@gmail.com>
Subject: Re: [PATCH 2/2] MAINTAINERS: Add myself as maintainer for PMS7003
Message-ID: <aipatjyVcltbspRJ@ashevche-desk.local>
References: <20260609160326.45123-1-m32285159@gmail.com>
 <20260609160326.45123-3-m32285159@gmail.com>
 <20260610-pastoral-dark-ostrich-5ca3f6@quoll>
 <CAKqfh0Hi8EkShh3s4dUqAJRDExQLR0NVOvd4An+bY5hat4-Lhw@mail.gmail.com>
 <e00caff5-55e4-428f-bc57-3885699b221c@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e00caff5-55e4-428f-bc57-3885699b221c@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310171-lists,devicetree=lfdr.de];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:m32285159@gmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tduszyns@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,baylibre.com,analog.com,vger.kernel.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C4AE66F28F

On Thu, Jun 11, 2026 at 08:37:33AM +0200, Krzysztof Kozlowski wrote:
> On 11/06/2026 00:24, Maxwell Doose wrote:
> > On Wed, Jun 10, 2026 at 4:09 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >> On Tue, Jun 09, 2026 at 11:03:26AM -0500, Maxwell Doose wrote:
> >>> Tomasz's entry is no longer valid, as he is not active anymore. Add
> >>
> >> Why is not longer valid? I see activity in Feb...
> > 
> > Strange. According to git log --author="Tomasz Duszynski" last commit
> > I have from him is 2023. We also did have an RFC open for a month on
> > linux-iio with Tomasz Cced with no response.
> 
> So you did not check enough... and no one needs to read RFC :/

Hmm... lore.kernel.org shows last activity November last year (07-11-2025).
What other sources do you suggest to check?

-- 
With Best Regards,
Andy Shevchenko



