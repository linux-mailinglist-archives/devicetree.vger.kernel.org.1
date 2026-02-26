Return-Path: <devicetree+bounces-268991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sE8DJRCpoGnilQQAu9opvQ
	(envelope-from <devicetree+bounces-268991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 21:12:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDE21AEEA3
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 21:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64E4C3103B88
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 20:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 943CF46AF3D;
	Thu, 26 Feb 2026 20:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="jV9Qy09M"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7713D466B59;
	Thu, 26 Feb 2026 20:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772136386; cv=none; b=Ks1D+JBIvViETtNezW5ILcfdIXc3PTsfy2S0abdGfyI+V75YEOoDIuOqFjP8JA7lvQ08YZj1glj8YXIFkz8DCqqEoWjaRh/aWJcUSvk7pSaywh4Fymm9oWPg4neknrVxGH8Sn+DK/aju1nCjSs7de2zeU9Ha9XGZSpe9/lp1Nak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772136386; c=relaxed/simple;
	bh=KmOWNIRgBHtWMlabix2KX/fbklWBKHIUOM7hsUpVbZI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=atUyK+A6Thq8buA/l1oOfvxMoo9h/GG3UzbYS+IALNO3MomcOrdiIE8qB69dja9Z4WuMi3eVNUuJ90S/Poi8oSSR1lKdzurxTOLaHyvgdEnAbQ0+fhPYnDNuOV3RqLRLBoR5btZbP13IFyZ1WQiz43jUTBbQNs8CLCjP5LMwDwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=jV9Qy09M; arc=none smtp.client-ip=198.175.65.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772136382; x=1803672382;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KmOWNIRgBHtWMlabix2KX/fbklWBKHIUOM7hsUpVbZI=;
  b=jV9Qy09MBhv9FYG0/AVKqbQKS0cxtDGJQdE2QzkmshEUn6sP0iuCBc4G
   Wm2xlo9ppEjmdtYD4FL0qH+x+Onb1eNojU1VyTmuplUlPrEg6f4NJHtyx
   J/B/NeYvyjmeztVIQQq+DYInJUZAwNNLULzFbChDS5ZwGdPDEhXCQjzx9
   fIWqFvs+MPsZWzojy2fYBFsf/JfpN3rH279KpLU3E3cDHuM4SoYTbOkPq
   LqVSEAEsvOcpqTEqAfN7UC1csVrNmDnT55XiW8D9ZejWVjTdN9AvG/QuV
   LuxyGKv5tXdQY+quEQuVKIukPKaoVNX6vZlQLWpzE3ypNdVsurIX+Wuz7
   g==;
X-CSE-ConnectionGUID: /b67Yj1FRcyVPfUJxuuk6A==
X-CSE-MsgGUID: O09z5NKPSmWO6xYm/ufKYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="77047369"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; 
   d="scan'208";a="77047369"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2026 12:06:21 -0800
X-CSE-ConnectionGUID: 8weXfwV+Q/Oabc0IuCwCUQ==
X-CSE-MsgGUID: C9Q0tHYhTOidXFABJm3akQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; 
   d="scan'208";a="220805385"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.244.167])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2026 12:06:20 -0800
Date: Thu, 26 Feb 2026 22:06:17 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Conor Dooley <conor@kernel.org>
Cc: Frank Li <Frank.Li@nxp.com>, Robin van der Gracht <robin@protonic.nl>,
	Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [RESEND V1 1/1] dt-bindings: auxdisplay: change to
 unevaluatedProperties
Message-ID: <aaCnuYmWPBGVBb4Z@smile.fi.intel.com>
References: <20260226172258.257089-1-Frank.Li@nxp.com>
 <aaCIEs-65JQUkSyA@smile.fi.intel.com>
 <20260226-nanometer-reproach-8c87569cc837@spud>
 <20260226-observant-finishing-c07452049544@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260226-observant-finishing-c07452049544@spud>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268991-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.70:email];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,smile.fi.intel.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,devicetree.org:url]
X-Rspamd-Queue-Id: CFDE21AEEA3
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 05:54:54PM +0000, Conor Dooley wrote:
> On Thu, Feb 26, 2026 at 05:53:43PM +0000, Conor Dooley wrote:
> > On Thu, Feb 26, 2026 at 07:51:14PM +0200, Andy Shevchenko wrote:
> > > On Thu, Feb 26, 2026 at 12:22:57PM -0500, Frank Li wrote:
> > > > Change additionalProperties to unevaluatedProperties because it refs to
> > > > /schemas/input/matrix-keymap.yaml.
> > > > 
> > > > Fix below CHECK_DTBS warnings:
> > > > arch/arm/boot/dts/nxp/imx/imx6dl-victgo.dtb: keypad@70 (holtek,ht16k33): 'keypad,num-columns', 'keypad,num-rows' do not match any of the regexes: '^pinctrl-[0-9]+$'
> > > >         from schema $id: http://devicetree.org/schemas/auxdisplay/holtek,ht16k33.yaml#
> > > > 
> > > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > > ---
> > > > Resend include Rob's Ack tag:
> > > > 	Acked-by: Rob Herring (Arm) <robh@kernel.org>
> > > 
> > > I didn't get this. If it's official, make it official.
> > 
> > Funnily enough, b4 picks up Rob's ack, although I think it gets it from
> > the original posting.
> > 
> > > Also, shouldn't it have a Fixes tag.
> > 
> > Sounds like it should, yes.
> 
> And if that requires a resend, the specific binding should likely be
> cited in the subject line.

Yeah, please resend with tags added and Subject corrected.

-- 
With Best Regards,
Andy Shevchenko



