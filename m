Return-Path: <devicetree+bounces-207250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCC7B2EF48
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:18:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 784D43B7E2C
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 07:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 069B42E8DE8;
	Thu, 21 Aug 2025 07:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LTZe5J22"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AAE2D97A9
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755760677; cv=none; b=TGFXVn49JkhZgaGkU3EWVTxAaiqmvOX1lnkCBdONzN61cEGpDtpbl2xXMQ374LIGFSz9GaH2QgPTFEqlAQgthko6b8Eod/DMLiKJs7tRAiUkzrYc2LKKnREe1qFJY/vX97UrqxjjK1LHdqJzIDR/IOY49ktX8Djq63CO5uRJtLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755760677; c=relaxed/simple;
	bh=JvEAmy7Jlkc5V+Vnd1agyO6c2e8/ldDsDOAnzIwmDSE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=m311Io38sWXuA0lOYLSWoos1uHT6pZBEXUaY4Szy4jmL0BRAm+fIeVvPX6sWN6vIE0aPGm1n1DXzSftrwY9iXZAmPdDdt+EjXeTduJlBkjlDO4tDqhXXYFnz8FbdprFrRSdKeGkpCX7HJPsAXnPENhyY+hYZkxemaPXoQuDBdUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LTZe5J22; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3b9e411c820so398681f8f.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 00:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755760674; x=1756365474; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H3tAtOi04xs7pQD42uV+iRrcb/K5gV7/3jestZ8bCUo=;
        b=LTZe5J22nrs15U5l4mQ+Peeowrri71fAsO1UnmRAkk3DACrIgC/qXS9zGRr+NQF8Z2
         +KvnmWVUvl7TN7Zo2IQruGKs2mPzzfNqwyHADLomaFhp50s3/7hAxMq+8FSIO5YS/y12
         7wcqUZAYmk9o9A/TyLx8FwMlX9BwOJaNvyvTSjf3SvV/1CWXzSNQlM4gttJ0XB4AH9mA
         bagpaXPhtYBiqtdcn3X3jg9C7BGS66dexW5/77kV461woP7cL59TV0CCSQX+ZGte7drb
         NwD1IaKU2+ExfKshmT1Fys9gFvH+MLrADRuL/wcBSoiZSLV36f4jckJTtSddPK8h3fy2
         zT3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755760674; x=1756365474;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H3tAtOi04xs7pQD42uV+iRrcb/K5gV7/3jestZ8bCUo=;
        b=ZBBaqJXDYpFTBZ6RkGZAN1q0fpLn2KyZAW+NJzRFBI/pR6HBLmSXX3XA2/PRO9IBiV
         nXjRWmbeZFeXUgrf9eKIYZPY4OYQjPXYvUocXn5vhqkbE6WaM/A7pzqJm6m0oxaYOXip
         2/VI6OUkzcqQKGu1Q1CHYP0T7ah8Q2Rhp1uoXg6ejvsLmO1vU2Ct6Uz6hVPn5R6hV1L8
         uJB3GUZJVKLQMMTkoudT/VVXu1z1jiv8b8mC0fohGbCcywWBciuKSNVxVvEhqPTbZupt
         EwUBzIEfGiEWoAwZXpTn0BaHFJlSJgdSIYr89tw9xKQZN31iaQDP4Z687x7YGS/covP3
         4ffg==
X-Forwarded-Encrypted: i=1; AJvYcCUOaNVoHWb9Z+TD+1pPhQnSa3DoLfsILBWpQwrOd2O/bk9Y2PL3uZ5zwghJU1rdSMF9Pkg0Ztj37Fcu@vger.kernel.org
X-Gm-Message-State: AOJu0YzqMw5+DmSmUTFgt2j5g/ajAJ4Umjfmdp3jf51RBvxdqT5i6e6h
	9pb3gAioUNy7QOSFJhgYWFtrcrlBZCJMrbd0wmhOk2S3uw7uiP4KaC9HKBFE/31ZCvc=
X-Gm-Gg: ASbGncs7q9SSOs1Pq5zmD/iDujbXWw9qkTRP4octmXye1mKun/4Q9/nDoMdtc+QwrSc
	V33pKCyuqp2wt+sTS11psX8VLcXpJoWtUq7r5RhOGMmcr70XT4zoyobc0n6E9omL8bRHntuaU1Z
	jxZiPMJVY+qWuayL0MzxH3mbbYa63rK5GHquxYNddpWtFSgCvkUMw63FmTtLlrYb/JlAr9zJy5u
	skVyB5/Sb4kMR0IMQNrZlUtZZVUXQ3xaWB1Zq/ROivd+VUtelUTD+Wx9zWZobDvH+CA4o9gvG1H
	rLhmdCz40DFKMgFCIHuN2v/T/iT03whOthfdMjT7EvfKMlleI7ilPNifoZnVykq3692F1Ndruj3
	29oQJQUhMfGysWlpokxCRg3PCJq8=
X-Google-Smtp-Source: AGHT+IG63iMqN7wTtRiIXVZbSCze5rPWQlrS04IFAuyrUFZ9haZV4BHRyggzdxUPlHVMATR9Za+YDA==
X-Received: by 2002:a05:6000:2411:b0:3b7:8146:4640 with SMTP id ffacd0b85a97d-3c4977414d6mr1081489f8f.56.1755760674518;
        Thu, 21 Aug 2025 00:17:54 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45b4db29878sm15276145e9.6.2025.08.21.00.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 00:17:53 -0700 (PDT)
Date: Thu, 21 Aug 2025 10:17:50 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org,
	lgirdwood@gmail.com, sre@kernel.org, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V6 4/5] regulator: bq257xx: Add bq257xx boost regulator
 driver
Message-ID: <202508210308.Lw2Klipk-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250812214300.123129-5-macroalpha82@gmail.com>

Hi Chris,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-mfd-ti-bq25703a-Add-TI-BQ25703A-Charger/20250813-054704
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next
patch link:    https://lore.kernel.org/r/20250812214300.123129-5-macroalpha82%40gmail.com
patch subject: [PATCH V6 4/5] regulator: bq257xx: Add bq257xx boost regulator driver
config: xtensa-randconfig-r073-20250819 (https://download.01.org/0day-ci/archive/20250821/202508210308.Lw2Klipk-lkp@intel.com/config)
compiler: xtensa-linux-gcc (GCC) 9.5.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202508210308.Lw2Klipk-lkp@intel.com/

smatch warnings:
drivers/regulator/bq257xx-regulator.c:132 bq257xx_reg_dt_parse_gpio() warn: passing zero to 'PTR_ERR'

vim +/PTR_ERR +132 drivers/regulator/bq257xx-regulator.c

d6db7dce7cd965 Chris Morgan 2025-08-12  107  static void bq257xx_reg_dt_parse_gpio(struct platform_device *pdev)
d6db7dce7cd965 Chris Morgan 2025-08-12  108  {
d6db7dce7cd965 Chris Morgan 2025-08-12  109  	struct device_node *child, *subchild;
d6db7dce7cd965 Chris Morgan 2025-08-12  110  	struct bq257xx_reg_data *pdata = platform_get_drvdata(pdev);
d6db7dce7cd965 Chris Morgan 2025-08-12  111  
d6db7dce7cd965 Chris Morgan 2025-08-12  112  	child = of_get_child_by_name(pdev->dev.of_node,
d6db7dce7cd965 Chris Morgan 2025-08-12  113  				     pdata->desc.regulators_node);
d6db7dce7cd965 Chris Morgan 2025-08-12  114  	if (!child)
d6db7dce7cd965 Chris Morgan 2025-08-12  115  		return;
d6db7dce7cd965 Chris Morgan 2025-08-12  116  
d6db7dce7cd965 Chris Morgan 2025-08-12  117  	subchild = of_get_child_by_name(child, pdata->desc.of_match);
d6db7dce7cd965 Chris Morgan 2025-08-12  118  	if (!subchild)
d6db7dce7cd965 Chris Morgan 2025-08-12  119  		return;
d6db7dce7cd965 Chris Morgan 2025-08-12  120  
d6db7dce7cd965 Chris Morgan 2025-08-12  121  	of_node_put(child);
d6db7dce7cd965 Chris Morgan 2025-08-12  122  
d6db7dce7cd965 Chris Morgan 2025-08-12  123  	pdata->otg_en_gpio = devm_fwnode_gpiod_get_index(&pdev->dev,
d6db7dce7cd965 Chris Morgan 2025-08-12  124  							 of_fwnode_handle(subchild),
d6db7dce7cd965 Chris Morgan 2025-08-12  125  							 "enable", 0,
d6db7dce7cd965 Chris Morgan 2025-08-12  126  							 GPIOD_OUT_LOW,
d6db7dce7cd965 Chris Morgan 2025-08-12  127  							 pdata->desc.of_match);
d6db7dce7cd965 Chris Morgan 2025-08-12  128  
d6db7dce7cd965 Chris Morgan 2025-08-12  129  	of_node_put(subchild);
d6db7dce7cd965 Chris Morgan 2025-08-12  130  
d6db7dce7cd965 Chris Morgan 2025-08-12  131  	if (IS_ERR_OR_NULL(pdata->otg_en_gpio)) {

This should just be an IS_ERR() check.  When a function returns a mix of
error pointers and NULL, then the NULL is not an error and shouldn't
result in an error message.

https://staticthinking.wordpress.com/2022/08/01/mixing-error-pointers-and-null/

Here devm_fwnode_gpiod_get_index() can't actually return NULL so it
doesn't matter, I suppose.

d6db7dce7cd965 Chris Morgan 2025-08-12 @132  		dev_err(&pdev->dev, "Error getting enable gpio: %ld\n",
d6db7dce7cd965 Chris Morgan 2025-08-12  133  			PTR_ERR(pdata->otg_en_gpio));
d6db7dce7cd965 Chris Morgan 2025-08-12  134  		return;
d6db7dce7cd965 Chris Morgan 2025-08-12  135  	}
d6db7dce7cd965 Chris Morgan 2025-08-12  136  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


