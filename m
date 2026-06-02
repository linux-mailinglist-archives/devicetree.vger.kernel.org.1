Return-Path: <devicetree+bounces-305907-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IXyWFsVmH2qslgAAu9opvQ
	(envelope-from <devicetree+bounces-305907-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:27:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5742D632E55
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:27:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=izs4ddHj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305907-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305907-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3407F300FC9D
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 23:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA70F3B5820;
	Tue,  2 Jun 2026 23:25:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7FD2E7377;
	Tue,  2 Jun 2026 23:25:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780442740; cv=none; b=asFkDG6nn/IiztWgbPkGG1Mw38+e1Uz8aIGgEAHhBAmjPwKygXJsr4jXlyZDq8ZlNBg7tEHBkhib3y6/16+q7BRPlCAt28B2Shk429kI1FzvDmzg/iuLmROh+zg9GASNIsAYMnyyANgZuhK6IaNva+BvepsCOgTE7Hr544IMIAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780442740; c=relaxed/simple;
	bh=imY9J+WKgLuc4RcbGudyONAo0fJU58c7eRuXx1DYMSk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jTdpDDtegW2/Qp1fMcgqMO2ufQ3hEh1yhLLJAc8JRoVsjeBzfNFWK1SAYgde30H4JZqzYzegQqcZ3fBQ0lep+z1ZRWs6HqGIw9vh5nq5xNAoLdeTeiq/ra3Qtfqmj5jw8NksSZy8fTRVL1UvQooU86aAlNVi6phjUqRWsr4IahU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=izs4ddHj; arc=none smtp.client-ip=198.175.65.12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780442739; x=1811978739;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=imY9J+WKgLuc4RcbGudyONAo0fJU58c7eRuXx1DYMSk=;
  b=izs4ddHjlsgm/G80OnifvxIX9pbJV/Q2vx+0svOnMv/2zUfdg6uHLbLq
   Fu8Pe17JknYxtPODSkyWO0qVRk1nFVv+o+tRhCBviT+nWgdFo1kcAzi6m
   Zd8C7dEEb5ZAMBiNDvIutULRlVgQJDMZk+GfybyutobwjsuplGLaKg8LK
   Z0sAvFdiVFreXJQY+NJhCBpLbcrGxR6mI7V7mgz19gtKU3l7u3KCUqyeW
   wN1q5gH4uEwOUgfU2Nu/Y2xiAL4aWbrQDVM8nhw8ekvdhnq4U0wuZHL+7
   115jD/A0mpHIU6Wz3v5yUiAssJs2tWqrMSvy6eIT7NTw7fHBnQhq7p2ak
   g==;
X-CSE-ConnectionGUID: b9Ywcf5ERe+XATNm/Oymzw==
X-CSE-MsgGUID: qAIBwPIXQyyjtrn1agT+UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="92725901"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="92725901"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 16:25:39 -0700
X-CSE-ConnectionGUID: qt1081oLSjmMPOTvSyg7kw==
X-CSE-MsgGUID: 0dEDlu3yRbGhoKp6mVPaIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="247996434"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.116])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 16:25:35 -0700
Date: Wed, 3 Jun 2026 02:25:32 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Liviu Stan <liviu.stan@analog.com>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Antoniu Miclaus <antoniu.miclaus@analog.com>,
	Francesco Lavra <flavra@baylibre.com>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux@analog.com,
	devicetree@vger.kernel.org,
	Joshua Crofts <joshua.crofts1@gmail.com>
Subject: Re: [PATCH v4 4/9] iio: temperature: ltc2983: Use local device
 pointer consistently
Message-ID: <ah9mbI8j2WhaneOe@ashevche-desk.local>
References: <20260525164013.118614-1-liviu.stan@analog.com>
 <20260525164013.118614-5-liviu.stan@analog.com>
 <20260527171820.4cbf10d4@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260527171820.4cbf10d4@jic23-huawei>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[analog.com,baylibre.com,kernel.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-305907-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:liviu.stan@analog.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:antoniu.miclaus@analog.com,m:flavra@baylibre.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:joshua.crofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:joshuacrofts1@gmail.com,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,ashevche-desk.local:mid,vger.kernel.org:from_smtp,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5742D632E55

On Wed, May 27, 2026 at 05:18:20PM +0100, Jonathan Cameron wrote:
> On Mon, 25 May 2026 19:39:31 +0300
> Liviu Stan <liviu.stan@analog.com> wrote:
> 
> > Some functions define a local 'dev' pointer but still use bare
> > '&st->spi->dev' in some code paths, and some don't have it at all.
> > Replace bare references with the local pointer for consistency and
> > collapse some wrapped lines that now fit within 80 characters.
> > 
> > Reviewed-by: Joshua Crofts <joshua.crofts1@gmail.com>
> > Signed-off-by: Liviu Stan <liviu.stan@analog.com>
> Applied to the testing branch of iio.git.

As I said, this has to be split to three patches.
Can we drop it? Or is it late already?

-- 
With Best Regards,
Andy Shevchenko



