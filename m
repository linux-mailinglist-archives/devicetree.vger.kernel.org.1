Return-Path: <devicetree+bounces-254398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0144D17C6E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:52:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10AE9306C555
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD40387580;
	Tue, 13 Jan 2026 09:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="cGz/LCdQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41302F1FC9;
	Tue, 13 Jan 2026 09:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768297599; cv=none; b=fX08dNrhlH7VFAlu/SLvjMTVpn0xj53wS9zciKnDQbA/uraqBmpvhL8rXA+HmjLkOSL2xJjuKvuCEaGSACr9pbkXfKWj5cYezgCLMFn6rNx1nAJWTWKPqiYhDPTeEFePXrS4PzfQD06sNFjoy++gARqjm3CGyPy/M7eLYdNZbQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768297599; c=relaxed/simple;
	bh=tJ9I6wxbtjWGev+v0h9b0c3SwPgUZJMbWRqq8OgcKkM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mPe+ziQJoZhdh3WtaTrel/B5LbrBBDPP6L+CRIPW+utqCN/kYWPdYf2OKSqcMABsFR7ZaPqNCBJrIBuHB8ZyNsKqS0FeFWsRMS+WNhTgE70Bhd0r39IOQ25qKZqhP61mQE9d3NRHVXkw8OYW+90KAU7jlaJnlfFCMmZ1lv39/xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=cGz/LCdQ; arc=none smtp.client-ip=198.175.65.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768297598; x=1799833598;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=tJ9I6wxbtjWGev+v0h9b0c3SwPgUZJMbWRqq8OgcKkM=;
  b=cGz/LCdQaMfFKW5IShOvw8EpJY4Rnm6oH3gQdFSHhL6HaBV7hk9Is9HC
   WINA26s+oHS8w51XmIB/T35c+PsxZqEUItWK+9/Q2emgYr1T3JSVmk498
   nZpDb+JYhxwdlPqXY+uy6mDHqsU3tvDCqf/pObmFXv6MwX93AjItkmdEe
   EiodmPWuWkzWT2clJYrbic4J42+1QQPKyRtBtRGAnx/E4+BtfrSQXHIBt
   EbDRvqvcATnnbYdjKRA9qGG+KTYy6p4p6D5aDu00TC3MJCqAuo4cOnLzU
   2uWpF0PrqNlySALRddGdhDbsyTGJdMvYUDQbemhZhN/suzX1L1PRELQTu
   g==;
X-CSE-ConnectionGUID: 7lNZrzbrRdK/V43mEX5s9g==
X-CSE-MsgGUID: MGPfrKtvT02qUHtI1uIhqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="69312221"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; 
   d="scan'208";a="69312221"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2026 01:46:37 -0800
X-CSE-ConnectionGUID: B4FdTrJ4QPKnXaKDhuyG5Q==
X-CSE-MsgGUID: 5VHko3neQcC3u1UhckIuuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; 
   d="scan'208";a="235585010"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.245.177])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2026 01:46:34 -0800
Date: Tue, 13 Jan 2026 11:46:32 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Sirat <email@sirat.me>,
	=?iso-8859-1?Q?Jean-Fran=E7ois?= Lessard <jefflessard3@gmail.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, andy@kernel.org,
	geert@linux-m68k.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] auxdisplay: Add support for TM1637 7-segment display
 driver
Message-ID: <aWYUePxFod87YiYy@smile.fi.intel.com>
References: <20260113040242.19156-1-email@sirat.me>
 <CAHp75VdGNd9HY-ihhgjPXv5rtiMrtKgxtvve1RcCz1x+Fj6ZKg@mail.gmail.com>
 <CANn+LWLECPY-F_fsDg1VxbjJdN-pLnkRpQn4OEFSa6yiARoU9A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANn+LWLECPY-F_fsDg1VxbjJdN-pLnkRpQn4OEFSa6yiARoU9A@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo

On Tue, Jan 13, 2026 at 03:19:32PM +0600, Sirat wrote:

> Regarding Jean-François's series: I did check that out. It seems focused on
> the TM16xx variants that speak proper I2C or SPI (like TM1650/TM1638).

Forgot to add. Please, Cc him and collaborate on the DT bindings as it seems
some potential clashes.

-- 
With Best Regards,
Andy Shevchenko



