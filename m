Return-Path: <devicetree+bounces-262317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APmRFWkZgmmZPAMAu9opvQ
	(envelope-from <devicetree+bounces-262317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:51:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9C7DB850
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:51:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C7A13012C56
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 15:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09E4E3B8BCE;
	Tue,  3 Feb 2026 15:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Rmi52j3M"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F00A199FAC;
	Tue,  3 Feb 2026 15:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770133591; cv=none; b=G3BiGLCJbDVg23Rb2ygXrPDsXJm2ak42tn1swLiIqmqg7mXOEiKGToa8PDO9klqnQsVmQ0XDFZBYCMdhVWy8M9TvNyqxH7Ykt1lKkyzagNbwS6/s+w9FrIBf83hyT/OcA0D/vhSA5Stpx8iyshO2x3otj3vTv31QpGgXNVsw0DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770133591; c=relaxed/simple;
	bh=sJtV4BtXtNVfhwtflW/nj+oEb6SNz0EBbYiuSAWXftM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gTxrFgQpRdJXqtQXpG4R9VV+DmwD6FcVzRDACRoGPkxQbDTmncky9tmQOfGw2gqeCPx650ZLU3jkdzTNfO8iIl1bI9gWBVZ65J8/1YATqsjjX1P6LddzGBeJlpIBuMamrSY0qiehUPI2LQOmNYbbn95XObcSUzZqBiUvbZK9kmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Rmi52j3M; arc=none smtp.client-ip=192.198.163.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770133590; x=1801669590;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=sJtV4BtXtNVfhwtflW/nj+oEb6SNz0EBbYiuSAWXftM=;
  b=Rmi52j3MYe7y1+sH4uQP87eK3l1Njjzbva0AEjmRhKGaCUfpm7gheHP1
   wJh+ot+H7+T9UATif16PaQDAztPfv7mOS+3TH6KiszLMQ1UmUBDb6PDLL
   QreVXbGTEcJgqqaBYKa7qW+zASdpVq4Pw62VP+Bwpc7g784RwBpI1/i4I
   6vinq6HWe1Y7Weomf63M+9t3DS6DMZpPohuI3ddsZbeu8RA/mtQAYVd7M
   BFi53NYZe/dWOV6iPVr873q3kMiMSJmSY0hT3XvwA+bslNqmOYr3bnMFQ
   4yGn0ipUGqtYmjg5i3jTGqDNk4TaFq7X52qqGXjJxjtQAaOGI57pUNCLW
   g==;
X-CSE-ConnectionGUID: cMNBf8gbSYeNnDIN3K8y2w==
X-CSE-MsgGUID: EoOE26ttT8Sf2nIAVkKHyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="81937504"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; 
   d="scan'208";a="81937504"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 07:46:29 -0800
X-CSE-ConnectionGUID: sA/LmoYVQdaN4RT975YG3w==
X-CSE-MsgGUID: J+HC6ftTRQOWJ7+bwRha4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; 
   d="scan'208";a="209173225"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.99])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 07:46:26 -0800
Date: Tue, 3 Feb 2026 17:46:24 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: abdurrahman@nexthop.ai
Cc: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v9 7/7] i2c: xiic: skip input clock setup on non-OF
 systems
Message-ID: <aYIYUNejGCVdekx7@smile.fi.intel.com>
References: <20260202-i2c-xiic-v9-0-ce4695f5267d@nexthop.ai>
 <20260202-i2c-xiic-v9-7-ce4695f5267d@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260202-i2c-xiic-v9-7-ce4695f5267d@nexthop.ai>
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
	TAGGED_FROM(0.00)[bounces-262317-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,smile.fi.intel.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CB9C7DB850
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 08:37:24PM +0000, Abdurrahman Hussain via B4 Relay wrote:

> Currently Linux does not implement ACPI ClockInput to describe clock

ClockInput() resource

> resources, unlike DT. However the xiic driver is happy if something
> magically enables the clock before the driver probes, and does not
> turn it off again. The clock should always be considered optional for
> ACPI.

...

> +	if (is_of_node(dev_fwnode(dev))) {
> +		i2c->clk = devm_clk_get_enabled(dev, NULL);
> +		if (IS_ERR(i2c->clk))
> +			return dev_err_probe(&pdev->dev, PTR_ERR(i2c->clk),

Haven't you seen my previous comments? Why 'pdev'?

> +					"failed to enable input clock.\n");
> +	}

-- 
With Best Regards,
Andy Shevchenko



