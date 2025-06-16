Return-Path: <devicetree+bounces-186377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F788ADB784
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 19:03:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A555D188D636
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 17:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DBE62874F2;
	Mon, 16 Jun 2025 17:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="SeqJNobp"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009434A0C
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 17:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750093378; cv=none; b=StxNpJLHBVmwHjdORpOyjToY13Awy68ZHAQg7269OYXpg/6GCDP/jCrrnFNKrYv1/rTY5jgk0ReM+XdJ8ly9n5hgQcZiorfUA50HQmZSV45dQy4rNBpDJAgC3kARx/fFAVfKT4bifIzHywcPfa5ceNMVn+mFHe3bzBcXsuMItjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750093378; c=relaxed/simple;
	bh=zU/FGykCk0aFsknvFEQ5AKZBqRu+zQyLb4C3Hxhp3pY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cY7De49y118m3qK2vjBu6nXAnoInd1ZCbdaT05syq7iUNatwepjrhgflw2uVGJ20wt8jjhPeQv+e1qOmE8ncG59TRbJygBOpwlQWzrhy3Mc/jQ7EhqJ5eLzYXkE9NvKIEdrT6O+FoTN8Xiz0seczvLqgnBpgOYcwII9Spel1RsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=SeqJNobp; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1750093377; x=1781629377;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=zU/FGykCk0aFsknvFEQ5AKZBqRu+zQyLb4C3Hxhp3pY=;
  b=SeqJNobpl6U/E/1wCEYBzJwF5regTJBzd6fSQ/BSKkX50n34cZk7OoOd
   SiiBwkPSUo5bIdyQfgX8Mxu4+ALuap4FDwZNWbsGaip3VPxCe2pYjsNWN
   LpkRRK9er+v53qVwmSUFKTWiDzIM4Z2YSYs1gB1ePCXSQXBMzz3KBInoP
   k9BjLzgB6Ml+1dZiE9eJQihV4Dgdsyrja2yAGLo2V2mTVKJTfzZpeaJB0
   e588//3hXeAqE0+JklQMDSVwSDVK5Ytolhtv25jJlDSe9kBfa3K2oMsrf
   7wHdowpj3fd8E+I19rPfrBbhJafWgfqjBu4Oi3VZsEld2G1yHwrIjhJuO
   w==;
X-CSE-ConnectionGUID: blruUUuFSBGVT9TfqM3Dqg==
X-CSE-MsgGUID: kSMA6QfOSdSbwnzy8qrLvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52337752"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; 
   d="scan'208";a="52337752"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2025 10:02:56 -0700
X-CSE-ConnectionGUID: rM76+oIfR5mxeb4BCLTvKQ==
X-CSE-MsgGUID: rIGqZgXZRKGCVk2lbMqImg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; 
   d="scan'208";a="153280510"
Received: from smile.fi.intel.com ([10.237.72.52])
  by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2025 10:02:55 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1uRDES-00000007A1R-0DE5;
	Mon, 16 Jun 2025 20:02:52 +0300
Date: Mon, 16 Jun 2025 20:02:51 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jean-Francois Lessard <jefflessard3@gmail.com>
Cc: devicetree@vger.kernel.org, andy@kernel.org, geert@linux-m68k.org
Subject: Re: [RFC][DT] Guidance on device tree property prefix for
 TM16XX-class LED display controllers
Message-ID: <aFBOO1LtLRagMGMz@smile.fi.intel.com>
References: <CADsqogD=zfC--XHhSXZ=cDHZ3TMNpcU2WUS0stY2HhuRNdzPXg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CADsqogD=zfC--XHhSXZ=cDHZ3TMNpcU2WUS0stY2HhuRNdzPXg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo

On Mon, Jun 16, 2025 at 12:05:11PM -0400, Jean-Francois Lessard wrote:
> Hi all,
> 
> I’m working on preparing a new driver and device tree binding for auxiliary
> LED display controllers of the TM16XX class, and I’d like to request
> guidance on property naming conventions before submitting a formal patch
> series.

> The driver (tentatively named tm16xx) supports LED controller chips that
> share a common hardware design and programming model, produced by multiple
> vendors, including:
> 
> Titan Micro Electronics: TM1618, TM1620, TM1628, TM1650
> 
> FUDA HISI Microelectronics: FD620, FD628, FD650, FD655, FD6551
> 
> Princeton Technology Corp: PT6964
> 
> HBS: HBS658
> 
> tm16xx,digits = /bits/ 8 <0 1 2 3>;
> tm16xx,segment-mapping = /bits/ 8 <0 1 2 3 4 5 6>;
> tm16xx,transposed;

I'm not sure I got what the controller is. Is it for 7-segment like display or
is it something else?

Because it might be that LED subsystem is not the best for it to begin with.

-- 
With Best Regards,
Andy Shevchenko



