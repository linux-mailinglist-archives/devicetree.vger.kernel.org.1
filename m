Return-Path: <devicetree+bounces-278117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OF4aCRYIvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:40:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F902D74FF
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:40:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37D7E304A173
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E43E364935;
	Fri, 20 Mar 2026 08:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="nPF8vxH3"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415FD2C21F2;
	Fri, 20 Mar 2026 08:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773995923; cv=none; b=kKICttoOnfDIOI+n5eMNJ8gbeehxIDIiLb372+Q38bvHYzvya8UEy43mFrmEUw5mNbAsdK6FQDpgfziUZP03F6j4XJOvGpUojuBgZQJQedgwh/m8ImG7ELgOixA0FcTcEX6cR5XgKai4gACfvxR3oR7Ri4LdFI8gvupnPAbiB6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773995923; c=relaxed/simple;
	bh=WzQki4esm2bSXcPacYWgW0MMcozufKN02uhnhwpB4vc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FvBEh8i0G5+ubojJ39M7FmoDZ33YSlCdocn1A4E3/BiO2OcjG1eDv9YMHDfW/vcEcFY1k5sNmd6ROGapp4yS6YoknSwiA0omie6fSSH/v9HVNCRoA6CEKsjHd+cwWgmLqO7tO0GmRpZTKOLl3SzTi8YksqRLcE/NUuqFQhiIakU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=nPF8vxH3; arc=none smtp.client-ip=192.198.163.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773995921; x=1805531921;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=WzQki4esm2bSXcPacYWgW0MMcozufKN02uhnhwpB4vc=;
  b=nPF8vxH39Z0trXh9pSgiXMF+CXiCpplI+Rt/0SeoEf8A68ewQcucshd/
   pn3qImhfUg378nbIwYSsV+zziGOtc+LZVlEGailIjTzwuPZCIAMM+a8F8
   +F7GBHSiPqQvePOLDgt4kVzFe9TV4wk0APVmb8DxF9v61XibzaIvf3CWK
   jmY7EwkPLxpEY4txTpSrroO1RprmAg9t9sNX4YppyUNG0cGTZjUMp2ZCR
   zLRXyCBwv+Xu/ZkgjtNpjN6dqwDa2o3VxiAthadgvB5jFv7JvRFF7PrdU
   mHa5RsX1pbsHmUM+dotCOlXcBCDR28f0AP9WO5QWI9dANA6Sa3ATSadHV
   w==;
X-CSE-ConnectionGUID: 8wz/hyeHTpq6i8DhbzArSQ==
X-CSE-MsgGUID: 0zrvcw3RT8Snl2tF2OQUsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="74093212"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; 
   d="scan'208";a="74093212"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2026 01:38:40 -0700
X-CSE-ConnectionGUID: NX3SEgrkQMSw5lEDIzEd3w==
X-CSE-MsgGUID: 9WEYMAoVSjqSdbJlw4b+fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; 
   d="scan'208";a="219051799"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.40])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2026 01:38:38 -0700
Date: Fri, 20 Mar 2026 10:38:35 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Siratul Islam <email@sirat.me>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org,
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/2] iio: proximity: add driver for ST VL53L1X ToF
 sensor
Message-ID: <ab0HiyZcjuLr8kFw@ashevche-desk.local>
References: <20260319190738.151614-1-email@sirat.me>
 <20260319190738.151614-3-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260319190738.151614-3-email@sirat.me>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278117-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid]
X-Rspamd-Queue-Id: 61F902D74FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 01:07:14AM +0600, Siratul Islam wrote:
> Add support for the STMicroelectronics VL53L1X Time-of-Flight
> ranging sensor with I2C interface.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

A couple of small style amendments below, but no need to resend
only for addressing them — Jonathan can tweak if he agrees on that.

...

> +static const struct regmap_range vl53l1x_wr_only_ranges[] = {
> +	regmap_reg_range(VL53L1X_SOFT_RESET, VL53L1X_SOFT_RESET),
> +	regmap_reg_range(VL53L1X_SYSTEM__INTERRUPT_CLEAR,
> +			 VL53L1X_SYSTEM__MODE_START),
> +};
> +
> +static const struct regmap_access_table vl53l1x_readable_table = {
> +	.no_ranges = vl53l1x_wr_only_ranges,

I would spell 'write' in full in the name of the array variable.

> +	.n_no_ranges = ARRAY_SIZE(vl53l1x_wr_only_ranges),
> +};

...

> +	ret = regmap_write(data->regmap, VL53L1X_SYSTEM__INTERRUPT_CONFIG_GPIO,
> +			   VL53L1X_INT_NEW_SAMPLE_READY);
> +	if (ret)

> +		return dev_err_probe(dev, ret,
> +				     "failed to configure IRQ\n");

It's perfectly one line.

-- 
With Best Regards,
Andy Shevchenko



