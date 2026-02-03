Return-Path: <devicetree+bounces-262434-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAerMO+GgmnDVwMAu9opvQ
	(envelope-from <devicetree+bounces-262434-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 00:38:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E69DFC82
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 00:38:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 688CA308E0AD
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 23:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D82E232AABC;
	Tue,  3 Feb 2026 23:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="X6z5x8DW"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE8A3BB57;
	Tue,  3 Feb 2026 23:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770161900; cv=none; b=Au4/RetrcCbPRIzzaFsaoHbx8hq+tdof9LsTwPgHgGetmwUdIDbL3soiKu28QDuewScLdm6S4azcK31iyBK/XrqFmZpnGrca+L7yySJi1YxTBrFTG6MC6DqyI1NaCytZb4IC4bYqk1MrBJWLp5855W4DgK5ps/Npoj+NKPuuLmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770161900; c=relaxed/simple;
	bh=VUA7xPz2k2DqTILvSG8MJrzRqVcjkXmJKeKSnbJhE8c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hV4VrIJQyXrwZvv2IMuYKMSe2PdvLjRIaJOYp9Yp8FeFhrqlRt4dsXLJx433deZrpQtO4/G+uNW1/wUbKJmXNxswLxRSVGYLbE44EeZC9M75axYLSjs13mK+fUUToOvaBRyraTtnTIGEbjakR5WIh3TqgionYWiiPPh5SgrBvbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=X6z5x8DW; arc=none smtp.client-ip=198.175.65.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770161899; x=1801697899;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=VUA7xPz2k2DqTILvSG8MJrzRqVcjkXmJKeKSnbJhE8c=;
  b=X6z5x8DWHLzXx1XJgClbbrMkU/v8MvPcXrdLcqVnA8jrUzFy88NoVN6f
   ZnXp+2ELsv+gc0Qp+UzmDWC8K8nUKavOezElpVYfkRJ2qNDheYBN49yix
   X0VtbqWKKXGuBWmRkI956WOjmTFJdNyFYLaClWqLaM2/PG2ncUh7VKzJ3
   FOOgroMrbW7JmpeaFEiy61u5AdPNjkqRG6U3KyGThvnYhuCa905SxSeGf
   j+UpY/D3U560hVMw72He2DdPoD4e7nvc8YA2vqwaz27ff+T/J0s6ufjfM
   7VPx21Wt4wb093Hra634aibSGWJ9KgZpptPuVy813fc34PfuiWntxxnMU
   Q==;
X-CSE-ConnectionGUID: shIJ1ZgMQaaU4gjuhmKZYw==
X-CSE-MsgGUID: xR/1IfmqT1GE+B41Tk0MTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71065833"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; 
   d="scan'208";a="71065833"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 15:38:19 -0800
X-CSE-ConnectionGUID: u2/E/qW7S8KctZQwAD6OFA==
X-CSE-MsgGUID: Gj/xUhl9RSSVJf+5vGhJUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; 
   d="scan'208";a="209100278"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.99])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 15:38:17 -0800
Date: Wed, 4 Feb 2026 01:38:14 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Abdurrahman Hussain <abdurrahman@nexthop.ai>
Cc: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v9 7/7] i2c: xiic: skip input clock setup on non-OF
 systems
Message-ID: <aYKG5k5-6ll_RzQz@smile.fi.intel.com>
References: <20260202-i2c-xiic-v9-0-ce4695f5267d@nexthop.ai>
 <20260202-i2c-xiic-v9-7-ce4695f5267d@nexthop.ai>
 <aYIYUNejGCVdekx7@smile.fi.intel.com>
 <9F7815FA-80D8-4C96-B61F-5CA6CB405F7A@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9F7815FA-80D8-4C96-B61F-5CA6CB405F7A@nexthop.ai>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262434-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: E1E69DFC82
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 10:38:51AM -0800, Abdurrahman Hussain wrote:
> > On Feb 3, 2026, at 7:46 AM, Andy Shevchenko <andriy.shevchenko@intel.com> wrote:
> > On Mon, Feb 02, 2026 at 08:37:24PM +0000, Abdurrahman Hussain via B4 Relay wrote:

> >> Currently Linux does not implement ACPI ClockInput to describe clock
> > 
> > ClockInput() resource
> > 
> >> resources, unlike DT. However the xiic driver is happy if something
> >> magically enables the clock before the driver probes, and does not
> >> turn it off again. The clock should always be considered optional for
> >> ACPI.
> 
> I just used the wording provided earlier by Andrew verbatim. But can change
> to the following if you insist:

I do not alter the wording, I correct the mention of the respective resource.
And yes, I insist.

-- 
With Best Regards,
Andy Shevchenko



