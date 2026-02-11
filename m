Return-Path: <devicetree+bounces-264755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPwnJx9mjGkFmgAAu9opvQ
	(envelope-from <devicetree+bounces-264755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:21:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F638123D1F
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:21:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B37053020FC1
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2C5336923D;
	Wed, 11 Feb 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="FMBq9Jm3"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79FB305E3B;
	Wed, 11 Feb 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770808834; cv=none; b=Ga9vkH0Q7LmiMBBJZ7Y8s4uBYV6CUNOSOmVxpgg2LFl16Lltv/r2EeItTbOCqhhcMzwP/A3zpAMuOj3nQxhpndT6I0rdqZLPocgphsACHINZ0UcZSORp/Pgae2aIsX+0IY+ZO1PIIEl1FrVnwAl8ThUwXc5T32lrIDDN5HHUL0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770808834; c=relaxed/simple;
	bh=On0mDZHdUY76q5gm2A4V90KULitqx+bjiqXM1kdY490=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RUqxejuONFsoeyohTG1SxixdxtXJmbP1DR+yABnJZ+vuRqkcWXV+ecY/ffxT8SL8sEyCsCjGxiVvzMArkXbAp2CdL+gs55v/9Sf115/saLo1n9rf/jlfK/VFDrtKAG86/l6jPqP8TX/qeMVBjvjKtBfstQEULXxdjBX+DgoX6TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=FMBq9Jm3; arc=none smtp.client-ip=192.198.163.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770808833; x=1802344833;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=On0mDZHdUY76q5gm2A4V90KULitqx+bjiqXM1kdY490=;
  b=FMBq9Jm38bMDIfqrTkq34EdqTf+muihQ9knu90zxliy8L8YH5JkQ7EbR
   8164yOAVDyTH4Hmjd+6xVFqMxNJRQhiYIAb1K5BaFaZizhPf6ZSTjz/1H
   HjarGpUSliDG5QqgxAqOKSomuf8rjdV6MBhzTzII5H0tC2j6Zwh74HbSx
   NM+gB+JseGDfhRQd2zd3ex6nHfHKj9wwpqCRprHmUxG/gFtq0fhHqUxqf
   J1kgdvEvJyMFkVQNEuFbOKKcH1TGkYHuWHHsbkv6/VzBObt7NUdVQdhMn
   pxd00fMXolgCYarVYMyPk8HNnhkA0X/AmzmpCiOxTn4SRxkWcHCewOBIC
   A==;
X-CSE-ConnectionGUID: h6Y+8X34Ql+7704z3r/XSA==
X-CSE-MsgGUID: ykrFouUFTfCY2SbRM+Ki0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="82683118"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="82683118"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2026 03:20:33 -0800
X-CSE-ConnectionGUID: tfiEKjpTQEGtOf2pLxSfNA==
X-CSE-MsgGUID: u73nRiHPTp++Sxvl5jAD5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="211613211"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.244.220])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2026 03:20:29 -0800
Date: Wed, 11 Feb 2026 13:20:27 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, perex@perex.cz, tiwai@suse.com,
	ckeepax@opensource.cirrus.com, nichen@iscas.ac.cn,
	kuninori.morimoto.gx@renesas.com
Subject: Re: [PATCH 3/3] ASoC: ak5558: Fix the supply names
Message-ID: <aYxl-84o20htTnNt@smile.fi.intel.com>
References: <20260211093527.2892297-1-shengjiu.wang@nxp.com>
 <20260211093527.2892297-4-shengjiu.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211093527.2892297-4-shengjiu.wang@nxp.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,iscas.ac.cn,renesas.com];
	TAGGED_FROM(0.00)[bounces-264755-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:dkim]
X-Rspamd-Queue-Id: 1F638123D1F
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 05:35:27PM +0800, Shengjiu Wang wrote:
> According to the binding document, the supply name characters are
> lowercase.

Same question. If it's okay to convert, please elaborate that it doesn't have
any side-effects for in-kernel users. Also, check if these names may come from
DTS (some old DTS might have it, in such case it's a documentation issue, or
driver needs to support both).

-- 
With Best Regards,
Andy Shevchenko



