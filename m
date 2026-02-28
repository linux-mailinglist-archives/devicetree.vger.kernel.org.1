Return-Path: <devicetree+bounces-269527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PP5BaPJommy5QQAu9opvQ
	(envelope-from <devicetree+bounces-269527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:55:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCB61C257E
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:55:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9A9E2300FEE5
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 10:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C380410D37;
	Sat, 28 Feb 2026 10:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="jUCRXCzA"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A882517AF;
	Sat, 28 Feb 2026 10:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772276125; cv=none; b=cYa92H5TxJvULkZHRnqAgeO4Njq8Z6fEPJcZ6dXBsLDLQj+cIeXF3Ruy73zZJ188qz8fsTRAhvovVsoTMe++Ou+AXFElcytVSg/lj+HrnsBv7s5T+nnHt03CVgAXZ8aRXwA/ths+lb2bgxjKhnSJBCESzRBwkUO2wxjxWW6Wmwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772276125; c=relaxed/simple;
	bh=sltUJYHQLvNrGwgmWBIzDOT6CpSQTCgkF/nZxy3C85U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QsCaCdc/nRV4TDD2TSzdWdLx7OYZPfuvX+Isgjv2ZcV/lUGy0KjhUqnYy4zmg1IZsTrU+v8OfMNBhcQ2AQ9sLBoc3H2dSTMq/MedgA3batzEVVopu+RvYFcNt5BiahguPVaf39Brer4JHYH8vZI08y0Ym0wTvLDn/1lwye5DU3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=jUCRXCzA; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772276123; x=1803812123;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=sltUJYHQLvNrGwgmWBIzDOT6CpSQTCgkF/nZxy3C85U=;
  b=jUCRXCzAM14GzoMonJ4Wb2QNbaK6Fi6TnPk6IxboGKi9ksgL3vXAHuWt
   b5mrFeJi7A0R8YDTVj1uBg01Ry1+papg5Epg/E2vLDBHAkVjA+U+T9WPg
   CBgUC/kpgIb25Xp8JU7FB23i78RJ68xTQq6hkjJzFOYzTAW61foENfIY2
   vrOzUsj5VWQziB0MNr2KFIT7N9w5cuim0FfDmWeEukT2lhiMdkoYMcjS7
   zQtP5dT44bQ22v+50dWatzJMEdPkuPQYaCMjU9TCMn21Tu82l7i2+Cc9u
   fo9kep/9GDqt7B5TvthlCrI9QsXEGK9WaVVwg8y3wnaWvdNvciivnHiRR
   w==;
X-CSE-ConnectionGUID: qHGdZ8ixQqeUpN/Br00xWQ==
X-CSE-MsgGUID: FZgdxmz+QmWcDDd/UTFH3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11714"; a="73414994"
X-IronPort-AV: E=Sophos;i="6.21,316,1763452800"; 
   d="scan'208";a="73414994"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2026 02:55:23 -0800
X-CSE-ConnectionGUID: 5XP05eZlQnyy6AWNIqpWqg==
X-CSE-MsgGUID: p1HUPkTCRTq+gPnCl72Hjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,316,1763452800"; 
   d="scan'208";a="247647835"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.245.224])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2026 02:55:20 -0800
Date: Sat, 28 Feb 2026 12:55:17 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Robin van der Gracht <robin@protonic.nl>,
	Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/1] dt-bindings: auxdisplay: Use
 unevaluatedProperties to fix common property warning
Message-ID: <aaLJlcG-jRPgEte5@ashevche-desk.local>
References: <20260227165836.3445577-1-Frank.Li@nxp.com>
 <aaHXZtFWpyW8Pn2l@ashevche-desk.local>
 <aaIeEy3uc7nYBy9k@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aaIeEy3uc7nYBy9k@lizhi-Precision-Tower-5810>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_FROM(0.00)[bounces-269527-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 1BCB61C257E
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 05:43:31PM -0500, Frank Li wrote:
> On Fri, Feb 27, 2026 at 07:41:58PM +0200, Andy Shevchenko wrote:
> > On Fri, Feb 27, 2026 at 11:58:34AM -0500, Frank Li wrote:
> > > Change additionalProperties to unevaluatedProperties because it refs to
> > > /schemas/input/matrix-keymap.yaml.
> > >
> > > Fix below CHECK_DTBS warnings:
> > > arch/arm/boot/dts/nxp/imx/imx6dl-victgo.dtb: keypad@70 (holtek,ht16k33): 'keypad,num-columns', 'keypad,num-rows' do not match any of the regexes: '^pinctrl-[0-9]+$'
> > >         from schema $id: http://devicetree.org/schemas/auxdisplay/holtek,ht16k33.yaml#
> > >
> > > Fixes: f12b457c6b25c ("dt-bindings: auxdisplay: ht16k33: Convert to json-schema")
> > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > ---
> > > Change in v2
> > > 	- Add Acked-by: Rob Herring (Arm) <robh@kernel.org>
> > > 	- Add fixes tags
> > >
> > > Resend include Rob's Ack tag:
> > > 	Acked-by: Rob Herring (Arm) <robh@kernel.org>
> >
> > Independently on `b4` and its functionality this is incorrect way to put tags.
> > This has to be done in the same way as SoB above, for example.
> > I've just explained this already second time.
> 
> Sorry mess up during debug something.

> > > Rob's Acked at
> > > https://lore.kernel.org/imx/175796984570.3379405.7210704746413204244.robh@kernel.org/
> >
> > No need to resend _this_ this time.

I was under impression that the only thing is missing is Rob's Ack, but it
appears that something else should also be addressed. I think it warrants
the v3.

-- 
With Best Regards,
Andy Shevchenko



