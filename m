Return-Path: <devicetree+bounces-89004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB3693F961
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 17:28:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EF50281F2E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 15:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A047E158DA0;
	Mon, 29 Jul 2024 15:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oUAFe3ph"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3423158A30
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 15:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722266910; cv=none; b=jUVpKI7RNwCAXCetivSxAmTHl3qWrLejW//wlTrrCpyRAYhLjRz/+b+cK09d5drapYHgIdZqCqj9Ttf/uE0Eo9qpDN0U871Degyz+Ij0O98s9NEbITGZvsih0pwbDY0R4jHF3U3UhVjGlGID54p+5BbgB5gQiUkd6ToxbAshB70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722266910; c=relaxed/simple;
	bh=2VdueXarTxYaEFkEX0WeN1UrxcchMky9c16EYjnuL+M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=i4Dr1E7XyspE3equxDOhYzl4fLwqpSJzkfPQalh+98n7UUOJhs9mWsYg4OmM9FS6P6+kmzfrM6+B+sEeg9+VBubUnHrDgws5NXQPGmN2ixqnu8iJrlk1XOPjcb+cobj5fbl8Ky1drnh1Ag0lhC1b4PW7zxhGlOJ+TTzuSKWYTB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oUAFe3ph; arc=none smtp.client-ip=209.85.161.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5d5af7ae388so1628896eaf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 08:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722266908; x=1722871708; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5qOQyuNMTZUfyqAbsLwySAm5kqczSgpJeWoIZn9UUJg=;
        b=oUAFe3phi+2eBKzQhH1F4D+WATwhpAoBjDiRQInG8UTEsizOWZ8qaB7fwkqFVEHY8M
         UEXOqhJ2KixcULtOA46COMpcgK1j3hwciz9DogNV3OaO7H/rlCna1mYk6nAjUsaEfaEy
         C/GCxFk0BfnaYT9AELDSPjD6+5dvkkdo6rbudXb/IwsZnLS6G5e4qI6GZGFhbt9A8mcd
         EW02QAYNWt/ZnWUt8PZCiquuezwClZAfireBVC9bV0mUXSHDommxEFddk3+B7knV+w8m
         uB88ltEX16Y7Rp+C2rlfKdV0MOjBODBnCitoF6R9g5ga9MzxjoVuK5Czcmtbqln0uJhJ
         eDsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722266908; x=1722871708;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5qOQyuNMTZUfyqAbsLwySAm5kqczSgpJeWoIZn9UUJg=;
        b=dWUnS/ks/C4QHlWi9ssotbPGA5OSQgqj2Ftcx6JFEoLGDHu+lM+endz3OfW3SrdCVe
         x95k/sOFqjEi3JUDOMSdRkMzMCvEpZDICDBj7ia49bJwWjpOXULs3u33TvHg6cbLj0gp
         o8X3g+ZCvPq7jQPolCfJ5zYjVlJZMmYVdEDv80Bt3FJQ7s9SGCTy+zZICOF3qucqdY25
         sKK/PzmBNiKCyVo/LtD3vd+eGN0MZ/jqR/5lsEIqlQwfANmmk2ZN6DqCoL93IOHm21fU
         Aa4DDjIgbLQBu0jxXoqo9Gu48YinWtlUbI5+0SZUPsO/F14LrzStO0IdxkiMwuAzc4kT
         civQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFfp6l2g09Vstdr2W46lbI49noIqcpMgvNJGk/Z32eJhSP9ZzDxrH5wfrUnVvsAte/MCL2bqaALvvFLJteR+3kHgX3dKlfM9xJuQ==
X-Gm-Message-State: AOJu0Yxeyj8HZHWuKj9fpD0QgA6euTCL7JTcOgxdGP5f0FygQSbmvG+4
	sjMdyouj5GTjIAkOlxqOcgu5/OhWFCChzjOuvyr/uF92Bvd/8rHpMdmhP802F+U=
X-Google-Smtp-Source: AGHT+IFgMh59C0XIlRKMyr8wkfMpGdx8PqeQNsD/YBhsvAs4P5UXJrO02yYCLrR7pKKTwqKAlx2f4Q==
X-Received: by 2002:a05:6870:d1ca:b0:254:a218:89e6 with SMTP id 586e51a60fabf-267d67046e1mr3886279fac.23.1722266908048;
        Mon, 29 Jul 2024 08:28:28 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700::17c0])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7093050a3d0sm2136596a34.14.2024.07.29.08.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 08:28:27 -0700 (PDT)
Date: Mon, 29 Jul 2024 10:28:21 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, wangshuaijie@awinic.com, jic23@kernel.org,
	lars@metafoo.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, waqar.hameed@axis.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, wangshuaijie@awinic.com,
	liweilei@awinic.com, kangjiajun@awinic.com
Subject: Re: [PATCH V5 2/2] iio: proximity: aw9610x: Add support for aw9610x
 proximity sensor
Message-ID: <7227ddbf-a851-4997-83ba-b8f8c0fcc722@suswa.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240726061312.1371450-3-wangshuaijie@awinic.com>

Hi,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/wangshuaijie-awinic-com/dt-bindings-iio-aw9610x-Add-bindings-for-aw9610x-sensor/20240726-141450
base:   1722389b0d863056d78287a120a1d6cadb8d4f7b
patch link:    https://lore.kernel.org/r/20240726061312.1371450-3-wangshuaijie%40awinic.com
patch subject: [PATCH V5 2/2] iio: proximity: aw9610x: Add support for aw9610x proximity sensor
config: x86_64-randconfig-r071-20240728 (https://download.01.org/0day-ci/archive/20240728/202407282339.D0ICTGHF-lkp@intel.com/config)
compiler: gcc-13 (Ubuntu 13.2.0-4ubuntu3) 13.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202407282339.D0ICTGHF-lkp@intel.com/

smatch warnings:
drivers/iio/proximity/aw9610x.c:575 aw9610x_read_chipid() error: uninitialized symbol 'reg_val'.

vim +/reg_val +575 drivers/iio/proximity/aw9610x.c

1e0a5bf0d81329 shuaijie wang 2024-07-26  558  static int aw9610x_read_chipid(struct aw9610x *aw9610x)
1e0a5bf0d81329 shuaijie wang 2024-07-26  559  {
1e0a5bf0d81329 shuaijie wang 2024-07-26  560  	unsigned char cnt = 0;
1e0a5bf0d81329 shuaijie wang 2024-07-26  561  	u32 reg_val;
1e0a5bf0d81329 shuaijie wang 2024-07-26  562  	int ret;
1e0a5bf0d81329 shuaijie wang 2024-07-26  563  
1e0a5bf0d81329 shuaijie wang 2024-07-26  564  	while (cnt < AW_READ_CHIPID_RETRIES) {

if cnt == AW_READ_CHIPID_RETRIES then reg_value is uninitialized

1e0a5bf0d81329 shuaijie wang 2024-07-26  565  		ret = aw9610x_i2c_read(aw9610x, REG_CHIPID, &reg_val);
1e0a5bf0d81329 shuaijie wang 2024-07-26  566  		if (ret < 0) {
1e0a5bf0d81329 shuaijie wang 2024-07-26  567  			cnt++;
1e0a5bf0d81329 shuaijie wang 2024-07-26  568  			usleep_range(2000, 3000);
1e0a5bf0d81329 shuaijie wang 2024-07-26  569  		} else {
1e0a5bf0d81329 shuaijie wang 2024-07-26  570  			reg_val = FIELD_GET(AW9610X_CHIPID_MASK, reg_val);
1e0a5bf0d81329 shuaijie wang 2024-07-26  571  			break;
1e0a5bf0d81329 shuaijie wang 2024-07-26  572  		}
1e0a5bf0d81329 shuaijie wang 2024-07-26  573  	}
1e0a5bf0d81329 shuaijie wang 2024-07-26  574  
1e0a5bf0d81329 shuaijie wang 2024-07-26 @575  	if (reg_val == AW9610X_CHIP_ID)
                                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^
It's harmless but the checker is correct to warn

1e0a5bf0d81329 shuaijie wang 2024-07-26  576  		return 0;
1e0a5bf0d81329 shuaijie wang 2024-07-26  577  
1e0a5bf0d81329 shuaijie wang 2024-07-26  578  	return -EINVAL;
1e0a5bf0d81329 shuaijie wang 2024-07-26  579  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


