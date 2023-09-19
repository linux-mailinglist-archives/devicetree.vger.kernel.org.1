Return-Path: <devicetree+bounces-1508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C98DB7A6BF5
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 22:02:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 89DDCB203A9
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 20:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF05E347C5;
	Tue, 19 Sep 2023 20:01:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB561863B
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 20:01:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F325A8F;
	Tue, 19 Sep 2023 13:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1695153713; x=1726689713;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=9KHDj6W6p0fCXTyXlvgj8DphROxLi+lGoUhRV/4aqdU=;
  b=G++O7DLZe2d0qiKODjhClJQyP5zSzY3tE9kYlOA8p2nrKS5JfhanZXHE
   FUS2dPuJQs7rSBjFbNxHvBL5nsuTFusICoqknL98Kz6nosu1xCEwd3iVa
   54K3fI/f87vMEuR7jth/OHMzmzyTs91vnVULDpk/3q2xw1aUI48m4nnIP
   Vtq8AmjfoX2hQmQbiGHgP0bsMcQGMaZte4qcl+1zyM2unHC49+4ZZgFkp
   0/MxWhpI02/YUo7fjwsiNBF9kt2SDAzl1GN2LHVouMoPJY+xD7yZ3Nt15
   qmsGoIohwF2W6ZyBT5gV4IjWFJFQoNnQd6mC3bVVPSMhoeWK7iokp30oG
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="410971091"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; 
   d="scan'208";a="410971091"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2023 13:01:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="1077115590"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; 
   d="scan'208";a="1077115590"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2023 13:01:40 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC0)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1qiguf-0000000EyIl-02Bs;
	Tue, 19 Sep 2023 23:01:37 +0300
Date: Tue, 19 Sep 2023 23:01:36 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Rob Herring <robh@kernel.org>, linux-acpi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Hanjun Guo <guohanjun@huawei.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Len Brown <lenb@kernel.org>, Russell King <linux@armlinux.org.uk>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v1 1/1] amba: bus: balance firmware node reference
 counting
Message-ID: <ZQn+IMMuPpwwZGPp@smile.fi.intel.com>
References: <20230824162654.2890992-1-andriy.shevchenko@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230824162654.2890992-1-andriy.shevchenko@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Aug 24, 2023 at 07:26:54PM +0300, Andy Shevchenko wrote:
> Currently the ACPI code doesn't bump the reference count of
> the firmware node, while OF counter part does. Not that it's
> a problem right now, since ACPI doesn't really use the reference
> counting for firmware nodes, it still makes sense to make code
> robust against any changes done there. For this,
>  - switch ACPI case to use device_set_node() to be unified with OF
>  - move reference counting to amba_device_add()
>  - switch to use firmware nodes instead of OF ones
> 
> In the result we will have reference counting done in the same module
> for all callers independently on the nature of firmware node behind.

Any comment on this? I would like to have this applied so I can do something
similar to the platform driver code.

-- 
With Best Regards,
Andy Shevchenko



