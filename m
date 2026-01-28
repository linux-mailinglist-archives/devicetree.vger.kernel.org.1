Return-Path: <devicetree+bounces-260506-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INRaECAyemlo4gEAu9opvQ
	(envelope-from <devicetree+bounces-260506-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:58:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1943A4D57
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 45657307C81C
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 15:51:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A8BE3043B2;
	Wed, 28 Jan 2026 15:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Oqms586W"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1B82EA172;
	Wed, 28 Jan 2026 15:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769615482; cv=none; b=ONACpSZqxyPr01dgGHxS9RcAPmZGqtECMuNS37nhphYFd7NWV5gcLVeOmNpGEP+dRysA/Jn8nv8dgNMH5xWNqVC+xef5wy3+vUodmGpCKHoA2pe6xkc4ca04HMnbhylvyda3ADL6iQECSc6ioHlZfMRXi392H7iub88/Jr3qwGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769615482; c=relaxed/simple;
	bh=YMl7we/JDefweYTSXQOFToR7vNsq86hSDk6V8uFAxJ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C9WJlPvzaXPp3wrPOE1zoyd+8oW16jFfx6KKdcSehyRdhnP6xa0wbzeq5cIdNLCnhYE6WcUl8ZL5bQCnL6VkGRCznBHAfPq80fNF9YJQEbMBK6s5EBQ5xA4MsyKNrEYryI7rQjMoeeh8u0k+Kg+SRuNdmsljapXIu0Toe0+qW94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Oqms586W; arc=none smtp.client-ip=198.175.65.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769615482; x=1801151482;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=YMl7we/JDefweYTSXQOFToR7vNsq86hSDk6V8uFAxJ0=;
  b=Oqms586Wrk6fgPVzcsziYCRwz6HenWY5H6zAl2Wh2K8Q4V07irCIWe3Z
   3ux/7jOykL5cxSVSQL4l+HSUaqktXj1p460LMGn/RNCFVTfAeS6+dMcaO
   LJy/qS1rC9RSyrgZSS14ojfXplO9Uu1jL+vDC8wgtJpoTbmPMHLM+F8hm
   1T2+Ym0aAbMWFrw0+3kX+4VNyK7JCRMNeCWGkq+WPq2ASBDc5rQnR66vL
   +9kuR7SYUeD4/c4W4muI9pvb+dai3jesWTyXlNEe31oWc2UYX30Jzq9SY
   00x1DzK0LRBBn0UqWA6ztT7Y3UZFCZ+YOP5oMgW4+O4L8tAfHlhTQ9lwy
   w==;
X-CSE-ConnectionGUID: Qtv+4z7JQ/6U4GbDwqM4Fw==
X-CSE-MsgGUID: 57Ycm5GQT1SpehbmT5kUsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="81943002"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; 
   d="scan'208";a="81943002"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2026 07:51:21 -0800
X-CSE-ConnectionGUID: YSjqylXoRHuhj1VvsnJgBw==
X-CSE-MsgGUID: CuULZbbvQAyrw5QSFsjEig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; 
   d="scan'208";a="208097217"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.57])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2026 07:51:16 -0800
Date: Wed, 28 Jan 2026 17:51:13 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Danny Kaehn <danny.kaehn@plexus.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Benjamin Tissoires <bentiss@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jiri Kosina <jikos@kernel.org>,
	devicetree@vger.kernel.org, linux-input@vger.kernel.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Ethan Twardy <ethan.twardy@plexus.com>, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, Leo Huang <leohu@nvidia.com>,
	Arun D Patil <arundp@nvidia.com>, Willie Thai <wthai@nvidia.com>,
	Ting-Kai Chen <tingkaic@nvidia.com>
Subject: Re: [PATCH v13 1/3] dt-bindings: i2c: Add CP2112 HID USB to SMBus
 Bridge
Message-ID: <aXowcdIpdZwrc5KW@smile.fi.intel.com>
References: <20260127-cp2112-dt-v13-0-6448ddd4bf22@plexus.com>
 <20260127-cp2112-dt-v13-1-6448ddd4bf22@plexus.com>
 <20260127160217.GA3776731@LNDCL34533.neenah.na.plexus.com>
 <20260128-magnificent-faithful-otter-c4f900@quoll>
 <aXoF4zi4SZrXaku5@smile.fi.intel.com>
 <20260128-pelican-silenced-cd6a5bf69672@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260128-pelican-silenced-cd6a5bf69672@spud>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,plexus.com,vger.kernel.org,gmail.com,linaro.org,nvidia.com];
	TAGGED_FROM(0.00)[bounces-260506-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C1943A4D57
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 03:06:58PM +0000, Conor Dooley wrote:
> On Wed, Jan 28, 2026 at 02:49:39PM +0200, Andy Shevchenko wrote:
> > On Wed, Jan 28, 2026 at 11:35:25AM +0100, Krzysztof Kozlowski wrote:
> > > On Tue, Jan 27, 2026 at 10:02:17AM -0600, Danny Kaehn wrote:

...

> > > That's actually rule communicated many times, also documented in writing
> > > bindings and in recent talks.
> > 
> > Does DT represents HW in this case? Shouldn't I²C controller be the same node?
> > Why not? This is inconsistent for the device that is multi-functional. And from
> > my understanding the firmware description (DT, ACPI, you-name-it) must follow
> > the HW. I don't see how it's done in this case.
> 
> The i2c controller should probably be in the same node too, unless it
> would cause conflicts between function (e.g. inability to figure out if
> a child is a hog or a i2c device). I would like a rationale provided for
> why the i2c controller is in a subnode.

I can expect a disaster with such a scheme, splitting multi-functional device
to the subdevices (children) sounds to me like the best approach. With this,
one may have the same (globally named) property to be different on subdevices.

But I will hold my breath to see the outcome of this discussion.

-- 
With Best Regards,
Andy Shevchenko



