Return-Path: <devicetree+bounces-263688-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id NuzUOZqGiGn/qQQAu9opvQ
	(envelope-from <devicetree+bounces-263688-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 13:50:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 338C3108A1C
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 13:50:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4AF3300EAB0
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 12:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4C481FC101;
	Sun,  8 Feb 2026 12:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="a3ag4DHr"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB6FA15539A;
	Sun,  8 Feb 2026 12:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770555030; cv=none; b=cPCsevAFir3ZHawC94vxCdfG9TgX/dN/LnBMY6WA6B3yJQmPG140k0ZN+0OGA05Hl7/YkZ7oSu9+Kq9/g9GRb16W2AkWkur/D16rH9y5A3ZvamUsnK/Mwc7ve6AlB8MAsJk4T94RKxd9EYGI3BlQrpmeYNV9bXG1wQMQiRCFRy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770555030; c=relaxed/simple;
	bh=JDhBqjGxxCVe2GelWRzpb8jVah7+fsaWHDvNEZtLR+U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ukVsRKKZhQeHUEickScxLo6spEjWFpUYmjFHhYuelVNuiwdNQfsC4zDBA1YADJEzZa0wC+Pf2NM3ZJMAaneH6YHpSnhbGLRDvctcTvtwYxMHsA74Vj/1Tb8YA1yvtgE9pRi9wFGv+YKNik+Xr7nCZ+AVnJYlV4bn1j5rLAp2Hy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=a3ag4DHr; arc=none smtp.client-ip=198.175.65.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770555030; x=1802091030;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=JDhBqjGxxCVe2GelWRzpb8jVah7+fsaWHDvNEZtLR+U=;
  b=a3ag4DHrS+CTeiJdbUaRL7Fe6uyA8m1P8151INinE7oEPVwWgr6DXQwI
   N6mYHHQ8m5MjNWz8ywk4XNQRBJpNfZOhnrkqG3z16TyGU5GQDQtIQKIMC
   X1LmRbeA3RVBacJK0qne6DB3HabC34vKMrTn6pb/h773oFeu9SJCXPoPx
   MaKqpaiq1IwUqkNZSF9+4HRTP+eQZ2fxrY1YdxBI/0tMVmxDgOUqna+z5
   zQ30DlcFWpEgD0YBYmCLks23uxC6EHS4SGtkjxt+o683H/xYEZNDpjp3p
   HEzr6NUN34LSXwreOlkrRt56fTLHVljDKTZo0Bn7nyDmh5/q6ZLhhLwnh
   g==;
X-CSE-ConnectionGUID: XYrkzJ57S2+unEtT3m+8Kg==
X-CSE-MsgGUID: WsP0G5OPTgevuDR9lJpZgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11694"; a="75309503"
X-IronPort-AV: E=Sophos;i="6.21,280,1763452800"; 
   d="scan'208";a="75309503"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Feb 2026 04:50:30 -0800
X-CSE-ConnectionGUID: 2W9zX3N1RGOQFowoOS+jFQ==
X-CSE-MsgGUID: +UKhbakQQVWSUaYyghdvXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,280,1763452800"; 
   d="scan'208";a="215510793"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.245.100])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Feb 2026 04:50:25 -0800
Date: Sun, 8 Feb 2026 14:50:23 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Olivier Moysan <olivier.moysan@foss.st.com>,
	Mark Brown <broonie@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org
Subject: Re: [PATCH v2 0/4] iio: adc: ad4080: add support for AD4880
 dual-channel ADC
Message-ID: <aYiGj_TYelvJdVaR@smile.fi.intel.com>
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1770393792.git.antoniu.miclaus@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263688-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 338C3108A1C
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 06:07:12PM +0200, Antoniu Miclaus wrote:
> Add support for the AD4880, a dual-channel 20-bit 40MSPS SAR ADC from
> the same family as AD4080.
> 
> The AD4880 has two independent ADC channels, each with its own SPI
> configuration interface and LVDS data output. The driver uses
> spi_new_ancillary_device() for the second channel's SPI and requires
> two io-backend instances for the data interfaces.

I believe there is a better approach, what you need is rather a flag
to SPI core to tell that this is the device with shared CS.

-- 
With Best Regards,
Andy Shevchenko



