Return-Path: <devicetree+bounces-213980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E3CB47AF3
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 13:26:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D30A189E391
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D469A261B80;
	Sun,  7 Sep 2025 11:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KG+QAHPb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF943261591
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 11:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757244392; cv=none; b=RlPKjOdeZsJpc/BwYl4kAKFU+01Y8cY4zoWwglrNEC4Ov63EPmOYGT7EO5w7YQW0/rXn3953qXMJ51t1rqhc8RKS41NvAxA/g/rGmQuymtuM/+SPzAN0iI3RvelcJOsmxQSWpRErF4V0JjC1I+ZnLBXQXAh7Ex+twZ4E55x6CPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757244392; c=relaxed/simple;
	bh=WplKFwssKc1f+3uh2xBYy47HhTBAUrgd7sJvb8Dd+AA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=e/bXePTHpIpGTOvN3B8fuYWCquzp2fOzQX9A057GrhbCa8+R3qrHfINVBGSMAvT4eBT7shwH3DuzUmg2LkvXNb0pAxuYKxGJbiId3LkfB4nNAWwK/XSeMz4laY6lwVsYyR5lEN/iKCy5hnatmC4P1hbbxHD4P9Yh7bxJxGDGIA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KG+QAHPb; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3df2f4aedc7so1950716f8f.2
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 04:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757244388; x=1757849188; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aAYNdsBKYi67Oem/jYjGQylTcJt/iir5KzfK7uZa2Os=;
        b=KG+QAHPbjocr7Tu9LZy9t5tBr+la3VuGLttUqPQKQWvHtDH+MEUhEjZT8i1c6re2ID
         9CNnFw1Vp2aW3Q6XobfdrqmUXvSIgNTRdWc8Wm83cstvqJxSDNIFXgqAIyYXNAPi0nbN
         yhXU2OrL8J2DC475cTCBFa5AjzFy/Holk7+icwE4RQf7zvCHQiAuml9a+oEkZvJ1atf4
         c97kktVHzfA9RzcO5VeUr4KM2rcmXlFiT7Mzq+22Jk+gyWD1wMrmsn4vxDs1AXj/TmW6
         PAJJ7ocP9JatkwQsZJajO3tMtY2wQQHEkdPhwpIVihVz6Epb9NvNK4LXbkEdnWqT+23n
         wV1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757244388; x=1757849188;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aAYNdsBKYi67Oem/jYjGQylTcJt/iir5KzfK7uZa2Os=;
        b=VTYylUhZQcurVMtW/lpmkksW1wGwBmDha6nIfyRrpRGrgliVRqb6gw/2mpFmg46Mba
         eNFA3j1AAdOI3mPc89Mhya9yWd+0dx8dvrIPPKxjdbVUi7UNCAuYSWtfOiwcq09918ty
         3tm5emorhSy9YrUA+qEvmTQSnMmdn/Ewdl02DMorq9W4Y6OoazcvcmOcXRMq0Wo99OgR
         w4xTWryGBIzvPC5eP1Zh0boSI2Kk5m7QiOX3jhpraHLtE417mOphy9aa2t3j3fWf9kYw
         OIheVV6rFhKxgOoXmiBTri51Ton8n+UtZW7jpyao6tLZxBUz3CzEyk1Drh/l7UiXpzXM
         Rf3w==
X-Forwarded-Encrypted: i=1; AJvYcCVD3onzEc9MfZAOdp4wMPsViUrK8U/aFdbHSCNFxjxsyilI3MNy5SA59i9S40HQNCK36JNDIIxZWa35@vger.kernel.org
X-Gm-Message-State: AOJu0YzU+Smm5xn0Jj8SD5gzDT6pLY7eh9GmX9wzI1N+RkETXEqkr/rZ
	DObx2bbQSsLYr4GQchUtR9lUKuCOfxOWkEpjl7GM08SHG4jgCFWBVWFWDJ9Y/YFoqGQ=
X-Gm-Gg: ASbGncu9A/2FWbAz2GcIJgBwlnUHv88ASS//oYCYR+gZpUTBxZbUiyw752pEH4jb/AR
	+2GDv8t/0QJf0gFPQHt6Ut7Y1Ggofa0dOmW0OzpTv2yMhiZ9QbLo+AIign7GKX0BcD+obGC1uVS
	dFYuhZIG66TjRHs7isyT3QBMRuAu+3jJYk+mYNOpVK9o3A5BjjQ9UbGBBMniRnbnFAoe8tkrR68
	Ga68WDgep4wBndRAd3QKGxGwld6m+lS1lbtZEahpL5syfRj4GTRFsdVy7WIngplfRgIRXZThdbS
	oE7goaOKbI4bzdcRI2hFG62gLa44CIw6D4jFLddWvi6v7jOK+Hh/lvwDVbunVbLSH9ID4SLeyr/
	NXNjBkM2PKBUsmqbZe6EQqFK16xlKdJTbVjx1jA==
X-Google-Smtp-Source: AGHT+IGH6H0mBFkDQVDcAbYMsb+ulzbOrfFiUgLrXxCyJBe2kwF4x8+y+psKdMwtQ84ERtsBks0g8g==
X-Received: by 2002:a5d:5847:0:b0:3e5:190b:b04e with SMTP id ffacd0b85a97d-3e64317fdd0mr2511246f8f.37.1757244388066;
        Sun, 07 Sep 2025 04:26:28 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3e74893acecsm319047f8f.36.2025.09.07.04.26.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 04:26:27 -0700 (PDT)
Date: Sun, 7 Sep 2025 14:26:24 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Andreas Kemnade <akemnade@kernel.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alistair Francis <alistair@alistair23.me>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	Andreas Kemnade <akemnade@kernel.org>
Subject: Re: [PATCH 3/4] regulator: sy7636a: add gpios and input regulator
Message-ID: <202509071141.TSai6ltk-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250906-sy7636-rsrc-v1-3-e2886a9763a7@kernel.org>

Hi Andreas,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Andreas-Kemnade/dt-bindings-mfd-sy7636a-Add-missing-gpio-pins-and-supply/20250906-171133
base:   1b237f190eb3d36f52dffe07a40b5eb210280e00
patch link:    https://lore.kernel.org/r/20250906-sy7636-rsrc-v1-3-e2886a9763a7%40kernel.org
patch subject: [PATCH 3/4] regulator: sy7636a: add gpios and input regulator
config: x86_64-randconfig-161-20250907 (https://download.01.org/0day-ci/archive/20250907/202509071141.TSai6ltk-lkp@intel.com/config)
compiler: gcc-13 (Debian 13.3.0-16) 13.3.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202509071141.TSai6ltk-lkp@intel.com/

smatch warnings:
drivers/regulator/sy7636a-regulator.c:121 sy7636a_regulator_probe() warn: passing zero to 'PTR_ERR'

vim +/PTR_ERR +121 drivers/regulator/sy7636a-regulator.c

8c485bedfb7852 Alistair Francis 2021-06-15   77  static int sy7636a_regulator_probe(struct platform_device *pdev)
8c485bedfb7852 Alistair Francis 2021-06-15   78  {
cb17820ef71ed7 Alistair Francis 2021-10-15   79  	struct regmap *regmap = dev_get_regmap(pdev->dev.parent, NULL);
8c485bedfb7852 Alistair Francis 2021-06-15   80  	struct regulator_config config = { };
8c485bedfb7852 Alistair Francis 2021-06-15   81  	struct regulator_dev *rdev;
8c485bedfb7852 Alistair Francis 2021-06-15   82  	struct gpio_desc *gdp;
d38d49b140043b Alistair Francis 2021-08-03   83  	struct sy7636a_data *data;
8c485bedfb7852 Alistair Francis 2021-06-15   84  	int ret;
8c485bedfb7852 Alistair Francis 2021-06-15   85  
27fdd3bbb7a138 Alistair Francis 2021-08-06   86  	if (!regmap)
8c485bedfb7852 Alistair Francis 2021-06-15   87  		return -EPROBE_DEFER;
8c485bedfb7852 Alistair Francis 2021-06-15   88  
07678e530d8eab Andreas Kemnade  2025-09-06   89  	device_set_of_node_from_dev(&pdev->dev, pdev->dev.parent);
07678e530d8eab Andreas Kemnade  2025-09-06   90  
07678e530d8eab Andreas Kemnade  2025-09-06   91  	gdp = devm_gpiod_get(&pdev->dev, "epd-pwr-good", GPIOD_IN);
8c485bedfb7852 Alistair Francis 2021-06-15   92  	if (IS_ERR(gdp)) {
07678e530d8eab Andreas Kemnade  2025-09-06   93  		dev_err(&pdev->dev, "Power good GPIO fault %ld\n", PTR_ERR(gdp));
8c485bedfb7852 Alistair Francis 2021-06-15   94  		return PTR_ERR(gdp);
8c485bedfb7852 Alistair Francis 2021-06-15   95  	}
8c485bedfb7852 Alistair Francis 2021-06-15   96  
d38d49b140043b Alistair Francis 2021-08-03   97  	data = devm_kzalloc(&pdev->dev, sizeof(struct sy7636a_data), GFP_KERNEL);
d38d49b140043b Alistair Francis 2021-08-03   98  	if (!data)
d38d49b140043b Alistair Francis 2021-08-03   99  		return -ENOMEM;
d38d49b140043b Alistair Francis 2021-08-03  100  
27fdd3bbb7a138 Alistair Francis 2021-08-06  101  	data->regmap = regmap;
d38d49b140043b Alistair Francis 2021-08-03  102  	data->pgood_gpio = gdp;
d38d49b140043b Alistair Francis 2021-08-03  103  
327603c2e83590 Andreas Kemnade  2025-09-06  104  	ret = devm_regulator_get_enable_optional(&pdev->dev, "vin");
327603c2e83590 Andreas Kemnade  2025-09-06  105  	if (ret)
327603c2e83590 Andreas Kemnade  2025-09-06  106  		return dev_err_probe(&pdev->dev, ret,
327603c2e83590 Andreas Kemnade  2025-09-06  107  				     "failed to get vin regulator\n");
327603c2e83590 Andreas Kemnade  2025-09-06  108  
327603c2e83590 Andreas Kemnade  2025-09-06  109  	data->en_gpio = devm_gpiod_get_optional(&pdev->dev, "en",
327603c2e83590 Andreas Kemnade  2025-09-06  110  						GPIOD_OUT_HIGH);
327603c2e83590 Andreas Kemnade  2025-09-06  111  	if (IS_ERR(data->en_gpio))
327603c2e83590 Andreas Kemnade  2025-09-06  112  		return dev_err_probe(&pdev->dev,
327603c2e83590 Andreas Kemnade  2025-09-06  113  				     PTR_ERR(data->en_gpio),
327603c2e83590 Andreas Kemnade  2025-09-06  114  				     "failed to get en gpio\n");
327603c2e83590 Andreas Kemnade  2025-09-06  115  
327603c2e83590 Andreas Kemnade  2025-09-06  116  	/* Let VCOM just follow the default power on sequence */
327603c2e83590 Andreas Kemnade  2025-09-06  117  	data->vcom_en_gpio = devm_gpiod_get_optional(&pdev->dev,
327603c2e83590 Andreas Kemnade  2025-09-06  118  						     "vcom-en", GPIOD_OUT_LOW);
327603c2e83590 Andreas Kemnade  2025-09-06  119  	if (IS_ERR(data->vcom_en_gpio))
327603c2e83590 Andreas Kemnade  2025-09-06  120  		return dev_err_probe(&pdev->dev,
327603c2e83590 Andreas Kemnade  2025-09-06 @121  				     PTR_ERR(data->en_gpio),
                                                                                             ^^^^^^^^^^^^^
s/data->en_gpio/data->vcom_en_gpio/

327603c2e83590 Andreas Kemnade  2025-09-06  122  				     "failed to get en gpio\n");
327603c2e83590 Andreas Kemnade  2025-09-06  123  
327603c2e83590 Andreas Kemnade  2025-09-06  124  	if (data->en_gpio)
327603c2e83590 Andreas Kemnade  2025-09-06  125  		usleep_range(2500, 4000);
327603c2e83590 Andreas Kemnade  2025-09-06  126  
d38d49b140043b Alistair Francis 2021-08-03  127  	platform_set_drvdata(pdev, data);
8c485bedfb7852 Alistair Francis 2021-06-15  128  
27fdd3bbb7a138 Alistair Francis 2021-08-06  129  	ret = regmap_write(regmap, SY7636A_REG_POWER_ON_DELAY_TIME, 0x0);
8c485bedfb7852 Alistair Francis 2021-06-15  130  	if (ret) {
4cafe1aeb5fb4e Alistair Francis 2021-08-03  131  		dev_err(pdev->dev.parent, "Failed to initialize regulator: %d\n", ret);
8c485bedfb7852 Alistair Francis 2021-06-15  132  		return ret;
8c485bedfb7852 Alistair Francis 2021-06-15  133  	}
8c485bedfb7852 Alistair Francis 2021-06-15  134  
8c485bedfb7852 Alistair Francis 2021-06-15  135  	config.dev = &pdev->dev;
27fdd3bbb7a138 Alistair Francis 2021-08-06  136  	config.regmap = regmap;
8c485bedfb7852 Alistair Francis 2021-06-15  137  
8c485bedfb7852 Alistair Francis 2021-06-15  138  	rdev = devm_regulator_register(&pdev->dev, &desc, &config);
8c485bedfb7852 Alistair Francis 2021-06-15  139  	if (IS_ERR(rdev)) {
4cafe1aeb5fb4e Alistair Francis 2021-08-03  140  		dev_err(pdev->dev.parent, "Failed to register %s regulator\n",
8c485bedfb7852 Alistair Francis 2021-06-15  141  			pdev->name);
8c485bedfb7852 Alistair Francis 2021-06-15  142  		return PTR_ERR(rdev);
8c485bedfb7852 Alistair Francis 2021-06-15  143  	}
8c485bedfb7852 Alistair Francis 2021-06-15  144  
8c485bedfb7852 Alistair Francis 2021-06-15  145  	return 0;
8c485bedfb7852 Alistair Francis 2021-06-15  146  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


