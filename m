Return-Path: <devicetree+bounces-312463-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O6RxOc4mMWo7cwUAu9opvQ
	(envelope-from <devicetree+bounces-312463-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:34:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9154468E59E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:34:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZqQKVA7n;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312463-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312463-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4EA58302E7ED
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A02242DFF2;
	Tue, 16 Jun 2026 10:32:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C41230D40E;
	Tue, 16 Jun 2026 10:32:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781605952; cv=none; b=UHC0s0dAeT+Qa0DmC3WuDHwbD92Yudk95aIcRmKrznDEMb+WsC52BrBQEJ8irn5ikHrf2UM41ebEE9W8dVurtT+88tJF0BuPqNC59ENNNw9YWuTqDIAIUiwS60on95PHf1kQab36oMn5tzXsk0z4rGlENKK4V6c6qQCi/42QhzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781605952; c=relaxed/simple;
	bh=QS7264d7E5K3+fnqdbxWEuO3uKgrIUv5mU32zMC2+gA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b8WzPY/ugFjVuP+VPAJ8J0OVNmnAxKC9DMOrQLZmMkEqEPuzebBf0yXIMaHt/I+it4P1/b0GqdQsKoCBGzuNUQ5CwJsjQ0CHgae/z5LmPlxS+NpZy7Drc3o03A4/H1M5cJNkSzC/pgcZquEaNSWBMWku9QtGhQTwoHFH1zlh+8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ZqQKVA7n; arc=none smtp.client-ip=192.198.163.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781605951; x=1813141951;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QS7264d7E5K3+fnqdbxWEuO3uKgrIUv5mU32zMC2+gA=;
  b=ZqQKVA7nc1WtAOF0oRrsVkfSlAD4lsavTpZKpn2OAJ+JAY9auPy+5Xa4
   gsb4/bPfKcmkQ5A3ybiOqaKN0v0HZfC4Gn253j3jVI3KXNd6UZ+xwr44h
   zkSR0O7JCKQAv9A81Qt0uOpwt+4d/n/Cxw4DR6zeFzbu9kH0YEJREjpHa
   jlVypMAtCGsMkCPN9xxPdLfqKYp2yjwonhESDYyNoR6twfBL15ZAdrxkV
   CsScEjqLETf5vm4YkAzcBdo42fk5QzNFWEImNvd9Zj2BfvNh0GHOlKpEk
   SJfkW94+N0TsQ55w9Y1JzYXw/ZeMBcALAjUpHqpLZPTinZSyOR14HGA4o
   Q==;
X-CSE-ConnectionGUID: lZpY9g+eS9eYiXU+T1kMGw==
X-CSE-MsgGUID: cVrCkXR6QluqHKccNSgiPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="99939566"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="99939566"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 03:32:30 -0700
X-CSE-ConnectionGUID: TikQX9rpQA+Zk8GOrIVCzQ==
X-CSE-MsgGUID: 3yzAtVzZTZ6KDPCd32AlNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="246854830"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.153])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 03:32:27 -0700
Date: Tue, 16 Jun 2026 13:32:24 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: rodrigo.alencar@analog.com
Cc: Michael Auchter <michael.auchter@ni.com>, linux@analog.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH v3 07/12] iio: dac: ad5686: add ldac gpio
Message-ID: <ajEmOCh8hdmfTHKW@ashevche-desk.local>
References: <20260616-ad5686-new-features-v3-0-f829fb7e9262@analog.com>
 <20260616-ad5686-new-features-v3-7-f829fb7e9262@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260616-ad5686-new-features-v3-7-f829fb7e9262@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312463-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9154468E59E

On Tue, Jun 16, 2026 at 09:21:13AM +0100, Rodrigo Alencar via B4 Relay wrote:

> If wired LDAC, should be held low when unused (pin is active-low), which
> allows for synchronous DAC updates. This will be used to update all the
> channels at the same time when adding buffer support.

...

> +struct gpio_desc;

+ blank line to decouple generic declarations from local ones?

>  struct ad5686_state;

-- 
With Best Regards,
Andy Shevchenko



