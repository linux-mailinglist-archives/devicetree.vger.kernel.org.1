Return-Path: <devicetree+bounces-297114-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFbgCNvaBGrYPwIAu9opvQ
	(envelope-from <devicetree+bounces-297114-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:11:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 776B553A5C7
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:11:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABD1E30570E9
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 20:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 651C23B6BE4;
	Wed, 13 May 2026 20:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="GdH+nYMX"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89763B8D4A;
	Wed, 13 May 2026 20:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778703040; cv=none; b=QlhTVguwN42R2OV9Qt5bDys3Uz8wju3qVt2J5BDppdfb5AX77TEhxA8vHaDplkNApo+t7X/YC2LU2F6FtsSVPGSEml5hW0vrTSlNi1Wwjlx7Ql7Ly2gtcOpnezqaLCw5PLn0X8/Jah9rDfIWEnsOEpDWyeYLmhcqBYgMBmi6dQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778703040; c=relaxed/simple;
	bh=+q1v693MAGcslpV1s79s1V0yzFFNOoetpgIGymEEQmw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a2yWtPeeAchMWnjFHcun0VjQbWo3muBusgNA6RX7TOOhIXhF6BMyS03URS/ost9RHnH1Ju9xazVstk8VbFrl4Wosdo8/c90h6IbEXXOhtPMndovs8Wg3+/xemUYHWK+ySRVIPhEUkxH98Qa/Sl9oA41qqZH/XwI0A5bgo9+m28I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=GdH+nYMX; arc=none smtp.client-ip=192.198.163.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778703039; x=1810239039;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+q1v693MAGcslpV1s79s1V0yzFFNOoetpgIGymEEQmw=;
  b=GdH+nYMXtvz2Y+U0cvJIDzWbjcsO8CDeH0omNjsmZRv5z8nCItvUWpUr
   aBrb0cPppk4qnTK4XpGe+qJqO/ggR++FoBnvvJ3m9vvdVp0FNcGDbwXje
   3pAGulVb2roH/CF2sxoWRkZHsgQHuyqIMu8Q2oPirtpouGBSZZytv2dTu
   Ny67XVuOVdxv3AMwJEohgrP8uHL/Hp4WFCwAGBCnXY6d8CV3/pKgmFpLq
   hFva2pTrOczrqcUFZDJYvwaH/t04yMTZ7kJb4syuJ5EEjoTgPibkOLsA/
   n1CWEKraaNOwaPMXdGlJjcPoKGyL4OjgWZ95b3+I9lhTx8nRvNnPjlE3S
   g==;
X-CSE-ConnectionGUID: zZEWSZVeR5OWyuTsluYO0g==
X-CSE-MsgGUID: ioiArEXARSuUG+bkyp0r3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="78783753"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="78783753"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 13:10:38 -0700
X-CSE-ConnectionGUID: hqPYoZtcREGRjllT8qq3pQ==
X-CSE-MsgGUID: TvHpd68SS9OV9CIROPU+RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="237317710"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.106])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 13:10:34 -0700
Date: Wed, 13 May 2026 23:10:31 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Michal Piekos <michal.piekos@mmpsystems.pl>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maksim Kiselev <bigunclemax@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] iio: adc: sun20i-gpadc: add A523 gpadc support
Message-ID: <agTat6mAnrf6uJWH@ashevche-desk.local>
References: <20260513-sunxi-a523-gpadc-v2-0-d5efde151dac@mmpsystems.pl>
 <20260513-sunxi-a523-gpadc-v2-2-d5efde151dac@mmpsystems.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260513-sunxi-a523-gpadc-v2-2-d5efde151dac@mmpsystems.pl>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 776B553A5C7
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
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,sholland.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-297114-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 06:59:43AM +0200, Michal Piekos wrote:
> A523 differs from existing sun20i-gpadc-iio by having two clocks; bus
> clock and module clock.
> 
> Change driver to enable all clocks.

...

>  	struct iio_dev *indio_dev;
>  	struct sun20i_gpadc_iio *info;
>  	struct reset_control *rst;
> -	struct clk *clk;
> +	struct clk_bulk_data *clks;

Try to follow reversed xmas tree order.

>  	int irq;
>  	int ret;

...

> -		return dev_err_probe(dev, PTR_ERR(clk), "failed to enable bus clock\n");
> +	ret = devm_clk_bulk_get_all_enabled(dev, &clks);
> +	if (ret <= 0)
> +		return dev_err_probe(
> +			dev, ret,
> +			"failed to enable clocks or no clocks defined\n");

Is this done by clang-format or so? Please, don't do wrapping on the open
parenthesis. Also note for more than 10 years checkpatch does not complain
on the trailing string literals that go over 80 characters.

-- 
With Best Regards,
Andy Shevchenko



