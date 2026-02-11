Return-Path: <devicetree+bounces-264758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GPxNG1pjGkMnQAAu9opvQ
	(envelope-from <devicetree+bounces-264758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:35:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE7F123E61
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:35:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CF9A303BB31
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D98F314A8D;
	Wed, 11 Feb 2026 11:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="iCyxAyNS"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24E830C619;
	Wed, 11 Feb 2026 11:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770809669; cv=none; b=Hb9NrvRsg1x8pKMxC2DxXR7Y4U1X5BakijCVvrG9eYhpZqlIM6zJctxIB75RpRHOk7ZplsU+eD5qtkF6B8cg6/mLfxfSHoJ3GCd50Lkv+7Z4aALbqubOkpA0/aiAiv15i3HPmZqANC2kI1OW9j7aIo+sG2u7l0k3RPqIM/GomCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770809669; c=relaxed/simple;
	bh=1xykNzdmvqoqeEJz/4Buz2/kuYquEmIRgt597iVsgnw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fCHHTbQv97psjV14sMOK5CisXIG2YFSFEQpLsaDcGCCIdKUeUKzuM3+eyZEetuc9Q6KLqfZdvAIJQONfIjP3ZMk0UmKIU8xRWtRKApfmG0EzAajBBsWZ+cgw28eJbgSlVL2iR63VNLs7y1olseggd6kuPy0DpheQGsB5Z892Caw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=iCyxAyNS; arc=none smtp.client-ip=198.175.65.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770809667; x=1802345667;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=1xykNzdmvqoqeEJz/4Buz2/kuYquEmIRgt597iVsgnw=;
  b=iCyxAyNSOQ9aoSCnDpzCb7YBPmOWVeUYkYU5FyZXoQnYLWs4OY1Rwi+p
   U7OCOT3+D7moNErqF9d450sRJOrSIjnpKjpbng+s3HpGRkyrsesegkUkQ
   ztv2ym5OZomdL4BDKQWjhTDGaZYRdT6+1GtCbP+6AQi14Gsfv27qO5QtW
   uSKAqqoaOlU5kPBwseYivc4dViAIZnku79KBWzwcqaDJIRca0K4UwI/0u
   6b6Q9NNfmRNlRPdZ8cnupLUL7WPjtDDECFgs3gJ/+LqmuaninRrNiCUzQ
   PQTGpLrNk2/fxQM+R3lNLRxI7eajtza9AiKQ0dj5Srk4K0Xd+2WRzagdR
   A==;
X-CSE-ConnectionGUID: TeROh2GvReqUQM26ulRfrQ==
X-CSE-MsgGUID: dPxc2BokQn25Loxit2E2JQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71997726"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="71997726"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2026 03:34:27 -0800
X-CSE-ConnectionGUID: P42b6e5+R7iMr3MZIdct6g==
X-CSE-MsgGUID: V+Xbh+QaSKefMo8zvqUWgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="211537348"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.244.220])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2026 03:34:24 -0800
Date: Wed, 11 Feb 2026 13:34:21 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Shengjiu Wang <shengjiu.wang@gmail.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com,
	broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	perex@perex.cz, tiwai@suse.com, ckeepax@opensource.cirrus.com,
	nichen@iscas.ac.cn, kuninori.morimoto.gx@renesas.com
Subject: Re: [PATCH 3/3] ASoC: ak5558: Fix the supply names
Message-ID: <aYxpPX3LQ8RGgIBz@smile.fi.intel.com>
References: <20260211093527.2892297-1-shengjiu.wang@nxp.com>
 <20260211093527.2892297-4-shengjiu.wang@nxp.com>
 <aYxl-84o20htTnNt@smile.fi.intel.com>
 <CAA+D8AM6SxpfUpZJQAT9cif+7+cXwQCOmFqOXcNyQj=jd2VpJQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAA+D8AM6SxpfUpZJQAT9cif+7+cXwQCOmFqOXcNyQj=jd2VpJQ@mail.gmail.com>
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
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-264758-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,iscas.ac.cn,renesas.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: 3CE7F123E61
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 07:29:42PM +0800, Shengjiu Wang wrote:
> On Wed, Feb 11, 2026 at 7:21 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> > On Wed, Feb 11, 2026 at 05:35:27PM +0800, Shengjiu Wang wrote:
> > > According to the binding document, the supply name characters are
> > > lowercase.
> >
> > Same question. If it's okay to convert, please elaborate that it doesn't have
> > any side-effects for in-kernel users. Also, check if these names may come from
> > DTS (some old DTS might have it, in such case it's a documentation issue, or
> > driver needs to support both).
> 
> Thanks.
> 
> I go through all the DTS,  no DTS uses DVDD/AVDD or dvdd/avdd for ak4458 and
> ak5558 codecs.  so there is no side-effect.

You mean no "in-kernel" DTS. But my question was if any DTS in the world may
supply this as AVDD? If answer is yes, the binding must be changed. But then
the same issue may come due to somebody using a new binding somewhere. however
I don't understand how in that case it will work in Linux (only other projects
that use the same bindings as Linux kernel may be affected).

> I just am thinking it is better to fix it in document, it is caused
> by converting txt to dtschema.

I think this sounds at least like a safer change.

-- 
With Best Regards,
Andy Shevchenko



