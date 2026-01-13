Return-Path: <devicetree+bounces-254394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 30517D17B89
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:41:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE2C6300EA31
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:41:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94458320CD5;
	Tue, 13 Jan 2026 09:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="aY8ziSAb"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304721EB5FD;
	Tue, 13 Jan 2026 09:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768297298; cv=none; b=ofoHtDl93cGLemeKm7xtdEo7bSPOxaELgBn7NuLD4+Q2NfKkXk8nH6sZTFErf3ozb9vKE5u6lrYTGHNG6FZEyQpGW7KoQZqs26NJrBW2eHZY1hpMtw9YZQdJ92oIWQLBCC8aNMrEwJfzBaDGvWVqf76KaQtGZKPlUjHUQyUWA+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768297298; c=relaxed/simple;
	bh=iE95smHEjzG/wQTPAel/4fDjVeV/ShrWOzxFKHCEHGE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G6Ay2M0Q0aHMbpkl3j8TeI+bDDjZld8hVCHzOr0RSZaG7k9FAi1gEGoCp1olooBzozjQdKdw+Az5lIrln2E7QD3nNhhmUKSNVgkWBcP5/Uib7hJEjUCQiUrLlqH+O365cp3gCDF+GKfYkOCi9XU4BKF7M9wu9uLYJ5tjMR6ILuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=aY8ziSAb; arc=none smtp.client-ip=198.175.65.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768297297; x=1799833297;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=iE95smHEjzG/wQTPAel/4fDjVeV/ShrWOzxFKHCEHGE=;
  b=aY8ziSAb1Cti7qXo0WyB7aubr6WOfXAfpBS/ua9USLfbZyUnCP1evL6Z
   tBp/nA9GXL+J4g6PFUeDnHkQJr3euFHBKEfzB+OcI9p60K5JICpEMx6Te
   NeyC3CQZsp78zWsNOC6QP/1LyWPuQ2QNhy1aUyA2VHMqfjUUAf4p/2Zbg
   vR8LYyg6TIEMzZtCykx83QafGAV1D2O2y49WgkwIaK/dZncZPhO3JrqDk
   IsdgfaJ8zTRO6bLsbvi2iiwNZV3dJyf7CDGoF+rTQ+gDILyDKaZ0o7PGE
   462pyjB4uF1G3g/uYnHiAuS5SpwwiiK00AbD8lXMt9LwdxsIBWjxnD7/9
   w==;
X-CSE-ConnectionGUID: 6DWYWwcdQJmTYXwBzX0sqw==
X-CSE-MsgGUID: +T7IZ3ZcS1qXpHLA1x1MMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="86994100"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; 
   d="scan'208";a="86994100"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2026 01:41:36 -0800
X-CSE-ConnectionGUID: 9xkvBvVpRkCbzi06srT0qQ==
X-CSE-MsgGUID: vRerlrgWTyOmTxteTd7bLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; 
   d="scan'208";a="203496125"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.245.177])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2026 01:41:34 -0800
Date: Tue, 13 Jan 2026 11:41:32 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Sirat <email@sirat.me>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, andy@kernel.org,
	geert@linux-m68k.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] auxdisplay: Add support for TM1637 7-segment display
 driver
Message-ID: <aWYTTKmKHFzPo0xZ@smile.fi.intel.com>
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

> The TM1637 has no slave address,

IIRC we have drivers for I2C peripherals that do not support the address.
Seems gpio-pca9570.c is the one I remember.

> and data is sent LSB-first which makes it
> incompatible with standard I2C adapters,

Does it? What prevents from reversing bits? (We have bitrev.h APIs)

> so I can't really piggyback on that driver's I2C backend.

Please, reconsider.

...

And please, do not top-post!

-- 
With Best Regards,
Andy Shevchenko



