Return-Path: <devicetree+bounces-295164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BEaHuXKAGoGMwEAu9opvQ
	(envelope-from <devicetree+bounces-295164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 20:13:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDF050596D
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 20:13:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A82A0300B12A
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 18:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 379B42F6931;
	Sun, 10 May 2026 18:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="mky19BaV"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BC84A23;
	Sun, 10 May 2026 18:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778436832; cv=none; b=lGxGRNCj5yTxonR8a9C48CwG4wac2nfrNAZbMW9FXlQg0IKqKHjovWx/YEGEwjH4N/txoXusOyfs37x06FIn6inKmNFBknEPOYzD6ZTV13+MBFGrlWaJNWjXj52UWPlMHDeg7TLXmp/od3xdPlHuz4ehyI/lWVYALwHIrnAXAv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778436832; c=relaxed/simple;
	bh=iVFsfgz6l2/+k9tMQVPuHmwSH+CcMqSjIljnQXFEsvk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t2zdkJ2+uFNVhxyJ7ISoUIb265MrFequDLWwg6t296C2QckNicw98hvfuZmyd63XFmbMJBe+PEc/LuDXvnlam6OrlcWG1B/7QFhagO4d3WCA7X0po70k5CX+rDKx0jDW530HUEG4x9hgF4lQFq7H6DtSUEWgo0mYlaOc4sSzjqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=mky19BaV; arc=none smtp.client-ip=192.198.163.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778436831; x=1809972831;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=iVFsfgz6l2/+k9tMQVPuHmwSH+CcMqSjIljnQXFEsvk=;
  b=mky19BaVAdRCBiC1JTJSY67lIUPEeqt4Oxzc2OopxEp9p0h8BsmbEz6n
   glcbt8w3Zll8kTWahnbeUicXZXkGkHFBqkcr1TXI7qU46DWReptSXEMQi
   zxgw/KQKrBaja/Bayy0f23gKrl624qrQUz8qyjH0bDgKu+u/ODzl61YGl
   AHGUDRTwVt5xEqxb0X03gi4r5CtG6FE1QHZMzYX548FtPGR6hcANs5R4S
   ZD6ue4adX7/qpBns4IRTzFfX0vT3t81rw260Q1vtF5ABxvJLUYbKdInTy
   Z9BD6be2FlBNMROYi5nyUHpho2sflkvGiP0kpUFWChAQLxBvjUDB9oeEo
   g==;
X-CSE-ConnectionGUID: TV8NghjfQWqGxflSg0LvEw==
X-CSE-MsgGUID: s25qPBBgSuqd2vXFhXy3kQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="78480872"
X-IronPort-AV: E=Sophos;i="6.23,227,1770624000"; 
   d="scan'208";a="78480872"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2026 11:13:50 -0700
X-CSE-ConnectionGUID: C/w68USzR/WhlGv15LAvFA==
X-CSE-MsgGUID: LhSxVOobTSmDfAYrenpYRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,227,1770624000"; 
   d="scan'208";a="237202417"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.244.171])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2026 11:13:47 -0700
Date: Sun, 10 May 2026 21:13:44 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: azkali.limited@gmail.com
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, CTCaer <ctcaer@gmail.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] iio: light: Add ROHM BH1730FVC ambient light sensor
 driver
Message-ID: <agDK2A5BeNQtz2xs@ashevche-desk.local>
References: <20260511-bh1730-v1-0-e0df1f499135@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260511-bh1730-v1-0-e0df1f499135@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 0DDF050596D
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-295164-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,ashevche-desk.local:mid]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 01:09:48AM +0700, Alexandre Hamamdjian via B4 Relay wrote:
> Add a driver and devicetree binding for the ROHM BH1730FVC ambient
> light sensor. This sensor is found on the Nintendo Switch console,
> where it is used by the system for automatic display brightness
> adjustment.

Always for a new driver put a summary of the study of the existing drivers
in the area and explain "Why do we need a brand new driver? Can't we have
an existing driver to be extended to cover this HW?"

> ---
> CTCaer (2):

No aliases, use yours real name

>       dt-bindings: iio: light: Add ROHM BH1730FVC binding
>       iio: light: bh1730: Add bh1730 light sensor driver

-- 
With Best Regards,
Andy Shevchenko



