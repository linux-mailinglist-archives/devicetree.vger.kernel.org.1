Return-Path: <devicetree+bounces-159984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DECAA6D3E8
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 06:57:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B94F916C656
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 05:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 312AF1714A1;
	Mon, 24 Mar 2025 05:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZdECsqXO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4383F78F4C
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742795829; cv=none; b=MQ3fxdvTxW6UMIkdINSkOAmuTwrsq1/TiF1rt2ZF407AoLqoHrZKuScADDwU9znQYJ54FyVNx2IRpBK4iYjLpTHc5xouPOoTZoVVH7p+3EHD06xe25TW3/Yc3TW6HRdON4dZgu1S7KmuRrHuZ/rE0ZY8efTBLPP5Ih8FWLom2aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742795829; c=relaxed/simple;
	bh=yK22GbG4xDR5tpJ2L7cDLmbCpPJ7gOPjq7MbY8FTLKE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=pVHl0Dmcx3Li4dSpQW7Zyiiv0UD3fnDcNn1nvob++ajAe+asMcnAq3PfgUI1wryVTEQStBFv12Xk2iw6GgQBaLIkiClFC8fERbLYafnhj3fwYwT8wdGxR51WW+kiiE6t6f54MXuVAWMB93fIyN2kolRhtFlMJZ5c9KrM5hA3eIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZdECsqXO; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cf05f0c3eso24268995e9.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 22:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742795826; x=1743400626; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4+3RaTrlVAiLgCSwUy9QyVIrIBEVE7upW1lWNHsX+C0=;
        b=ZdECsqXOYnxolbkrkCTS3NlMaPaulE4z5DoaVgcNB2XYDNpQxm8vH85KFhrZHHORH8
         7Itl7N8QdIyNsz4gGWGB7t2abMFCZuAwmZpRrFlBxl281BA9gCOx2v83w8JwfkjZq1yl
         b5EZ2QCbjtYkKkCloilwPDc33KUVQZIyZGNDqi5kmzf36bJ1sdFcePxFz+h71SB2CJS6
         YuMZtu2flR/TF5MYpZji6DgegrasrNDXoiTZp8DUUULlCa3skdj9s55zUH0yPjDgNYAF
         r9Vh8RlaEhuSiazqtPgEzlAIxm5KseVmP0xkrbJcbu3XjWaqBFb4veNo02t74tJL6HRg
         rcyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742795826; x=1743400626;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4+3RaTrlVAiLgCSwUy9QyVIrIBEVE7upW1lWNHsX+C0=;
        b=s+QF5DFpzV1w2r3aG4NrnjaR3PQjODXT0DJx+X1ukqcQUJS6GVteoXAgNpFOXj8LOz
         XWBczEK5vBsnBZvefjqMSzv8Sz5UgZf70Wr/tWiSK3GwgflCdiwLVHE+vThvuTru1xlE
         6nBSiP6vSKoIqs/KNip5Esxicx8Ov4M97B/uYBwRWVyRwsMZuupQybaDrh+oDx7cP1j2
         kGLwgiqYomCj2qkalURhiBDbgSdriM9diJBgzwxqTELbSgVwgZ5F2AKWhZAT/te3CasA
         cZuaYf4B/8iJrEsmJY+PzvmEnCwnX7nJ/2cyvbq8vrDNWMbNfdne1wwP/T2gVUhofeEN
         mG1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXjBCTqYXM64qY5n04auvPVVcdu7C9qbjsCPHfwNkNg7ixyl79ogCm0BseZItsa+AD+5vLlvJis1Dpx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz58UDbGc0t7fN2SKULSctcfm5Q0jqDyAhDvYp0JWhY5lSvBmVT
	VGtD4muIATbeaPNndEk1/4H1O6hf/47e0m2G9EH6lC8/1eoDRQj9d5bcGEADhC8=
X-Gm-Gg: ASbGncsb7pCvGdwtB4WIDyu3p7o4fzlE0xtfnXm6amhbItCZEt2xzb6S/dIJOKYDIo5
	O+nIfN5uiyjvzYkb8rD8CR/7SF3g8eRZq7YyzPtte+LygRAGP+83UrKTC8JrPNk6YoO4Vvihy+7
	z+uXvcBSEmGgNMkB2LtjxkprvPtFPBqsWEThFxX+U0MKp3ZtOS1UyKgxeE4EOdFCLlVZfxl65RY
	fCxHuzRLVa0gZc36sxozU1dHZgpnCcixt/dymMv/TaZBZ5GPGsIKdg00lF3t7Z5/8c+4VRuZdGo
	3/wpvsuRNLrE2kBzGwupFTpH0m/+fQHpEQK3cb2G8ycbdbRmtQ==
X-Google-Smtp-Source: AGHT+IGBJk2IE9p/N0M4OVRPHgVaFd0YOSBb6gH60ACjOhn7ZLP7HV/wA45D9o3sKG+RfqW3dLbOVQ==
X-Received: by 2002:a05:600c:5488:b0:43d:db5:7af8 with SMTP id 5b1f17b1804b1-43d50a31981mr77702895e9.21.1742795825560;
        Sun, 23 Mar 2025 22:57:05 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3997f9b3c2csm9704140f8f.46.2025.03.23.22.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 22:57:05 -0700 (PDT)
Date: Mon, 24 Mar 2025 08:57:02 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, marius.cristea@microchip.com,
	jic23@kernel.org, lars@metafoo.de, robh@kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, krzk+dt@kernel.org,
	conor+dt@kernel.org, oskar.andero@gmail.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, marius.cristea@microchip.com
Subject: Re: [PATCH v2 2/2] iio: adc: adding support for PAC194X
Message-ID: <167bb94a-4c9d-4499-aa7a-cc38428d7297@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250317090803.30003-3-marius.cristea@microchip.com>

Hi,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/marius-cristea-microchip-com/dt-bindings-iio-adc-adding-support-for-PAC194X/20250317-171150
base:   577a66e2e634f712384c57a98f504c44ea4b47da
patch link:    https://lore.kernel.org/r/20250317090803.30003-3-marius.cristea%40microchip.com
patch subject: [PATCH v2 2/2] iio: adc: adding support for PAC194X
config: arm64-randconfig-r071-20250322 (https://download.01.org/0day-ci/archive/20250323/202503230315.DVkVt7Ag-lkp@intel.com/config)
compiler: clang version 21.0.0git (https://github.com/llvm/llvm-project c2692afc0a92cd5da140dfcdfff7818a5b8ce997)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202503230315.DVkVt7Ag-lkp@intel.com/

smatch warnings:
drivers/iio/adc/pac1944.c:1707 pac1944_retrieve_data() error: uninitialized symbol 'ret'.
drivers/iio/adc/pac1944.c:2463 pac1944_write_thresh() warn: inconsistent indenting

vim +/ret +1707 drivers/iio/adc/pac1944.c

e227d6e5b38646 Marius Cristea 2025-03-17  1681  static int pac1944_retrieve_data(struct pac1944_chip_info *info, u32 wait_time)
e227d6e5b38646 Marius Cristea 2025-03-17  1682  {
e227d6e5b38646 Marius Cristea 2025-03-17  1683  	int ret;
e227d6e5b38646 Marius Cristea 2025-03-17  1684  
e227d6e5b38646 Marius Cristea 2025-03-17  1685  	/*
e227d6e5b38646 Marius Cristea 2025-03-17  1686  	 * Check if the minimal elapsed time has passed and if so,
e227d6e5b38646 Marius Cristea 2025-03-17  1687  	 * re-read the chip, otherwise the cached info is just fine
e227d6e5b38646 Marius Cristea 2025-03-17  1688  	 */
e227d6e5b38646 Marius Cristea 2025-03-17  1689  	if (time_after(jiffies, info->chip_reg_data.jiffies_tstamp +
e227d6e5b38646 Marius Cristea 2025-03-17  1690  		       msecs_to_jiffies(PAC1944_MIN_POLLING_TIME_MS))) {
e227d6e5b38646 Marius Cristea 2025-03-17  1691  		/*
e227d6e5b38646 Marius Cristea 2025-03-17  1692  		 * We need to re-read the chip values
e227d6e5b38646 Marius Cristea 2025-03-17  1693  		 * call the pac1944_reg_snapshot
e227d6e5b38646 Marius Cristea 2025-03-17  1694  		 */
e227d6e5b38646 Marius Cristea 2025-03-17  1695  		ret = pac1944_reg_snapshot(info, true,
e227d6e5b38646 Marius Cristea 2025-03-17  1696  					   PAC1944_REFRESH_REG_ADDR,
e227d6e5b38646 Marius Cristea 2025-03-17  1697  					   wait_time);
e227d6e5b38646 Marius Cristea 2025-03-17  1698  		/*
e227d6e5b38646 Marius Cristea 2025-03-17  1699  		 * Re-schedule the work for the read registers timeout
e227d6e5b38646 Marius Cristea 2025-03-17  1700  		 * (to prevent chip regs saturation)
e227d6e5b38646 Marius Cristea 2025-03-17  1701  		 */
e227d6e5b38646 Marius Cristea 2025-03-17  1702  		cancel_delayed_work_sync(&info->work_chip_rfsh);
e227d6e5b38646 Marius Cristea 2025-03-17  1703  		schedule_delayed_work(&info->work_chip_rfsh,
e227d6e5b38646 Marius Cristea 2025-03-17  1704  				      msecs_to_jiffies(PAC1944_MAX_RFSH_LIMIT_MS));
e227d6e5b38646 Marius Cristea 2025-03-17  1705  	}

ret isn't initialized on else path.

e227d6e5b38646 Marius Cristea 2025-03-17  1706  
e227d6e5b38646 Marius Cristea 2025-03-17 @1707  	return ret;
e227d6e5b38646 Marius Cristea 2025-03-17  1708  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


