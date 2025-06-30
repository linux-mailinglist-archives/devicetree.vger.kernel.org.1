Return-Path: <devicetree+bounces-191179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A97AEE44F
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 18:23:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F13F31BC2644
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 16:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7B3717A2F5;
	Mon, 30 Jun 2025 16:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yGlAnuf+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF87A28FFDB
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 16:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751300041; cv=none; b=ef5dmng/May1nXgawAGqhkZNb8+fm1Kib66kSnBqVdv+2YjYhafh/h/DQZZD1sT+mUQnBpDKYQoRHU1pAG0OTsWA6RxkROkTZUwGykb+pgx7mUjJ0ctms/WHYg9X93GghUMYDq6UGRuOFMvD7vBYVrs8lbjpnUyuQaQNGX6AJgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751300041; c=relaxed/simple;
	bh=ejFEDSf8EYAO/rBEEWs62uOnoiP/wYb+ZA25xNO38Sc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=FVJVEnHW8LYrN6AJCdWJ52kRfp5p4OXyHh052RacMDBqeN4A9EdlWTvdaBnJ7m66u8f0Ynh/Owa2ufBupcTTErrGuKaYkTP+YLIrXqkxu8HsjztMygRNt3fFUlBPcywrPO76UYshsQedM/8QP1FLS9DuAohaAFmnGN49Qh33Tt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yGlAnuf+; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-40aef72f252so1442477b6e.0
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 09:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751300039; x=1751904839; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z4K2GXVJiuaKILQGQTItkLUww/Aie+jD+a1eWqS2IOU=;
        b=yGlAnuf+Wisg7lISqN582On8UZ56loQ2gcYDoQxFAFzHmp4+OyZolAfn1Gixtum+oj
         vJkrisVsoYECqlPDRI7lzOaUKj+TchK5JQBjos1R7M7XUm9AJlbKWZzalFXRPys81a76
         WKx/9YQRtU1SD9tJ31s+KYmeK6nAKxJandZ/ZfUUKZKMOZ91TCoQ2C49lvgkf5U8APM9
         yNN3yat1PbUqHKiY7siIavjTQQjlHuqow46HvPA2py/v1JWF6kaFlwk2BmrdyWpTN62G
         sm21/WDRE2wrMLkv5cpUxyVsn5Bee2wyE/5DKtR2fhxqlnGzfg/0odniZUcOcEjxhr/a
         vwGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751300039; x=1751904839;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z4K2GXVJiuaKILQGQTItkLUww/Aie+jD+a1eWqS2IOU=;
        b=LKYti0t+1mbX3biRSX3WWsgp7drQP8Y28K7unsbuubvzPcWO4HQC1JYDiD7/l1hXVz
         4uOO++uHBf9wxiZq1da4vGQvMqtbVujbdUJtM+VuRJHRLZ8XEZy3BQejsuBjTaQC4OQV
         Im0Y3V3WkyE1yjJ0Z0cN2nZHd91Wa2XthfsgXCzE0ub8hI4QQHYIj22xPrbzY/OWOxrp
         KbVIxkffD7sHfCsygJuEHEEh0ltJD89BNY+oWQj6FBF8xx5Gi2BPGuNxEPyHj3tM4o4w
         hReoV1/rkcnAriId/HXkrgRfyEzOFtm5oKc/Ub+BE5SML0ajUT06K5moeo0/rWc+6ks0
         xYNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHMEid6on5jS+izexr3919AXXIJq4/Hib8LLVwHtV9f3ZzFofTl7XLmFEK3AnZaQEMNc9usJ3Yfgvu@vger.kernel.org
X-Gm-Message-State: AOJu0YwwT41wmTL2B/UWe844sXG2mJ1T/pPE6A89DNfjWQm0gAlWOAIJ
	yttFW7vTwq3QAjpQJ3cKDP2R51yhyRz0YN20jwDMGldcSEdByUCgOiJ+9mt6R2HeQ2U=
X-Gm-Gg: ASbGnctaqI1+0bdPBoSGUe8/FfJ2H25YIBXLWjw/bfk9jFdm1xszPmwhgitRi6/f+X5
	sQvV6ZlePKwOpz4eZIdSfg8sgWHsJtfxdYqYN9by0dB/zZHqE1/LmLzG4stGcv95+xLe2TqB5wV
	6FK1Y+J4c+p9KskEswXOZxEKaUlnRy/AIr2qVh6jN54JnXzAtNBu02DN9ropX+F5dLnX4PvW0Mx
	25gO4AtAMbb0yN6F6ThoNNjjUUKqktGBMVC1RdkMJ1YDunbZTPSXrnBpNqKAUzdvE3mjgbOsEtO
	Jbd69o/fnqd14fwpSvRletTWRBbOfWAvX18FZcAsR2tiWaJDlNbrjLg5uEAx/Mg9EZ2n
X-Google-Smtp-Source: AGHT+IFAFlASv7Ojn6bTOl96SOGAN68965wAV7Dt6BYrHwwgQEMEUSNQsxpaQz7AhcjUol0ME8awag==
X-Received: by 2002:a05:6808:4f54:b0:404:764:f7b6 with SMTP id 5614622812f47-40b33c469c7mr12480268b6e.9.1751300038962;
        Mon, 30 Jun 2025 09:13:58 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:fb67:363d:328:e253])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40b32406a58sm1743722b6e.29.2025.06.30.09.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 09:13:58 -0700 (PDT)
Date: Mon, 30 Jun 2025 19:13:57 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, nicolas.dufresne@collabora.com, jgg@ziepe.ca
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v4 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <9d247bec-d206-495e-b8d6-23a7c3cc0882@suswa.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250623153931.158765-4-benjamin.gaignard@collabora.com>

Hi Benjamin,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Benjamin-Gaignard/dt-bindings-vendor-prefixes-Add-Verisilicon/20250623-234734
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20250623153931.158765-4-benjamin.gaignard%40collabora.com
patch subject: [PATCH v4 3/5] iommu: Add verisilicon IOMMU driver
config: alpha-randconfig-r073-20250627 (https://download.01.org/0day-ci/archive/20250629/202506290711.T0HOr5wS-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 8.5.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202506290711.T0HOr5wS-lkp@intel.com/

smatch warnings:
drivers/iommu/vsi-iommu.c:657 vsi_iommu_probe() error: uninitialized symbol 'err'.

vim +/err +657 drivers/iommu/vsi-iommu.c

15ea72d5401fb7 Benjamin Gaignard 2025-06-23  639  static int vsi_iommu_probe(struct platform_device *pdev)
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  640  {
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  641  	struct device *dev = &pdev->dev;
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  642  	struct vsi_iommu *iommu;
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  643  	int err;
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  644  
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  645  	iommu = devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  646  	if (!iommu)
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  647  		return -ENOMEM;
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  648  
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  649  	iommu->dev = dev;
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  650  
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  651  	iommu->regs = devm_platform_ioremap_resource(pdev, 0);
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  652  	if (IS_ERR(iommu->regs))
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  653  		return -ENOMEM;
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  654  
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  655  	iommu->num_clocks = devm_clk_bulk_get_all(dev, &iommu->clocks);
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  656  	if  (iommu->num_clocks < 0)
15ea72d5401fb7 Benjamin Gaignard 2025-06-23 @657  		return err;

s/err/iommu->num_clocks/

15ea72d5401fb7 Benjamin Gaignard 2025-06-23  658  
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  659  	err = clk_bulk_prepare(iommu->num_clocks, iommu->clocks);
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  660  	if (err)
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  661  		return err;
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  662  
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  663  	iommu->irq = platform_get_irq(pdev, 0);
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  664  	if (iommu->irq < 0)
15ea72d5401fb7 Benjamin Gaignard 2025-06-23  665  		return iommu->irq;

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


