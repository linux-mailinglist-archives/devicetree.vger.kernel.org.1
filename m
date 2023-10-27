Return-Path: <devicetree+bounces-12415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 109877D9602
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:08:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B20A1C20FDA
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50D7D18051;
	Fri, 27 Oct 2023 11:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Zk+k8gpi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23F815AFF
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 11:07:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B159F9C;
	Fri, 27 Oct 2023 04:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698404876; x=1729940876;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=2vc4u83zhSQDbHRQB1dGUjT2PyjUrmwjzYV4iijhh68=;
  b=Zk+k8gpisFthZ+Li7uLm2ooQtghtAP0SnvbYYbMU8gGnmr4fYJBTCPL7
   qoA+HpplEJTLvYrMjs3dWg/GHWZGaDOvBqvOJ3+rKeknJ1sC/THG5JWpA
   /b82khsG0BPPUIMGwr+G+emcawQKwI7XqC6s7obYX1OsQ408qUvunIMbR
   1/2yUOKLXHgzdeQ0gyZC1NTGneoa1rWeE4p7y5+PWoV0YU8kLaJkvS+N9
   u63L2DgCQc+cDQ6EeXN++nceiDMViDFeF9jUXgz95dUfKf9+w1vDM3Vdq
   fX1M0X/0XePt1uaSXOmsab70y4y5eh/gLy+UJZAUs/JKsxvC5DJtZp/qW
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="418866883"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; 
   d="scan'208";a="418866883"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2023 04:07:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="850216676"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; 
   d="scan'208";a="850216676"
Received: from smile.fi.intel.com ([10.237.72.54])
  by FMSMGA003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Oct 2023 04:07:44 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC3)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1qwKgn-000000097se-2gQW;
	Fri, 27 Oct 2023 14:07:41 +0300
Date: Fri, 27 Oct 2023 14:07:41 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Paul Gazzillo <paul@pgazz.com>, Matt Ranostay <matt@ranostay.sg>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] iio: light: Add support for APDS9306 Light Sensor
Message-ID: <ZTuZ/Y2Go/RGOG7U@smile.fi.intel.com>
References: <20231027074545.6055-1-subhajit.ghosh@tweaklogic.com>
 <20231027074545.6055-3-subhajit.ghosh@tweaklogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231027074545.6055-3-subhajit.ghosh@tweaklogic.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Fri, Oct 27, 2023 at 06:15:45PM +1030, Subhajit Ghosh wrote:
> Driver support for Avago (Broadcom) APDS9306 Ambient Light Sensor with als
> and clear channels with i2c interface. Hardware interrupt configuration is
> optional. It is a low power device with 20 bit resolution and has
> configurable adaptive interrupt mode and interrupt persistence mode.
> The device also features inbuilt hardware gain, multiple integration time
> selection options and sampling frequency selection options.

Please, do not send so often this big patches (~1.5kLoC!), let reviewers a bit
of time, please.

Since I have my message postponed, I finish review on the v1, and I believe
100% of those comments will be applicable here.

-- 
With Best Regards,
Andy Shevchenko



