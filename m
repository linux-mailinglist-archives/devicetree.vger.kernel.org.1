Return-Path: <devicetree+bounces-317723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xzZCBteyQ2qBfQoAu9opvQ
	(envelope-from <devicetree+bounces-317723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:13:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A9B6E409F
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:13:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cbkFa01d;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317723-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317723-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 635C6309899C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88474409E0A;
	Tue, 30 Jun 2026 12:10:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F29D407CF5;
	Tue, 30 Jun 2026 12:10:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782821440; cv=none; b=CMJwkOCCE0vvh/STPDwrDpHpG0/xgH9CR94moSu9oDpZHmVgNadPReD7qORDRQPdHI19MKPG3G0G0J/9bcpqAbLHHNsx2mR+s0LHKVc6TahEXpV71mbLMBPd5UEtdNEbT2DuObOG6kULr/swm6XoZmFay3q3MYRTugeSV1F8MBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782821440; c=relaxed/simple;
	bh=+9+rfU++LXQxcsZV/JfS2wQ7t6TWgJObw+ukW2DA2Uk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EeGGSwk7I0ss8fjzPnmWPbRbqbFHjuCz28IC7nU8k21O6pv6+LwxDZZVS4feKJ+eHnrOaZYMxecj04mKe29m7PYCBNHM6w8cyV1a9FhhzCu0KiJTkykiMAnrJ5weN5qAgVRQm4TY0hDpl7KK0+Q+kVe6m7zRN7nJ0xpe4EyIGOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=cbkFa01d; arc=none smtp.client-ip=198.175.65.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782821439; x=1814357439;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+9+rfU++LXQxcsZV/JfS2wQ7t6TWgJObw+ukW2DA2Uk=;
  b=cbkFa01dXKs8eF/sBM55hS/iZYsdz8k13WbzMfC2jSHW5LMylNvLOFaZ
   2ayj9q6pyTlWItWk7SSOylO7ZMk+5O1jq8Yf35/rvKnResYHwiupPb3ST
   NFSuTEPVzjPE8Ef11BRznxBw5jpYbtYPRRi13uEB9SgSmWVeB+GJvgTRX
   lelB1tpqNPGXtO6MnIz2mjRmyT3tpXGUVYYrmv5E96Cn6xHXqFf4B0r2/
   DWH9d7TBi2UP0kLP6GbZXWE/b6yXxDFZJo55r2Xf3B3oaFdiHljFUugbV
   OZwPO61uPabtKpk4CX7vUxcgqPU1F1AelwjHAXZg5j4uY8zGKHwZ4tyYf
   A==;
X-CSE-ConnectionGUID: nNHpjQqWQqCdAm299LsPQA==
X-CSE-MsgGUID: lTh2XNRSRvKlrh3qJFN4rQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="93888682"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; 
   d="scan'208";a="93888682"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2026 05:10:38 -0700
X-CSE-ConnectionGUID: Tjylh6dqRHWiHvkgMf3MBg==
X-CSE-MsgGUID: VdWKTO4/RbeLD8myL2Ikxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; 
   d="scan'208";a="256643782"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.96])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2026 05:10:34 -0700
Date: Tue, 30 Jun 2026 15:10:31 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: Puranjay Mohan <puranjay@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Wil Stark <wil_stark@keysight.com>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/2] iio: temperature: tmp117: add TI TMP119 support
Message-ID: <akOyN3-1YFxW2pME@ashevche-desk.local>
References: <20260630-tmp119-v3-0-cfdb50e2e99f@bootlin.com>
 <20260630-tmp119-v3-2-cfdb50e2e99f@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260630-tmp119-v3-2-cfdb50e2e99f@bootlin.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317723-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:romain.gantois@bootlin.com,m:puranjay@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,ashevche-desk.local:mid,intel.com:dkim,intel.com:email,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 76A9B6E409F

On Tue, Jun 30, 2026 at 11:26:35AM +0200, Romain Gantois wrote:

> Add support for the TMP119 temperature sensor, which has the same
> programming model as the TMP117.

Fine with me,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

-- 
With Best Regards,
Andy Shevchenko



