Return-Path: <devicetree+bounces-161164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0659CA72BF3
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 09:59:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 317463A9621
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 08:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90EB9204C2B;
	Thu, 27 Mar 2025 08:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="I8ZmYkVh"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0231482E7;
	Thu, 27 Mar 2025 08:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743065927; cv=none; b=M1dLLyYdjp1P+i+fwcxDZNWz4/CaAvCQjQsM05A4xFAEd8PwQXCdyAsrdY4gzuqbTeHScYlneJXZQxSKooNYHPYA/Y4jy4RI+FvqDkZmGDTOW4NcgB1DhaJ+7l8W0Gv+RFF35J3c2R7rLYLSd7tMmTReIAbuIbnsUV4yuRvVHk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743065927; c=relaxed/simple;
	bh=NvQv40PgoIwHA+FVjuhp/W1Bb3N44fzFpPdp20nqTK4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=QbStd0nxVMW0R2LZgHFWgfmEpZ6APxLXulxM9kT6e3Wm9v/GPvZGBjRhcGNSJlneWvaVc1jfxVN6kqufQz+sL/spnZm3XSi7LKd1FvXOHBIXp2IiSCJICg9ITOqp9qQHR4j8QJPUX0T2QMfwQ7f+Pzjtp949d3GwMfJOgnwm1wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=I8ZmYkVh; arc=none smtp.client-ip=198.175.65.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1743065926; x=1774601926;
  h=message-id:date:mime-version:from:subject:to:cc:
   references:in-reply-to:content-transfer-encoding;
  bh=NvQv40PgoIwHA+FVjuhp/W1Bb3N44fzFpPdp20nqTK4=;
  b=I8ZmYkVhxCXwbKghv/wp1pa7KrJogy57WgpuyOpPKvSAS0W50ugSuoTs
   qJXDZ1lC3qURAp9VNtMkgHJgfnAsuB4Z5N646yUq00cSohJSRt420eidG
   xhcRdd12ndmimRajl5/ExqyT3SvKo37i1/tkJtZolH4HSVQzIjXOdCY04
   OFOK+bfxdwNGodP/tKB7yVGcCQyiu/yyF4fUQ2CR14zAByw26lpaSpGLS
   pXZxQceDWtJVe7uuJOjdhHcsCMTd+DXVB3zeqBWfQ2wOS/zsj24m1xTbl
   Zyg9xYAp84eAPUR8D1pVfZM/9bRM1hcbKOJxFvzhuJ7e/dl7ASYQSZdUW
   A==;
X-CSE-ConnectionGUID: V4RN/eM8Rmy5cSKz7HbIfw==
X-CSE-MsgGUID: Jme++oD5S4WEKY9B09wVnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55386954"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; 
   d="scan'208";a="55386954"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2025 01:58:45 -0700
X-CSE-ConnectionGUID: 5XbVzjMHRX+E2FIsFU1wjA==
X-CSE-MsgGUID: LtTSrn9HQfi2eKRQONfSLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; 
   d="scan'208";a="129761035"
Received: from aslawinx-mobl.ger.corp.intel.com (HELO [10.94.0.53]) ([10.94.0.53])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2025 01:58:40 -0700
Message-ID: <30338b42-661e-463d-ae3f-3b8f1d4fdbdc@linux.intel.com>
Date: Thu, 27 Mar 2025 09:58:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: =?UTF-8?Q?Amadeusz_S=C5=82awi=C5=84ski?=
 <amadeuszx.slawinski@linux.intel.com>
Subject: Re: [PATCH v6 1/2] ASoC: codecs: add support for ES8389
To: Zhang Yi <zhangyi@everest-semi.com>, broonie@kernel.org, robh@kernel.org,
 tiwai@suse.com, devicetree@vger.kernel.org, conor+dt@kernel.org,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 linux-sound@vger.kernel.org, perex@perex.cz, krzk+dt@kernel.org
Cc: krzk@kernel.org
References: <20250327081450.47690-1-zhangyi@everest-semi.com>
 <20250327081450.47690-2-zhangyi@everest-semi.com>
Content-Language: en-US
In-Reply-To: <20250327081450.47690-2-zhangyi@everest-semi.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/27/2025 9:14 AM, Zhang Yi wrote:
> The driver is for codec es8389 of everest which is different from ES8388
> 
> Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> ---
>   sound/soc/codecs/Kconfig  |   7 +-
>   sound/soc/codecs/Makefile |   2 +
>   sound/soc/codecs/es8389.c | 966 ++++++++++++++++++++++++++++++++++++++
>   sound/soc/codecs/es8389.h | 140 ++++++
>   4 files changed, 1114 insertions(+), 1 deletion(-)
>   create mode 100644 sound/soc/codecs/es8389.c
>   create mode 100644 sound/soc/codecs/es8389.h
> 
> diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
> index cfc501e98cac..e3b0ac6eda4c 100644
> --- a/sound/soc/codecs/Kconfig
> +++ b/sound/soc/codecs/Kconfig
> @@ -117,6 +117,7 @@ config SND_SOC_ALL_CODECS
>   	imply SND_SOC_ES8316
>   	imply SND_SOC_ES8323
>   	imply SND_SOC_ES8326
> +	imply SND_SOC_ES8389
>   	imply SND_SOC_ES8328_SPI
>   	imply SND_SOC_ES8328_I2C
>   	imply SND_SOC_ES7134

Add it in alphabetical order?

> @@ -1187,6 +1188,10 @@ config SND_SOC_ES8326
>   	tristate "Everest Semi ES8326 CODEC"
>   	depends on I2C
>   

...

> diff --git a/sound/soc/codecs/Makefile b/sound/soc/codecs/Makefile
> index d07386246b8e..bc63c2e34ed4 100644
> --- a/sound/soc/codecs/Makefile
> +++ b/sound/soc/codecs/Makefile
> @@ -130,6 +130,7 @@ snd-soc-es8311-y := es8311.o
>   snd-soc-es8316-y := es8316.o
>   snd-soc-es8323-y := es8323.o
>   snd-soc-es8326-y := es8326.o
> +snd-soc-es8389-y := es8389.o
>   snd-soc-es8328-y := es8328.o
>   snd-soc-es8328-i2c-y := es8328-i2c.o
>   snd-soc-es8328-spi-y := es8328-spi.o

Same as above, alphabetical order?

> @@ -548,6 +549,7 @@ obj-$(CONFIG_SND_SOC_ES8311)    += snd-soc-es8311.o
>   obj-$(CONFIG_SND_SOC_ES8316)    += snd-soc-es8316.o
>   obj-$(CONFIG_SND_SOC_ES8323)	+= snd-soc-es8323.o
>   obj-$(CONFIG_SND_SOC_ES8326)    += snd-soc-es8326.o
> +obj-$(CONFIG_SND_SOC_ES8389)    += snd-soc-es8389.o
>   obj-$(CONFIG_SND_SOC_ES8328)	+= snd-soc-es8328.o
>   obj-$(CONFIG_SND_SOC_ES8328_I2C)+= snd-soc-es8328-i2c.o
>   obj-$(CONFIG_SND_SOC_ES8328_SPI)+= snd-soc-es8328-spi.o

And also here ;)

> diff --git a/sound/soc/codecs/es8389.c b/sound/soc/codecs/es8389.c
> new file mode 100644
> index 000000000000..73c1966c30be
> --- /dev/null
> +++ b/sound/soc/codecs/es8389.c
> @@ -0,0 +1,966 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * es8389.c  --  ES8389/ES8390 ALSA SoC Audio Codec

The only place that mentions ES8390? Is this correct?

...
> +
> +/* codec hifi mclk clock divider coefficients */
> +static const struct _coeff_div  coeff_div[] = {
> +	{32, 256000, 8000, 0x00, 0x57, 0x84, 0xD0, 0x03, 0xC1, 0xB0, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{36, 288000, 8000, 0x00, 0x55, 0x84, 0xD0, 0x01, 0xC1, 0x90, 0x00, 0x00, 0x23, 0x8F, 0xB7, 0xC0, 0x1F, 0x8F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{48, 384000, 8000, 0x02, 0x5F, 0x04, 0xC0, 0x03, 0xC1, 0xB0, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{64, 512000, 8000, 0x00, 0x4D, 0x24, 0xC0, 0x03, 0xD1, 0xB0, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{72, 576000, 8000, 0x00, 0x45, 0x24, 0xC0, 0x01, 0xD1, 0x90, 0x00, 0x00, 0x23, 0x8F, 0xB7, 0xC0, 0x1F, 0x8F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{96, 768000, 8000, 0x02, 0x57, 0x84, 0xD0, 0x03, 0xC1, 0xB0, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{128, 1024000, 8000, 0x00, 0x45, 0x04, 0xD0, 0x03, 0xC1, 0xB0, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{192, 1536000, 8000, 0x02, 0x4D, 0x24, 0xC0, 0x03, 0xD1, 0xB0, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{256, 2048000, 8000, 0x01, 0x45, 0x04, 0xD0, 0x03, 0xC1, 0xB0, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{288, 2304000, 8000, 0x01, 0x51, 0x00, 0xC0, 0x01, 0xC1, 0x90, 0x00, 0x00, 0x23, 0x8F, 0xB7, 0xC0, 0x1F, 0x8F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{384, 3072000, 8000, 0x02, 0x45, 0x04, 0xD0, 0x03, 0xC1, 0xB0, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{512, 4096000, 8000, 0x00, 0x41, 0x04, 0xE0, 0x00, 0xD1, 0xB0, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{768, 6144000, 8000, 0x05, 0x45, 0x04, 0xD0, 0x03, 0xC1, 0xB0, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{1024, 8192000, 8000, 0x01, 0x41, 0x06, 0xE0, 0x00, 0xD1, 0xB0, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{1536, 12288000, 8000, 0x02, 0x41, 0x04, 0xE0, 0x00, 0xD1, 0xB0, 0x40, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{1625, 13000000, 8000, 0x40, 0x6E, 0x05, 0xC8, 0x01, 0xC2, 0x90, 0x40, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0x63, 0x95, 0x00, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{2048, 16384000, 8000, 0x03, 0x44, 0x01, 0xC0, 0x00, 0xD2, 0x80, 0x40, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{2304, 18432000, 8000, 0x11, 0x45, 0x25, 0xF0, 0x00, 0xD1, 0xB0, 0x40, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{3072, 24576000, 8000, 0x05, 0x44, 0x01, 0xC0, 0x00, 0xD2, 0x80, 0x40, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{32, 512000, 16000, 0x00, 0x55, 0x84, 0xD0, 0x01, 0xC1, 0x90, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{36, 576000, 16000, 0x00, 0x55, 0x84, 0xD0, 0x01, 0xC1, 0x90, 0x00, 0x00, 0x23, 0x8F, 0xB7, 0xC0, 0x1F, 0x8F, 0x01, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{48, 768000, 16000, 0x02, 0x57, 0x04, 0xC0, 0x01, 0xC1, 0x90, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{50, 800000, 16000, 0x00, 0x7E, 0x01, 0xD9, 0x00, 0xC2, 0x80, 0x00, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0xC7, 0x95, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{64, 1024000, 16000, 0x00, 0x45, 0x24, 0xC0, 0x01, 0xD1, 0x90, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{72, 1152000, 16000, 0x00, 0x45, 0x24, 0xC0, 0x01, 0xD1, 0x90, 0x00, 0x00, 0x23, 0x8F, 0xB7, 0xC0, 0x1F, 0x8F, 0x01, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{96, 1536000, 16000, 0x02, 0x55, 0x84, 0xD0, 0x01, 0xC1, 0x90, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{128, 2048000, 16000, 0x00, 0x51, 0x04, 0xD0, 0x01, 0xC1, 0x90, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{144, 2304000, 16000, 0x00, 0x51, 0x00, 0xC0, 0x01, 0xC1, 0x90, 0x00, 0x00, 0x23, 0x8F, 0xB7, 0xC0, 0x1F, 0x8F, 0x01, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{192, 3072000, 16000, 0x02, 0x65, 0x25, 0xE0, 0x00, 0xE1, 0x90, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{256, 4096000, 16000, 0x00, 0x41, 0x04, 0xC0, 0x01, 0xD1, 0x90, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{300, 4800000, 16000, 0x02, 0x66, 0x01, 0xD9, 0x00, 0xC2, 0x80, 0x00, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0xC7, 0x95, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{384, 6144000, 16000, 0x02, 0x51, 0x04, 0xD0, 0x01, 0xC1, 0x90, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{512, 8192000, 16000, 0x01, 0x41, 0x04, 0xC0, 0x01, 0xD1, 0x90, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{750, 12000000, 16000, 0x0E, 0x7E, 0x01, 0xC9, 0x00, 0xC2, 0x80, 0x40, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0xC7, 0x95, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{768, 12288000, 16000, 0x02, 0x41, 0x04, 0xC0, 0x01, 0xD1, 0x90, 0x40, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{1024, 16384000, 16000, 0x03, 0x41, 0x04, 0xC0, 0x01, 0xD1, 0x90, 0x40, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{1152, 18432000, 16000, 0x08, 0x51, 0x04, 0xD0, 0x01, 0xC1, 0x90, 0x40, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{1200, 19200000, 16000, 0x0B, 0x66, 0x01, 0xD9, 0x00, 0xC2, 0x80, 0x40, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0xC7, 0x95, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{1500, 24000000, 16000, 0x0E, 0x26, 0x01, 0xD9, 0x00, 0xC2, 0x80, 0xC0, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0xC7, 0x95, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{1536, 24576000, 16000, 0x05, 0x41, 0x04, 0xC0, 0x01, 0xD1, 0x90, 0xC0, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0xFF, 0x7F, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{1625, 26000000, 16000, 0x40, 0x6E, 0x05, 0xC8, 0x01, 0xC2, 0x90, 0xC0, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0x63, 0x95, 0x00, 0x12, 0x00, 0x12, 0x31, 0x0E},
> +	{800, 19200000, 24000, 0x07, 0x66, 0x01, 0xD9, 0x00, 0xC2, 0x80, 0x40, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0xC7, 0x95, 0x00, 0x12, 0x00, 0x1A, 0x49, 0x14},
> +	{600, 19200000, 32000, 0x05, 0x46, 0x01, 0xD8, 0x10, 0xD2, 0x80, 0x40, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0x63, 0x95, 0x00, 0x12, 0x00, 0x23, 0x61, 0x1B},
> +	{32, 1411200, 44100, 0x00, 0x45, 0xA4, 0xD0, 0x10, 0xD1, 0x80, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{64, 2822400, 44100, 0x00, 0x51, 0x00, 0xC0, 0x10, 0xC1, 0x80, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{128, 5644800, 44100, 0x00, 0x41, 0x04, 0xD0, 0x10, 0xD1, 0x80, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{256, 11289600, 44100, 0x01, 0x41, 0x04, 0xD0, 0x10, 0xD1, 0x80, 0x40, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{512, 22579200, 44100, 0x03, 0x41, 0x04, 0xD0, 0x10, 0xD1, 0x80, 0xC0, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{32, 1536000, 48000, 0x00, 0x45, 0xA4, 0xD0, 0x10, 0xD1, 0x80, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{48, 2304000, 48000, 0x02, 0x55, 0x04, 0xC0, 0x10, 0xC1, 0x80, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{50, 2400000, 48000, 0x00, 0x76, 0x01, 0xC8, 0x10, 0xC2, 0x80, 0x00, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0x63, 0x95, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{64, 3072000, 48000, 0x00, 0x51, 0x04, 0xC0, 0x10, 0xC1, 0x80, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{100, 4800000, 48000, 0x00, 0x46, 0x01, 0xD8, 0x10, 0xD2, 0x80, 0x00, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0x63, 0x95, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{125, 6000000, 48000, 0x04, 0x6E, 0x05, 0xC8, 0x10, 0xC2, 0x80, 0x00, 0x01, 0x18, 0x95, 0xD0, 0xC0, 0x63, 0x95, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{128, 6144000, 48000, 0x00, 0x41, 0x04, 0xD0, 0x10, 0xD1, 0x80, 0x00, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{200, 9600000, 48000, 0x01, 0x46, 0x01, 0xD8, 0x10, 0xD2, 0x80, 0x00, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0x63, 0x95, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{250, 12000000, 48000, 0x04, 0x76, 0x01, 0xC8, 0x10, 0xC2, 0x80, 0x40, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0x63, 0x95, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{256, 12288000, 48000, 0x01, 0x41, 0x04, 0xD0, 0x10, 0xD1, 0x80, 0x40, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{384, 18432000, 48000, 0x02, 0x41, 0x04, 0xD0, 0x10, 0xD1, 0x80, 0x40, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{400, 19200000, 48000, 0x03, 0x46, 0x01, 0xD8, 0x10, 0xD2, 0x80, 0x40, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0x63, 0x95, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{500, 24000000, 48000, 0x04, 0x46, 0x01, 0xD8, 0x10, 0xD2, 0x80, 0xC0, 0x00, 0x18, 0x95, 0xD0, 0xC0, 0x63, 0x95, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{512, 24576000, 48000, 0x03, 0x41, 0x04, 0xD0, 0x10, 0xD1, 0x80, 0xC0, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{800, 38400000, 48000, 0x18, 0x45, 0x04, 0xC0, 0x10, 0xC1, 0x80, 0xC0, 0x00, 0x1F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x00, 0x12, 0x00, 0x35, 0x91, 0x28},
> +	{128, 11289600, 88200, 0x00, 0x50, 0x00, 0xC0, 0x10, 0xC1, 0x80, 0x40, 0x00, 0x9F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x80, 0x12, 0xC0, 0x32, 0x89, 0x25},
> +	{64, 6144000, 96000, 0x00, 0x41, 0x00, 0xD0, 0x10, 0xD1, 0x80, 0x00, 0x00, 0x9F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x80, 0x12, 0xC0, 0x35, 0x91, 0x28},
> +	{128, 12288000, 96000, 0x00, 0x50, 0x00, 0xC0, 0x10, 0xC1, 0x80, 0xC0, 0x00, 0x9F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x80, 0x12, 0xC0, 0x35, 0x91, 0x28},
> +	{256, 24576000, 96000, 0x00, 0x40, 0x00, 0xC0, 0x10, 0xC1, 0x80, 0xC0, 0x00, 0x9F, 0x7F, 0xBF, 0xC0, 0x7F, 0x7F, 0x80, 0x12, 0xC0, 0x35, 0x91, 0x28},
> +	{128, 24576000, 192000, 0x00, 0x50, 0x00, 0xC0, 0x18, 0xC1, 0x81, 0xC0, 0x00, 0x8F, 0x7F, 0xEF, 0xC0, 0x3F, 0x7F, 0x80, 0x12, 0xC0, 0x3F, 0xF9, 0x3F},
> +
> +	{50, 400000, 8000, 0x00, 0x75, 0x05, 0xC8, 0x01, 0xC1, 0x90, 0x10, 0x00, 0x18, 0xC7, 0xD0, 0xC0, 0x8F, 0xC7, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{600, 4800000, 8000, 0x05, 0x65, 0x25, 0xF9, 0x00, 0xD1, 0x90, 0x10, 0x00, 0x18, 0xC7, 0xD0, 0xC0, 0x8F, 0xC7, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{1500, 12000000, 8000, 0x0E, 0x25, 0x25, 0xE8, 0x00, 0xD1, 0x90, 0x40, 0x00, 0x31, 0xC7, 0xC5, 0x00, 0x8F, 0xC7, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{2400, 19200000, 8000, 0x0B, 0x01, 0x00, 0xD0, 0x00, 0xD1, 0x80, 0x90, 0x00, 0x31, 0xC7, 0xC5, 0x00, 0xC7, 0xC7, 0x00, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{3000, 24000000, 8000, 0x0E, 0x24, 0x05, 0xD0, 0x00, 0xC2, 0x80, 0xC0, 0x00, 0x31, 0xC7, 0xC5, 0x00, 0x8F, 0xC7, 0x01, 0x12, 0x00, 0x09, 0x19, 0x07},
> +	{3250, 26000000, 8000, 0x40, 0x05, 0xA4, 0xC0, 0x00, 0xD1, 0x80, 0xD0, 0x00, 0x31, 0xC7, 0xC5, 0x00, 0xC7, 0xC7, 0x00, 0x12, 0x00, 0x09, 0x19, 0x07},
> +
> +};

Missing new line between array above and below function? I think 
checkpatch warns about this?

> +static inline int get_coeff(int mclk, int rate)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(coeff_div); i++) {
> +		if (coeff_div[i].rate == rate &&  coeff_div[i].mclk == mclk)
> +			return i;
> +	}
> +	return -EINVAL;
> +}
> +

...

> +
> +static int es8389_probe(struct snd_soc_component *codec)
> +{
> +	int ret = 0;
> +	struct es8389_private *es8389 = snd_soc_component_get_drvdata(codec);

Use "reverse christmas tree" notation for declaring variables? Also ret 
gets overwritten below, so it is useless to set it.

> +
> +	ret = device_property_read_u8(codec->dev, "everest,mclk-src", &es8389->mclk_src);
> +	if (ret != 0) {
> +		dev_dbg(codec->dev, "mclk-src return %d", ret);
> +		es8389->mclk_src = ES8389_MCLK_SOURCE;
> +	}
> +
> +	es8389->mclk = devm_clk_get(codec->dev, "mclk");
> +	if (IS_ERR(es8389->mclk))
> +		return dev_err_probe(codec->dev, PTR_ERR(es8389->mclk),
> +			"ES8389 is unable to get mclk\n");
> +
> +	if (!es8389->mclk)
> +		dev_err(codec->dev, "%s, assuming static mclk\n", __func__);
> +
> +	ret = clk_prepare_enable(es8389->mclk);
> +	if (ret) {
> +		dev_err(codec->dev, "%s, unable to enable mclk\n", __func__);
> +		return ret;
> +	}
> +
> +	es8389_init(codec);
> +	es8389_set_bias_level(codec, SND_SOC_BIAS_STANDBY);
> +
> +	return 0;
> +}
> +
> +static void es8389_remove(struct snd_soc_component *codec)
> +{
> +	struct es8389_private *es8389 = snd_soc_component_get_drvdata(codec);
> +
> +	regmap_write(es8389->regmap, ES8389_MASTER_MODE, 0x28);
> +	regmap_write(es8389->regmap, ES8389_HPSW, 0x00);
> +	regmap_write(es8389->regmap, ES8389_VMID, 0x00);
> +	regmap_write(es8389->regmap, ES8389_RESET, 0x00);
> +	regmap_write(es8389->regmap, ES8389_CSM_JUMP, 0xCC);
> +	usleep_range(500000, 550000);//500MS
> +	regmap_write(es8389->regmap, ES8389_CSM_JUMP, 0x00);
> +	regmap_write(es8389->regmap, ES8389_ANA_CTL1, 0x08);
> +	regmap_write(es8389->regmap, ES8389_ISO_CTL, 0xC1);
> +	regmap_write(es8389->regmap, ES8389_PULL_DOWN, 0x00);
> +
> +}
> +
> +static const struct snd_soc_component_driver soc_codec_dev_es8389 = {
> +	.probe = es8389_probe,
> +	.remove = es8389_remove,
> +	.suspend = es8389_suspend,
> +	.resume = es8389_resume,
> +	.set_bias_level = es8389_set_bias_level,
> +
> +	.controls = es8389_snd_controls,
> +	.num_controls = ARRAY_SIZE(es8389_snd_controls),
> +	.dapm_widgets = es8389_dapm_widgets,
> +	.num_dapm_widgets = ARRAY_SIZE(es8389_dapm_widgets),
> +	.dapm_routes = es8389_dapm_routes,
> +	.num_dapm_routes = ARRAY_SIZE(es8389_dapm_routes),
> +	.idle_bias_on = 1,
> +	.use_pmdown_time = 1,
> +};
> +
> +static const struct regmap_config es8389_regmap = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +
> +	.max_register = ES8389_MAX_REGISTER,
> +
> +	.volatile_reg = es8389_volatile_register,
> +	.cache_type = REGCACHE_MAPLE,
> +};
> +
> +static void es8389_i2c_shutdown(struct i2c_client *i2c)
> +{
> +	struct snd_soc_component *component;
> +	struct es8389_private *es8389;
> +
> +	es8389 = i2c_get_clientdata(i2c);
> +	component = es8389->component;

Unused variable? And while you are removing it, you can also remove it 
from 'struct es8389_private', as this place seems to be the only user.

> +
> +	regmap_write(es8389->regmap, ES8389_MASTER_MODE, 0x28);
> +	regmap_write(es8389->regmap, ES8389_HPSW, 0x00);
> +	regmap_write(es8389->regmap, ES8389_VMID, 0x00);
> +	regmap_write(es8389->regmap, ES8389_RESET, 0x00);
> +	regmap_write(es8389->regmap, ES8389_CSM_JUMP, 0xCC);
> +	usleep_range(500000, 550000);//500MS
> +	regmap_write(es8389->regmap, ES8389_CSM_JUMP, 0x00);
> +	regmap_write(es8389->regmap, ES8389_ANA_CTL1, 0x08);
> +	regmap_write(es8389->regmap, ES8389_ISO_CTL, 0xC1);
> +	regmap_write(es8389->regmap, ES8389_PULL_DOWN, 0x00);
> +}
> +
> +static int es8389_i2c_probe(struct i2c_client *i2c_client)
> +{
> +	struct es8389_private *es8389;
> +	int ret = -1;

No need to set ret as it will be overwritten anyway, and '-1' is not 
considered a proper value. Use some error code if you must.

> +
> +	es8389 = devm_kzalloc(&i2c_client->dev, sizeof(*es8389), GFP_KERNEL);
> +	if (es8389 == NULL)
> +		return -ENOMEM;
> +
> +	i2c_set_clientdata(i2c_client, es8389);
> +	es8389->regmap = devm_regmap_init_i2c(i2c_client, &es8389_regmap);
> +	if (IS_ERR(es8389->regmap))
> +		return dev_err_probe(&i2c_client->dev, PTR_ERR(es8389->regmap),
> +			"regmap_init() failed\n");
> +
> +	ret =  devm_snd_soc_register_component(&i2c_client->dev,
> +			&soc_codec_dev_es8389,
> +			&es8389_dai,
> +			1);
> +
> +	return ret;
> +}
> +


