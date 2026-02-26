Return-Path: <devicetree+bounces-268967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UO/HKp2LoGkCkwQAu9opvQ
	(envelope-from <devicetree+bounces-268967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:06:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AB11AD3DF
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:06:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 351063091957
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DAE3355F2F;
	Thu, 26 Feb 2026 17:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Nh9GkyVp"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A61333260F;
	Thu, 26 Feb 2026 17:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772128282; cv=none; b=NtRcybf34sJFGMyHlEvHCzclXqQMam/i5EYnieELdpb43em1f1Byrg6fY6Pggz/VE/dKK91HIxWe3dO+yHfjAjQwgSeL8om684RcwCBBBox36bQrRKADT7JW8MQSW18zP1J+pnVZUtJ72a5+nOXRMeVoz9SZZTK8U2+u4Smr3N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772128282; c=relaxed/simple;
	bh=+qK3PHCrqi1lnXheNRqOJUIPgXyJ0wM78kYFEAUUPOs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aVA43MCV/SFV00DxrHNeVvRhQ9gR7WrQCIFMJ+/+4+fHk1h6ktqIc2pNIg5UqwDHapQGWku55nvNuJyXUeSW0ApWvZqDOxVXA55jkSLZpKs1MmEa91dstK5N8Ivz+vGKXhF8mGdPi/8YWnyYwaaIWeg1y9BmLXP1DOoY7h1gIgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Nh9GkyVp; arc=none smtp.client-ip=192.198.163.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772128280; x=1803664280;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+qK3PHCrqi1lnXheNRqOJUIPgXyJ0wM78kYFEAUUPOs=;
  b=Nh9GkyVpLENWTI7SQ0N070XMZxShyXYNoLK2EA9VKLF7PWsgCY1ff6Jt
   CZ/2+Tsb0EtPiOBMdYeCLa0gU/qIs1Kc/w+E7cdexnPi7IbKght8qJffe
   QXwNPDIJHxYYJ3Fzgc54dxHXoBwUvIM1Z66L9ZWBSkuffrN4avoNqeVxW
   qqxfnnGruILL1gi7XzkQOGE70JMtFyfyGvFof9oME3C9aSxaESI8FY7vM
   45Up17/B1N4Bmt3dVfmMov93/ZDtV97RRqkfXk+4PiYXCSQYGVTQQINCp
   XsSc+vNxlcHuZ6TgBvcDRy/x0zLFWVGkvy04OzMcJLTMmCC7jTDtQGQuc
   A==;
X-CSE-ConnectionGUID: 3brOFhn4ToGqO5OBEbp+ng==
X-CSE-MsgGUID: 3FBHaNPaSp+bXzf3uX5J2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="73305598"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; 
   d="scan'208";a="73305598"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2026 09:51:19 -0800
X-CSE-ConnectionGUID: G+bOsObvTpy3w3naMNZPJA==
X-CSE-MsgGUID: 443axLycSWiUdQJYoqtLyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; 
   d="scan'208";a="216652160"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.244.167])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2026 09:51:17 -0800
Date: Thu, 26 Feb 2026 19:51:14 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Robin van der Gracht <robin@protonic.nl>,
	Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [RESEND V1 1/1] dt-bindings: auxdisplay: change to
 unevaluatedProperties
Message-ID: <aaCIEs-65JQUkSyA@smile.fi.intel.com>
References: <20260226172258.257089-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260226172258.257089-1-Frank.Li@nxp.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268967-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.70:email];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,nxp.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: 23AB11AD3DF
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 12:22:57PM -0500, Frank Li wrote:
> Change additionalProperties to unevaluatedProperties because it refs to
> /schemas/input/matrix-keymap.yaml.
> 
> Fix below CHECK_DTBS warnings:
> arch/arm/boot/dts/nxp/imx/imx6dl-victgo.dtb: keypad@70 (holtek,ht16k33): 'keypad,num-columns', 'keypad,num-rows' do not match any of the regexes: '^pinctrl-[0-9]+$'
>         from schema $id: http://devicetree.org/schemas/auxdisplay/holtek,ht16k33.yaml#
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Resend include Rob's Ack tag:
> 	Acked-by: Rob Herring (Arm) <robh@kernel.org>

I didn't get this. If it's official, make it official.

Also, shouldn't it have a Fixes tag.

-- 
With Best Regards,
Andy Shevchenko



