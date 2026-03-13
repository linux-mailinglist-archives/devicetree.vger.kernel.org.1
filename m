Return-Path: <devicetree+bounces-275334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GUOJ0chtGnahgAAu9opvQ
	(envelope-from <devicetree+bounces-275334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:37:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0494285209
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5CFA4302689D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8EEB3A4514;
	Fri, 13 Mar 2026 14:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Xk//vMbq"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88E6175A9C;
	Fri, 13 Mar 2026 14:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773412457; cv=none; b=N7K+qiSnIRnk2WIUdPNyc6E4ikhcyIn7UGcBjNbFfPSoGTP7AW2FdltvcoSIFiqz1x0X9d9mrSXki4JCsosaQO6RlHxarZNw7OnRv1CYemps0LKMr0kYEsEGNR6Ggwsa+8lZizjEDy6FNO6/BI/RBAuKYmDkUd/FXOTbfEZX0f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773412457; c=relaxed/simple;
	bh=RKTUaqioJ2zolu5YI1IwDnVHeW1fQdQf3qwJyJX8XOw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JqD6g6E+gTzbMAEECSZAoAFnqvUZa1+YmcG6RkjWKAAp9vOZoyO0cYqgFtd0/I72Z+uPoNoVPEfkqcI56KEAiTJL/gpD66YLbNxlE4vg8Y1KcR9UsQQF85JoUsZZVfjmT/A/QpGOlxkQzg1dQnKEuN6fA2A/ii13RkNP/fbouIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Xk//vMbq; arc=none smtp.client-ip=192.198.163.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773412455; x=1804948455;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=RKTUaqioJ2zolu5YI1IwDnVHeW1fQdQf3qwJyJX8XOw=;
  b=Xk//vMbqYTAK0jWieDWiC34P4/m+DugVWTK+aiMmyOa9tE+WZDIVcplD
   UDVK1mRh5unqzuoqscmhVFZ8kSZoUvpM8LdSRvx1MKJIxNErM4pX7cYiP
   Mb6+uh6TtY9nExTWzVMCvl1zht/Ex1Z2XtXbWDBx++R2XDQE6e4QgcdQ7
   yJBt87Gh+G0EO9rWbUdvwOz9VL4U76hN4IBT0q+RuAe30Knd+q+sQ/zcz
   Lge/3EjQo78SBopxGENkoF7bDXgdflPz35hXhxii5GaOcXztVIA3ZOl7D
   n82LvBOdqw9JkmK/tJOD3xgJ4FItS6cs8y81tpV1Wth14K44YFInz+LkU
   Q==;
X-CSE-ConnectionGUID: g3B9YfNMQQSFPwboOo0ivA==
X-CSE-MsgGUID: 5/25qEHjQhueXaLA6BUKNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="73536599"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; 
   d="scan'208";a="73536599"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2026 07:34:14 -0700
X-CSE-ConnectionGUID: uUKGtdhTSFOF6vyLxU5t3w==
X-CSE-MsgGUID: 5O2EmwidS3KE+Kj3Wcsm6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; 
   d="scan'208";a="216084555"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.246])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2026 07:34:11 -0700
Date: Fri, 13 Mar 2026 16:34:09 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Siratul Islam <email@sirat.me>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org,
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/2] iio: proximity: add driver for ST VL53L1X ToF
 sensor
Message-ID: <abQgYaWJDx9Hb5Pd@ashevche-desk.local>
References: <20260313113737.151881-1-email@sirat.me>
 <20260313113737.151881-3-email@sirat.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313113737.151881-3-email@sirat.me>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275334-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ashevche-desk.local:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: F0494285209
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 05:37:18PM +0600, Siratul Islam wrote:
> Add support for the STMicroelectronics VL53L1X Time-of-Flight
> ranging sensor with I2C interface.

Now LGTM,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

One nit-pick that can be dealt with later on (up to maintainers).

...

> +	reset_control_deassert(data->xshut_reset);

No need to check for an error?

-- 
With Best Regards,
Andy Shevchenko



