Return-Path: <devicetree+bounces-313602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tRPTLpg6NGrbSAYAu9opvQ
	(envelope-from <devicetree+bounces-313602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 20:36:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 540396A22A3
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 20:36:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UD8zqeRC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313602-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313602-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B9F553022E5F
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A37403135;
	Thu, 18 Jun 2026 18:36:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F37402429;
	Thu, 18 Jun 2026 18:36:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781807766; cv=none; b=bWoDLlvoZLTiUetTJystrhznG+oDC4NqKTBfw/Zs7VSAHLqbn6ihXFfxqK1WQ524HDIK+ppVTzAzRMhjgqa26VaGPvyVUe5n3lXRUQJAN3qV6rVxYdT6nYdHn8QHKq1DKCAIDNXTmfDk2Rpm7eS1/FbxeXbBUoYOPCzlWDyLC/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781807766; c=relaxed/simple;
	bh=/ZXQ5xUghUSlKdDSofmazeKcwRYTexCixwTx0L+gnIs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pP7enRGpq/6xEvpzgZsz7gLNIzBmcrRZLdQ2DFnQpqwKZj11jqVsxAnGZr0lxen1Wt97tY086c9hhw7I06oRtmXL4QU2KBeRlZTbFtvFyUITIHtm2y4zIw5wBW84bTKQUkwyqx+twEtR4ylvxrv45lAqiUNFSvMctcZhZWMZkMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=UD8zqeRC; arc=none smtp.client-ip=198.175.65.10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781807764; x=1813343764;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/ZXQ5xUghUSlKdDSofmazeKcwRYTexCixwTx0L+gnIs=;
  b=UD8zqeRCJ7TVmLYJbrTgl38yuvPUZUJfBury/kbICRYGc/bcbCi+OPia
   z+ouVCNzNQMNdoQQ54Vz+E6LzRv8q+AGjKpYiNHEl2/mJfU0e9HYQw6a+
   ej9K0buPNnUi9fEllcakYpxxgsQSl0d+qIERgn45QhUjcP1Fyb0eMlFRg
   op+CKuw0amRDB7jd9NzOcgSotL2BAUBnVUv9GGDb4Vu9ymEa0y3ntKqse
   cUkrJnYURJnfGBDSr17fnkFTMMN2rDNwOiV6vido9yhiu1HpCwug+jveb
   L9ptJEtVhmgr5cd7fEud70aGfwcMwIKl8pUk1QRXmXQ4O2rcdOnC8gvxG
   A==;
X-CSE-ConnectionGUID: mlnpm58STGu0CwbYUKMjdA==
X-CSE-MsgGUID: ZUfZQCVeR3OVf5uMKCT3/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="100082244"
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; 
   d="scan'208";a="100082244"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2026 11:36:03 -0700
X-CSE-ConnectionGUID: QxGr1YydQ1OvuT6J6RZPKw==
X-CSE-MsgGUID: YP3dEdDzQXi7hPf+v/eIdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,212,1774335600"; 
   d="scan'208";a="278621571"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa002.jf.intel.com with ESMTP; 18 Jun 2026 11:36:01 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 8B51B98; Thu, 18 Jun 2026 20:35:59 +0200 (CEST)
Date: Thu, 18 Jun 2026 20:35:59 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Alban Bedel <alban.bedel@lht.dlh.de>
Cc: driver-core@lists.linux.dev, devicetree@vger.kernel.org,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Zijun Hu <zijun.hu@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
	Sashiko <sashiko-bot@kernel.org>
Subject: Re: [PATCH v2 2/2] software node: Fix
 software_node_get_reference_args() with index -1
Message-ID: <ajQ6j5roSZ16Yb-M@black.igk.intel.com>
References: <20260618152035.1600436-1-alban.bedel@lht.dlh.de>
 <20260618152035.1600436-2-alban.bedel@lht.dlh.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260618152035.1600436-2-alban.bedel@lht.dlh.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,gmail.com,linux.intel.com,linuxfoundation.org,kernel.org,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-313602-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:alban.bedel@lht.dlh.de,m:driver-core@lists.linux.dev,m:devicetree@vger.kernel.org,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:zijun.hu@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:sashiko-bot@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,intel.com:dkim,black.igk.intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 540396A22A3

On Thu, Jun 18, 2026 at 05:20:35PM +0200, Alban Bedel wrote:
> The bounds check for the index passed to
> software_node_get_reference_args() was failing when passed UINT_MAX,
> this in turn would lead to an out of bound access in the property
> array. Fix the bound check to also cover the UINT_MAX case.

...

> -	if ((index + 1) * sizeof(*ref) > prop->length)
> +	if (index >= prop->length / sizeof(*ref))

It trades multiplication for division (which might be not always
power-of-two).

>  		return -ENOENT;

-- 
With Best Regards,
Andy Shevchenko



