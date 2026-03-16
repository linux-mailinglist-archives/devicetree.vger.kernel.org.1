Return-Path: <devicetree+bounces-276403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDV5Hkh0uGn5dgEAu9opvQ
	(envelope-from <devicetree+bounces-276403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:21:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 290362A0CB5
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 22:21:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1156D304A0EC
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35D3378825;
	Mon, 16 Mar 2026 21:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="UiEfvPnr"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37847366545;
	Mon, 16 Mar 2026 21:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773695677; cv=none; b=Sc9IN/qKG+n8OLhr8z/JsCbS8koFDCYmeXutZAZkIQz/ypb8V1MQiiqPBhROf0BcTPUFWdmVzHhiA83OH8ar7M+Woh4mAetuSXoBCCI6eb0vZY88vwtXTx4LSUQJuiiOevb4xj3TVf6MCTxov2uiQp1MMw6bIwqkg+aYMRWL/rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773695677; c=relaxed/simple;
	bh=jcd/GN93y2rBVk7GYIzWLuhb0heIRu8r6Z0+jGJy+1s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DucBUQhvVvsiP/sPz+CzHgII+vH6Oxr9xl3J+1GWhgEdPzIPuWSsYdM2NRrbCCOq5WpjwM2NVBD0opmXJ2xikxeuNqpayX1/yOBKoeCqfPJMFpZ7NO+k6K2j64mDXKm28GR9eWMkV7p+qUfjJ9Kyyf29foZSGwlc5h2iuSsHMJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=UiEfvPnr; arc=none smtp.client-ip=192.198.163.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773695673; x=1805231673;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jcd/GN93y2rBVk7GYIzWLuhb0heIRu8r6Z0+jGJy+1s=;
  b=UiEfvPnrtL3CUk83ftLNZkuTsprU99B9jWhjvaHjGDgcPixHYKCeudJ6
   T1hOysblp3ZnMikWnH/psKtfhmXww/PIYqyk6dZIxvTe+DHRGKvxrBB1T
   Sj+KWiwm0RlCX07gxabj0vJOXhnHRyiZsmLvyCazZOzlGX5Zq/CJdxcXG
   ru2bS+Gua9oObf1KL9rVU1NFsB/Ry0rVslfqBfstDMGeJ52ZhRvlWvPCM
   yvcHSsbMB2O5Eyhm4/6hmu656c8G78kgkYLA0WqKKdrzDzu2O3mWOm6qC
   eemAH1GUgfBUCXwiSyLKQlTXF95pg+zLRxV1RBzb6J5Jg+VeG/1TFirHR
   g==;
X-CSE-ConnectionGUID: 6AI7F4CORfyw9CfEHGgk0Q==
X-CSE-MsgGUID: gCsmq9EuSVCMRA91vUhxUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74837796"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="74837796"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 14:14:31 -0700
X-CSE-ConnectionGUID: l8mFQn7uQ+C0vaisftjsNA==
X-CSE-MsgGUID: oFXoz8IFTJKil0kkWX0XIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="245065408"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.237])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 14:14:28 -0700
Date: Mon, 16 Mar 2026 23:14:25 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Erikas Bitovtas <xerikasxx@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Meerwald <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Raymond Hackley <raymondhackley@protonmail.com>
Subject: Re: [PATCH v4 0/7] iio: light: vcnl4000: add regulator support
Message-ID: <abhysYYZj4VWhdtx@ashevche-desk.local>
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
 <abhhPnvQwpZozHPe@ashevche-desk.local>
 <ea623eb6-2f63-459d-a1c0-afffd2428426@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ea623eb6-2f63-459d-a1c0-afffd2428426@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-276403-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,pmeerw.net,vger.kernel.org,lists.sr.ht,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ashevche-desk.local:mid]
X-Rspamd-Queue-Id: 290362A0CB5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 10:20:54PM +0200, Erikas Bitovtas wrote:
> On 3/16/26 9:59 PM, Andy Shevchenko wrote:
> > On Mon, Mar 16, 2026 at 07:19:44PM +0200, Erikas Bitovtas wrote:

...

> >> One of the commits includes a Reported-by: tag without a Closes: tag -
> >> the report was done outside of LKML.
> > 
> > You mean outside of public web access?
> 
> The report was done in a Matrix channel. I could provide the link to the
> report for the Closes: tag, but it requires to sign-in to view it.

Okay, thanks for elaboration. In case of a new version, please mention this
in the cover letter.

-- 
With Best Regards,
Andy Shevchenko



