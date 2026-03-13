Return-Path: <devicetree+bounces-275068-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPsCNp3Ys2mzbgAAu9opvQ
	(envelope-from <devicetree+bounces-275068-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:27:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD9F280799
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:27:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43D4B300BC9C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46D2A377021;
	Fri, 13 Mar 2026 09:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="dFXCPWle"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625B01C84C0;
	Fri, 13 Mar 2026 09:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773393722; cv=none; b=Yb1M9Izhg86jYgucg0MyaJF0e9uscFG3zBcXKaC1S0N53DGBu5BYbR91o7lnRBDJOvnmbTh6p7y+xS4+AWC1WdA0qFTV4YM9FYRE/Aal9fuwo7Wy0yyX1cnIcmakCFk9T7zbgedOIAaUQ0rp8qsd+oInaxjT1JvlU+iJoYDgohY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773393722; c=relaxed/simple;
	bh=F3bmbqYoIxEx5/mFO0XhVEBu9pifGbmaMSxr7pbLiZQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nfsNBZFdRL6siPivUAitTnej1woJXe208kr9nt+ENREGDIcoKgWELplhgCreaT7L5jytkmqjG1oGwInmBUz7+6ClsVPMlGtVnM1auYeX/0AbXAr1KJdScm3+0Muu5SequTs+RBVVQcNswUUWy7lLgUXpKaWEBt3f9oNAOQE9/Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=dFXCPWle; arc=none smtp.client-ip=198.175.65.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773393721; x=1804929721;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=F3bmbqYoIxEx5/mFO0XhVEBu9pifGbmaMSxr7pbLiZQ=;
  b=dFXCPWleEy/RMs1Sh7PRaJSmMrFLeD4Re1ar7QP4nK2x7ZlJslxfjDls
   k6fr1ahg8phHWmRpLDN5KamJQZ1DLjPMemRJDbB1JfLjUsiW1kfK0vCOY
   9EMkC4ToUV5zQFMf1fCeOqBAlnYXXkPCmc5yNNSp6XD3LWrCM/QacMvHB
   mxeLbZvwr4QQQcAoiWcXosP1EWxjQfJ3FS9DeBx0hZGn+5WWecIrCX8IE
   1e2NyCcsRy6iFVWtf8lh9wyXXdkv1ZyinHlFzxw0NlYHZEJzwRnpoFzIM
   8dIElzurJ5m8/gkWrTzn0yzeH+OVDpwdrjZlQclblp/JtWG3yXI8VnROD
   Q==;
X-CSE-ConnectionGUID: JTPC/hJRTDaWW++Ag0u1aQ==
X-CSE-MsgGUID: 8p3ipIfzQFeeKG5vZiJiqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="74380011"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; 
   d="scan'208";a="74380011"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2026 02:22:00 -0700
X-CSE-ConnectionGUID: wsNnL3UaREmNTQuM5o/pPA==
X-CSE-MsgGUID: DICY7SCeSk2RaIPRoYR4+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; 
   d="scan'208";a="221059581"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.246])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2026 02:21:55 -0700
Date: Fri, 13 Mar 2026 11:21:52 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: robin@protonic.nl, andy@kernel.org, geert@linux-m68k.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	dmitry.torokhov@gmail.com, hvilleneuve@dimonoff.com,
	mkorpershoek@kernel.org, matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com, lee@kernel.org,
	alexander.sverdlin@gmail.com, marek.vasut@gmail.com, akurz@blala.de,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v5 0/4] input: add GPIO-based charlieplex keypad
Message-ID: <abPXMCU-mg_nQ0y6@ashevche-desk.local>
References: <20260312180304.3865850-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312180304.3865850-1-hugo@hugovil.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[protonic.nl,kernel.org,linux-m68k.org,gmail.com,dimonoff.com,collabora.com,blala.de,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-275068-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim]
X-Rspamd-Queue-Id: 5CD9F280799
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 02:00:54PM -0400, Hugo Villeneuve wrote:

> Hello, this patch series add a new GPIO charlieplex keypad driver.
> 
> The first two patches simply commonize two properties that are present in
> a few bindings, so that the actual patches for the charlieplex keypad driver
> can reuse them instead of also redefining them.
> 
> I have tested the driver on a custom board with a Solidrun RZ/G2LC SOM
> with three charlieplex keyboards, all connected thru a single PCAL6416 I2C GPIO
> expander.

Based on the review of this series I have a question to Dmitry.

Are we going to have Documentation/process/maintainer-input.rst with the
preferences of input subsystem in style and other undocumented things? When?

-- 
With Best Regards,
Andy Shevchenko



