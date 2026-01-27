Return-Path: <devicetree+bounces-259795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDYJKw6HeGk/qwEAu9opvQ
	(envelope-from <devicetree+bounces-259795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:36:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DEB91CF9
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:36:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A3F24300371B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 09:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53B102E11A6;
	Tue, 27 Jan 2026 09:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="fk91wynQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9C02E041D;
	Tue, 27 Jan 2026 09:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769506570; cv=none; b=gTcNRdz/FmduXlgQulLAuIcWWIbTKqsiLNnwF4hIKz5qwQMhMNzFGSWNIvYyiUPBFmqsWyWasWtMScUS6gm/bk+Vyz5Wm20ODJPcMEV1poqcNkujktvC+nhlSSE93XFYHCtCe/c6cokPyRR1oqDj8MG/1C4AJgXy5JgJnRicn2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769506570; c=relaxed/simple;
	bh=B7DFX5lqbjM4djzDpxG9RwFOYzDx+Gb3DTdEDYClDgY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fGnbQ6KSghIb5Qowg8hIViK7wGSi8S41B71WUHAnShuvKP5YsslHgSgBjZ7gGvkjj1bgHelK+lF6jz6MN3vFkorSIU7dUp/USEX5QaDx6IihI8JHg92it0nx+LnoyJxZTPfM2F/pdRNHmWyPZHYemTGCvgVL3k1GPyE/0CLoaK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=fk91wynQ; arc=none smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769506568; x=1801042568;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=B7DFX5lqbjM4djzDpxG9RwFOYzDx+Gb3DTdEDYClDgY=;
  b=fk91wynQeY5HY6m85CjKxll84cRN1lAgZhUn4WigcsGFI4fsH5bcGNP9
   fqbAGihz18cj7S/9IQ4DAEJhkbLGAjEE4Le2l6VtxIWf87c62VDYsGea/
   9pwLLExQ4Loeo5yYYABMAiGVne3sBVrrozGXxqfSbrMjZt+7c8fnCUtXq
   m1QRtYlHlra76k2Lx4G/kxdHLcQRvauV9oamMca/2zZ+9RHMUkGeHgUZD
   Li6fv30TsQUKACtDuKy0wro5x1wTpwWsYDNWwm5KOObPguL0pR7ZaaHpw
   Rn70hlAxhlYU8YAnWfT3rYVsVLfVd+xlrZjgNXbodk/jFP+lideCd80KV
   Q==;
X-CSE-ConnectionGUID: z61GA8IKQ5Sv+qKs7GUZwQ==
X-CSE-MsgGUID: VHcFIsGbQN2vWzhaly6c0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70591300"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; 
   d="scan'208";a="70591300"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 01:36:08 -0800
X-CSE-ConnectionGUID: guJ6KiTnRaiQ+vatan35aw==
X-CSE-MsgGUID: ZsJuwkAhRx+Hvslj9xkPuw==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.248])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 01:36:05 -0800
Date: Tue, 27 Jan 2026 11:36:03 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: abdurrahman@nexthop.ai
Cc: Michal Simek <michal.simek@amd.com>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, info@mocean-labs.com,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/6] i2c: xiic: make the clock optional
Message-ID: <aXiHAzsmQ46mYTbF@smile.fi.intel.com>
References: <20260126-i2c-xiic-v5-0-88a16a28721c@nexthop.ai>
 <20260126-i2c-xiic-v5-2-88a16a28721c@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126-i2c-xiic-v5-2-88a16a28721c@nexthop.ai>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259795-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smile.fi.intel.com:mid,intel.com:email,intel.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 05DEB91CF9
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 05:08:17PM +0000, Abdurrahman Hussain via B4 Relay wrote:

> The xiic driver is designed to operate without explicit clock configuration
> when clocks are not specified in the firmware. This functionality is
> already implemented in xiic_setclk(), which performs an early return when
> either i2c_clk or input_clk are zero:
> 
> This condition is satisfied when clocks are missing, as clk_get_rate(NULL)
> returns zero, allowing the driver to rely on hardware-configured timing.

Bingo!
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

-- 
With Best Regards,
Andy Shevchenko



