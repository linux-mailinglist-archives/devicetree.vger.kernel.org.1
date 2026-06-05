Return-Path: <devicetree+bounces-307505-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2ULJKdwRI2pkhgEAu9opvQ
	(envelope-from <devicetree+bounces-307505-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 20:13:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C0D64A77D
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 20:13:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SGmG13yi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307505-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307505-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 896E83036743
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 18:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D1937FF4B;
	Fri,  5 Jun 2026 18:08:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C442128725B;
	Fri,  5 Jun 2026 18:08:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780682919; cv=none; b=XJ4/jKO/Sx10TwaLSX7ZcibZqYbcHJZl66H9n29HAH7c9JVlOFZLVLvjgMjiFRgqnL2tl+8DVFNX3sFJhGOi8kVHVJjYX5ezSKa98O//dtADj0r9DhIpvzU/WvG4ZdDF2c9Z0NMSfMfc/z+BiI5DK52JJJsytpUrBsziVxKbkdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780682919; c=relaxed/simple;
	bh=2+brnzUx990MOInGWsL6ZxNrK90ERrXAKzKSiSYXsPw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z6Yu9a5cbZZWhxMax+LJyvFD7G4RYWsLRMoAvwYbArvuKA2Vpufmtw4jnKLdwcWxeyQU4lnBuIQiv5WNtsuu2pW0AlDQmmdRnnX3E9LOzEkQNCkTTNtKl+OPBNwXiffR9lRzmXtRM7/q9Kjwap2+KmA4hJb13+WI8trEolB6riM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=SGmG13yi; arc=none smtp.client-ip=192.198.163.19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780682918; x=1812218918;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=2+brnzUx990MOInGWsL6ZxNrK90ERrXAKzKSiSYXsPw=;
  b=SGmG13yi5ICaHrNhVW0XS4A+9VKTqsLLt9t5aOEl0J+xMNH+FXj6RXT2
   4PFKxagC40PygNd4w1KRBF+/naQfpdm2K9O8Axo7iQXMRsMDqLETtM4sk
   qkSK0OZ3H4DLS7BW0yTSDDrfqb2T5oOZgIze7DNF/qFxsy1PMmyavW83P
   4GN3ETqSibUSNXvlRWBtDfYZpQfkxzyr4DfChJluLu9HwHgJVD8QNR0z1
   bI9Oyhz5HaXloYx1PSpe2XMUQzQTTKDji0Jb9qfQcutc75ZfdjRIMjqiR
   RSYCetZocdKsOe4NfywFLsY4JzhG6vIxWQ8n1/OBQGJcVC8L+2uM+XZUh
   w==;
X-CSE-ConnectionGUID: o9PSHtK3S36Ym5axgKn9+Q==
X-CSE-MsgGUID: GE54KMuDTbyT/HzsWrXVgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="80555507"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; 
   d="scan'208";a="80555507"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2026 11:08:37 -0700
X-CSE-ConnectionGUID: VodKQM33QyCJKHA7Nq4egQ==
X-CSE-MsgGUID: DA8IULWcTiShoZurc3E7Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; 
   d="scan'208";a="268590591"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.245.178])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2026 11:08:34 -0700
Date: Fri, 5 Jun 2026 21:08:32 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Javier Carrasco <javier.carrasco.cruz@gmail.com>,
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rishi Gupta <gupt21@gmail.com>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] iio: light: add support for veml6031x00 ALS series
Message-ID: <aiMQoKociwhOUDvJ@ashevche-desk.local>
References: <20260524-veml6031x00-v3-0-29165609b2b5@gmail.com>
 <20260524-veml6031x00-v3-2-29165609b2b5@gmail.com>
 <20260526185933.0084679f@jic23-huawei>
 <aiMPJ9Qqcg7XTJt0@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aiMPJ9Qqcg7XTJt0@ashevche-desk.local>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307505-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:javier.carrasco.cruz@gmail.com,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:gupt21@gmail.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:mazziesaccount@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:javiercarrascocruz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[gmail.com,metafoo.de,kernel.org,baylibre.com,analog.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,ashevche-desk.local:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 14C0D64A77D

On Fri, Jun 05, 2026 at 09:02:22PM +0300, Andy Shevchenko wrote:
> On Tue, May 26, 2026 at 06:59:33PM +0100, Jonathan Cameron wrote:
> > On Sun, 24 May 2026 23:53:56 +0200
> > Javier Carrasco <javier.carrasco.cruz@gmail.com> wrote:

...

> I have a déjà vu that I have given already same comments.
> Why are they not addressed?

Okay, it's v3, I reviewed already v4.

-- 
With Best Regards,
Andy Shevchenko



