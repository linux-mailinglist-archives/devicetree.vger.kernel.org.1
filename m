Return-Path: <devicetree+bounces-3849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E72F47B0413
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:28:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 34D8FB20B42
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E8DD28DA9;
	Wed, 27 Sep 2023 12:28:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD96C241FC
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 12:28:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF5A0CCA;
	Wed, 27 Sep 2023 05:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1695817680; x=1727353680;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=W3h2wW/brscHyngLBq3Ts+PQWQBvYW/Hdi4JL7jg9iI=;
  b=a03mMW0EXnizVPctyTDsh442ehhFvsyPh/gZmgn1t6v75X/6NqSqBjJf
   ZOlRc4veNJ6OsXqspBi47mdDqZ0z8iLSDPTR6VhV1xfcCYJ+j2gC68i4h
   x8OVd/MHJ+WNyHSWP3Yb1iIkITlU5t7L/pJyuIXlmoLdDOrRGjWiz8b8D
   XUsjZn6SVpJ+sK7PNnZmOqpSxlqqhGkLVt8q0lXUW4znFV//FeOWbD3Lq
   yI1/EWaWBrjwRgivn7v3dgx2om+CarVvR/cVYxPrEPlRzCyfR4uVg7Sgb
   0n/JIGoqed+z0d4o5U5XWTMKuL5pWwfCZlZNHC81OJ9oKEznQliLO4vZI
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="379089223"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; 
   d="scan'208";a="379089223"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2023 05:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="742693950"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; 
   d="scan'208";a="742693950"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2023 05:27:56 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC0)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1qlTdw-00000000sl9-3Dmm;
	Wed, 27 Sep 2023 15:27:52 +0300
Date: Wed, 27 Sep 2023 15:27:52 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Angel Iglesias <ang.iglesiasg@gmail.com>,
	Andreas Klinger <ak@it-klinger.de>,
	Benjamin Bara <bbara93@gmail.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/5] tools: iio: iio_generic_buffer ensure alignment
Message-ID: <ZRQfyNX9WsvmpZ1r@smile.fi.intel.com>
References: <cover.1695727471.git.mazziesaccount@gmail.com>
 <e986b4562ca663e19ea30b81d15221c15bd87227.1695727471.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e986b4562ca663e19ea30b81d15221c15bd87227.1695727471.git.mazziesaccount@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 27, 2023 at 11:26:07AM +0300, Matti Vaittinen wrote:
> The iio_generic_buffer can return garbage values when the total size of
> scan data is not a multiple of the largest element in the scan. This can be
> demonstrated by reading a scan, consisting, for example of one 4-byte and
> one 2-byte element, where the 4-byte element is first in the buffer.
> 
> The IIO generic buffer code does not take into account the last two
> padding bytes that are needed to ensure that the 4-byte data for next
> scan is correctly aligned.
> 
> Add the padding bytes required to align the next sample with the scan size.

...

> +	/*
> +	 * We wan't the data in next sample to also be properly aligned so

Pardon me, won't or want, I didn't get?..

> +	 * we'll add padding at the end if needed.
> +	 *
> +	 * Please note, this code does ensure alignment to maximum channel
> +	 * size. It works only as long as the channel sizes are 1, 2, 4 or 8
> +	 * bytes. Also, on 32 bit platforms it might be enough to align also

32-bit

> +	 * the 8 byte elements to 4 byte boundary - which this code is not

8-byte
4-byte

> +	 * doing.
> +	 */

-- 
With Best Regards,
Andy Shevchenko



