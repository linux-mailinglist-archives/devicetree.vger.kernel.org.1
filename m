Return-Path: <devicetree+bounces-268002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFgsDdrinWnpSQQAu9opvQ
	(envelope-from <devicetree+bounces-268002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:41:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CB63418AA72
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E8C73006B4B
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAEFA3A7F6E;
	Tue, 24 Feb 2026 17:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="cE7whtBj"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949BA3A9627;
	Tue, 24 Feb 2026 17:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771954903; cv=none; b=SXAavhWOCPHCiBvZLDvKVF5XRFrtuE2ef+N1Q0DOGFvuJ0BE+v4HzsGBraboPaWO2qhfukVcZLhX77ymc8I8E7G0+skE1Iqv2Z/1kv7LnLDhXMkABlubH6RVIGx03/DF8GxS3709nCwYQ/BK3RQn1pSAF67VcGKBm7D0mqj2+Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771954903; c=relaxed/simple;
	bh=36cqExmJ+xVEA46VvhswCFGe7wEAzemfq3PU9IFvDFY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fehau5fEUJegIFyzYheFa0aEWD7eMVAROyF9Mcg4ZjvkYQnARcG10h2kFfSJ/+0nECEk2rxO/wZ1HMVC5/z3LLnjGmRCAID2ZXdrdo4qq2JGlojRD63nUauU1INrv2HchQ067+T8aKazRMAjs6fLmWJMkdhFUuN14d56qzDERv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=cE7whtBj; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771954903; x=1803490903;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=36cqExmJ+xVEA46VvhswCFGe7wEAzemfq3PU9IFvDFY=;
  b=cE7whtBj00/qHQKNe+voXe8S+gqkZSDai33JYwdXAOZKp66+f4uEzBQL
   Zs6+ZSKtaUBsoytudcCjNV7zmV+1UPKdrCu4WVRWyIjvTdx3eNzhWe3xc
   Ktf/roFvipYirHa1PvZc3TV2jEhPePUuu9y2wMh+QtLLf769Gnt2aK/R/
   NXcqrZV8au8WigSvTv3p6faLnxLW4UA/8+sZ+Xkut8Z/Y6SfNIBhvMEWa
   JsKkVWLQ9yzFCZpRngoOxfvHCiZZoA6AXksQqKyQovXam3Td0I4p1vHx9
   iVvULoNKVHPviHNQfGUSwuHMuvHt4o+HwBDdmAzu6KEBK5i1ww+E+LibF
   w==;
X-CSE-ConnectionGUID: BVVCfFUPSKCUvQKNb5AT+A==
X-CSE-MsgGUID: tQuj+qAsTvuGEDHQPAVWqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="73048874"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="73048874"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 09:41:42 -0800
X-CSE-ConnectionGUID: nkutu3TqRFWpMN82IReoBQ==
X-CSE-MsgGUID: hmwbiwOxSJOEXuUGE1Hn5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; 
   d="scan'208";a="215208062"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.244.146])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 09:41:39 -0800
Date: Tue, 24 Feb 2026 19:41:35 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 0/3] Add Invensense ICM42607
Message-ID: <aZ3iz18O3UEDTDqm@smile.fi.intel.com>
References: <20260224163109.370930-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260224163109.370930-1-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,hotmail.com];
	TAGGED_FROM(0.00)[bounces-268002-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,intel.com:dkim]
X-Rspamd-Queue-Id: CB63418AA72
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 10:31:02AM -0600, Chris Morgan wrote:

> Add support for the ICM42607 IMU. This sensor shares the same
> functionality but a different register layout with the existing
> ICM42600.
> 
> This driver should work with the ICM42607 and ICM42607P over both I2C
> and SPI, however only the ICM42607P over I2C could be tested.

Thanks for your contribution, but...

NAK.

It's unreviewable bulk out of 4kLoC! I even won't bother looking at any other
messages in this (too mini) series.

TL;DR: reviewable code is limited at ~750 (or less) ± 150 LoC per patch.

-- 
With Best Regards,
Andy Shevchenko



