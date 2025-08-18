Return-Path: <devicetree+bounces-205661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C20FBB29BF1
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 10:23:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 820C419617B6
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 08:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4420B2FF664;
	Mon, 18 Aug 2025 08:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RgzI3KC6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830751D9346
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755505363; cv=none; b=Aod+o4mLBYTXRFseHl95h5GAIN5T+zrk6oZ+PtVI9SgNoCXdhlq9gGH/Sq1n50WAqM20SWs6n8gMSnk29j+AgvOK/chnKYx4ktypOoSbfqHkLld33yyvjRVREnDRFTkechxI+5byc+00Tjbytg8PQpJYpzK+qUS3e/cP11DI3v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755505363; c=relaxed/simple;
	bh=HHKSAd/Mjx/o01GkdkMFhWBqYzjpMHK11Lxy/trHy2Q=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=LT1jbBUPZoZmausPbzm5LWyMCkNHzrnJmcUy7D6x3KRDLrD4Gwl7gDme5ESOCDuehX+uBfoml0hbFOrqwYT0wUFvkzYYMsPlAj/PZFlaHbVQWWqobcwIgLIltjCkT2cIz6H6XC1ufmwiLzP3Dw5Sr7rSFMc2W+LoN7gHheca9nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RgzI3KC6; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45a1abf5466so20526435e9.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 01:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755505359; x=1756110159; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DfM3OUic4SP+kzMyP8kHHqITaKkedG37VBt2aK4wKj0=;
        b=RgzI3KC6kuAgvudTcS0RqmV1JE8JzJvYNKGD5+genPP/LuilJCjCaxmX+kyOq0KzYG
         4pTK0E7p8r4jb/PESv7xiAtcteH2QeZQ7kVI7+k8ZR3UjT1tDl43V8MvWSHm9bVej+Pi
         tF/Bh3lqfDlZPuz7hrTT/JiGrtiupmbeXx+rmQt5jEuSoFEs0EE2CNlO4XGXpcd6Zxjy
         7hd3GAuEiy/+a9fg1CI4+4ZTNb5fTAX9BJrvOSGraxS927xSZp/JSzuo0bBW0Z3wZzyq
         Zox7CMAIu4Xk70mg2AwOfuGzkpfWPmta/U1xj4K6ibnWNN6dkDAx+mmtwfjNjgojxtu1
         MNDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755505359; x=1756110159;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DfM3OUic4SP+kzMyP8kHHqITaKkedG37VBt2aK4wKj0=;
        b=jMSBs07wpTcR02Bw7RYf96rYQE1yCCuAJLknADnor/YrhJkYXOnokkXZf3GtDnZ1ic
         fENXjBGKzmw3Q/03nZt7anDX7koViSCqOnwFxGN+ApT/kGtmVXuc1q/bL3qIXKTNDhoP
         XcTePnNiPAgJS/C51ZEISL1jvi14C7A2g+bX1Qs9lDht/jTYYwq/jUV5Q8clZutIGyHA
         EqdRGdE1+4HEbWqxxVeQ9a/Oc3LTBGN/jSR2OePOvFcThvFSk1W7489WKP5CeIQIasCo
         2rkX8z/nD1ye42r8h06lbyO3hmOUo6J1v+6kahynU1MFPFnOs8FKKSDCT71PKx7pUUpp
         Ph5w==
X-Forwarded-Encrypted: i=1; AJvYcCVD9Nygj4TvK6ULetTPtZ0LYne/C/YaZ7jjzayJU2Ke6Sn9l60YQfV/qLwLXeMjjVdyrNUipqZsohzB@vger.kernel.org
X-Gm-Message-State: AOJu0YzPirAQWOSbwZYaa4t2Q+iHpgLjLGVHP0c3I+LlBWwv2EZzWhC9
	Ygr5kbtVA3gZ0r/V7yLFggEhMBYs2uWl7KU9Dqk0336XFUM8uvEp2ka0wAhN+kAdu7U=
X-Gm-Gg: ASbGnctXrxTSMfjJmhDjhoVRvkm1mRNy5z7yo2GP2O5DCHLvC2ot+dTgb9JWomrdxmb
	0ed31UT1hWJYBbEjJkTE4vUtO0AcaSxUEQuQdqjpCsUVatzKal1E0wB9g/zOUPAoW5l44v+qvVM
	G02kAsnSf46FFOad338SRPJL1N0cJu3HCjLeB56e+tXeKAfO6ikOdlM3gsULsMqHmiw+/16SZqp
	VKRcLmeksrtn0Ui8LJ2GpHbG64mqSs6RnUTRQxpUNGEbHAfUHXZKK/lTFgZu3SuVFwChozEQOsU
	DCSvh0UjHUfWehtnF0wLg39H+ptjH3yRFP90qgEIoKMgaa+fXVtgU5ezok8VfxUAjXtKNU5iNSG
	qgKuouM5NM19usf1Lmiufp5p8dnrQoTW3JV1WzvsyQso=
X-Google-Smtp-Source: AGHT+IGwnL7IszKslS4RMmOckl7pctBDP8Ycuqwcw2vG42+4+Q5iaY+TBsZa0MdI4VtsEKOZ6UKuug==
X-Received: by 2002:a05:600c:35d3:b0:458:bf15:689c with SMTP id 5b1f17b1804b1-45a1b65c6c6mr115855795e9.2.1755505358701;
        Mon, 18 Aug 2025 01:22:38 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45a22210ab4sm122737435e9.3.2025.08.18.01.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 01:22:38 -0700 (PDT)
Date: Mon, 18 Aug 2025 11:22:35 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org,
	lgirdwood@gmail.com, sre@kernel.org, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH V6 3/5] power: supply: bq257xx: Add support for BQ257XX
 charger
Message-ID: <202508181503.GrRD2T4C-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250812214300.123129-4-macroalpha82@gmail.com>

Hi Chris,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-mfd-ti-bq25703a-Add-TI-BQ25703A-Charger/20250813-054704
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next
patch link:    https://lore.kernel.org/r/20250812214300.123129-4-macroalpha82%40gmail.com
patch subject: [PATCH V6 3/5] power: supply: bq257xx: Add support for BQ257XX charger
config: parisc-randconfig-r072-20250818 (https://download.01.org/0day-ci/archive/20250818/202508181503.GrRD2T4C-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 8.5.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202508181503.GrRD2T4C-lkp@intel.com/

smatch warnings:
drivers/power/supply/bq257xx_charger.c:392 bq25703_hw_init() warn: potential ! vs ~ typo

vim +392 drivers/power/supply/bq257xx_charger.c

7f3b6f1e51a925 Chris Morgan 2025-08-12  365  static int bq25703_hw_init(struct bq257xx_chg *pdata)
7f3b6f1e51a925 Chris Morgan 2025-08-12  366  {
7f3b6f1e51a925 Chris Morgan 2025-08-12  367  	struct regmap *regmap = pdata->bq->regmap;
7f3b6f1e51a925 Chris Morgan 2025-08-12  368  	int ret = 0;
7f3b6f1e51a925 Chris Morgan 2025-08-12  369  
7f3b6f1e51a925 Chris Morgan 2025-08-12  370  	regmap_update_bits(regmap, BQ25703_CHARGE_OPTION_0,
7f3b6f1e51a925 Chris Morgan 2025-08-12  371  			   BQ25703_WDTMR_ADJ_MASK,
7f3b6f1e51a925 Chris Morgan 2025-08-12  372  			   FIELD_PREP(BQ25703_WDTMR_ADJ_MASK,
7f3b6f1e51a925 Chris Morgan 2025-08-12  373  			   BQ25703_WDTMR_DISABLE));
7f3b6f1e51a925 Chris Morgan 2025-08-12  374  
7f3b6f1e51a925 Chris Morgan 2025-08-12  375  	ret = pdata->chip->bq257xx_set_ichg(pdata, pdata->ichg_max);
7f3b6f1e51a925 Chris Morgan 2025-08-12  376  	if (ret)
7f3b6f1e51a925 Chris Morgan 2025-08-12  377  		return ret;
7f3b6f1e51a925 Chris Morgan 2025-08-12  378  
7f3b6f1e51a925 Chris Morgan 2025-08-12  379  	ret = pdata->chip->bq257xx_set_vbatreg(pdata, pdata->vbat_max);
7f3b6f1e51a925 Chris Morgan 2025-08-12  380  	if (ret)
7f3b6f1e51a925 Chris Morgan 2025-08-12  381  		return ret;
7f3b6f1e51a925 Chris Morgan 2025-08-12  382  
7f3b6f1e51a925 Chris Morgan 2025-08-12  383  	ret = bq25703_set_min_vsys(pdata, pdata->vsys_min);
7f3b6f1e51a925 Chris Morgan 2025-08-12  384  	if (ret)
7f3b6f1e51a925 Chris Morgan 2025-08-12  385  		return ret;
7f3b6f1e51a925 Chris Morgan 2025-08-12  386  
7f3b6f1e51a925 Chris Morgan 2025-08-12  387  	ret = pdata->chip->bq257xx_set_iindpm(pdata, pdata->iindpm_max);
7f3b6f1e51a925 Chris Morgan 2025-08-12  388  	if (ret)
7f3b6f1e51a925 Chris Morgan 2025-08-12  389  		return ret;
7f3b6f1e51a925 Chris Morgan 2025-08-12  390  
7f3b6f1e51a925 Chris Morgan 2025-08-12  391  	regmap_update_bits(regmap, BQ25703_CHARGE_OPTION_0,
7f3b6f1e51a925 Chris Morgan 2025-08-12 @392  			   BQ25703_EN_LWPWR, !BQ25703_EN_LWPWR);

Yeah.  This really looks like it should be bitwise negate ~ instead of
logical negate !.

7f3b6f1e51a925 Chris Morgan 2025-08-12  393  
7f3b6f1e51a925 Chris Morgan 2025-08-12  394  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
7f3b6f1e51a925 Chris Morgan 2025-08-12  395  			   BQ25703_ADC_CONV_EN, BQ25703_ADC_CONV_EN);
7f3b6f1e51a925 Chris Morgan 2025-08-12  396  
7f3b6f1e51a925 Chris Morgan 2025-08-12  397  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
7f3b6f1e51a925 Chris Morgan 2025-08-12  398  			   BQ25703_ADC_START, BQ25703_ADC_START);
7f3b6f1e51a925 Chris Morgan 2025-08-12  399  
7f3b6f1e51a925 Chris Morgan 2025-08-12  400  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
7f3b6f1e51a925 Chris Morgan 2025-08-12  401  			   BQ25703_ADC_FULL_SCALE, BQ25703_ADC_FULL_SCALE);
7f3b6f1e51a925 Chris Morgan 2025-08-12  402  
7f3b6f1e51a925 Chris Morgan 2025-08-12  403  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
7f3b6f1e51a925 Chris Morgan 2025-08-12  404  			   BQ25703_ADC_CH_MASK,
7f3b6f1e51a925 Chris Morgan 2025-08-12  405  			   (BQ25703_ADC_CMPIN_EN | BQ25703_ADC_VBUS_EN |
7f3b6f1e51a925 Chris Morgan 2025-08-12  406  			   BQ25703_ADC_PSYS_EN | BQ25703_ADC_IIN_EN |
7f3b6f1e51a925 Chris Morgan 2025-08-12  407  			   BQ25703_ADC_IDCHG_EN | BQ25703_ADC_ICHG_EN |
7f3b6f1e51a925 Chris Morgan 2025-08-12  408  			   BQ25703_ADC_VSYS_EN | BQ25703_ADC_VBAT_EN));
7f3b6f1e51a925 Chris Morgan 2025-08-12  409  
7f3b6f1e51a925 Chris Morgan 2025-08-12  410  	return ret;
7f3b6f1e51a925 Chris Morgan 2025-08-12  411  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


