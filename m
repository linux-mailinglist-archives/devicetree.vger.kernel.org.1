Return-Path: <devicetree+bounces-118335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5D99B9DEB
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 09:37:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4E271F21176
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 08:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB3A7158866;
	Sat,  2 Nov 2024 08:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xQnG82ir"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E3EA156677
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 08:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730536646; cv=none; b=P4OAmYr1yCVWp1nyfDerI+qrqvposKjsaEkema9qxVi8zJO1Xv2Hq+ghFBlgvTaiAsjAT7YJr4couwH7v1/rQEQUxUMPZuhrnJRuFTX5Y4CGze9b0XhPKKoBa3fqJ4sEk7wCojEEswSxgAB7tkCQdu9N53garSZIRcJtKEuar5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730536646; c=relaxed/simple;
	bh=dUFHckRJ9ilGqoDPaa2PWgH6gnUR89FL98Ke20jbZDQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=HfPa0opV5xlb/BUueLzWGL0yyXOpJ/GxG1yyYIPwIUHQs4KvNRBUFMo4Sg4AVQDeUFu+08zxL+LlxTYguf3hBcu1wJXqieqNUpKe72XFHo0iKmILB58uytdqehH4iyT8KZKofE8xg8X0D7wXhoSPRMB6chCKZIe+WoYmBMDhVHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xQnG82ir; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-37d4fd00574so1633510f8f.0
        for <devicetree@vger.kernel.org>; Sat, 02 Nov 2024 01:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730536643; x=1731141443; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y1wLSM24+3PvyH7ej2g+4G+UpBE6rJoDJskNxC1aAWA=;
        b=xQnG82irzx3qHeDFcj8DJILRW47BdYOJKYPrb4l1uoXmTlJTl19UXOpxXJvRd4dDJw
         JGitTk4b9JaFEmfGT6/YASZLEcDtMV/fiLb1CKh9CE+n38ksm51Z7/j28xY2vKPPWKIb
         wVs8l8ljC/pzRGlCruHMYbyZRHt9FLDsQZ2KnV4PihZB2vDOCoyY++SDBgyVk+YXg5z1
         ALlStqVdF8QZ4DBW/fAumL6knJFrQ2JJWUXf/Ougt4rJgExZCYRjNBqBS7Yw0+m8f/0Y
         qLnrmrRi68gYcw7McVn0ogudxURg8Ptc+c8IoPQKfBYGZ7Moc7sLrm1lov30hILm1lrq
         KEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730536643; x=1731141443;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y1wLSM24+3PvyH7ej2g+4G+UpBE6rJoDJskNxC1aAWA=;
        b=nmuiJsSP7QrqFNnxGjMoe1R5GjJg1CTWTS+61qX4cT9GQ0Q0ij7PxSx++1dnSD3roz
         jB4UjUt8g3mlH0fB8TfNuTDo7VZ0bBFUxJB97qoDyfs0O69Mvf7LE0FEPyUCxvNmBOR9
         MosgQbhCFzvtHNB2J/elrCHeLlC2JLGmgpgaHtRMABJfHcK9k2LfKK0qK5ojOl6T3aDZ
         7i+7Ra5m93dxx2y62R2ty6xb6ZO/3XSFiYWmmJGyGsJXYi2JxzZDATQq+PvoFT4K1ljE
         Z52TrSPkkktiJYhRj+fQU279oEcdYA7IuGLVs/mgJv2QEIf2XetaUfEtv4YDZHJA1Xop
         eGpw==
X-Forwarded-Encrypted: i=1; AJvYcCXIqhM/aCSceKMScpFt5C0zdnIvvNrZjrY8TrBUghTKHnY1YYb6mkiw9C0TKsflbXhStOGLAZavGn1E@vger.kernel.org
X-Gm-Message-State: AOJu0YyFoMD8hZyU0MtqacclBCafhHzPRCXjoPjGHapTfew2TTfYtUG8
	/tUvLNiRROBl29rZMkX6ZPwF5SAKDAbIfzsDhF+1VKGBTnakR7QLYS8quGv0sXk=
X-Google-Smtp-Source: AGHT+IH44ILAIvwuI9zYhtmAcV7RoQNrvn7NrERInPHKHUhKGWu6xeRArhlwj9NNXrDVF25LJw7gNw==
X-Received: by 2002:a05:6000:18a9:b0:367:8e57:8 with SMTP id ffacd0b85a97d-381c79e3b75mr5719372f8f.19.1730536642787;
        Sat, 02 Nov 2024 01:37:22 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d5c65c7sm86574345e9.19.2024.11.02.01.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2024 01:37:22 -0700 (PDT)
Date: Sat, 2 Nov 2024 11:37:18 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chester Lin <chester62515@gmail.com>,
	Matthias Brugger <mbrugger@suse.com>,
	Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>,
	Larisa Grigore <larisa.grigore@nxp.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>, Lee Jones <lee@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	NXP S32 Linux Team <s32@nxp.com>,
	Christophe Lizzi <clizzi@redhat.com>,
	Alberto Ruiz <aruizrui@redhat.com>,
	Enric Balletbo <eballetb@redhat.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	imx@lists.linux.dev
Subject: Re: [PATCH v5 2/7] mfd: nxp-siul2: add support for NXP SIUL2
Message-ID: <48498f47-1601-432b-bde5-f487668d1e85@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241101080614.1070819-3-andrei.stefanescu@oss.nxp.com>

Hi Andrei,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Andrei-Stefanescu/dt-bindings-mfd-add-support-for-the-NXP-SIUL2-module/20241101-160940
base:   https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git devel
patch link:    https://lore.kernel.org/r/20241101080614.1070819-3-andrei.stefanescu%40oss.nxp.com
patch subject: [PATCH v5 2/7] mfd: nxp-siul2: add support for NXP SIUL2
config: csky-randconfig-r072-20241102 (https://download.01.org/0day-ci/archive/20241102/202411021431.282g2yZy-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 14.1.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202411021431.282g2yZy-lkp@intel.com/

smatch warnings:
drivers/mfd/nxp-siul2.c:311 nxp_siul2_init_regmap() error: uninitialized symbol 'ret'.

vim +/ret +311 drivers/mfd/nxp-siul2.c

5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  267  static int nxp_siul2_init_regmap(struct platform_device *pdev,
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  268  				 void __iomem *base, int siul)
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  269  {
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  270  	struct regmap_config regmap_configs[SIUL2_NUM_REG_TYPES] = {
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  271  		[SIUL2_MPIDR]	= nxp_siul2_regmap_generic_conf,
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  272  		[SIUL2_IRQ]	= nxp_siul2_regmap_irq_conf,
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  273  		[SIUL2_MSCR]	= nxp_siul2_regmap_generic_conf,
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  274  		[SIUL2_IMCR]	= nxp_siul2_regmap_generic_conf,
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  275  		[SIUL2_PGPDO]	= nxp_siul2_regmap_pgpdo_conf,
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  276  		[SIUL2_PGPDI]	= nxp_siul2_regmap_pgpdi_conf,
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  277  	};
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  278  	const struct nxp_siul2_reg_range_info *tmp_range;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  279  	struct regmap_config *tmp_conf;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  280  	struct nxp_siul2_info *info;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  281  	struct nxp_siul2_mfd *priv;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  282  	void __iomem *reg_start;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  283  	int i, ret;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  284  
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  285  	priv = platform_get_drvdata(pdev);
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  286  	info = &priv->siul2[siul];
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  287  
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  288  	for (i = 0; i < SIUL2_NUM_REG_TYPES; i++) {
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  289  		if (!s32g2_reg_ranges[siul][i].valid)
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  290  			continue;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  291  
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  292  		tmp_range = &s32g2_reg_ranges[siul][i];
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  293  		tmp_conf = &regmap_configs[i];
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  294  		tmp_conf->name = tmp_range->reg_name;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  295  		tmp_conf->max_register =
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  296  			tmp_range->reg_end_offset - tmp_range->reg_start_offset;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  297  
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  298  		if (tmp_conf->cache_type != REGCACHE_NONE)
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  299  			tmp_conf->num_reg_defaults_raw =
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  300  				tmp_conf->max_register / tmp_conf->reg_stride;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  301  
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  302  		if (tmp_range->reg_access) {
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  303  			tmp_conf->wr_table = tmp_range->reg_access;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  304  			tmp_conf->rd_table = tmp_range->reg_access;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  305  		}
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  306  
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  307  		reg_start = base + tmp_range->reg_start_offset;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  308  		info->regmaps[i] = devm_regmap_init_mmio(&pdev->dev, reg_start,
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  309  							 tmp_conf);
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  310  		if (IS_ERR(info->regmaps[i])) {
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01 @311  			dev_err(&pdev->dev, "regmap %d init failed: %d\n", i,
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  312  				ret);

Do this like: dev_err(&pdev->dev, "regmap %d init failed: %pe\n", i, info->regmaps[i]);

5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  313  			return PTR_ERR(info->regmaps[i]);
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  314  		}
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  315  	}
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  316  
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  317  	return 0;
5c0b3edcf6df17 Andrei Stefanescu 2024-11-01  318  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


