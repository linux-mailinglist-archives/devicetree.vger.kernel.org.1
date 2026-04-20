Return-Path: <devicetree+bounces-288607-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKNGKLf15Wl+pgEAu9opvQ
	(envelope-from <devicetree+bounces-288607-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 11:45:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E4D428FC6
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 11:45:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 29440301071F
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 09:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CC213921D8;
	Mon, 20 Apr 2026 09:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="PVpNFoN7"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A554A391E72;
	Mon, 20 Apr 2026 09:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776678319; cv=none; b=NwDfvOggBgN7P2+N9zCPMm+ykyVbVuAHZ4B5T9Brj23e91rn8QsLt2vaeYSjApqbS1u8O/SXuPM+d042SJfqsaLz5luYPgBoidk9E333aCA7CSXK2wCUfylUja+yrVVmeFatEbXJ2lG0nnaYQZBuF+7VFuYIGEhGm7x+zyd+tNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776678319; c=relaxed/simple;
	bh=6ydlKO1CccWjEiMXvA9WRNws3K0u0upvqVWTm4Pm/18=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kRse+eOWVXdVIf1QVCvSMS+ALeYV2jjlFzz/1HUWB3onr6TF9ijhasZc0mZeRGBIcVj+OeCtC6BhCX+y4PBYUWOjyYA+KupKjdrTXKq3LMrDfCq8MvulwgDGu1SVhcaLDjPFUa8BxDRMTOKmK1KrL7C1G/kvrfJe9jRCiZeqpss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=PVpNFoN7; arc=none smtp.client-ip=198.175.65.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1776678317; x=1808214317;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6ydlKO1CccWjEiMXvA9WRNws3K0u0upvqVWTm4Pm/18=;
  b=PVpNFoN7KkzDr2RAs9NQ2Lvy5CmsHf1vqgoS8+VgmwB9YyiVPGaDTTo/
   24RvmVaRDHgj85SOx7u3iuIvZaX6P45u/69IK00kD8iOYlbQyYXxgtdb6
   ft2KzaeA3aKarEpmgWNcDCO+eMBTtjFlX78WTY3W8C4L2PkVkfhnxL67R
   ykU2Y/1BtZBGYBut7IlBvniHscSA8Y5fYIYOKfZufDFvl/t8hl1r3e4UN
   k+jphr4mBUS3Jo2/4pJcisRASr75Of0hLuXv5Q1w8eoIPvyvWRmastzgX
   d++0+sASA61Hklxohtet0cIalRv8Vz9DXvDip2arcWCa2bcE1MTCp7h9G
   A==;
X-CSE-ConnectionGUID: wBB1OaJcTDmfiq7jS1diPw==
X-CSE-MsgGUID: mgkeFh8pQhq6crGkH1jIug==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="94991798"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; 
   d="scan'208";a="94991798"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2026 02:45:17 -0700
X-CSE-ConnectionGUID: tx6lxQtpRI+kQAYyCMqndw==
X-CSE-MsgGUID: X3hWbcAARvSKKcLW6Qj08w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; 
   d="scan'208";a="231547598"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.90])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2026 02:45:13 -0700
Date: Mon, 20 Apr 2026 12:45:11 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Hardik Phalet <hardik.phalet@pm.me>
Cc: gregkh@linuxfoundation.org, jic23@kernel.org, andy@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	dlechner@baylibre.com, krzk+dt@kernel.org,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev, me@brighamcampbell.com,
	nuno.sa@analog.com, robh@kernel.org, skhan@linuxfoundation.org,
	Hardik Phalet <hardik.phalet@gmail.com>
Subject: Re: [PATCH v3 4/5] iio: magnetometer: qmc5883p: add oversampling
 ratio support
Message-ID: <aeX1p_LseVrKk3Pr@ashevche-desk.local>
References: <20260420-qmc5883p-driver-v3-0-da1e97088f8b@pm.me>
 <20260420-qmc5883p-driver-v3-4-da1e97088f8b@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260420-qmc5883p-driver-v3-4-da1e97088f8b@pm.me>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,vger.kernel.org,baylibre.com,lists.linux.dev,brighamcampbell.com,analog.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-288607-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,intel.com:dkim,ashevche-desk.local:mid]
X-Rspamd-Queue-Id: 68E4D428FC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Apr 19, 2026 at 10:32:56PM +0000, Hardik Phalet wrote:
> Expose the CTRL_1 OSR field through IIO_CHAN_INFO_OVERSAMPLING_RATIO so
> userspace can select among the four oversampling settings (1, 2, 4, 8)
> supported by the device. Read, write and available handlers mirror the
> existing SAMP_FREQ plumbing and use the already-present rf.osr regmap
> field.

...

>  		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |            \
>  				      BIT(IIO_CHAN_INFO_SCALE),           \
>  		.info_mask_separate_available = BIT(IIO_CHAN_INFO_SCALE), \
> -		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SAMP_FREQ), \
> +		.info_mask_shared_by_type =                               \
> +			BIT(IIO_CHAN_INFO_SAMP_FREQ) |                    \
> +			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),            \

Use the same style from the start:

		.info_mask_shared_by_type =                               \
			BIT(IIO_CHAN_INFO_SAMP_FREQ);                    \

>  		.info_mask_shared_by_type_available =                     \
> -			BIT(IIO_CHAN_INFO_SAMP_FREQ),                     \
> +			BIT(IIO_CHAN_INFO_SAMP_FREQ) |                    \
> +			BIT(IIO_CHAN_INFO_OVERSAMPLING_RATIO),            \

In both cases this will become no '-' lines in the diff.

-- 
With Best Regards,
Andy Shevchenko



