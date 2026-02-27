Return-Path: <devicetree+bounces-269383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFGwMtHXoWlcwgQAu9opvQ
	(envelope-from <devicetree+bounces-269383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:43:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9601BB936
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:43:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D921D3051CA3
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74BC5346AC0;
	Fri, 27 Feb 2026 17:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="fJDqC/+P"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E13135F8D2;
	Fri, 27 Feb 2026 17:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772214127; cv=none; b=PCnJkpHYCBG7rJT4hTGYKAfa05cGNfUWFloTgOxG02mK7los4hEee5NfONy8kJ0pDOD73UKDyPggd8fURHCT44ZQNPZPt2E7BZcQiHl3VLX3iEa/Ctn5KQi6axxBi+XTdQ0PRWpDVtaWvLhGmuJUp21ckHWdNP3VJq4z/RxzErY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772214127; c=relaxed/simple;
	bh=uLZDjCFgfzsq0FIprBHCwoTZtnqNId9JxICufdli1kc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fp4cc2+XZvaPdvI4cyYYCPnbxWrUHMJgZfZyP/BXUxAPrbHCHDhDJkIFLv+oowdOs9PYHbIz4Q8YC5sqQsW7fRBpA+Ki90JHHSfSQShiQyhQPuMjHKdYptvHbgCjTHLmp2F0qqxgOU3UHrt3fgQQ3HeKNGIzJop/FkojnuczdDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=fJDqC/+P; arc=none smtp.client-ip=192.198.163.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772214124; x=1803750124;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=uLZDjCFgfzsq0FIprBHCwoTZtnqNId9JxICufdli1kc=;
  b=fJDqC/+Pq1DBtVpgnUETNViOkWQfMEpxBbF/0/2tDdyjK89PpSihsDLy
   cBCLaFBfmzJX8jmBoIesumy7+v98zhZ49MI/v6ChABTxszwtSKUUb4LEi
   RNtc5gfbGDaZZOU7aLYq7chJv3vHyQVyqSqKrtG/PnHEQR1Yba0Mm+64P
   ZVSwyMjsAnnqwoMed/kGVBVpduNZ0mEnfLLjkt4lQkHFO7ygR2iVRGPyW
   junZz0UbFPWj3kOa32Dc+qQjEU5IHWrVcYKDHZreQ92PRnfc8cO8/41W/
   OFUSovUBTRPykf6F+kd417K3fTIIZ+DxI8nbMY23RBUA73yCEum4+hs8t
   A==;
X-CSE-ConnectionGUID: yUKe7ukIQ4Cb6D1uR0VyzA==
X-CSE-MsgGUID: CnHzoO+RTcS7FVu/ZTvHLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11714"; a="60875904"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; 
   d="scan'208";a="60875904"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Feb 2026 09:42:04 -0800
X-CSE-ConnectionGUID: JDy7mhgwQAOJSGtuEoCMWQ==
X-CSE-MsgGUID: 022vlSEySdyxoLVaQ0zMsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; 
   d="scan'208";a="216196541"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.180])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Feb 2026 09:42:01 -0800
Date: Fri, 27 Feb 2026 19:41:58 +0200
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
Subject: Re: [PATCH v2 1/1] dt-bindings: auxdisplay: Use
 unevaluatedProperties to fix common property warning
Message-ID: <aaHXZtFWpyW8Pn2l@ashevche-desk.local>
References: <20260227165836.3445577-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227165836.3445577-1-Frank.Li@nxp.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269383-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid,intel.com:dkim,devicetree.org:url,0.0.0.70:email,nxp.com:email]
X-Rspamd-Queue-Id: 2F9601BB936
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 11:58:34AM -0500, Frank Li wrote:
> Change additionalProperties to unevaluatedProperties because it refs to
> /schemas/input/matrix-keymap.yaml.
> 
> Fix below CHECK_DTBS warnings:
> arch/arm/boot/dts/nxp/imx/imx6dl-victgo.dtb: keypad@70 (holtek,ht16k33): 'keypad,num-columns', 'keypad,num-rows' do not match any of the regexes: '^pinctrl-[0-9]+$'
>         from schema $id: http://devicetree.org/schemas/auxdisplay/holtek,ht16k33.yaml#
> 
> Fixes: f12b457c6b25c ("dt-bindings: auxdisplay: ht16k33: Convert to json-schema")
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Change in v2
> 	- Add Acked-by: Rob Herring (Arm) <robh@kernel.org>
> 	- Add fixes tags
> 
> Resend include Rob's Ack tag:
> 	Acked-by: Rob Herring (Arm) <robh@kernel.org>

Independently on `b4` and its functionality this is incorrect way to put tags.
This has to be done in the same way as SoB above, for example.
I've just explained this already second time.

> Rob's Acked at
> https://lore.kernel.org/imx/175796984570.3379405.7210704746413204244.robh@kernel.org/

No need to resend _this_ this time.
Thanks!

-- 
With Best Regards,
Andy Shevchenko



