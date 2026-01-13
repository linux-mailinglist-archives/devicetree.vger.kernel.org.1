Return-Path: <devicetree+bounces-254399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FEBD17C77
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:52:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69361303ADEA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1343387344;
	Tue, 13 Jan 2026 09:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="DMYZRJ0q"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21F3320CD5;
	Tue, 13 Jan 2026 09:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768297675; cv=none; b=cJEQu9j4grdus1prg1OVGWbkGytkbjhHNMawhL9EobbSmvfYUs7CcY5KEVgW1kGhlFOfzwegG8W6w/qyae1PfuFvSdH8x0+DflN61aTCALonh9+PH+iCwqnFhI5ED0QnOW4bqyNVmGUvOUxDmbBY9C0F1v+QsCw9ffPNKVYOn0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768297675; c=relaxed/simple;
	bh=3P/WvLhW+FDOEr4J8XeO31bl4G7N4gekmk+0XKSo148=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AcdjYG9Hq3Rk56/veqrkNa/tLljU8Qbfr/2XszoCAhniRz0dlkfxqNG35tlt0G2CKZ/cFz2Dl2UcqO5/gW56Ae5gGYAGO55+ubCDwjJ8y7XmB4293PdI4WA1o3tQiMeXZJTRAxLIbwZMkaC/+Xozdi9JD+R8sKXB4W6JeFay5Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=DMYZRJ0q; arc=none smtp.client-ip=192.198.163.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768297674; x=1799833674;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=3P/WvLhW+FDOEr4J8XeO31bl4G7N4gekmk+0XKSo148=;
  b=DMYZRJ0qxyg6P/Ab6HUbPO2BJLqpvlfw2W9wEh6au5oIg8KFziwbxWN6
   EJAluvcS/K+RjWw0uOuuh/mQaZ0RjQieVwBJ64lrsVnA4pmtAAykiyf51
   pb6qeMdkOFiYpeRuMlvuqkcfZCP2ijGopqVQbku9/CrIV+EOQzXYwGyUT
   OKpsTFp7vMpC2LLF8+6lnAKnoKkKGGnOG+uqcbE+6cajCZj8n1EtB3B4f
   0KixJCAaYuE12dNyjVket2oHZJ+RovUg88HiHYmKIgbbwRjDAArZaHvu0
   x7xQo0zxHxaP8a+PVJOtFhEQXyG5zmMyXthCcr/Q/aBGXGnPDThkYc90v
   A==;
X-CSE-ConnectionGUID: +IdkETZjRWq9RSW38UmcIA==
X-CSE-MsgGUID: rln+z7qGQyG0xHXCYfXC6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="69488204"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; 
   d="scan'208";a="69488204"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2026 01:47:44 -0800
X-CSE-ConnectionGUID: RyDngmUnS5SfmuvAyxSJVg==
X-CSE-MsgGUID: I+o8cczITbSCWNcqh4LpWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; 
   d="scan'208";a="204422959"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost) ([10.245.245.177])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2026 01:47:41 -0800
Date: Tue, 13 Jan 2026 11:47:39 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Sirat <email@sirat.me>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, andy@kernel.org,
	geert@linux-m68k.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] auxdisplay: tm1637: Add driver for TM1637
Message-ID: <aWYUuyKuHTYzgBPd@smile.fi.intel.com>
References: <20260113040242.19156-1-email@sirat.me>
 <20260113040242.19156-4-email@sirat.me>
 <CAHp75VdCoHPp_ynzsrvbzx_LY_N5x4sMxvzQnDkatWiEe91j1A@mail.gmail.com>
 <CANn+LW+PkAcZ2ZVSUpAQwYhDucruiiN90cAakDMXnayRPW0jUQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANn+LW+PkAcZ2ZVSUpAQwYhDucruiiN90cAakDMXnayRPW0jUQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo

On Tue, Jan 13, 2026 at 03:42:09PM +0600, Sirat wrote:
> Hi Andy,
> 
> Thanks for the review. appreciate the mentorship on the coding style.
> 
> On the I2C point: I did check, but the TM1637 is incompatible with
> standard I2C adapters. It expects LSB-first data and there's no slave
> address so bit-banging is the only option here.

As I replied earlier I do not see the problems there.

-- 
With Best Regards,
Andy Shevchenko



