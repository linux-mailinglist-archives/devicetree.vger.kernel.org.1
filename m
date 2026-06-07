Return-Path: <devicetree+bounces-307774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GpXFAvImJWoGEAIAu9opvQ
	(envelope-from <devicetree+bounces-307774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 10:08:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 610A164F112
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 10:08:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VbpmVBIt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307774-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307774-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 42E9E300DD44
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 08:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FFE82F5498;
	Sun,  7 Jun 2026 08:08:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49076226CFE;
	Sun,  7 Jun 2026 08:08:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780819693; cv=none; b=qpOr2d+tZZADg2VUffjzvWpFVyJcTJx4BaIfBPawR4O2zDHojWYNR9HE5Ct8tN4En7+ycfayVS8sN0AHMDB34QtkZrBh5BMdv2z9qMH6fcfpVDZBtesoKDAy2a07ZNW4egQAjrKHtRMXpGknXkbbwMpGuAPDj+xT+YmyMV/JRy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780819693; c=relaxed/simple;
	bh=v8oCVZ7Fhk20qYPs+YW8p6YF47K47iAvoArMo8RzC/s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pIkPIQKBXXLc2JS4sT+ox0cYVytxmkOgllplf30Y3XqyiEd2mAZEjeqttL5L7CSEROjoQQ3DmlUtGk2Cv1LIQhufT/qq1Mxeq//g2HLKcC66052LGyvSLsCAgsg3CZ5wDSdh0kVYwlgHVYVSrsdP1r5X6VdkQRowzOm8wwpShS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=VbpmVBIt; arc=none smtp.client-ip=192.198.163.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780819692; x=1812355692;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=v8oCVZ7Fhk20qYPs+YW8p6YF47K47iAvoArMo8RzC/s=;
  b=VbpmVBIt67rDYgGnpg2nWXXYREBNxqnYOQU8bSL2Vr6apSosnPtxzFXS
   WvtWt5FxBqMoUXUIdRU5C79iQWhC/z36qvkBjvWyPrAzYV8LxZ5potPrZ
   Jv4uffBXtLuBqLZEgIIKDKGb2XqXIa+GeakIzJabq6gQgR4jB/ga4KKNY
   iVUsgOCwIMfIHdgoYhkx94yuVqrEwaLFuJgIC/9Ny9WrPhaevYPejpzes
   FQZz4QYj5DxNYT2KQSbJv9t8SFgPksVwcJQjj5Axq4ex3lKqBEpkDOmND
   SlsRMPN1Tcyz+Iy+1fmFuHQ7I95L6mJ/qMXv4ugx44zmJfVE296lqcuEP
   A==;
X-CSE-ConnectionGUID: 657+5xJqQ72MxGzY9Ak/Nw==
X-CSE-MsgGUID: 2t3cZupFQNWru9e/foCoZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11809"; a="92152790"
X-IronPort-AV: E=Sophos;i="6.24,192,1774335600"; 
   d="scan'208";a="92152790"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2026 01:08:11 -0700
X-CSE-ConnectionGUID: NDikdfbFThSYLY85Yf7hmg==
X-CSE-MsgGUID: yK6ojSZhRVuPJMbIhwljrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,192,1774335600"; 
   d="scan'208";a="238888155"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.86])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2026 01:08:08 -0700
Date: Sun, 7 Jun 2026 11:08:06 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Salih Erim <salih.erim@amd.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Conall O'Griofa <conall.ogriofa@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Salih Erim <erimsalih@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/5] iio: adc: add Versal SysMon driver
Message-ID: <aiUm5vmG7EHmp52x@ashevche-desk.local>
References: <20260606051707.535281-1-salih.erim@amd.com>
 <20260606051707.535281-3-salih.erim@amd.com>
 <aiUmb0WMPHi0D6GH@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aiUmb0WMPHi0D6GH@ashevche-desk.local>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307774-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:jic23@kernel.org,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:from_mime,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 610A164F112

On Sun, Jun 07, 2026 at 11:06:13AM +0300, Andy Shevchenko wrote:
> On Sat, Jun 06, 2026 at 06:17:04AM +0100, Salih Erim wrote:

Ah, and missed part below.

...

> > +#ifndef _VERSAL_SYSMON_H_
> > +#define _VERSAL_SYSMON_H_
> > +
> > +#include <linux/bits.h>
> > +#include <linux/mutex.h>

> > +#include <linux/types.h>

types.h is not used here.

> > +struct device;

> > +struct iio_dev;

Neither this forward declaration.

> > +struct regmap;

-- 
With Best Regards,
Andy Shevchenko



