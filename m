Return-Path: <devicetree+bounces-315015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bF3TN137OmrVNggAu9opvQ
	(envelope-from <devicetree+bounces-315015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 23:32:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D915F6BA44D
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 23:32:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Az6deyot;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315015-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315015-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AB7B1302A837
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 21:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB547395DAC;
	Tue, 23 Jun 2026 21:31:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2295C8EB;
	Tue, 23 Jun 2026 21:31:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782250315; cv=none; b=aWss9CrAEe4W1no0Yeb9YqR35pMDXlF3d3/WMgfAH6dB1zSk8igxfh+74dUodPsznNy6AZFe3AlhoqwSPl8IglJ07D9OqWJuR9auBLjKZSNN702PeFtsos829PjxzQdXfJMWqNDZddTA4Xb+3YG9ljPh/zZKNi/XB7ugvEzSZUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782250315; c=relaxed/simple;
	bh=cf0oS5S/91R9fvs2GKviyAfHVEuZAezatD/Tez9Z0HI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C+LWB92pN4BRL+/0SNxY/hLoaCQlXdp8bydUMDzeQnvZ3q8WUdrYiT/Rj6Vk6Sfw3nfhw4InEL3svr+JDdY4+DSlizESvP+vpPdhJgh/qNwNl87HRPakr50XKfXbrdN0xrL9IPj3B4koR6w8hZE4AgaI/0KxdLm2FSEItys3EGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Az6deyot; arc=none smtp.client-ip=198.175.65.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782250315; x=1813786315;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=cf0oS5S/91R9fvs2GKviyAfHVEuZAezatD/Tez9Z0HI=;
  b=Az6deyotcAdZi7T9S5Atkt0j0ztGM8nwdEnnDPV/rJw2cyqsrsOw3i0f
   3QeG4hyitdihpHVmfkrH+aU1OltM9ajP1Nlct6rXjoriOgPSWd2ZLpAsE
   dIcVo7P7q5Qu0BBZDyAAE+gro+sWpyUF+yuFtXNAvFrRBEAmst8Hsjr5M
   AhogS/e/AbVIhJF/Fyj0bQXS9MLw0rDoQZaqmYJSyRKuEoZ3KVtUHOQt3
   2nmAjYLj9w0BwAMKz0CcrWBDt5t8jhHOaY1KvUHxImI+Q5RflD52+fC0+
   fIxVUgABULAMx8iHj/TH+OIr5yQaznnmicE1mI/nv3MZ+vRUuyWsvQrPa
   A==;
X-CSE-ConnectionGUID: ExgV4uJrQFqXEMeZZfnEoA==
X-CSE-MsgGUID: i6cDnRGZQb2J6tq5AsysoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="93366532"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; 
   d="scan'208";a="93366532"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 14:31:54 -0700
X-CSE-ConnectionGUID: Bs5y3FkPQV6eV0KYWZBwaQ==
X-CSE-MsgGUID: YIBK4drXQQSWVGXIT0+ZIA==
X-ExtLoop1: 1
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.7])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 14:31:51 -0700
Date: Wed, 24 Jun 2026 00:31:49 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Siratul Islam <siratul.islam@linux.dev>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] iio: magnetometer: add driver for QST QMC5883L
 Sensor
Message-ID: <ajr7RUNUPZSsBjAs@ashevche-desk.local>
References: <20260619104524.10172-1-siratul.islam@linux.dev>
 <20260619104524.10172-4-siratul.islam@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260619104524.10172-4-siratul.islam@linux.dev>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315015-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:siratul.islam@linux.dev,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D915F6BA44D

On Fri, Jun 19, 2026 at 04:45:06PM +0600, Siratul Islam wrote:
> Add driver for the QST QMC5883L 3-Axis Magnetic Sensor
> connected via i2c.

LGTM now,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

-- 
With Best Regards,
Andy Shevchenko



