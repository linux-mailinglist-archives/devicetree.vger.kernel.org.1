Return-Path: <devicetree+bounces-259801-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCqNNo+KeGn5qwEAu9opvQ
	(envelope-from <devicetree+bounces-259801-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:51:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE6192163
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:51:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8211B3022637
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BABF32BF43;
	Tue, 27 Jan 2026 09:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Z2nNllUn"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6E02E0923;
	Tue, 27 Jan 2026 09:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769507080; cv=none; b=p1Jdytwj73B9tRTSAZBFt+tUni7hgMj38U9hl1fFgyT1vzyQ9sCHhp0g4JhXQcPpraFQpRBoW3pyaMA0Yy62NjHG7zSbTitvwttoxHm37+79JUB6FzPal3A0n9Mu9HPgEWdOGl52ZVArdhkGq6fVHqP/smPlyrkWjlKuCInXxC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769507080; c=relaxed/simple;
	bh=jPvLZnphMdcVN/l/3xsINCKdek0m9norh4P5F7hOiDI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FqTcfT3ZrFFfTgso7nj0VmNR6SZB83EykaJKkQPlgdr01x41Zd8Yza6VaReD1zDnvPbE/ezVzx7WuiljE7Dor3DR/0fTXEytE8CwYlqnFlnfw0XFB5sxGiQFFhpBH87gtsme6ZPz28NKVi/1MSM4ko8DiiBGMaasyNs8IWlxfG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Z2nNllUn; arc=none smtp.client-ip=198.175.65.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769507079; x=1801043079;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jPvLZnphMdcVN/l/3xsINCKdek0m9norh4P5F7hOiDI=;
  b=Z2nNllUnUU0kPJ87c8W6YDULEOR1VRWKCQ17XsYMZeEH2qVbxKvwFD6j
   FtwtAWSx+EsirLE5Q56XDo1GQiIdQT79phZDdP7A6YDJq1dKN9WaB7Qau
   VTvOrQYI/7ANlf2fIC7urt5RPRDU0RtItMTpEeQofwIOI5w1+sApjNXo0
   NCrOFjosZhhGVVy/iK3uSDRWOD+qekUzR5HaAKWNi6UDB2E7fwa03K+10
   UUnwgzAJU8mjRpSmDvGdUpXsMow3nbd2Vy5r8x6dZn0QFV0BnllXlwGkd
   L81uVOCR9wkzVzFlJ0PtRsoXVkwTmHuC1ENXMJ5Nr0C0uvqBhYF8rxQmR
   A==;
X-CSE-ConnectionGUID: ayEuhZyUTU+NTckLEzJPTw==
X-CSE-MsgGUID: GNE3O3m1QmWoJN2Q3m98sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70416853"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="70416853"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 01:44:38 -0800
X-CSE-ConnectionGUID: 8UUpICqfQcST4/sJ1x6n/g==
X-CSE-MsgGUID: k0n/UH1wQ0meFryrjQEfTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="212909062"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.248])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 01:44:35 -0800
Date: Tue, 27 Jan 2026 11:44:32 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: abdurrahman@nexthop.ai
Cc: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, info@mocean-labs.com,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 6/6] i2c: xiic: cosmetic cleanup
Message-ID: <aXiJADHPJ0NXLVNa@smile.fi.intel.com>
References: <20260126-i2c-xiic-v5-0-88a16a28721c@nexthop.ai>
 <20260126-i2c-xiic-v5-6-88a16a28721c@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126-i2c-xiic-v5-6-88a16a28721c@nexthop.ai>
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
	TAGGED_FROM(0.00)[bounces-259801-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: BCE6192163
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 05:08:21PM +0000, Abdurrahman Hussain via B4 Relay wrote:

> Re-use dev pointer instead of referencing &pdev->dev everywhere.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
A couple of nit-picks to be addressed though.

...

> -	i2c->dev = &pdev->dev;
> -	pm_runtime_set_autosuspend_delay(i2c->dev, XIIC_PM_TIMEOUT);
> -	pm_runtime_use_autosuspend(i2c->dev);
> +	i2c->dev = dev;

+ blank line here.

> +	pm_runtime_set_autosuspend_delay(dev, XIIC_PM_TIMEOUT);
> +	pm_runtime_use_autosuspend(dev);
>  	ret = devm_pm_runtime_set_active_enabled(dev);
>  	if (ret < 0)
>  		return ret;

...

>  	ret = xiic_reinit(i2c);
>  	if (ret < 0) {
> -		dev_err_probe(&pdev->dev, ret, "Cannot xiic_reinit\n");
> +		dev_err_probe(dev, ret, "Cannot xiic_reinit\n");
>  		return ret;
>  	}

It should be integrated in the second patch or so, I have already commented on
that.

...

> -	ret = pm_runtime_get_sync(i2c->dev);
> +	ret = pm_runtime_get_sync(dev);

>  

Drop this blank line as well.

>  	if (ret < 0)
> -		dev_warn(&pdev->dev, "Failed to activate device for removal (%pe)\n",
> +		dev_warn(dev, "Failed to activate device for removal (%pe)\n",
>  			 ERR_PTR(ret));
>  	else
>  		xiic_deinit(i2c);

-- 
With Best Regards,
Andy Shevchenko



