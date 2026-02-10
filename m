Return-Path: <devicetree+bounces-264496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBvVMhxsi2lhUQAAu9opvQ
	(envelope-from <devicetree+bounces-264496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:34:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6EF211DF4F
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 37AB2300B8CE
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CCA2329E67;
	Tue, 10 Feb 2026 17:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="VZ2/fdNV"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDB713D638;
	Tue, 10 Feb 2026 17:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770744855; cv=none; b=fcBZh8Mp3AdJ8PgRqoXxnvTMUA7M4EF6IICnofJROJj2yn4A1tAGb72ywlQ9iVUGciSgjCgEXvbOquTFSV+ZfMJgXGj1i22wLCmPKXjUOUMbuXurs8byVcmxTdHdr5mNzI8BnOjNr/xZRpuRmBv7CksSTZmkcZyTOS2ueiaDo1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770744855; c=relaxed/simple;
	bh=0tNiY1jBPQ0tGKHVNmIDhi/+uOUu7qL3ilKVNoZzWFo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mmc3rjCH/OIF0IbqAUa78jRJWYV8UZZU9clZbUVCqEEdnyjzulQT1LXlG2SWqUVo8Z0xfu+4/SDBopk5S7DHV+9sv4Bvuzma05zFC4M44yYBXVGa7yOsqLKeAGeDMDqQ3Z2a6ntsCNJcRTEipukEQlwVpLI/4KXBLMhcHPkNSZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=VZ2/fdNV; arc=none smtp.client-ip=192.198.163.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770744854; x=1802280854;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=0tNiY1jBPQ0tGKHVNmIDhi/+uOUu7qL3ilKVNoZzWFo=;
  b=VZ2/fdNV8gfoyirTlpyBLAAuRHMDDYvERuslrCUuijvjSLc4p2Wj6WwA
   YWNKwNTOmCvezHWwzIQz0T2Riavg7q8AHL7fSsMeFwEcaqeUOQEJCqkUU
   8fliHIvM6TrnLekdVpMRgP80FqkQLeQ4xu3Ldb1PoadM9mYtZtk3vxZ0h
   8ahyyHh66eHoO5VSZNpIRYEOyABqarpT0UeZe+CizQ/87QLY9KC/iZxhM
   hqmM7bM+dDnnAC45TgjZMVHxe/FCKfnuPIxXxroFMo3saXo4vMBxNo2lt
   +T5+O4fk3zH1kHyYhXGZrPEthVSzEveLd43FVFERviMbPRS2upzY5ieIb
   Q==;
X-CSE-ConnectionGUID: 0yeYbT2oQMqHaSqe34DdsQ==
X-CSE-MsgGUID: tzCtTcm4QQW5gsNbRpA/nQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="75727310"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="75727310"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2026 09:34:14 -0800
X-CSE-ConnectionGUID: dTyo9vgySOC04rUiAiYXKQ==
X-CSE-MsgGUID: wePw+i4vSNSsITG3QN4H0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="249625509"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.131])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2026 09:34:11 -0800
Date: Tue, 10 Feb 2026 19:34:08 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Yasin Lee <yasin.lee.x@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/5] iio: proximity: hx9023s: Protect against division by
 zero in set_samp_freq
Message-ID: <aYtsENtoRhywTYbo@smile.fi.intel.com>
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
 <20260209-upstream-20260219-v1-2-2b4d74e309d1@gmail.com>
 <aYme6jXNyPM_AHo-@smile.fi.intel.com>
 <CA+NOmz+KKhSAX8cEUhcS=GPCTtagyFZS4Pszj895bf-07ii7bw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+NOmz+KKhSAX8cEUhcS=GPCTtagyFZS4Pszj895bf-07ii7bw@mail.gmail.com>
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-264496-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,intel.com:email,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: E6EF211DF4F
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 12:29:15AM +0800, Yasin Lee wrote:
> On Mon, Feb 9, 2026 at 4:46 PM Andy Shevchenko
> <andriy.shevchenko@intel.com> wrote:
> >
> > On Mon, Feb 09, 2026 at 11:37:03AM +0800, Yasin Lee wrote:
> > > Avoid division by zero when sampling frequency is unspecified by
> > > falling back to a default 100ms sampling period.
> >
> > Fixes tag?

>  This is a proactive fix for an original implementation issue I found as
>  maintainer.

Cool, any objections to use Fixes tag?

-- 
With Best Regards,
Andy Shevchenko



