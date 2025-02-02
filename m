Return-Path: <devicetree+bounces-142301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB79A24DFA
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 13:31:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56A62162F13
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 12:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FA771D79A0;
	Sun,  2 Feb 2025 12:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NyNVDl1y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17CC1D5CCC
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 12:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738499463; cv=none; b=Pfv1AAu74N+XYxdnrkkk0wUhYbLQ/MVYP/h+dNI/RK0MWuZcaAQZ4P7eFGYq0+fyKP2mAsLrSKMjTk2tnzxQXFEGych9WuXXbispbBUSwHzOe+MbNoUpmBP9lExtOBY6pJYZQlY3Y61vJpN8dapU2sMCBpGPCOusud2aUqPB6tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738499463; c=relaxed/simple;
	bh=8XkcDIU79KYn3BQikPV7cgBJWei8V9IOQLVVrLhURck=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=MwmOAmBDEGBSoZxkxqjDf45l5I9GCAJaxCEsh1G63nSaJGyP947oQ4Xax0e5LU4RaCmhkxTxW8NISywfjVSk2cA9vqkF4fdJbf3sBCMDeCC0kqakI2m8l4dr5hVFx9ASUmim7+ifKd6DvKbgOP61MJbdRUM6dKS0rfLlr+xYjco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NyNVDl1y; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3862ca8e0bbso2948823f8f.0
        for <devicetree@vger.kernel.org>; Sun, 02 Feb 2025 04:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738499459; x=1739104259; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q+p0ohduqaZ7edLUoQ+HYNori1GSc42S4tYMlilYNvY=;
        b=NyNVDl1yrdC+uHkOVWjqkNDP/VY/TSHsRAYBVS/tY/VB9g/UklJRQmRED5fHHW4+rt
         CkqOt3Eip4VMYEx1sWOgKfnCquoRgNW0lu8l8Of6hDaS5ZxKB7Z32c/6bzE62USEBmUN
         Qjd896Opp7mUf9XSN5e84w/5FJjAFJiY//othHygggjGTm686UHEpwzh3bDcx2bwKZ+1
         IUvz/jMqBqHmWR2QRJv7LzWyPp1PZvLDDnLcI6/wLbY2kUPKKnI9U4ILTvDH7x1L9P/G
         KAQIsrHwcafuXOLJXWB/Gidu8Hph7DZXLQwdREj7x4XBuNLIteyAc9WFP4CGVsSa/20r
         IRZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738499459; x=1739104259;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q+p0ohduqaZ7edLUoQ+HYNori1GSc42S4tYMlilYNvY=;
        b=nf39IjC6Qo0WhSEfsuDnu7rYkeYNpW2xd5kYQLOk6hqh9yPStA/ctaZouxGEN3oDDm
         S73If9BGWItJHaLukZzlcJG1dusHDr2XrC/UamW5xClUjOuEE4qqycO/4/HakJk6KCV8
         yBs+RvqtEDvFJO8DZeNTj5wuPHa+nUmUPiTDpn2Dl+oU7d+MdDXgTx1LQR/yg7NWoJC6
         7iJRGxrg/iO0r5ZkgaHksOQq3z1pobxT1Pi/K3DihtfPKpFF6wyU/iVkk1ZoXJ4FOPOL
         IWn2V8/2KOaeaC8gcIQ8Snv9r/93sBbVWia1WxtzhMowCOdm/+2MdeP1R5xs7YMrO45n
         7c/g==
X-Forwarded-Encrypted: i=1; AJvYcCVvdbV590LKmh/6kw0Fr3UAYYTeX0tnOhKyPDsIciWoEAQasf4UC90Bvy0V22r5DedbSO6QInfqb60g@vger.kernel.org
X-Gm-Message-State: AOJu0YxAKr+h9LLp7O2jH7Uals+TMyJ1N5HxwElqet8zKdg9rMpHNf1I
	0YYw/I+H931xZoH9wygSw622fQqaX6jUM7LWpTOK8r/5hIaZ1dc6fTGG9i0CUHY=
X-Gm-Gg: ASbGncvCDLfRYr6bewL3IQiHf0MeCz0XVbabzoT/ZZ49iOQbaA81A4d6DfNY3MrGrhC
	niSOTQfpP6sGp2gee5cERmOYtrxhfXYjSVj1hd5dKqggHlQOfqWlbbdRyijNGlT1QAGu6iqyHAT
	DTsokUaMJOC1aisErNfI67vT5nsQo8ay1Xwg5p+Sf1YVWtOgpviXTdIH2pNlPLAISNmgVr9NmB2
	Q2UA1Y+l+F+Q2nRsU93wa4p3gija4SufyZ6QqAGT0uFwk8lZ92sXhNmFXVAISziC95CEDM2hOJ3
	IA0/8taTYWB9xf8i7J4P
X-Google-Smtp-Source: AGHT+IG3DguqEpjs4KAq3Q5U108MHFsGzy1qjHj3g8CQKeY2xRe7mNrhaVjuu1vZih3UFfYOgwaFPQ==
X-Received: by 2002:a05:6000:18ae:b0:38a:9fdb:7307 with SMTP id ffacd0b85a97d-38c51f8b280mr19894271f8f.43.1738499459090;
        Sun, 02 Feb 2025 04:30:59 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-38c5c11b363sm9753396f8f.40.2025.02.02.04.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 04:30:57 -0800 (PST)
Date: Sun, 2 Feb 2025 15:30:54 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Esteban Blanc <eblanc@baylibre.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, Esteban Blanc <eblanc@baylibre.com>
Subject: Re: [PATCH v3 2/6] iio: adc: ad4030: add driver for ad4030-24
Message-ID: <4e0118d0-0992-4d71-8dfb-8b75c0f51a17@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250130-eblanc-ad4630_v1-v3-2-052e8c2d897d@baylibre.com>

Hi Esteban,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Esteban-Blanc/dt-bindings-iio-adc-add-ADI-ad4030-ad4630-and-ad4632/20250130-191153
base:   ffd294d346d185b70e28b1a28abe367bbfe53c04
patch link:    https://lore.kernel.org/r/20250130-eblanc-ad4630_v1-v3-2-052e8c2d897d%40baylibre.com
patch subject: [PATCH v3 2/6] iio: adc: ad4030: add driver for ad4030-24
config: um-randconfig-r071-20250202 (https://download.01.org/0day-ci/archive/20250202/202502021354.T5JOCCcy-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202502021354.T5JOCCcy-lkp@intel.com/

smatch warnings:
drivers/iio/adc/ad4030.c:263 ad4030_spi_read() warn: calling memset(x, y, ARRAY_SIZE());

vim +263 drivers/iio/adc/ad4030.c

8cfce061c9e580 Esteban Blanc 2025-01-30  242  static int ad4030_spi_read(void *context, const void *reg, size_t reg_size,
8cfce061c9e580 Esteban Blanc 2025-01-30  243  			   void *val, size_t val_size)
8cfce061c9e580 Esteban Blanc 2025-01-30  244  {
8cfce061c9e580 Esteban Blanc 2025-01-30  245  	int ret;
8cfce061c9e580 Esteban Blanc 2025-01-30  246  	struct ad4030_state *st = context;
8cfce061c9e580 Esteban Blanc 2025-01-30  247  	struct spi_transfer xfer = {
8cfce061c9e580 Esteban Blanc 2025-01-30  248  		.tx_buf = st->tx_data,
8cfce061c9e580 Esteban Blanc 2025-01-30  249  		.rx_buf = st->rx_data.raw,
8cfce061c9e580 Esteban Blanc 2025-01-30  250  		.bits_per_word = 8,
8cfce061c9e580 Esteban Blanc 2025-01-30  251  		.len = reg_size + val_size,
8cfce061c9e580 Esteban Blanc 2025-01-30  252  		.speed_hz = AD4030_SPI_MAX_REG_XFER_SPEED,
8cfce061c9e580 Esteban Blanc 2025-01-30  253  	};
8cfce061c9e580 Esteban Blanc 2025-01-30  254  
8cfce061c9e580 Esteban Blanc 2025-01-30  255  	if (xfer.len > ARRAY_SIZE(st->tx_data) ||

These ARRAY_SIZE() checks work fine before ->tx_data is a u8 but really
is should be sizeof().

8cfce061c9e580 Esteban Blanc 2025-01-30  256  	    xfer.len > ARRAY_SIZE(st->rx_data.raw))

Same.

8cfce061c9e580 Esteban Blanc 2025-01-30  257  		return  -EINVAL;
8cfce061c9e580 Esteban Blanc 2025-01-30  258  
8cfce061c9e580 Esteban Blanc 2025-01-30  259  	ret = ad4030_enter_config_mode(st);
8cfce061c9e580 Esteban Blanc 2025-01-30  260  	if (ret)
8cfce061c9e580 Esteban Blanc 2025-01-30  261  		return ret;
8cfce061c9e580 Esteban Blanc 2025-01-30  262  
8cfce061c9e580 Esteban Blanc 2025-01-30 @263  	memset(st->tx_data, 0, ARRAY_SIZE(st->tx_data));
                                                                       ^^^^^^^^^^^^^^^^^^^^^^^
same.

8cfce061c9e580 Esteban Blanc 2025-01-30  264  	memcpy(st->tx_data, reg, reg_size);
8cfce061c9e580 Esteban Blanc 2025-01-30  265  
8cfce061c9e580 Esteban Blanc 2025-01-30  266  	ret = spi_sync_transfer(st->spi, &xfer, 1);
8cfce061c9e580 Esteban Blanc 2025-01-30  267  	if (ret)
8cfce061c9e580 Esteban Blanc 2025-01-30  268  		return ret;
8cfce061c9e580 Esteban Blanc 2025-01-30  269  
8cfce061c9e580 Esteban Blanc 2025-01-30  270  	memcpy(val, &st->rx_data.raw[reg_size], val_size);
8cfce061c9e580 Esteban Blanc 2025-01-30  271  
8cfce061c9e580 Esteban Blanc 2025-01-30  272  	return ad4030_exit_config_mode(st);
8cfce061c9e580 Esteban Blanc 2025-01-30  273  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


