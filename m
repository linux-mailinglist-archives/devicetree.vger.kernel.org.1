Return-Path: <devicetree+bounces-309310-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qbBBG5dsKGq0EAMAu9opvQ
	(envelope-from <devicetree+bounces-309310-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:42:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BADD8663D91
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:42:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=lOBzEaF+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309310-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309310-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8AECD3080FBA
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 19:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3ED83749E9;
	Tue,  9 Jun 2026 19:33:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF6C344DAE;
	Tue,  9 Jun 2026 19:33:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781033598; cv=none; b=F14uEPAxL/csdPNLkaqT5/YXxku8xB6TmsyxaZqbsIorY9/2jOXyZRwcFNAZYK4io0jiWjVQdfP7mgsSubYgijGjq8qW0hUAyx7iKbUDY4JAw5Do22AqZlT+ltNlUxyTvf/QnIzU2gSXMsHuqolEiJnO8AHAaCvbxPMfUCYwzek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781033598; c=relaxed/simple;
	bh=4sQeWTpTHfO3TwVdreiqV4yVzlLjiyYiPOU+cAH5/cQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eTg/4SiJHi6jyCc2rm+I+FXYnkLQq68oSNwDTjeTEgrNA4cII/ullzXxoD03wYmNKnuccDARhcWu7dJC8pdjIh36aeNvJZpHsyZgGhLEreTsZurFITxruEMCrYYbothPz1sW4yHzwFivcoDKjucqJ3R4gYvQqIh3MVpAr6PB3rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=lOBzEaF+; arc=none smtp.client-ip=198.175.65.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781033597; x=1812569597;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4sQeWTpTHfO3TwVdreiqV4yVzlLjiyYiPOU+cAH5/cQ=;
  b=lOBzEaF+H80mVUh5CfS0lZGc2y2VcV6XDGfaiynKziDBXBHrsdP3o+UE
   QFfATsccrHI7YmPAKNCQe+NLjSQVou+51wJGOE9JxB8MbtjtuM8w155yj
   Eds7WkyC1dgz3Rkzmn2RaeGaAANH69Pf/+E/42bkygeQ03+62K6yk1kzs
   WF8EfovCu77965cqWoAmzuNM15X/Yc/eKFQZ6NcVaoaqBv8Biy6S7H1E1
   W2vC8cCIxKPtjOryDcijXz1TdEcLwBBNl3xofGLRogNGlLt9wk5GvkKUQ
   DKh6d8vfY1mZoTZsgpBcLwTkWeRRx8adq1P1Z16XUjKKMPIGCBRuOGyJi
   A==;
X-CSE-ConnectionGUID: y8DJ9cu8S1i5xZGjTKfs5g==
X-CSE-MsgGUID: t6LY9rQOSbmJHSOwRqykkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="92130910"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="92130910"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 12:33:16 -0700
X-CSE-ConnectionGUID: SOLNmU1EQEStSFclzpEaCQ==
X-CSE-MsgGUID: hgRnIwRJQVqbOU668KynsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="242986939"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa007.fm.intel.com with ESMTP; 09 Jun 2026 12:33:13 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 0F98E95; Tue, 09 Jun 2026 21:33:12 +0200 (CEST)
Date: Tue, 9 Jun 2026 21:33:12 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Roman Vivchar <rva333@protonmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Lee Jones <lee@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH v2 2/4] iio: adc: mt6323-auxadc: add mt6323 PMIC AUXADC
 driver
Message-ID: <aihqeLKHC3PP436t@black.igk.intel.com>
References: <20260609-mt6323-adc-v2-0-aa93a22309f9@protonmail.com>
 <20260609-mt6323-adc-v2-2-aa93a22309f9@protonmail.com>
 <aihbxowyAIlSeDjH@ashevche-desk.local>
 <hacDZbv1Whk_g8AMSfJqKHrgXfyVKt2o3_UGK-1k9jNRJyMxEFPztGhytHvHbc1x9j-F84I_ZuprmXWf2Azbtdqj2vnVal4PO1gG_DijYyA=@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <hacDZbv1Whk_g8AMSfJqKHrgXfyVKt2o3_UGK-1k9jNRJyMxEFPztGhytHvHbc1x9j-F84I_ZuprmXWf2Azbtdqj2vnVal4PO1gG_DijYyA=@protonmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309310-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rva333@protonmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
	FREEMAIL_TO(0.00)[protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BADD8663D91

On Tue, Jun 09, 2026 at 07:15:42PM +0000, Roman Vivchar wrote:
> On Tuesday, June 9th, 2026 at 9:30 PM, Andy Shevchenko <andriy.shevchenko@intel.com> wrote:
> > On Tue, Jun 09, 2026 at 04:31:59PM +0300, Roman Vivchar via B4 Relay wrote:

...

> > > +	case IIO_CHAN_INFO_RAW:
> > > +		scoped_guard(mutex, &auxadc->lock) {
> >
> > I'm wondering why we haven't moved to guard()() here
> 
> The compiler would complain about 'cannot jump from switch statement'
> due to default case.

I am not sure I follow. See the examples in the existing drivers. They are
warning clean in that sense.

-- 
With Best Regards,
Andy Shevchenko



