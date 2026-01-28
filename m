Return-Path: <devicetree+bounces-260652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FrnINGLemkE7gEAu9opvQ
	(envelope-from <devicetree+bounces-260652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:21:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA4FA9857
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 23:21:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A99F305E9F4
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 22:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D69342C92;
	Wed, 28 Jan 2026 22:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Z7oW7kO2"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A7634405D;
	Wed, 28 Jan 2026 22:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769638792; cv=none; b=BTSq2DUFu2+Q8XQDxQEtBD0rwpDibeLj71PR4inUsNkVoDI7dus26lvxtiRDKJ9zyn6S351RsjA/pSfRaX96ksmHEpQhBnyDjxt8Mcc/IPMpqQ4tyyA2lW+CUMtkY1XZCXDs8uGR/JyDdmQdSuvK0PgNLKuzxEC1UzWJX++gQpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769638792; c=relaxed/simple;
	bh=BN63GWg7YComeki/WreZp8G8u4YdkiCLX8F5ZLDYu9Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a/Jt7EgOrI+e2+q6sg2t+2KWx5iqb+qznNnOlBB7zpmpP5P2gYK7gKomCKXRh7ZTn0DakYu6BtT4EgEH4HxmckTHrmqtA9Qb6Nwitc761BCpN8fPJQ3llpsfUehHg8QtwTUYMDy+UqXxWScRHNK6NOFbYrFBk1qPwyamExtMUks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Z7oW7kO2; arc=none smtp.client-ip=198.175.65.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769638791; x=1801174791;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=BN63GWg7YComeki/WreZp8G8u4YdkiCLX8F5ZLDYu9Q=;
  b=Z7oW7kO2LEHESz5MSdHNy/KtXrcrfh22SR9a+Ravf1SBX3d4CXQOet/y
   5o6zloF+ujEnaeHoLG7kchoB5Fjh7Bl4EIa9Mu2X1NjiLspvhfyBMqZMY
   tf78L2dTNxS55X0k5XCignMPuwl0TJ9VqxlvMWsf849yM/Xpfy8Lm2148
   VTL/LVFaB+/hdXHcGhQmREhTFX/pcHUmtyd7Xx0+upbx9pScWW4VswPxl
   0LL8uOb9JLNMF1Yk8SrOLeYJqTq53cU8jFsPzAvKo1wvrfgUWfiKpc66A
   Q1qybRBToUMSWlZAtwuZPsvlshjFkVEYkhKBee/22LGgz+hfLUU1qRq0Q
   Q==;
X-CSE-ConnectionGUID: NJFEuFt8T4ujTvMKhUokcQ==
X-CSE-MsgGUID: PSvs14bpTPyWmRoRatoqpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="74488490"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; 
   d="scan'208";a="74488490"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2026 14:19:50 -0800
X-CSE-ConnectionGUID: bnlJce56ROqDuy2XgFZ+rw==
X-CSE-MsgGUID: bUYt6JfHRj2eYm9elt5yeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; 
   d="scan'208";a="208410834"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.57])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2026 14:19:47 -0800
Date: Thu, 29 Jan 2026 00:19:44 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH v3 0/8] iio: dac: ds4424: add DS4402/DS4404 support and
 scale
Message-ID: <aXqLgDWFysW5bW37@smile.fi.intel.com>
References: <20260128153824.3679187-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128153824.3679187-1-o.rempel@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260652-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: 8CA4FA9857
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 04:38:16PM +0100, Oleksij Rempel wrote:
> This series extends the ds4424 IIO DAC driver and its devicetree binding
> to support the DS4402 and DS4404 current DAC variants.
> 
> DS440x devices share the same register map as DS442x but use a different
> resolution (5-bit vs 7-bit) and a different full-scale current formula.
> The full-scale current depends on external Rfs resistors connected to
> the FS pins, so a new optional DT property is added to provide the
> per-channel Rfs values and allow the driver to report a correct IIO
> SCALE (mA/step).
> 
> While adding DS440x support, a few related issues were addressed:
> - Port to regmap
> - Reject -128 in RAW writes on DS442x, which cannot be represented with
>   sign-magnitude encoding and could silently program an unintended
>   output.
> - Preserve preconfigured values on probe.
> - Ratelimit read error logging and use device context.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
for patches 1,2,3,6, and 8.

-- 
With Best Regards,
Andy Shevchenko



