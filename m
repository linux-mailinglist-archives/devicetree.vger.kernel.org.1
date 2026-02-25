Return-Path: <devicetree+bounces-268448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INhBGx0cn2kzZAQAu9opvQ
	(envelope-from <devicetree+bounces-268448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:58:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EE619A1C2
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:58:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 225303204204
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84EBB3E8C75;
	Wed, 25 Feb 2026 15:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="aceX9Isq"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECB83E8C70;
	Wed, 25 Feb 2026 15:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772034434; cv=none; b=j5vturMozQFdqSJqMfAhpxgap9l5ziaD+hDn85Bxz2UoQptV+O+Bl8ASn+mv+cZLBp+7uuw9nKdBynPcDmm0Qy/Eaw6ua8sRrgpxHOalOIi/bRvX/7GwTvqOPD4ttJYGDLY8e/jZcOiLMnSnO3VwgChfu0hQ7N7HDBNvsojw648=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772034434; c=relaxed/simple;
	bh=SZTLQMFSTiivBWNaOJNlhgNQ8K0QjS462oJIKLhaTBc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QivJOfx8JB2A/L/ZhFxgoA40hSdUuAdqeMNHH/HwzwiP40fryqr9x//WtxTXxDut4axgoYJvTU25FuJg2rR8Xg3pS/kfby58xh0cJnd3IcsEmYvtQcFHkxKNqja02Pw7Y/7aitghK5L9IZe4WRpANGhcmMwPBDDYJC8TX7pYoiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=aceX9Isq; arc=none smtp.client-ip=192.198.163.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772034432; x=1803570432;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=SZTLQMFSTiivBWNaOJNlhgNQ8K0QjS462oJIKLhaTBc=;
  b=aceX9Isq7C5usWCScNwwJCf6v2aG/Fm5IGtxl5dHNxYi/HxrJ2L2BsFu
   mIIXxVCqK+U3eFaludqYfC/j7VcRPZuoEJgHH2WknPCjVth+W+i2r1q9a
   ro57GGsN74GhrpxytilDzRuuVs5WpIoGzlYmZ5d3mz+xGHG75JoblVyrD
   5GtMVDvibp5aezpWinYMZgSQyeIVIKUIL815uPFje0J8QZQLPvdKq0sTu
   F0I86JQ4hQRMlZk3GGAQYIAj7G5L62d76nfl1Xg6L7oRITgswnimd6C9n
   wFsOp8Ilaj1LZFqOPdNvHxNlBm/A5yZ7qzQO8z57e5UENA/QCUjbDJMGm
   g==;
X-CSE-ConnectionGUID: 1yeaGbJkR3mkUB5MA001Ug==
X-CSE-MsgGUID: 43iSUW38RZCY/EhqSNVaJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="75682398"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="75682398"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 07:47:11 -0800
X-CSE-ConnectionGUID: S5z1zY8jTf2gPEI1isUujQ==
X-CSE-MsgGUID: vzIFKvNAQFWHf9cB5J/25g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="216411531"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.71])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 07:47:09 -0800
Date: Wed, 25 Feb 2026 17:47:07 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: dw: Update maintainer
Message-ID: <aZ8ZezYcq0-6AcK0@smile.fi.intel.com>
References: <20260225125109.3794977-1-mika.westerberg@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225125109.3794977-1-mika.westerberg@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268448-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: 99EE619A1C2
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 01:51:09PM +0100, Mika Westerberg wrote:
> Jarkko does now work for Intel anymore and since I'm currently
> maintaining this driver, update my contact information here to make sure
> patches get Cc'd to me as well.

Reported-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
(reported off the list)
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Thanks!

-- 
With Best Regards,
Andy Shevchenko



