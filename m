Return-Path: <devicetree+bounces-264663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKAGMi1CjGm/kAAAu9opvQ
	(envelope-from <devicetree+bounces-264663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:47:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E17122616
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2570030263F7
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E43AB352FA7;
	Wed, 11 Feb 2026 08:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Sq16N2Mf"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F354E3542DD;
	Wed, 11 Feb 2026 08:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770799628; cv=none; b=m0ix/qxG21z6cKeusTd+9b2aybZcg4gPWRmuKdiWmKbFh9ZoDXMB3gjbnXB7LrSW9sOysyiSZl8MzhU1K10UVp5MLRtYN3WFJEEJhpZFhnIrpxiZ6jt3WRZ8dhS4ZtHFxplVi+Eo0w0vu2DX313CpFZtKOmjs2l7mmALQKwDhBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770799628; c=relaxed/simple;
	bh=dKXaoUlFrP9ltcQ3ZCib3rfKKB8PcOXTv9qK/YHa70o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EZno8UGzuf9vzc3wC9XVYRUhBqvfHHnq2QHwDcFRO0XAPKOiqE8E3x8LWaI/DJlMuN8r0zZfJj1EOO2o3vaC4GDDrUhnBnMBdMwzqrNq0Uh10SWJU40Ry5dwjeSqqRZ3fG2nb2R3pYPwQO+sZ6UZLqWqXQyK45Xfnggpw9ZPSF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Sq16N2Mf; arc=none smtp.client-ip=192.198.163.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770799627; x=1802335627;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=dKXaoUlFrP9ltcQ3ZCib3rfKKB8PcOXTv9qK/YHa70o=;
  b=Sq16N2Mf/pbBC/PuRff9+pMbo9fzSeojo59+fOwaN18HtQoyTouOxuPA
   HIHbZAzDE+GReTkC59NRvkja30Xzyc12QLG65fOEHvSLLxZwMgOaxUb87
   GoYcBBbDnOU4rataOCUXfhMhx6KqZeFiIe02uW+xRoh166dsG4mDY4ObR
   gsmGF60R7X6uXKqkOy2RDHFkLofkNPT6vqmfGZg1cMNl30r9yIunMnKEX
   HfTfZcla4hPkrpwjK3QwZYTrS8PL1P/gPE7/fw7ttirCouvH4JTTj6Y5t
   O7JdwNw+3fwzq3bqP+FVJIvNfU4tZtrH3WuHOyBo33QlZISMGVbIa/z/N
   g==;
X-CSE-ConnectionGUID: gSRPXwyNR4OjxKYhI0OqtQ==
X-CSE-MsgGUID: DQYbYVdmT9mny0fA+vASfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71839859"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="71839859"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2026 00:47:06 -0800
X-CSE-ConnectionGUID: JQTw2U0oSQiaZNunnspMNg==
X-CSE-MsgGUID: IxFVc3HWTQq6BjPe4w6Y9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="211590780"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.244.220])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2026 00:47:03 -0800
Date: Wed, 11 Feb 2026 10:47:01 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Yasin Lee <yasin.lee.x@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 5/5] iio: proximity: hx9023s: add ACPI support
Message-ID: <aYxCBSgIx7HYVv9h@smile.fi.intel.com>
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
 <20260209-upstream-20260219-v1-5-2b4d74e309d1@gmail.com>
 <aYmeeWeXRdPHZxRr@smile.fi.intel.com>
 <CA+NOmzLXv8C-i-dHxdsQ2bCCYxhU4ay2ip6LXK-rcimWSZA-tQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+NOmzLXv8C-i-dHxdsQ2bCCYxhU4ay2ip6LXK-rcimWSZA-tQ@mail.gmail.com>
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-264663-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: 63E17122616
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 11:54:11AM +0800, Yasin Lee wrote:
> On Mon, Feb 9, 2026 at 4:44 PM Andy Shevchenko
> <andriy.shevchenko@intel.com> wrote:
> > On Mon, Feb 09, 2026 at 11:37:06AM +0800, Yasin Lee wrote:

...

> > > +#include <linux/acpi.h>
> >
> > Why?
> 
> Ack. I Will remove this.

Hmm... Don't you need to add mod_devicetable.h?

...

> > And since you added a new ID, please add to the commit message if this is
> > in a wild (and hence the vendor and model of the device that it has) and
> > also an excerpt from DSDT to the comment block (after '---' line).

> Thanks for your comments.
> Regarding the ACPI ID "TYHX9023", it is for a product currently in the
> late stages of development. We are in the process of formally
> registering the "TYHX" Vendor ID with the UEFI Forum.
> To ensure everything is compliant, I will withdraw this ACPI support
> patch (5/5) for now. I will resubmit it as a standalone patch once the
> ID registration is officially confirmed and I can provide the verified
> DSDT evidence.

Thanks! That is the best approach, glad you followed the process!

> I will send v2 for the rest of the series (1-4) with your other
> suggestions addressed.

Sounds good.

-- 
With Best Regards,
Andy Shevchenko



