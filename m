Return-Path: <devicetree+bounces-259802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLURJ5uKeGn5qwEAu9opvQ
	(envelope-from <devicetree+bounces-259802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:51:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1965992178
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B9643032F59
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:45:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A38433374F;
	Tue, 27 Jan 2026 09:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="cheoRH6E"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC803321B9;
	Tue, 27 Jan 2026 09:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769507137; cv=none; b=Qg8tZHyCoXYezh7GtL957SLlcpOJ6hV2V5VofFgLtFrcnpU5kMV+5ObeRqDlJ90mF5o1pc8xsnX/739IXvbAJzmZWtRrrAlUFk0sxGYauNR8LHcxJLiK0GUqJVOCj3gATXjkt9CFA613RnU3l3M058dtTQKB0BStdJOp0i1ueiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769507137; c=relaxed/simple;
	bh=eG5ZRYyzkE/oygVVdcqghq8ygosS9UgM1FrIOdTY1RE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ylugb4zzsHzVNpQIZwR4M5Oxc1yYGIFG/EoWbLmfaMT+V/zrVCzJvuTjoKlYdYghlrGGXeHHlxGWgQ2NZxBb3CbrLVjJ1obfaL0QmH1Y5BQ5zsAavCicPVkTfZNVgM5Foz/mI2Y7qdgbfbFcEg6CGgb5Duvs6YI+Gl7Tmf9870E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=cheoRH6E; arc=none smtp.client-ip=192.198.163.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769507135; x=1801043135;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=eG5ZRYyzkE/oygVVdcqghq8ygosS9UgM1FrIOdTY1RE=;
  b=cheoRH6EDaRdOdtnMrQgnayVGyp87qoEuuvZWJv3Z0Ey11SmtCnwHYKr
   CmI2JRaOqGXKQfrYqYOlJ6pLjhIi5BHHH4xn2Qm7APAleMReTu7S5b5Rq
   +JR4sT+CK1BCc/qrmBscwEeF2AEBCIkL/vklZvM+FvjJXZZmdBmhGJiot
   GEKKi8iKI6p9jr5hzd5FvhfcRXbPyBYAeF/rOG3nBDpesnGM6QRhGDuOL
   Cfy1jOcdMTdAtXZ59Bv+0ng3IkH7NyKA8KqnHBnQB6lUyFAuwZljC5deH
   hBbsxhPgAq05Z+wTij8WgZZqmY1omXjpFwbrg1csvHfJYh7emt1kMw+iD
   Q==;
X-CSE-ConnectionGUID: eE1kdBUtT+Spt3OG4gfHWQ==
X-CSE-MsgGUID: 2hL25m4ZTLC3ACVPzynrwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="81331363"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="81331363"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 01:45:34 -0800
X-CSE-ConnectionGUID: +rUZ+MEEQNONIbN5/OPhag==
X-CSE-MsgGUID: 7J5wmYIuQdqhPUw5ch/tPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="212909430"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.248])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 01:45:31 -0800
Date: Tue, 27 Jan 2026 11:45:28 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: abdurrahman@nexthop.ai
Cc: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, info@mocean-labs.com,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 0/6] i2c: xiic: use generic device property accessors
Message-ID: <aXiJOBaN12bo_BR-@smile.fi.intel.com>
References: <20260126-i2c-xiic-v5-0-88a16a28721c@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126-i2c-xiic-v5-0-88a16a28721c@nexthop.ai>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
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
	TAGGED_FROM(0.00)[bounces-259802-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smile.fi.intel.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim]
X-Rspamd-Queue-Id: 1965992178
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 05:08:15PM +0000, Abdurrahman Hussain via B4 Relay wrote:
> Switch to generic device property accessors.
> 
> Switch to managed devm_ functions to simplify error handling.
> 
> Make the clock optional since the driver is designed to operate without
> explicit configuration in firmware thus making it useful on platforms
> where clock is not or cannot be provided.

Overall looks good, needs some nit-picks to be addressed.
I hope v6 will manage to go in soon.

-- 
With Best Regards,
Andy Shevchenko



