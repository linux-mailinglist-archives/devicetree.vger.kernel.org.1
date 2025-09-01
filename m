Return-Path: <devicetree+bounces-211222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB90B3E01B
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 12:27:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BEBE81892E74
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 10:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC9030E834;
	Mon,  1 Sep 2025 10:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y2CXlHCp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A4830E82D
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 10:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756722428; cv=none; b=lzRF0lqkbVdsg5Ps4FYgSQFV89bRFg4bKTr11L+pNZ9/lNCYB1a3hcBHN+fb/F2eSWWOx7cUhcIVzaI3amAVerDcivJ0/Bec4ZRvjAHZ5c4v0WKohvWhcIh0bAHO/5H8PKAd0AQfkm84yKAuhydGf03yXDv6APTTXTABhMveS0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756722428; c=relaxed/simple;
	bh=6h/YI/Py/XlG4xBbZJ7thzV4uG9Z0BsZDM3FqQjDBdE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=gi8eTChuoxYX/0sMDX4UYKc33s3k+Zyh9USa/C43FUpPztVXEttelII+ykKapdKJ/pAAKY9NUd8VDT18uVcocJ7OrAGetfZ+SoPF2K47zpmb2kPtrK7oTmHbZb8dvefJS2IdZRA+rl85J+0egyhNSxO+5D0hVScSuf5qS/Od4Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y2CXlHCp; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3d4dcf3863dso759135f8f.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 03:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756722425; x=1757327225; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U3wMAXUg6TcQMtXg5Lgxugiws7d3wfWBJLDrvyAva+k=;
        b=y2CXlHCpkTmxqjhja4moihSjlo/kiMrxjrx/pE0Dzwsj6FFmywwrJt+Sg3cVBNbzWs
         XfJawbLzXNwadZJbYP07CvrzT8Sk1QhMr6CZlZhNB7IZ32wlTWvsz4eIiDBWNjvRUDCc
         Vdprl29gC9JFnJWjruuNGZjZzPHWlBjQxxxU2Rqw9D/5QJGORo+vTbs/B433aCKHzxl+
         r9NlZ3eIp1xhf3dlw9KiJ+WXlgW6ftPO+oyR85tY0kIszj11MuDHgi9a28L5tA71qMW8
         3f59sLUhxUbNtn/s5CXGk8cKbDocNWZnnB0rCLLJmD15pDDkJnTr79gfTnjAdCXQ5q9f
         aPLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756722425; x=1757327225;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U3wMAXUg6TcQMtXg5Lgxugiws7d3wfWBJLDrvyAva+k=;
        b=VWABRrmWaR2ERI5uE+t/kd9T8hvXySTGO6+3qSD5foPahiAuELsegIS+7v4qnrjSoS
         KVAx91nAIYRu0st8Yf6AwjyWw+1j3ngRVUTvOei8QCSZ64fJz2tGdn9rEDxwh8HbwnEi
         hYcqwdAgz/VnJ/86fAqPzpWKNRAfjnYDtMQ5XIRPF0GSOJ0MOUthj0SDSNIoakbRBtb3
         B0L7QczYMVarBaa3DDScD74RkhAHOc1srz2UT4PBs1HSpmv8HsUxMfFnqjQ3qHQ5siOy
         nVHjigU0KPJIH59kclH6JhsU7bIKImkSzzBtJKMSIF0wTdLACUd17rVVbzl2ptuxVRKX
         aFTA==
X-Forwarded-Encrypted: i=1; AJvYcCVBjRndLDSaPJi8+0jeQx6AWerJJXn7O/AoHzQgYP48nm8hu8AaP42fNBy+DqMWhOWNwXWBguHnf0iP@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqnf7AOPuyosIzMFo2dqYJbyajG7MYA6KuY084Wi23Qc9xCNyE
	jD7cVKnXHIP+yeLXRHv7pRhGNgrtsrzg0KnhLh5tBgiEgfhckhB66hgfh7h83Ff1VJI=
X-Gm-Gg: ASbGncsjzJqKgj8BPAThPR832+j3Bo/Qe3EfCFfk0bhRw6gbUH2glCXxJzgqP3dLbEF
	sy01JIBkfAub0ga+hEvWHJJbRNAm7kyykfLmLJ5trmW8tGoqgktVrVLiqZjHrGFX9voeYPZPP3F
	m82WJY1/kHwm8vUdQc4XQGZZhyFnCAKVUTDU11Ayp1/DY+0bcXHqXK/kI+Fdt2Es7CKeZOLlFck
	JahOsGX3p0ztLM8M6HfsafQA5qN1A7/D50c+0rZV6IDw+1HkVpDGkYLQs4qjRXgF2OHo3lM7kpS
	JwQSzylKl88juKcFGkLj0hQaYQGagVdcp1y0ezz5G/T/JW/M/4BrPyrGDFSejLcO5opNAy8Oph5
	xhkob8nCXoSUfBpiRJ61MuuXnEJaxy4gazdq0+A==
X-Google-Smtp-Source: AGHT+IE2RqWOouUNKF0LuMwYDv8VNEg+V4AVmzf6zsck7npghoz21h/jWKBn3nN0q+raGVTCFFwHxQ==
X-Received: by 2002:a05:6000:2510:b0:3d7:7def:8435 with SMTP id ffacd0b85a97d-3d77def8d9dmr1055874f8f.18.1756722425227;
        Mon, 01 Sep 2025 03:27:05 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3cf34493b8csm14441165f8f.59.2025.09.01.03.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 03:27:04 -0700 (PDT)
Date: Mon, 1 Sep 2025 13:27:01 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Jisheng Zhang <jszhang@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 10/14] dmaengine: dma350: Alloc command[] from dma pool
Message-ID: <202508291556.kjNumYgR-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250823154009.25992-11-jszhang@kernel.org>

Hi Jisheng,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jisheng-Zhang/dmaengine-dma350-Fix-CH_CTRL_USESRCTRIGIN-definition/20250824-000425
base:   https://git.kernel.org/pub/scm/linux/kernel/git/vkoul/dmaengine.git next
patch link:    https://lore.kernel.org/r/20250823154009.25992-11-jszhang%40kernel.org
patch subject: [PATCH 10/14] dmaengine: dma350: Alloc command[] from dma pool
config: arm-randconfig-r073-20250829 (https://download.01.org/0day-ci/archive/20250829/202508291556.kjNumYgR-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 13.4.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202508291556.kjNumYgR-lkp@intel.com/

smatch warnings:
drivers/dma/arm-dma350.c:387 d350_get_residue() error: uninitialized symbol 'sgcur'.

vim +/sgcur +387 drivers/dma/arm-dma350.c

5d099706449d54 Robin Murphy  2025-03-12  360  static u32 d350_get_residue(struct d350_chan *dch)
5d099706449d54 Robin Murphy  2025-03-12  361  {
eae79fde2ff50c Jisheng Zhang 2025-08-23  362  	u32 res, xsize, xsizehi, linkaddr, linkaddrhi, hi_new;
eae79fde2ff50c Jisheng Zhang 2025-08-23  363  	int i, sgcur, retries = 3; /* 1st time unlucky, 2nd improbable, 3rd just broken */
eae79fde2ff50c Jisheng Zhang 2025-08-23  364  	struct d350_desc *desc = dch->desc;
5d099706449d54 Robin Murphy  2025-03-12  365  
5d099706449d54 Robin Murphy  2025-03-12  366  	hi_new = readl_relaxed(dch->base + CH_XSIZEHI);
5d099706449d54 Robin Murphy  2025-03-12  367  	do {
5d099706449d54 Robin Murphy  2025-03-12  368  		xsizehi = hi_new;
5d099706449d54 Robin Murphy  2025-03-12  369  		xsize = readl_relaxed(dch->base + CH_XSIZE);
5d099706449d54 Robin Murphy  2025-03-12  370  		hi_new = readl_relaxed(dch->base + CH_XSIZEHI);
5d099706449d54 Robin Murphy  2025-03-12  371  	} while (xsizehi != hi_new && --retries);
5d099706449d54 Robin Murphy  2025-03-12  372  
eae79fde2ff50c Jisheng Zhang 2025-08-23  373  	hi_new = readl_relaxed(dch->base + CH_LINKADDRHI);
eae79fde2ff50c Jisheng Zhang 2025-08-23  374  	do {
eae79fde2ff50c Jisheng Zhang 2025-08-23  375  		linkaddrhi = hi_new;
eae79fde2ff50c Jisheng Zhang 2025-08-23  376  		linkaddr = readl_relaxed(dch->base + CH_LINKADDR);
eae79fde2ff50c Jisheng Zhang 2025-08-23  377  		hi_new = readl_relaxed(dch->base + CH_LINKADDRHI);
eae79fde2ff50c Jisheng Zhang 2025-08-23  378  	} while (linkaddrhi != hi_new && --retries);
eae79fde2ff50c Jisheng Zhang 2025-08-23  379  
eae79fde2ff50c Jisheng Zhang 2025-08-23  380  	for (i = 0; i < desc->sglen; i++) {
eae79fde2ff50c Jisheng Zhang 2025-08-23  381  		if (desc->sg[i].phys == (((u64)linkaddrhi << 32) | (linkaddr & ~CH_LINKADDR_EN)))
eae79fde2ff50c Jisheng Zhang 2025-08-23  382  			sgcur = i;

I'm suprised there isn't a break statement after this assignment.
What if we exit the loop with i == desc->sglen?

eae79fde2ff50c Jisheng Zhang 2025-08-23  383  	}
eae79fde2ff50c Jisheng Zhang 2025-08-23  384  
5d099706449d54 Robin Murphy  2025-03-12  385  	res = FIELD_GET(CH_XY_DES, xsize);
5d099706449d54 Robin Murphy  2025-03-12  386  	res |= FIELD_GET(CH_XY_DES, xsizehi) << 16;
eae79fde2ff50c Jisheng Zhang 2025-08-23 @387  	res <<= desc->sg[sgcur].tsz;
                                                                 ^^^^^
Uninitialized.

eae79fde2ff50c Jisheng Zhang 2025-08-23  388  
eae79fde2ff50c Jisheng Zhang 2025-08-23  389  	for (i = sgcur + 1; i < desc->sglen; i++)
eae79fde2ff50c Jisheng Zhang 2025-08-23  390  		res += (((u32)desc->sg[i].xsizehi << 16 | desc->sg[i].xsize) << desc->sg[i].tsz);
5d099706449d54 Robin Murphy  2025-03-12  391  
eae79fde2ff50c Jisheng Zhang 2025-08-23  392  	return res;
5d099706449d54 Robin Murphy  2025-03-12  393  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


