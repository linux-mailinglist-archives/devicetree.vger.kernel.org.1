Return-Path: <devicetree+bounces-182140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A67FACA996
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 08:50:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D422C179133
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 06:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B50B1191F7F;
	Mon,  2 Jun 2025 06:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UX9hToTq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42CE175BF
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 06:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748847016; cv=none; b=ogMxhjWHuScS2l62XVJiq4tpwEO5FS+9vJWhuvFVXyuJXMFdvqvs6lZuI28OzJoxBq9Dp4aWjbwWhDcLU7N1J2IS/wicn1FXvqee/c5Xk+P3/ZdyS33IJpZyP678721TidXABIljodJK0Goas1h2ntXL3aZjMh/njAeBVZa3a64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748847016; c=relaxed/simple;
	bh=USY+Knj3Gn6M4UyCoMEuT925F5VZ0aIxGsAN793hFfA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=dkVq3qgJn9LayP6OgVGCwfewSRYn08Rdqo17aWjknlEKMVfu0YGSZHWbjkFErcKCMCiCU1LgpJFwyUWSF4cOEut/H5ZaioFaJj0g341ZCMAeOKclwqbuLY2nxFCsznZtJV0kEASjHpga45NIOlBw4jjR5LgMl4uhMmjpgAE/UvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UX9hToTq; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a4f71831abso2734285f8f.3
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 23:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748847012; x=1749451812; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SK0IyySBRZW3kx89rtPTvWUvyucit05wnIbR/YG6Fpo=;
        b=UX9hToTqmVWmGmWGjkFtBxBJScqwkgix4XoHn5ryQZvoYdSkYGfcfeArOVOOAtEM+Z
         Cm51o7BNSqTMvAM8RvqruRIhApj8U9icEMUIpocLz3L2MTZcuQ3hL9e+W2Fks0Qz7RG7
         kiaUE3gtK9wuUYOOVlqW6b4Fxmh4q5T9Hctwv5QYcj1rcLz8wRppqTHC+2QdrmKZtXSL
         gY0NUQrua0qKxhzr251j2uKSIZtijh6dc3HuCESz+39bvRLU6A1EqkPpJWQFbcwPytgM
         Ct7bECSS7h/NdRk2hq7pwSJqrS7MXrj7W/GLplE6e7YDzubFEBzQyXVZ/jz54QzmOt+z
         NHKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748847012; x=1749451812;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SK0IyySBRZW3kx89rtPTvWUvyucit05wnIbR/YG6Fpo=;
        b=dZ+icgsCBBsm0X62QRxyJRUTBJOU8em6ztOy3jFHk0RbgPyi4304shnxSPvJWzjo/s
         LHLtUaV9p0tmX1Vu2WdDwhxiIl5HN2gWf0dneOYVu7f0/RcM6vWH7eOaXnTXRl3s5sm5
         uQrOJDSEUSBC/DVebkgLH1CReXTBjQzwOMnAeDgP3asW55YRasqC/Ay+1kEMC5Hvphwa
         7Cp7jISdSLeC+sjeeBPmE0Y0EltAFXHDwnZXY14g5WNhB4oyFe5iVbBF9X75Aja2nya5
         qhLSyyjxfUE75I8qACrDrvRJ5ipMIUV8p5MKX7WoJi1mlhCPVAqb3So67hFyVMmAcX6c
         Mi/g==
X-Forwarded-Encrypted: i=1; AJvYcCW3WSOCngetkxytTyCpGIdDvbGEVmgGKqk1w2PS6cR46FQmTdVtPOcDawapCCn0Gpkvwajl3VhIzv6b@vger.kernel.org
X-Gm-Message-State: AOJu0YxI45UL8Hs1wx+EWgYO8zpYAw2H2YOCouCRN94H0BthbyGfw2y2
	gL7xSyAb+5vFc5CQgF3eelpMqXpSCom3yJwrz0ZV1eWgI4XDxbX8WoFcsabHXX5ZsnU=
X-Gm-Gg: ASbGncteCcPsvOWlj+VcA6ZCdWQPPy18Jtw2V1AxoEEU0shjiZkbzA947wru8Ghnx+4
	fNW1qBPRY2bsg62Xt1xrlz2BHPdBWpxsiZY3Stm5PfqfYABaAfBl+bk/4e1PIbnswNhStC+lqO8
	Vsxa2xDJ9RI4Fk/5Sp7Fi70QeVV10nhBdnGml+VklCjPqnbyatuT0zRuXyWnUPsP8tUMXkEJ7f2
	Edw3kGghk9R1mregSTe3xzCBI8tmGhF6E/vvcMPrgqOrgQqO8S7yFV3bXQwIRfpcZEyLaRnu060
	sDzyLN1C5HB6yBKBfSRFTct2QviSHmWAbhSMbzMSrXGfN82P/uRlL8k=
X-Google-Smtp-Source: AGHT+IEZR8tQifVwfY35OyZRO4tFwJdgXpdkuSPBQCXC2PRdUrJ5MhzKClOt7HCXAkUO8ONJz6PuGg==
X-Received: by 2002:a05:6000:2888:b0:3a3:760c:81b7 with SMTP id ffacd0b85a97d-3a4f89df572mr8120211f8f.57.1748847012124;
        Sun, 01 Jun 2025 23:50:12 -0700 (PDT)
Received: from localhost ([41.210.143.146])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a4f009ff11sm13526519f8f.86.2025.06.01.23.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 23:50:11 -0700 (PDT)
Date: Mon, 2 Jun 2025 09:50:07 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Harsh Jain <h.jain@amd.com>,
	herbert@gondor.apana.org.au, davem@davemloft.net,
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
	mounika.botcha@amd.com, sarat.chand.savitala@amd.com,
	mohan.dhanawade@amd.com, michal.simek@amd.com
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	Harsh Jain <h.jain@amd.com>
Subject: Re: [PATCH 3/3] crypto: drbg: Export CTR DRBG DF functions
Message-ID: <202505311325.22fIOcCt-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250529113116.669667-4-h.jain@amd.com>

Hi Harsh,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Harsh-Jain/dt-bindings-crypto-Add-node-for-True-Random-Number-Generator/20250529-193255
base:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
patch link:    https://lore.kernel.org/r/20250529113116.669667-4-h.jain%40amd.com
patch subject: [PATCH 3/3] crypto: drbg: Export CTR DRBG DF functions
config: s390-randconfig-r073-20250531 (https://download.01.org/0day-ci/archive/20250531/202505311325.22fIOcCt-lkp@intel.com/config)
compiler: clang version 21.0.0git (https://github.com/llvm/llvm-project f819f46284f2a79790038e1f6649172789734ae8)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202505311325.22fIOcCt-lkp@intel.com/

smatch warnings:
drivers/crypto/xilinx/xilinx-trng.c:368 xtrng_probe() warn: missing unwind goto?

vim +368 drivers/crypto/xilinx/xilinx-trng.c

940a39f34689c6 Harsh Jain 2025-05-29  334  static int xtrng_probe(struct platform_device *pdev)
940a39f34689c6 Harsh Jain 2025-05-29  335  {
940a39f34689c6 Harsh Jain 2025-05-29  336  	struct xilinx_rng *rng;
bf8ac5fe42abd6 Harsh Jain 2025-05-29  337  	size_t sb_size;
940a39f34689c6 Harsh Jain 2025-05-29  338  	int ret;
940a39f34689c6 Harsh Jain 2025-05-29  339  
940a39f34689c6 Harsh Jain 2025-05-29  340  	rng = devm_kzalloc(&pdev->dev, sizeof(*rng), GFP_KERNEL);
940a39f34689c6 Harsh Jain 2025-05-29  341  	if (!rng)
940a39f34689c6 Harsh Jain 2025-05-29  342  		return -ENOMEM;
940a39f34689c6 Harsh Jain 2025-05-29  343  
940a39f34689c6 Harsh Jain 2025-05-29  344  	rng->dev = &pdev->dev;
940a39f34689c6 Harsh Jain 2025-05-29  345  	rng->rng_base = devm_platform_ioremap_resource(pdev, 0);
940a39f34689c6 Harsh Jain 2025-05-29  346  	if (IS_ERR(rng->rng_base)) {
940a39f34689c6 Harsh Jain 2025-05-29  347  		dev_err(&pdev->dev, "Failed to map resource %ld\n", PTR_ERR(rng->rng_base));
940a39f34689c6 Harsh Jain 2025-05-29  348  		return PTR_ERR(rng->rng_base);
940a39f34689c6 Harsh Jain 2025-05-29  349  	}
940a39f34689c6 Harsh Jain 2025-05-29  350  
bf8ac5fe42abd6 Harsh Jain 2025-05-29  351  	rng->tfm = crypto_alloc_cipher("aes", 0, 0);
bf8ac5fe42abd6 Harsh Jain 2025-05-29  352  	if (IS_ERR(rng->tfm)) {
bf8ac5fe42abd6 Harsh Jain 2025-05-29  353  		pr_info("DRBG: could not allocate cipher TFM handle:\n");
bf8ac5fe42abd6 Harsh Jain 2025-05-29  354  		return PTR_ERR(rng->tfm);
bf8ac5fe42abd6 Harsh Jain 2025-05-29  355  	}
bf8ac5fe42abd6 Harsh Jain 2025-05-29  356  
bf8ac5fe42abd6 Harsh Jain 2025-05-29  357  	sb_size = crypto_drbg_ctr_df_datalen(TRNG_SEED_LEN_BYTES, AES_BLOCK_SIZE);
bf8ac5fe42abd6 Harsh Jain 2025-05-29  358  	rng->scratchpadbuf = devm_kzalloc(&pdev->dev, sb_size, GFP_KERNEL);
bf8ac5fe42abd6 Harsh Jain 2025-05-29  359  	if (!rng->scratchpadbuf) {
bf8ac5fe42abd6 Harsh Jain 2025-05-29  360  		ret = -ENOMEM;
bf8ac5fe42abd6 Harsh Jain 2025-05-29  361  		goto cipher_cleanup;
bf8ac5fe42abd6 Harsh Jain 2025-05-29  362  	}
bf8ac5fe42abd6 Harsh Jain 2025-05-29  363  
940a39f34689c6 Harsh Jain 2025-05-29  364  	xtrng_trng_reset(rng->rng_base);
940a39f34689c6 Harsh Jain 2025-05-29  365  	ret = xtrng_reseed_internal(rng);
940a39f34689c6 Harsh Jain 2025-05-29  366  	if (ret) {
940a39f34689c6 Harsh Jain 2025-05-29  367  		dev_err(&pdev->dev, "TRNG Seed fail\n");
940a39f34689c6 Harsh Jain 2025-05-29 @368  		return ret;

goto cipher_cleanup;

940a39f34689c6 Harsh Jain 2025-05-29  369  	}
940a39f34689c6 Harsh Jain 2025-05-29  370  
940a39f34689c6 Harsh Jain 2025-05-29  371  	xilinx_rng_dev = rng;
940a39f34689c6 Harsh Jain 2025-05-29  372  	mutex_init(&rng->lock);
940a39f34689c6 Harsh Jain 2025-05-29  373  	ret = crypto_register_rng(&xtrng_trng_alg);
940a39f34689c6 Harsh Jain 2025-05-29  374  	if (ret) {
940a39f34689c6 Harsh Jain 2025-05-29  375  		dev_err(&pdev->dev, "Crypto Random device registration failed: %d\n", ret);
bf8ac5fe42abd6 Harsh Jain 2025-05-29  376  		goto cipher_cleanup;
940a39f34689c6 Harsh Jain 2025-05-29  377  	}
bf8ac5fe42abd6 Harsh Jain 2025-05-29  378  
940a39f34689c6 Harsh Jain 2025-05-29  379  	ret = xtrng_hwrng_register(&rng->trng);
940a39f34689c6 Harsh Jain 2025-05-29  380  	if (ret) {
940a39f34689c6 Harsh Jain 2025-05-29  381  		dev_err(&pdev->dev, "HWRNG device registration failed: %d\n", ret);
940a39f34689c6 Harsh Jain 2025-05-29  382  		goto crypto_rng_free;
940a39f34689c6 Harsh Jain 2025-05-29  383  	}
940a39f34689c6 Harsh Jain 2025-05-29  384  	platform_set_drvdata(pdev, rng);
940a39f34689c6 Harsh Jain 2025-05-29  385  
940a39f34689c6 Harsh Jain 2025-05-29  386  	return 0;
940a39f34689c6 Harsh Jain 2025-05-29  387  
940a39f34689c6 Harsh Jain 2025-05-29  388  crypto_rng_free:
940a39f34689c6 Harsh Jain 2025-05-29  389  	crypto_unregister_rng(&xtrng_trng_alg);
940a39f34689c6 Harsh Jain 2025-05-29  390  
bf8ac5fe42abd6 Harsh Jain 2025-05-29  391  cipher_cleanup:
bf8ac5fe42abd6 Harsh Jain 2025-05-29  392  	crypto_free_cipher(rng->tfm);
bf8ac5fe42abd6 Harsh Jain 2025-05-29  393  
940a39f34689c6 Harsh Jain 2025-05-29  394  	return ret;
940a39f34689c6 Harsh Jain 2025-05-29  395  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


