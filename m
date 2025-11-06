Return-Path: <devicetree+bounces-235726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 330BBC3BF56
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 16:09:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 166334FA536
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 15:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD551346E66;
	Thu,  6 Nov 2025 15:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iwFkRku4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCC4346E59
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 15:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762441438; cv=none; b=CWGW/Y8kTCpQWEVQLa3sQ5oD426FbuOHIkxv2S0FBqfyrgs4tQaJ+fu+UV0JRIxmstHLxgE7nuDM6UOE+twgzuErEsrWiyiAQFIeSwvbihtmMZB2EbAbKKwbuxBORKvl3Q6eYidj9DDoACqjxywOgbl9iglkcOpO6MDk5tEcPh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762441438; c=relaxed/simple;
	bh=55SSt3Gkzzq+ugMem0J0DiZiyJVQiw2q4O9Mf2FxiCg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=SdM8DrcTRXkvqraiS3Uic0zOXIoILkGH9DFvRuVsz9ajR9l0wnvjGItK555Z3tEgl9KMQMVkTod3ylLkH7y3gNeA+xfDqQzfMBi0Avr2ybsKf3BYBfoHPCmWVVtjPZgSMAhbDGlfX+w4PhSDzjhwdJQnd01DEhRKSo0JRLdaRhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iwFkRku4; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b725ead5800so154921366b.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 07:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762441435; x=1763046235; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XRLohXtRGatztz+SeKrGjSMg+wc0GgYqEIBKdX3UGlY=;
        b=iwFkRku4ZHQoUii0hAfzcDfN+Oantsrl1dAT1m2gtYw4IHxGaH2g6XrhQGeiOFvtj6
         ynLGMhB2QPKm0YD5kwnR0nBEGFLgfGWlk5U4HhgzNRHjRTOYyDKGuh6op0pevAjuiV8I
         uVn/OfeAwNX5IxkINWKrC+T7CIGroq5L4AdAFIA+a2B9AnqiXeI7TEAc6mfgv93HudQl
         UGHMcqkOtiDlgsa1mhfGUYiUkdbWmCUXjJzn9iCYhNMCBf8fRteTTTdg20qnOo1xyFCb
         7KPTBroBYPe6H1LgwlDjvcaLw+vyn1gRRoJ6oUs8hCtSb49z/DojYJMXLYlKZebMzyAE
         FYfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762441435; x=1763046235;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XRLohXtRGatztz+SeKrGjSMg+wc0GgYqEIBKdX3UGlY=;
        b=sSGMqlW2o2NGxvZY58SpjsQYwGPguBW8Z9P9LGjy4nvliBMi1otTTqlm7AVrUrHUWU
         3HYzIWBE9uRkowq594lhcuPp8i5flVA08GxSHh2dEK81dxieqjS5ihJZrinXC0STzZs3
         hRVyEKvix838kmX04+x6YGZ40NvJBNtFFTZ9iLbQESrBIJfJiypBoUQ8Mepm4RBiQor4
         lIrTNURwPXXuJWfyyMeEpCmzcsjqRCpRNEDttYkZhfx3Xvg+LVW+zaZbsuvzD8zKoIXK
         D0y9T5G24ZZb79piHO/jQdE01FqNYsKfEwhUKBpwT/O7axbLF0f3uXVUph7x+yq1svDD
         TmXw==
X-Forwarded-Encrypted: i=1; AJvYcCXKjPgz3u4ZBXV3wMSq3W1IoYGGOKDfiZI4qxpNkfd5xpXUyrHXg4N3rdf2gRvy7wU+ulbZjAS4zmpq@vger.kernel.org
X-Gm-Message-State: AOJu0YxfYgMau+K+N5PRLESqtW/E85KVlMe6pkisB705LLqTBnu8uK/A
	vtor9c1pXOrzN47CiwfMG09vJEbbOGWz/NGDmFEryx75QO0nZRjt1XfHw0qSP1K26bQ=
X-Gm-Gg: ASbGncv1ZzRJE+UE02/RWuBEhiAZiMA1M+CxjedFD/DUysYYJUscpenRHx96G4i4s+F
	UGSDM2P27Aabk6ztzvVHN7+XfN5ql5PakEVtvEndf3h+M7UmyTrOqwbg1U7df1SesRa/H89TnS/
	5SmzX3TJJQlRy8l33YXx7aH3ozxdSAU81w3A+6Na8VaFFAKeurE+Q8SIaGjCMQol+ndDy4e3bI3
	Vt4ii1PbvzhhtHwz4l7RQKyLX8Be5bPuOcMx2/4fmvgVlI5LrmPKUHQgXK6uETVtBZ3YDbqAhSc
	ehkv0F1Lvrqj6p0lV4ijiWexevBXyhUXwJ1aw/qSaERVS0dJiuS2772d0vGphwlA8SFaPKd0Y30
	q4CiLXfsAdy4vaW8Jg3AkE5upMNh6H3c4s27yxM2EuGZDINyPVAubq0ChH8LAQN61+w9cM8SDSJ
	sCCq2va964/AnJ
X-Google-Smtp-Source: AGHT+IFnv2kR+7AyxozjbIcjjKi77N+kW4qDPXl6xjDKudbBmTU0vSNFCi9nDzLNKrbJlFvId55g3g==
X-Received: by 2002:a17:907:7b88:b0:b70:a9fd:1170 with SMTP id a640c23a62f3a-b72656112a3mr832404066b.65.1762441434963;
        Thu, 06 Nov 2025 07:03:54 -0800 (PST)
Received: from localhost ([87.213.113.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7289377c0dsm238249566b.20.2025.11.06.07.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 07:03:54 -0800 (PST)
Date: Thu, 6 Nov 2025 18:03:52 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Charan Teja Kalla <charan.kalla@oss.qualcomm.com>,
	robin.murphy@arm.com, will@kernel.org, joro@8bytes.org,
	robh@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
	konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
	bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
	saravanak@google.com, prakash.gupta@oss.qualcomm.com,
	vikash.garodia@oss.qualcomm.com
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Subject: Re: [PATCH 5/6] of: add infra to parse iommu-map per IOMMU cell count
Message-ID: <3fc0cd48-91d3-401b-9102-ebc77de731c4@suswa.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74d4ddf90c0fb485fda1feec5116dc38e5fd23cf.1762235099.git.charan.kalla@oss.qualcomm.com>

Hi Charan,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Charan-Teja-Kalla/of-create-a-wrapper-for-of_map_id/20251104-170223
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/74d4ddf90c0fb485fda1feec5116dc38e5fd23cf.1762235099.git.charan.kalla%40oss.qualcomm.com
patch subject: [PATCH 5/6] of: add infra to parse iommu-map per IOMMU cell count
config: hexagon-randconfig-r072-20251105 (https://download.01.org/0day-ci/archive/20251105/202511051256.fSouTFuY-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project d2625a438020ad35330cda29c3def102c1687b1b)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202511051256.fSouTFuY-lkp@intel.com/

smatch warnings:
drivers/of/base.c:2130 of_iommu_map_id_cell_count() error: uninitialized symbol 'legacy_iommu_cells'.

vim +/legacy_iommu_cells +2130 drivers/of/base.c

5288ad2aeeeb419 Charan Teja Kalla 2025-11-04  2123  static int of_iommu_map_id_cell_count(const __be32 *map, int map_len, u32 cells)
c74d6f4acf99ef3 Charan Teja Kalla 2025-11-04  2124  {
5288ad2aeeeb419 Charan Teja Kalla 2025-11-04  2125  	u32 legacy_iommu_cells;
5288ad2aeeeb419 Charan Teja Kalla 2025-11-04  2126  
c74d6f4acf99ef3 Charan Teja Kalla 2025-11-04  2127  	if (map_len % 4 != 0)
5288ad2aeeeb419 Charan Teja Kalla 2025-11-04  2128  		legacy_iommu_cells = of_iommu_map_id_legacy_cell_count(map, map_len);

legacy_iommu_cells uninitialize on else path

c74d6f4acf99ef3 Charan Teja Kalla 2025-11-04  2129  
5288ad2aeeeb419 Charan Teja Kalla 2025-11-04 @2130  	return legacy_iommu_cells ? : of_iommu_map_id_actual_cell_count(map, map_len, cells);
c74d6f4acf99ef3 Charan Teja Kalla 2025-11-04  2131  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


