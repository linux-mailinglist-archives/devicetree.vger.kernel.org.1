Return-Path: <devicetree+bounces-279854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEmNA1OIwmkAegQAu9opvQ
	(envelope-from <devicetree+bounces-279854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 13:49:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5413089EB
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 13:49:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2D233261AB9
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 12:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52F693F87FB;
	Tue, 24 Mar 2026 12:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="nUq/047U"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E3F36AB4A;
	Tue, 24 Mar 2026 12:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774355961; cv=none; b=iAX9l/rUTBlP6PW0wq7ejxxDvI/N1kjqZRRCU3O1z5SbXzPJ1JoR7/1UFCYMJY7J5S5KbBz7lkUbWMp3PqfICe6OspT7OGTQyuQBUKXRYrsQ+jV35lYNSZF029h8kRpVdCk+Q9HmsNMsT39Uhb+bEIgoEfT435qSO/l5geDrwFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774355961; c=relaxed/simple;
	bh=OVVs0/RUsOAF6XWFLruGCCL8jPlKirIVAHS3OC1Ylas=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cDgT4p6J7v8VsxSOuwMzdagIYhLiv/HyP6jq/3N0XI6X7i6Poc2IkT1h4hqUsKWX5xIY/3yC79ou7n0dg7WH7HhoN9BuEQZotOJ3fBntHx6v8MdTc/5Hn3kqzwlXrZAaKcaAVvPEs5VSUd30zpuaCLk+v7Hn2Qb3S3YbZYWx+5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=nUq/047U; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774355960; x=1805891960;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=OVVs0/RUsOAF6XWFLruGCCL8jPlKirIVAHS3OC1Ylas=;
  b=nUq/047UGiQRf1rPAo3ewtKSU/l+7B4qBLVdzdttfCu8mkN58H0T7Nvx
   ThJxhT3N57WOM7F7xfGgGxzPvT/G5dxvGVhov9+jBy6tNz58gJEKQT1mF
   BicGUVCGIocV1sLRkhveL9KvkXjDFXuImexIz6Dm3qM3gnJ9BTBta8KET
   WRQRv3yQk5JzwiQJBhPoFTPkIs1tuxb/fxKshJcyqT9zvsj57SHNswqtg
   S5U7UwG2KBkuGkuW5nwcvVKdCN0f8oJGvMYcNVp7SBtRh6AVDIcSzl8yD
   /euI57BCwJFoFhVnR+YgOtX2SGCuht0TjQy5C3wY71Mi1+0lFBzZGlesV
   g==;
X-CSE-ConnectionGUID: UnIAcQvwTju/0PQiPNPldw==
X-CSE-MsgGUID: 2Gqo1K9JRd+RvWyoUo9FqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75437313"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; 
   d="scan'208";a="75437313"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2026 05:39:17 -0700
X-CSE-ConnectionGUID: 1nPXECSFR7S4uNfVPlcw4g==
X-CSE-MsgGUID: hbYPzInaRnOGj8ZmhRYrdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; 
   d="scan'208";a="224342848"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.214])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2026 05:39:13 -0700
Date: Tue, 24 Mar 2026 14:39:10 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Carlos Jones Jr <carlosjr.jones@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Liam Beguin <liambeguin@gmail.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Tobias Sperling <tobias.sperling@softing.com>,
	Jorge Marques <jorge.marques@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] iio: adc: ltc2309: Add LTC2305 support
Message-ID: <acKF7mSqKOjv6NSZ@ashevche-desk.local>
References: <20260324071331.842-1-carlosjr.jones@analog.com>
 <20260324071331.842-5-carlosjr.jones@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260324071331.842-5-carlosjr.jones@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,baylibre.com,analog.com,gmail.com,softing.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-279854-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,intel.com:email,ashevche-desk.local:mid]
X-Rspamd-Queue-Id: 6E5413089EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 03:13:31PM +0800, Carlos Jones Jr wrote:
> Add support for the LTC2305, a 2-channel, 12-bit SAR ADC that shares
> the same I2C interface as the LTC2309.
> 
> The LTC2305 differs from the LTC2309 in:
> - Channel configuration: 2 single-ended + 2 differential vs 8
>   single-ended + 8 differential
> - Read timing: Requires 2μs delay (1.6μs rounded up)
>   between I2C write and read operations
> 
> Device tree binding added in previous commit.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

-- 
With Best Regards,
Andy Shevchenko



