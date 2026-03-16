Return-Path: <devicetree+bounces-276121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WG96E5nst2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:42:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA388298D2E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:42:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 344BF3073A4C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94526390213;
	Mon, 16 Mar 2026 11:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="SjU+jUm+"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9ABB1ACEDE;
	Mon, 16 Mar 2026 11:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773660954; cv=none; b=FhLQBV52sgyXuc9iGuxNvZYzl0ylxjWmOc9nRusgD8gR8c5YpV9fEwo7ihwo7/M5K05JQXzt4wm1v91krTejytuPr0H45XJj7FcMR6C/B2DQxPiwj102Frr+ZnORBlsk8lhpAfQm5LsCCy2IispbQXCpLPacSar/mqolBk2NZPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773660954; c=relaxed/simple;
	bh=yvednJVD+S92uidTlYwGeaVVG/EK1t6E2q4V/k1EYxQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uuYkpDJ3bq8iOkn3pJvVX4pkxFcuk9Ly5FiRFRikcSAfcK/9i8MCsE2xCkcW21FDpHm+d6xq2Suvkm4AUhsxCTqBrY8W3UTvx011GWgl77bOObxcqjzTwkC+CUxhI7jbcIkuLN+lTzkm1Ol5HA8vF51IK35dxJx5LvKrj/1MW68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=SjU+jUm+; arc=none smtp.client-ip=192.198.163.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773660953; x=1805196953;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=yvednJVD+S92uidTlYwGeaVVG/EK1t6E2q4V/k1EYxQ=;
  b=SjU+jUm+dXflOKnOX6rkjwlELfx+mRe9OdLoUlkCWiGVAUhp24g+MwLd
   eZqmgtcJwBPzUQboe/WcFzsrjExKKOGgGhEvL9n7qK8WtKossiV2Swqle
   fuD1t+BP0lRxSykbLvNHchpTKT4fvDDYkgKqVRQX0/Iyhako8I/UZCTCl
   jj9rUI4sEpHJt1DT8pmJPmjorJ7ijVMic1Aa80FV8Gy6MmRVo4NSoB6N4
   GUz1mquJ3WTwTqJqzsj3CDxsqrMEh6xh99ZQyJ3441cj2dkmJn17FcxQo
   vHSAru7nipNP6M7R0k4z/HZNI8amzXYNULR4B8WQ26yE9o5/tsTt9b2tr
   A==;
X-CSE-ConnectionGUID: FKDKGyVdQbybVvG1jU8CzQ==
X-CSE-MsgGUID: teityRToROS5T3S2Pm4/Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="85374266"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="85374266"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 04:35:46 -0700
X-CSE-ConnectionGUID: 9rp9XH9KR8yjZC4oTX02sA==
X-CSE-MsgGUID: eKVTAUAVRvKpRNtiZbTfzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; 
   d="scan'208";a="218157295"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.237])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2026 04:35:42 -0700
Date: Mon, 16 Mar 2026 13:35:40 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: wangjia@ultrarisc.com
Cc: Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Zhang Xincheng <zhangxincheng@ultrarisc.com>
Subject: Re: [PATCH v2 2/2] riscv: ultrarisc: 8250_dw: support DP1000 uart
Message-ID: <abfrDBeJrValJR9a@ashevche-desk.local>
References: <20260316-ultrarisc-serial-v2-0-6ab3e7fa891c@ultrarisc.com>
 <20260316-ultrarisc-serial-v2-2-6ab3e7fa891c@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316-ultrarisc-serial-v2-2-6ab3e7fa891c@ultrarisc.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276121-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,ashevche-desk.local:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CA388298D2E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 02:33:23PM +0800, Jia Wang via B4 Relay wrote:

> The UART of DP1000 does not support automatic detection of
> buffer size. skip_autocfg needs to be set to true

Missed period at the end.


...

> +#define DW_UART_QUIRK_FIXED_TYPE	BIT(6)

Seems unrequired.

But to make sure, can you elaborate what's going on here?
What is the reads from UCV and CPR registers?

-- 
With Best Regards,
Andy Shevchenko



