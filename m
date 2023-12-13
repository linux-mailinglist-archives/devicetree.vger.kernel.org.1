Return-Path: <devicetree+bounces-25016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 197F3811F41
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 20:46:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B32A31F20F1D
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665CA7764F;
	Wed, 13 Dec 2023 19:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="JdmOvEPt"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92DC9D4B;
	Wed, 13 Dec 2023 11:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1702496756; x=1734032756;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=NkInTmywTVeWZDXhb8Nql959C4qM12kBZjmIfc1IU9o=;
  b=JdmOvEPt3V1lJlMt5Unkc9dLgjraP+394ASeJ07ySW+MVwEFi2FLVGtK
   IQ1fOKMRC0+kdMxu7U9SgBOBSd162qz/mDeS52oEp8Zv/J9cvPm0xbncs
   Mt1d6N5lRxPuGz+1T2DopMsm91yG71lZidkqek2DR/Ey+CmH1Q0fmzAF/
   EFUdQSAOueGHCNKmo2tNUWZkdsCceucPRFhKhWYlK0PriNq5cirns3CdG
   14uxAtfIX3+Y1mw3H+wh1KZNci789+/8rg9+zqVBqXaVh9L/HkqAci+55
   NyuGNnjywJtttP4t5/kwRqvxJ1Ld5aSwB3ep/66ZHP/4xswrsPUXhc+zh
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="16568780"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="16568780"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Dec 2023 11:45:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="947292068"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="947292068"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Dec 2023 11:45:52 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1rDVB0-00000005d1h-0bhM;
	Wed, 13 Dec 2023 21:45:50 +0200
Date: Wed, 13 Dec 2023 21:45:49 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Mark Hasemeyer <markhas@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Raul Rangel <rrangel@chromium.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 4/6] of: irq: Add default implementation for
 of_irq_to_resource()
Message-ID: <ZXoJ7WG4lJ4wMM8w@smile.fi.intel.com>
References: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
 <20231213110009.v1.4.I31d4dd6a7e5a3e5eee05c87b358e63cd1aa0e467@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231213110009.v1.4.I31d4dd6a7e5a3e5eee05c87b358e63cd1aa0e467@changeid>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Wed, Dec 13, 2023 at 11:00:22AM -0700, Mark Hasemeyer wrote:
> Similar to of_irq_to_resource_table(), add a default implementation of
> of_irq_to_resource() for systems that don't have CONFIG_OF_IRQ defined.

...

> +extern int of_irq_to_resource(struct device_node *dev, int index,
> +			      struct resource *r);

It looks like you may put this on a single line as this file has longer lines.
Note you do not need "extern" for function. You may even update the header
to drop all of them at once.

-- 
With Best Regards,
Andy Shevchenko



