Return-Path: <devicetree+bounces-1985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 549B47A95D6
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:56:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB1A91C2090F
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:56:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D004199CA;
	Thu, 21 Sep 2023 16:56:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0914210B
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 16:56:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26DCBCC;
	Thu, 21 Sep 2023 09:56:19 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="360722530"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; 
   d="scan'208";a="360722530"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2023 03:00:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="994018928"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; 
   d="scan'208";a="994018928"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2023 03:00:22 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC0)
	(envelope-from <andy@kernel.org>)
	id 1qjGTr-0000000GrBd-111u;
	Thu, 21 Sep 2023 13:00:19 +0300
Date: Thu, 21 Sep 2023 13:00:18 +0300
From: Andy Shevchenko <andy@kernel.org>
To: Huqiang Qin <huqiang.qin@amlogic.com>
Cc: linus.walleij@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	neil.armstrong@linaro.org, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	brgl@bgdev.pl, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 2/3] pinctrl: Add driver support for Amlogic T7 SoCs
Message-ID: <ZQwUMqPG2Z+Y/FTF@smile.fi.intel.com>
References: <20230921083407.1167510-2-huqiang.qin@amlogic.com>
 <20230921083407.1167510-4-huqiang.qin@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921083407.1167510-4-huqiang.qin@amlogic.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Status: No, score=-1.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_SOFTFAIL autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 21, 2023 at 04:34:07PM +0800, Huqiang Qin wrote:
> Add a new pinctrl driver for Amlogic T7 SoCs which share
> the same register layout as the previous Amlogic S4.

...

> +static const char * const uart_ao_a_groups[] = {
> +	"uart_ao_a_rx_c", "uart_ao_a_tx_c", "uart_ao_a_tx_w2",
> +	"uart_ao_a_rx_w3", "uart_ao_a_tx_w6", "uart_ao_a_rx_w7",
> +	"uart_ao_a_tx_w10", "uart_ao_a_rx_w11", "uart_ao_a_tx_d0",
> +	"uart_ao_a_rx_d1",

> +

Redundant blank line.

> +};

With that fixed,
Reviewed-by: Andy Shevchenko <andy@kernel.org>

-- 
With Best Regards,
Andy Shevchenko



