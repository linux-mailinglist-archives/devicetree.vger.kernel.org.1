Return-Path: <devicetree+bounces-4937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E42CA7B4621
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 10:20:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 94EFA281330
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 08:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C2E714A93;
	Sun,  1 Oct 2023 08:20:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3789464
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 08:20:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B1F59C;
	Sun,  1 Oct 2023 01:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696148435; x=1727684435;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=o+KVW1rLaOn0lxFyk+mJJT0IABPC8pRmelGMvaMNn4g=;
  b=VnctnJQwx54nVGH8W1/mOmh6bfFuHnZ0gpz7coAbjbkNPqj1TdNYUYbX
   MAYuqPvUD7bP4MiuA9XobZUse8OcrPytLy3tpU06G1Nor1C8YSD6lwb3F
   BNnB2BPNpJt+4sOhvB8p0JWvUX8m6ICZm/0qadq41bBr5GSdFrN5AlZRS
   pFHvh33csyxsklktvI85L8iWKjclUbV0rKuhJcKuYW9z58U4qwhbw1yEt
   eTw/Was1bu5m38rSXfktzfrUfQQZGmk6EGaJ/cmdUhXnjFV1X+wlMmXSn
   JCBb+PC/Pe+vqGo9S2Jf9thnGPJvT4zPO1jh+41QflMzYT7DP8/k6qN8h
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="468782309"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; 
   d="scan'208";a="468782309"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2023 01:20:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="815989669"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; 
   d="scan'208";a="815989669"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2023 01:20:32 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC0)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1qmrgj-00000001qri-1Gm8;
	Sun, 01 Oct 2023 11:20:29 +0300
Date: Sun, 1 Oct 2023 11:20:28 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Jagath Jog J <jagathjog1996@gmail.com>, jic23@kernel.org,
	lars@metafoo.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC 2/2] iio: imu: Add driver for BMI323 IMU
Message-ID: <ZRkrzCcPqmiaNZqK@smile.fi.intel.com>
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
 <20230918080314.11959-3-jagathjog1996@gmail.com>
 <20230927095708.l57kmdc3mmrtaco7@pengutronix.de>
 <ZRQhdkVNFdCfPseY@smile.fi.intel.com>
 <20230927143443.f4xpfzkwylipo25g@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230927143443.f4xpfzkwylipo25g@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 27, 2023 at 04:34:43PM +0200, Uwe Kleine-König wrote:
> On Wed, Sep 27, 2023 at 03:35:02PM +0300, Andy Shevchenko wrote:
> > On Wed, Sep 27, 2023 at 11:57:08AM +0200, Uwe Kleine-König wrote:
> > > On Mon, Sep 18, 2023 at 01:33:14PM +0530, Jagath Jog J wrote:

...

> > > > Datasheet: https://www.bosch-sensortec.com/media/boschsensortec/downloads/datasheets/bst-bmi323-ds000.pdf
> > > 
> > > Maybe put this link better in the driver.
> > 
> > Why? We have a handful commits with this and it's better to see the link
> > to the datasheet without browsing the source code.
> 
> But if you later work on a problem in the driver, it's better to see the
> link without browsing git history. :-)

Both make sense.


-- 
With Best Regards,
Andy Shevchenko



