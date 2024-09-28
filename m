Return-Path: <devicetree+bounces-106025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CB7988EC2
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2024 11:18:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7DC71B2145E
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2024 09:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD66B19E965;
	Sat, 28 Sep 2024 09:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iF0+1lw9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE61D15B987
	for <devicetree@vger.kernel.org>; Sat, 28 Sep 2024 09:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727515091; cv=none; b=ZwlrBJaTcu/h106mHs1SxLzemwo9oQMgdl6MGWD0OLkh4Fm/Uy+kiD2LSd2GzWqc2oK+719qzwJI4xKKXKCA17Cecr2qVu59LvTqRatrYcO3tiRnAtE+rrhWhqEylht7+1b5ERLqGtkrTR+8iDXWq+W18bafSf8AMM8bvU29024=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727515091; c=relaxed/simple;
	bh=/tnHTMVqWE4db5Wn37v006A8yI2jDJs76MG/NuX+nIw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=dB99EznGh1Di7e1QsiOB7WmG0g7ydcS78NQs3iS8z3VIpguq7ZC29xPFv2xUckPtP2zwOXTjG0Kd2KYRsZD0s+q7wRp/sI8yQuieTmXO5ttNAXKb+fter7IskJY/YwEKnZmput+Y8SW/rvpTAb7NhI0WB6R55XARb5hl+vfENlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iF0+1lw9; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37cd831ab06so808979f8f.0
        for <devicetree@vger.kernel.org>; Sat, 28 Sep 2024 02:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727515088; x=1728119888; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GC9KpjYQ8SyUGpndgfxHfRjpZcEF2RD6QHN1LZE1WG4=;
        b=iF0+1lw9M3hJg6o7a48+2NmTfL/ymksjWBnsE4ujvV4c1vvNUcbDYqk0ITXyD19UkF
         PpbUHw+Eb6mKL1/22yBmFYm4G2zeC0PlHGQSGQ2wTkB3LFkiwVxTszL9AkKe/hi/r3NF
         +hEhc3ogSxblKqWlYYOdYyOy4+xGPR4VwovS4n1pidLXf1NY3+4Y3PJl4ZbVR9c1cbdJ
         LC8Fnt2Wx3h/cB1bL7fg/2EVgCNt1NPcItb+rXXIVxQZkeaPCI3Jd9JOGgl38DHN45OP
         XLPjyYEdQ6RtzGj7oCNgCuOZzkxJdLN3EP1+po5zmS0DoytbPAsIo2pEmfScOxhatoOG
         k5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727515088; x=1728119888;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GC9KpjYQ8SyUGpndgfxHfRjpZcEF2RD6QHN1LZE1WG4=;
        b=lDCO/Iwl0YbKOfF6hl6arbKqQEswEjm+B3UelXUNZ12Agak3K+K9zvDHa1eSgQoy3g
         +wuu38c1XaFbW4ADZI1w0fBBRoCWlBIT7BOwaQsC9Oyw8icApJ17J3mJbjExCvorek4l
         ufjuMCYge14YFE32a5HH31+Pwr2pd20jZD47jQNQd3BFhVZYk1E3ofVdplSWHQ4a/EQF
         qK475Ukex6hp5dewOhaqEEgk2uXD6H6VCfA3d/EfIZyTecfHDZcLakJ4ZaBM3gZK4GUf
         nnr1ldMuDJgBr+aSpfO777vpDw+WuCY0FIGE5if51jK8TAQ/Qp5i+TV9qQ33Fzbz6PCH
         7H1w==
X-Forwarded-Encrypted: i=1; AJvYcCUUCCbadZWt6ibGL9Ln0hoPBwsJ/nx90I/PZ0vaoq11S4ncowSZ5OB4qMIyzmPvcoj+b3JEotOX934H@vger.kernel.org
X-Gm-Message-State: AOJu0YxAjlkoUcWLwmD31f2bg275HqMzzogaNw7iHPsh3eYTgNkAd9gz
	+Nn8oAjBpGUUBlP2RjUEHXzqY/EgDAowdm7LiYSOmUZAcyOXZ+jrtD2lMSbil3k=
X-Google-Smtp-Source: AGHT+IHS0T6F//UR7TqdmzA4oQxAr73u64ywuJhd1FFZKMRBp+6yuNZBQ4yS/8ZiDX6LnTE9hm/hsw==
X-Received: by 2002:adf:9b87:0:b0:37c:d12c:17e0 with SMTP id ffacd0b85a97d-37cd5b285c8mr3832374f8f.56.1727515087958;
        Sat, 28 Sep 2024 02:18:07 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cd57450c7sm4335945f8f.101.2024.09.28.02.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Sep 2024 02:18:07 -0700 (PDT)
Date: Sat, 28 Sep 2024 12:17:48 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Igor Prusov <ivprusov@salutedevices.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org, kernel@salutedevices.com,
	prusovigor@gmail.com
Subject: Re: [PATCH v3 6/6] ASoC: codecs: Add NeoFidelity NTP8835 codec
Message-ID: <3a614d4a-28b0-45f4-a3be-09f312a8e679@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240925-ntp-amps-8918-8835-v3-6-e2459a8191a6@salutedevices.com>

Hi Igor,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Igor-Prusov/dt-bindings-vendor-prefixes-Add-NeoFidelity-Inc/20240925-230818
base:   c7fbbb45ef78ff349d16923b516bc8667367d1a6
patch link:    https://lore.kernel.org/r/20240925-ntp-amps-8918-8835-v3-6-e2459a8191a6%40salutedevices.com
patch subject: [PATCH v3 6/6] ASoC: codecs: Add NeoFidelity NTP8835 codec
config: alpha-randconfig-r072-20240928 (https://download.01.org/0day-ci/archive/20240928/202409281054.DUTb5KxU-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.3.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202409281054.DUTb5KxU-lkp@intel.com/

smatch warnings:
sound/soc/codecs/ntp8835.c:431 ntp8835_i2c_probe() warn: passing zero to 'PTR_ERR'

vim +/PTR_ERR +431 sound/soc/codecs/ntp8835.c

c4c94fd2babcb9 Igor Prusov 2024-09-25  412  static int ntp8835_i2c_probe(struct i2c_client *i2c)
c4c94fd2babcb9 Igor Prusov 2024-09-25  413  {
c4c94fd2babcb9 Igor Prusov 2024-09-25  414  	struct ntp8835_priv *ntp8835;
c4c94fd2babcb9 Igor Prusov 2024-09-25  415  	struct regmap *regmap;
c4c94fd2babcb9 Igor Prusov 2024-09-25  416  	int ret;
c4c94fd2babcb9 Igor Prusov 2024-09-25  417  
c4c94fd2babcb9 Igor Prusov 2024-09-25  418  	ntp8835 = devm_kzalloc(&i2c->dev, sizeof(*ntp8835), GFP_KERNEL);
c4c94fd2babcb9 Igor Prusov 2024-09-25  419  	if (!ntp8835)
c4c94fd2babcb9 Igor Prusov 2024-09-25  420  		return -ENOMEM;
c4c94fd2babcb9 Igor Prusov 2024-09-25  421  
c4c94fd2babcb9 Igor Prusov 2024-09-25  422  	ntp8835->i2c = i2c;
c4c94fd2babcb9 Igor Prusov 2024-09-25  423  
c4c94fd2babcb9 Igor Prusov 2024-09-25  424  	ntp8835->reset = devm_reset_control_get_shared(&i2c->dev, NULL);
c4c94fd2babcb9 Igor Prusov 2024-09-25  425  	if (IS_ERR(ntp8835->reset))
c4c94fd2babcb9 Igor Prusov 2024-09-25  426  		return dev_err_probe(&i2c->dev, PTR_ERR(ntp8835->reset),
c4c94fd2babcb9 Igor Prusov 2024-09-25  427  				     "Failed to get reset\n");
c4c94fd2babcb9 Igor Prusov 2024-09-25  428  
c4c94fd2babcb9 Igor Prusov 2024-09-25  429  	ret = reset_control_deassert(ntp8835->reset);
c4c94fd2babcb9 Igor Prusov 2024-09-25  430  	if (ret)
c4c94fd2babcb9 Igor Prusov 2024-09-25 @431  		return dev_err_probe(&i2c->dev, PTR_ERR(ntp8835->reset),

PTR_ERR(ret)

c4c94fd2babcb9 Igor Prusov 2024-09-25  432  				     "Failed to deassert reset\n");
c4c94fd2babcb9 Igor Prusov 2024-09-25  433  
c4c94fd2babcb9 Igor Prusov 2024-09-25  434  	dev_set_drvdata(&i2c->dev, ntp8835);
c4c94fd2babcb9 Igor Prusov 2024-09-25  435  
c4c94fd2babcb9 Igor Prusov 2024-09-25  436  	ntp8835_reset_gpio(ntp8835);
c4c94fd2babcb9 Igor Prusov 2024-09-25  437  
c4c94fd2babcb9 Igor Prusov 2024-09-25  438  	regmap = devm_regmap_init_i2c(i2c, &ntp8835_regmap);
c4c94fd2babcb9 Igor Prusov 2024-09-25  439  	if (IS_ERR(regmap))
c4c94fd2babcb9 Igor Prusov 2024-09-25  440  		return dev_err_probe(&i2c->dev, PTR_ERR(regmap),
c4c94fd2babcb9 Igor Prusov 2024-09-25  441  				     "Failed to allocate regmap\n");
c4c94fd2babcb9 Igor Prusov 2024-09-25  442  
c4c94fd2babcb9 Igor Prusov 2024-09-25  443  	ret = devm_snd_soc_register_component(&i2c->dev, &soc_component_ntp8835,
c4c94fd2babcb9 Igor Prusov 2024-09-25  444  					      &ntp8835_dai, 1);
c4c94fd2babcb9 Igor Prusov 2024-09-25  445  	if (ret)
c4c94fd2babcb9 Igor Prusov 2024-09-25  446  		return dev_err_probe(&i2c->dev, ret,
c4c94fd2babcb9 Igor Prusov 2024-09-25  447  				     "Failed to register component\n");
c4c94fd2babcb9 Igor Prusov 2024-09-25  448  
c4c94fd2babcb9 Igor Prusov 2024-09-25  449  	ntp8835->mclk = devm_clk_get_enabled(&i2c->dev, "mclk");
c4c94fd2babcb9 Igor Prusov 2024-09-25  450  	if (IS_ERR(ntp8835->mclk))
c4c94fd2babcb9 Igor Prusov 2024-09-25  451  		return dev_err_probe(&i2c->dev, PTR_ERR(ntp8835->mclk), "failed to get mclk\n");
c4c94fd2babcb9 Igor Prusov 2024-09-25  452  
c4c94fd2babcb9 Igor Prusov 2024-09-25  453  	return 0;
c4c94fd2babcb9 Igor Prusov 2024-09-25  454  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


