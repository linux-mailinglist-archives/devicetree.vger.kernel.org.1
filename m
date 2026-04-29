Return-Path: <devicetree+bounces-291489-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BiiJH3i8WlZlAEAu9opvQ
	(envelope-from <devicetree+bounces-291489-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 12:50:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13018493282
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 12:50:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61D8630EAE11
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 10:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A3F73EF0A8;
	Wed, 29 Apr 2026 10:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Lq8TfkAt"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890F43B8958;
	Wed, 29 Apr 2026 10:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777459539; cv=none; b=IqoHINyHkjvwN98cm2rIib4AWqiANcNFfV7t22BvshFFJySqprEAGmq9CZ9o1M+ieGRFAwm/eozNqeY6G/fpKFp6Vta3r6D51n5AxPIYAvgUwB6tbpkOS/Ic08upU97rqtbwDtEeWK2bFf2gVUvYEdtSr7z3POuM4NyyxSBtgkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777459539; c=relaxed/simple;
	bh=jTs2jXpT8MY877Aa+6EyG9UgBha0r9w/ax/uyCnkrgs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mhXkNexojEdYLc9Gmzc/O9IXJuVQ7S+hqhhQxMAPEpsFYccdJ57bJboN45jAr3GqaaqwJPtj6cFPcFKVtDs3P9neD/jcgTZdUkhF8RbE1XDMddTnO/K5traHswtB+TmXNcLaVkU101B7WOp0d4S7SmnM1WebEaszg0RMYjjHimc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Lq8TfkAt; arc=none smtp.client-ip=198.175.65.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777459538; x=1808995538;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jTs2jXpT8MY877Aa+6EyG9UgBha0r9w/ax/uyCnkrgs=;
  b=Lq8TfkAtHE/ni9UUHFZ0QqHFS0oK6HXrGeHh2nwkWwB0ZngtuuFlPcPw
   7xJ3oIzQFyWJWyRtqV/Y/RTMNjuBHM+bPjbZs56E+Tbc53dn8/GsEKckj
   U7WYIA8ZCkGDEJfURTxWa6WdyifeOUMXxsgwcK98Yzq1ZM69O169TIbCZ
   sFt9IJ2A+vRp1HMRel/QE/eLI9PVNMgdcEGR/fzVI7aLkQQTpwYOw7w0E
   GLsi7Z3EPmS3NvqLYftx7ztG75SE+m/H+40WhmnR2tQXeS2ImqnwkbvNu
   YaejHZVQRiknMO7kIVeMemmU1ePyCkRNqEAKapt4/ifE78zunXN/Mx5S0
   Q==;
X-CSE-ConnectionGUID: YlFNVmN8RpWJ2zqT6wAgfw==
X-CSE-MsgGUID: p4+k8SO4TAOEABOKW8WQjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="95804527"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; 
   d="scan'208";a="95804527"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2026 03:45:36 -0700
X-CSE-ConnectionGUID: IoYrrtycSY6wea6WEkbOiA==
X-CSE-MsgGUID: UHYGc4ZgQ0CvsD3uS0C7/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; 
   d="scan'208";a="238558358"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.245.141])
  by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2026 03:45:33 -0700
Date: Wed, 29 Apr 2026 13:45:29 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jia Wang <wangjia@ultrarisc.com>
Cc: Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v7 2/4] serial: 8250_dw: build Renesas RZN1 CPR value
 from DW_UART_CPR_* definitions
Message-ID: <afHhSQ-GQ5vocc2k@ashevche-desk.local>
References: <20260429-ultrarisc-serial-v7-0-e475cce9e274@ultrarisc.com>
 <20260429-ultrarisc-serial-v7-2-e475cce9e274@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260429-ultrarisc-serial-v7-2-e475cce9e274@ultrarisc.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 13018493282
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-291489-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid,intel.com:dkim,intel.com:email]

On Wed, Apr 29, 2026 at 05:13:26PM +0800, Jia Wang wrote:
> Replace the magic CPR value for Renesas RZ/N1 with a composition using
> DW_UART_CPR_* bit/field definitions and FIELD_PREP_CONST().
> 
> Introduce a helper macro to convert a FIFO size (bytes) into the CPR
> FIFO_MODE field value, with BUILD_BUG_ON_ZERO() checks for alignment and
> bounds. Use it to replace the literal FIFO_MODE values in the RZN1.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko



