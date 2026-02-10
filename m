Return-Path: <devicetree+bounces-264543-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNkiDpOPi2nYWAAAu9opvQ
	(envelope-from <devicetree+bounces-264543-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:05:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D83D911EE20
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7C5303015BA9
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 20:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79AFA331A77;
	Tue, 10 Feb 2026 20:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="kSnzDYxd"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C29232E126;
	Tue, 10 Feb 2026 20:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770753931; cv=none; b=FlS+2mTR1vMZCr2U7R+dqM8YQ9gyVjSxHMMLZK80AqgtgM8Uh+CB0+lpPu9ouHVSVRcI8zH7oGvu9G9A3cKofxfhWKdAMOqtm6T8cRDU1ee9WaZJ3fzTE0wOJB4QDA6RimgKBSvvJfCHRyodN686soWta5+60kzRSBuno2azNYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770753931; c=relaxed/simple;
	bh=7NF/NMO9NmFb4sERswHkU4tsfUJu0ywTAY7+eT4qWzU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WvfvuY2tukIeyL7Wv6hDf/vMtAH3VRafBW+4Py0RTBK0aPw0ca0OX0a/jPpefhzVw2ZMqK848eWFNbW7RiO+sEieFpXQWwpZgKATDmSz7WtpFLQS9W409K6Xc3oFXFMkkkR12IeAVXsmIuhMvFoKdaZcT9l/TrnIbdvmXp681sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=kSnzDYxd; arc=none smtp.client-ip=198.175.65.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770753930; x=1802289930;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7NF/NMO9NmFb4sERswHkU4tsfUJu0ywTAY7+eT4qWzU=;
  b=kSnzDYxdJSgZ+LgSZwSZJz8u6+CM29EXPJEbHhC/A5AE/j3QYvok+cfG
   NeYy5t9JasvI7O2G7RJ+VzTic6IcAHf0rbOkdakJpFKxS5zshB5hTkglR
   1Q+EydtCJ7Sojh6FcK2mN+exJY8MlnKfdRQan55dzflG7/CvSFx7vxr9d
   m77VL3niBquB57F8P0xDc9AfJYvbdEKeBiOhqMQGt0TYQm3TLUURTOVEF
   y7bEBHApQegQStL+5QydwiQ63/BdQzxIVLNAPITnw06iR4oze+A0ES3c2
   tHzbUur6n262Oa64OmFvSxYRbnIacPzrDrgR+WSJaSTv3JwKZM0r8LM5w
   w==;
X-CSE-ConnectionGUID: Iw6yRsp/TN2WrOrPqHHJHQ==
X-CSE-MsgGUID: oENPT5UwQsujDDBlmUYYOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="75521833"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="75521833"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2026 12:05:29 -0800
X-CSE-ConnectionGUID: YM/FttBkQXikQv1OHVi4RA==
X-CSE-MsgGUID: GZjw9gtdQiWcUoKOPv0zRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="216973532"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.131])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2026 12:05:27 -0800
Date: Tue, 10 Feb 2026 22:05:24 +0200
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
Subject: Re: [PATCH v4 07/11] iio: amplifiers: ad8366: refactor device
 resource management
Message-ID: <aYuPhB_e14orrZ64@smile.fi.intel.com>
References: <20260210-iio-ad8366-update-v4-0-15505f7b15b4@analog.com>
 <20260210-iio-ad8366-update-v4-7-15505f7b15b4@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210-iio-ad8366-update-v4-7-15505f7b15b4@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264543-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:dkim]
X-Rspamd-Queue-Id: D83D911EE20
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 07:42:07PM +0000, Rodrigo Alencar via B4 Relay wrote:

> Adhere modern device resource management with the following:
> - Voltage regulator managed and enabled internally;
> - IIO device registration handled with devm_iio_device_register();
> - removal of goto's from the probe function;
> - ad8366_remove() removed as it is not needed anymore;
> 
> With the drop of goto's dev_err_probe() is used to report probe errors.

I think the regulator change should be split and go before the previous patch,
because that one affects the ordering in the error path and remove stage.

Otherwise LGTM.

-- 
With Best Regards,
Andy Shevchenko



