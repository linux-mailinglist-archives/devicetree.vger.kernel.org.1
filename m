Return-Path: <devicetree+bounces-266837-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GA7rAswUmGki/wIAu9opvQ
	(envelope-from <devicetree+bounces-266837-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:01:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 731AE16575A
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:01:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B759A3035D5F
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1435D334C13;
	Fri, 20 Feb 2026 08:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="na63x2nz"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2172D7384;
	Fri, 20 Feb 2026 08:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771574448; cv=none; b=JuozfD+qxYs8lyc0oSx8d4dGwXGam2VEO9UIu+i70bQQnkVxo/A9Y8gAv2Grssp3EEROjMbWw4WYDBROgUwQs8hVMtab7zksj2vRFIuLHyxcID1N+/s8usTVXT/M9AtiV+GSW3U3gejdJ2FigRMFzWCy5ZGo5/pq/eh94a8/FBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771574448; c=relaxed/simple;
	bh=u2j53cj3ue7x7sCrL+F4jVz1giBzQrJ6XhcElglrgx8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XKIMMZH0uJRXZHQNzjZwl6wyjfw+de/+/cy/HX0ku7NXNK2okxTyUubQwL1ygQY3Pj3IIbLcBawKngdqgmf2uvEFI9gEds/QZECi+G07vlyfUBCcMzu+LxAD136DTBpCwGE+v+dk8uCHx/tyju9YjthY5hC3Bhk+YHNpJdNMdQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=na63x2nz; arc=none smtp.client-ip=198.175.65.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771574447; x=1803110447;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=u2j53cj3ue7x7sCrL+F4jVz1giBzQrJ6XhcElglrgx8=;
  b=na63x2nzgCTp5bqAqSjtA3mDvHNlY3A0wMJp1ETk1OnF7p9UooyfwsFm
   NPh5QYDBRYh/D+yOv4gWLK24Xr6aa1OtiWhZEAO831uIHFZvrbmlEjJl8
   dY0NlFMLePW6XGIacIaQ010RALf8/P5CiE6JtvrkQPOV1iqbY7Z+IhZ90
   E8xvzlEw4BbzL+yviT5A0p95hUi9HC7Gegaz/ULp4DYhr9BkoDB9OOVhO
   +mnvJSaxdTVh/ElSvVdy9HpMDW5oXDyVwF3u0xo3Cyy+NuEnOO1fw9S0W
   jy9PiaXkLWOaCH1squdlA3JPbMV4g5E7z1g1szdJk9P9DwGm9mYxkiDHW
   g==;
X-CSE-ConnectionGUID: B98wQQWRS1WJgjeAEvUZcA==
X-CSE-MsgGUID: hObDWfNCTfiW0dzTW703qQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72368861"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; 
   d="scan'208";a="72368861"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2026 00:00:47 -0800
X-CSE-ConnectionGUID: oT17aMYHSkGNjv9BNnMgFA==
X-CSE-MsgGUID: IYFnq7SARIaMZ23/QCe5Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; 
   d="scan'208";a="218922082"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.25])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2026 00:00:43 -0800
Date: Fri, 20 Feb 2026 10:00:40 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>, Nuno Sa <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Michal Simek <michal.simek@amd.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, saikrishna12468@gmail.com,
	git@amd.com
Subject: Re: [PATCH 0/5] iio: adc: xilinx-xadc: Add I2C interface support for
 System Management Wizard
Message-ID: <aZgUqLwuy8xJ4OZ3@smile.fi.intel.com>
References: <20260220053941.611415-1-sai.krishna.potthuri@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260220053941.611415-1-sai.krishna.potthuri@amd.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,vger.kernel.org,lists.infradead.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-266837-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smile.fi.intel.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim]
X-Rspamd-Queue-Id: 731AE16575A
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 11:09:36AM +0530, Sai Krishna Potthuri wrote:
> The existing driver only supported AXI memory-mapped access to the System
> Management Wizard IP. This series extends the driver to support I2C-based
> access, which is particularly useful for System Controller usecases.
> 
> Key Changes:
> - Extract common probe logic into xadc_device_setup() and
> xadc_device_configure().
> - Add setup_channels function pointer to ops structure to support
> different ways to configure the channels.
> - Replace module_platform_driver() macro with custom init and exit
> functions to support multiple bus interfaces.
> - I2C interface support.
> - Convert binding file to YAML format.
> 
> Note: We are working on x86 platform support where fixed channel
> configuration is used(no DT support). The setup_channels function
> pointer introduced in patch 2/3 enables different channel configuration
> approaches for various platforms.

Thanks, but this series (and driver) has to be refactored differently.
Please, go back to the drawing board and redesign the approach.
We have examples of the drivers in the kernel that are using platform
and I²C approaches.

-- 
With Best Regards,
Andy Shevchenko



