Return-Path: <devicetree+bounces-98931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 966D09680C3
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 09:37:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D2224B20DA3
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 07:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3E07176FD2;
	Mon,  2 Sep 2024 07:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BtvK1eBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1914D156242
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 07:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725262641; cv=none; b=V0R4RXD/wzT/PfAMCXRolygamf2ZNOzk90JBIYaSjo5szckaY5vo1eZKDPIssUQES0CZgrmExri4c5PWcxQs5SfG8E/Cl05YfnhrYHtNkH0EcAI0XHZaN/XXavTkyI2T+d73ASmq6Jg5am5FH302OcxtGUnBfJWO70e6fcm0Pn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725262641; c=relaxed/simple;
	bh=ZqV7LNsiVGHoUM5UGbtwqKTKpF3Q0UUwmwKyZ9B64k4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=PR437O2GYRIguKfZtZxU3u0y2wDO9TiQVjg4OnvX85XMc6YAMi0IiwB6an+WaT5jtKctgcUMmP5xVu3UXSCiUIantlxEL+Xh353D9G77Wy9RlZMUKi2LeLBaxwPJXBaz3Ab6mjCikEiqu9Ka8tYkkaBz79hMmIccVt7+/FokNIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BtvK1eBe; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42bb81e795bso31514685e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 00:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725262638; x=1725867438; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lFxf56tpsu9MCJOLHsalfoP4zZVv/tiIqwxHml+ydYU=;
        b=BtvK1eBeKio/O4JZCCkk4AZCWUTzIKYe5w/5S0VZSeV2dPbTXSw6eeZQhfDMHFire0
         PG3PKG/wFvvTZqIKNMx7px9HDnHBFbu5pS2BnGlnJeLGg0jfXgvWztY88wlAAJFk+WmX
         j9mzlDRNjkGanGih9Y9ZLE77alTvQ3LOpjo+2s/bfXYcBg3RU2Rt8nKvEXCSYVfI5CFy
         DQeGJGxHhVLQ3WmCN44HG4VeiPtx5qvTJzUM3oYgyHpZVp0QGFu8SyUmqYnWbXGVdNq1
         wZU4xfEQmxNu+Jm3LetKb/SVFFtzP4gD7pBMlalSUZpkEFdhMf9eIkKXQo1AmF8foeqL
         9wbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725262638; x=1725867438;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lFxf56tpsu9MCJOLHsalfoP4zZVv/tiIqwxHml+ydYU=;
        b=RbVQ/eCh7ffHhCd9LyAKTkM96A/lbBVdLKOMtnK1qxx7XkMKauHqV6Hec8WG6J5tMN
         09XzOvLGGvGquH+zNotMvtePDLxUFPLcVetl07N7yti0iZFqfFHZcb2a+WIYZjnRsz+P
         Vm3clWuDt9JzaU+2oAwWtuAcXn15VLquiwCmYgGhSRbrz7FIXkjh5drZSncblKz7FpFh
         ggONRHJtLBlK1CkMOj6OOLxXLSLSguOxhR1fFQ3qs/zJ2+jjIqS7v4bmTizNbaJaP2G1
         9dj+MuiAT0omrpMtMz4065O+Fwj3Pa9yqsiiuCnCiZ4T56FVAlmFHLIsh9K+upq8c2IK
         aHPw==
X-Forwarded-Encrypted: i=1; AJvYcCU8T1uGk+9qYBTacV6B2vdT8TniqFfaXJhmsE/iNujYiBDyoihIdhBqFgpq1inHveH3nLDtcgUMbDUw@vger.kernel.org
X-Gm-Message-State: AOJu0YzVhzi4gLuRAKXnLDyRrUXEyzQeOJsc+UkmDrU+ovkEydItB36Q
	LYR6zJRo02NIhcDnMz9mhzDEd51uDXNCGgem0Xps5Q2UdFBnb+ZyaU+pezqIfR8=
X-Google-Smtp-Source: AGHT+IH3Qcwv2NC2E574s+f0osfse5E8+QD0KTABLXftqeISTl0ZTPFa2vr6Y/cwqXkJEIRkULQ/NQ==
X-Received: by 2002:a05:600c:1554:b0:428:18d9:9963 with SMTP id 5b1f17b1804b1-42bbb436e16mr71077435e9.22.1725262638228;
        Mon, 02 Sep 2024 00:37:18 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bb6df7c5bsm128058675e9.23.2024.09.02.00.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 00:37:17 -0700 (PDT)
Date: Mon, 2 Sep 2024 10:37:13 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Lorenzo Bianconi <lorenzo@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, upstream@airoha.com,
	angelogioacchino.delregno@collabora.com,
	linux-arm-kernel@lists.infradead.org, lorenzo.bianconi83@gmail.com,
	ansuelsmth@gmail.com, Lorenzo Bianconi <lorenzo@kernel.org>
Subject: Re: [PATCH 4/7] clk: en7523: introduce chip_scu regmap
Message-ID: <891de723-5e14-4540-8716-a465afd7a440@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240831-clk-en7581-syscon-v1-4-5c2683541068@kernel.org>

Hi Lorenzo,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Lorenzo-Bianconi/dt-bindings-clock-airoha-update-reg-mapping-for-EN7581-SoC/20240831-152135
base:   f0e992956eb617c8f16119944bfe101dea074147
patch link:    https://lore.kernel.org/r/20240831-clk-en7581-syscon-v1-4-5c2683541068%40kernel.org
patch subject: [PATCH 4/7] clk: en7523: introduce chip_scu regmap
config: nios2-randconfig-r072-20240902 (https://download.01.org/0day-ci/archive/20240902/202409021114.11d1W3PJ-lkp@intel.com/config)
compiler: nios2-linux-gcc (GCC) 14.1.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202409021114.11d1W3PJ-lkp@intel.com/

New smatch warnings:
drivers/clk/clk-en7523.c:471 en7581_register_clocks() error: uninitialized symbol 'hw'.
drivers/clk/clk-en7523.c:471 en7581_register_clocks() warn: passing zero to 'PTR_ERR'

Old smatch warnings:
drivers/clk/clk-en7523.c:478 en7581_register_clocks() error: uninitialized symbol 'hw'.
drivers/clk/clk-en7523.c:478 en7581_register_clocks() warn: passing zero to 'PTR_ERR'

vim +/hw +471 drivers/clk/clk-en7523.c

f114fc7e44857f Lorenzo Bianconi 2024-08-31  459  static void en7581_register_clocks(struct device *dev, struct clk_hw_onecell_data *clk_data,
f114fc7e44857f Lorenzo Bianconi 2024-08-31  460  				   struct regmap *map, void __iomem *base)
f114fc7e44857f Lorenzo Bianconi 2024-08-31  461  {
f114fc7e44857f Lorenzo Bianconi 2024-08-31  462  	struct clk_hw *hw;
f114fc7e44857f Lorenzo Bianconi 2024-08-31  463  	u32 rate;
f114fc7e44857f Lorenzo Bianconi 2024-08-31  464  	int i;
f114fc7e44857f Lorenzo Bianconi 2024-08-31  465  
f114fc7e44857f Lorenzo Bianconi 2024-08-31  466  	for (i = 0; i < ARRAY_SIZE(en7523_base_clks); i++) {
f114fc7e44857f Lorenzo Bianconi 2024-08-31  467  		const struct en_clk_desc *desc = &en7523_base_clks[i];
f114fc7e44857f Lorenzo Bianconi 2024-08-31  468  		u32 val, reg = desc->div_reg ? desc->div_reg : desc->base_reg;
f114fc7e44857f Lorenzo Bianconi 2024-08-31  469  
f114fc7e44857f Lorenzo Bianconi 2024-08-31  470  		if (regmap_read(map, desc->base_reg, &val)) {
f114fc7e44857f Lorenzo Bianconi 2024-08-31 @471  			pr_err("Failed reading fixed clk rate %s: %ld\n",
f114fc7e44857f Lorenzo Bianconi 2024-08-31  472  			       desc->name, PTR_ERR(hw));
                                                                                                   ^^
Uninitialized

f114fc7e44857f Lorenzo Bianconi 2024-08-31  473  			continue;
f114fc7e44857f Lorenzo Bianconi 2024-08-31  474  		}
f114fc7e44857f Lorenzo Bianconi 2024-08-31  475  		rate = en7523_get_base_rate(desc, val);
f114fc7e44857f Lorenzo Bianconi 2024-08-31  476  
f114fc7e44857f Lorenzo Bianconi 2024-08-31  477  		if (regmap_read(map, reg, &val)) {
f114fc7e44857f Lorenzo Bianconi 2024-08-31  478  			pr_err("Failed reading fixed clk div %s: %ld\n",
f114fc7e44857f Lorenzo Bianconi 2024-08-31  479  			       desc->name, PTR_ERR(hw));
                                                                                                   ^^
Uniniitialized

f114fc7e44857f Lorenzo Bianconi 2024-08-31  480  			continue;
f114fc7e44857f Lorenzo Bianconi 2024-08-31  481  		}
f114fc7e44857f Lorenzo Bianconi 2024-08-31  482  		rate /= en7523_get_div(desc, val);
f114fc7e44857f Lorenzo Bianconi 2024-08-31  483  
f114fc7e44857f Lorenzo Bianconi 2024-08-31  484  		hw = clk_hw_register_fixed_rate(dev, desc->name, NULL, 0, rate);
f114fc7e44857f Lorenzo Bianconi 2024-08-31  485  		if (IS_ERR(hw)) {
f114fc7e44857f Lorenzo Bianconi 2024-08-31  486  			pr_err("Failed to register clk %s: %ld\n",
f114fc7e44857f Lorenzo Bianconi 2024-08-31  487  			       desc->name, PTR_ERR(hw));
f114fc7e44857f Lorenzo Bianconi 2024-08-31  488  			continue;
f114fc7e44857f Lorenzo Bianconi 2024-08-31  489  		}
f114fc7e44857f Lorenzo Bianconi 2024-08-31  490  
f114fc7e44857f Lorenzo Bianconi 2024-08-31  491  		clk_data->hws[desc->id] = hw;
f114fc7e44857f Lorenzo Bianconi 2024-08-31  492  	}
f114fc7e44857f Lorenzo Bianconi 2024-08-31  493  
f114fc7e44857f Lorenzo Bianconi 2024-08-31  494  	hw = en7523_register_pcie_clk(dev, base);
f114fc7e44857f Lorenzo Bianconi 2024-08-31  495  	clk_data->hws[EN7523_CLK_PCIE] = hw;
f114fc7e44857f Lorenzo Bianconi 2024-08-31  496  
f114fc7e44857f Lorenzo Bianconi 2024-08-31  497  	clk_data->num = EN7523_NUM_CLOCKS;
f114fc7e44857f Lorenzo Bianconi 2024-08-31  498  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


