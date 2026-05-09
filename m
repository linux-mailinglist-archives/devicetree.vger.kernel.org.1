Return-Path: <devicetree+bounces-294837-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qC4bMRXp/mlCzQAAu9opvQ
	(envelope-from <devicetree+bounces-294837-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 09:58:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC2D4FE9D0
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 09:58:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3080E3010B93
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 07:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65EA938239E;
	Sat,  9 May 2026 07:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="mdenArNN"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 816BF2E7F0A;
	Sat,  9 May 2026 07:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778313490; cv=none; b=TfpGhP6ufGpJ3kAQbNuTXd8b4NbVmVMSmZmWTlFZ8laIJqzze4Sj6kcE7T7W6ED3fpNvfnOL8NU6c+iKOsLtllgPShj33yxcHiuHTvSUnyziXoeDeADlTPXxAOErqTOAehvo96Pdh8esWmQYv10pwirKvd3Ngj8Xmdoh5ZB0frg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778313490; c=relaxed/simple;
	bh=MdCI2/PrT8C7efYvGDIg7YuQIc2xsx6L5N5jVNcdWZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GYBw6FfkTZn8sngEk5IWmT/pYowMHa/GtKlRybElJowOITlSZ8r6I2x+YwS4Sg6P0trS8+fAxAdpnUkjVyuxrO7NvvrJp0fGI0Po/eUE3Wxo2fjzK0SEt6KNu2YqXv6FHU7Rl4KBTxsaoOAkVmrTS+qFDeZW1URJGnD6jgFxVVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=mdenArNN; arc=none smtp.client-ip=192.198.163.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778313489; x=1809849489;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MdCI2/PrT8C7efYvGDIg7YuQIc2xsx6L5N5jVNcdWZE=;
  b=mdenArNNd/EY9TGVDf5XKjkScvmJyc8Psc6+BXO84EV+zYkXnuDy8uiP
   F7FYuoqS8bOgL/QcBtDNG86HWTpywtB8z7C6O+rsjUXTqD/ZizckEg72p
   U5hbPds1USqdhfY+A5xWv08+Pansv85OPPvSxRV8hdYqkt6/d7ESE5m0B
   mAjrHl9JvSGNR8f/qyMy9cDB9yGyF9V4rTuR8iGUGZPCfdkXa0+itcINX
   4CLs7MgSDsQe5nwrwPxJgaGXNzOu4poAdI10SNjtujTohQG3MpBVJpKl9
   6OzKG8k+A3MUI8j8PR6ulyNGF2kCTAHArp9ffZlTzzbhC4aYBcXgYj4DU
   A==;
X-CSE-ConnectionGUID: 0mhWhU+JQ9qkYKexsqpQMg==
X-CSE-MsgGUID: DMwVVjLnR5+pix0+PwBIXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="78419515"
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; 
   d="scan'208";a="78419515"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 May 2026 00:58:08 -0700
X-CSE-ConnectionGUID: mnKnG3ZlTuaWvv//70uMoQ==
X-CSE-MsgGUID: t4CFqf7eQDmO+2HPZHHOwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; 
   d="scan'208";a="260701818"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.146])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 May 2026 00:58:05 -0700
Date: Sat, 9 May 2026 10:58:03 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Vlad <vlad.kulikov.c@gmail.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] iio: magnetometer: add MEMSIC MMC5983MA driver
Message-ID: <af7pC38Ku0WveFZs@ashevche-desk.local>
References: <20260507205033.951990-1-vlad.kulikov.c@gmail.com>
 <af206U20Fvky1g30@ashevche-desk.local>
 <CAMY8kpTR3Mt1Onim0etLaoGLkRd1UyXrHJaW=Z-2CQ=7CSJwbA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMY8kpTR3Mt1Onim0etLaoGLkRd1UyXrHJaW=Z-2CQ=7CSJwbA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 1CC2D4FE9D0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294837-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 01:40:17PM +0300, Vlad wrote:
> On Fri, May 8, 2026 at 1:03 PM Andy Shevchenko
> <andriy.shevchenko@intel.com> wrote:
> > My comment from v1 still applies. Note, when sending a new version of a driver
> > like this, give approximately as many days as hundreds of LoC in it.
> > The bare minimum 24h anyway.
> 
> Thanks, understood about the revision cadence. I will wait longer before
> sending the next version.
> 
> I did include a short explanation in patch 1/2, but I see that it should
> also be visible in the cover letter for a new driver series. Unless you
> think the existing note in patch 1/2 is sufficient, I will add a
> dedicated "why a new driver" section to the cover letter in v3.

I'm waiting for this before reviewing. I.o.w. it's crucial to me to even
start the review round. It's up to you what to do on this.

-- 
With Best Regards,
Andy Shevchenko



