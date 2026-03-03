Return-Path: <devicetree+bounces-270338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0B1lNMqVpmnmRQAAu9opvQ
	(envelope-from <devicetree+bounces-270338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:03:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5501EA81A
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:03:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A863F300C936
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1698D36E48C;
	Tue,  3 Mar 2026 07:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="BEpw3x2Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF58B282F03;
	Tue,  3 Mar 2026 07:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772524781; cv=none; b=VZCB39UtKPaNuqajQ8uHZ4wF8jdzu8C9Y7aRHw0yj6giYikZCljuz1q7z8DKRy0mIsxjLbB3f3o2qLbG8PpAbzi5awgsl3SRUGSJsWM8ku3wnLikxqPFMyMWY0oZAIlgJLkdsm4sWveNr/0uKxO3rjWj7kOhaOfWqDHa9FOyS+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772524781; c=relaxed/simple;
	bh=kDiWfbOjDcW3IBCAOKRBRAZKSl/xaRIAMX84tuGbo4Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fsaeJd8dGAcywWrwt3iT+TykmSndpDw8Tfrz5YzdCFzmTi9VCSbNMhxY5kI5eeCUxLevQtE7MOhpwAZFTGa/OMNpZztJtFTnL647cHrccoiWuXGO83KjA/yJyGFP3jgYEqC3hZmSbErJuHaf1RQoU2dVtT1S0XTXDocQKh99mdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=BEpw3x2Z; arc=none smtp.client-ip=192.198.163.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772524780; x=1804060780;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=kDiWfbOjDcW3IBCAOKRBRAZKSl/xaRIAMX84tuGbo4Y=;
  b=BEpw3x2ZEf1YCc5Wzpe7G29Clslu6gx8hwairMo+NV/LZhJbvzuAPhTh
   cP8GVfApLwDoXH0XjsMvSpSXyR0h2nziuyNY60rZm3bhVRjiJyOfJXlDC
   DIWDX7HLGB5QcgOV4b1jve0twR+CTktOzhbQTUNknjFD11QmWUSo/Ep3a
   7bhvkyliDhheledW/C95kLOYLIpVOWBdVy7vZ0cfZx3lAqVC59JQIbLeN
   oV9IKoOGYBcOmeW6i+IEBrUs+jwG1dXHmXJuNRjjD5tBZI83EP4yKgaJ4
   5jYRnqSAU6Rxg7mXGkul5BOIkjmyqClly9oYciqIM/YDEUOdpH8DbIw4f
   Q==;
X-CSE-ConnectionGUID: eXEzaWbxTaqGpnv9GV0xXw==
X-CSE-MsgGUID: MbAZkY8/RTaF79Mb7n5LlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="73458276"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; 
   d="scan'208";a="73458276"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Mar 2026 23:59:38 -0800
X-CSE-ConnectionGUID: p70psnfKTJmg2YUyuTGmHQ==
X-CSE-MsgGUID: MoJAbhe9QjCWyYZE9mCsDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; 
   d="scan'208";a="248406523"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.196])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Mar 2026 23:59:34 -0800
Date: Tue, 3 Mar 2026 09:59:32 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Robin van der Gracht <robin@protonic.nl>,
	Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v3 1/1] dt-bindings: auxdisplay: ht16k33: Use
 unevaluatedProperties to fix common property warning
Message-ID: <aaaU5NaLbmHBlgCH@ashevche-desk.local>
References: <20260302215956.2418494-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260302215956.2418494-1-Frank.Li@nxp.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: EC5501EA81A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270338-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.70:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,intel.com:dkim,devicetree.org:url,ashevche-desk.local:mid]
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 04:59:55PM -0500, Frank Li wrote:
> Change additionalProperties to unevaluatedProperties because it refs to
> /schemas/input/matrix-keymap.yaml.
> 
> Fix below CHECK_DTBS warnings:
> arch/arm/boot/dts/nxp/imx/imx6dl-victgo.dtb: keypad@70 (holtek,ht16k33): 'keypad,num-columns', 'keypad,num-rows' do not match any of the regexes: '^pinctrl-[0-9]+$'
>         from schema $id: http://devicetree.org/schemas/auxdisplay/holtek,ht16k33.yaml#

Pushed to my review and testing queue, thanks!

-- 
With Best Regards,
Andy Shevchenko



