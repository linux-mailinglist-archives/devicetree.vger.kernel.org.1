Return-Path: <devicetree+bounces-230378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C32C01E2D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:48:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B9DA1A64B35
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D1673314C0;
	Thu, 23 Oct 2025 14:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EjumFBZy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1560D3314C4
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761230894; cv=none; b=X3crbSkecuWEimgGQLBXoDhI24Qk5uWwtnQqgtYYcOlqJyrzIlDEDQvYu2kkUO7j+xYpCdwOMYyQMeObUCwbjrWhoshiJm+o4dEZArwIhIvDBFSvtC31/CVOEhSPJZzVqswnqLWaWrz6C4xB6sUHVdQoXsz0umODsfNkkOtXCnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761230894; c=relaxed/simple;
	bh=MgOdUmhxFApDz4sRw7UlK/dEuErVOukFGzY2IjjkGxw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=olbjqWJcdtrHUPmStSrlzgths/fLxSlths5c4YfknSNCfX2/Jti9W/LpShQDiGpEKZiLY9cXsDQkEjDSFcouDwpq3WEh8+NxiLAJgnDdKNuI+2BDElnmbO4I6zHSlaAI/GjlxCkJ7EMw8lPtDUUu1ymUKrakiHSuMQzXyO6DyJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EjumFBZy; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4712c6d9495so5497355e9.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 07:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761230889; x=1761835689; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gOu4NGMCUBSkrR2LXCmniFlUsFFrudDXlxk8VUy4Cb0=;
        b=EjumFBZy07vLjQopGqIfS0VTXSaIHQB4XIi+q0zRDye4Br3CaeB5Y3NewkQzHfrO2Q
         udBu6lU/t7hzbmFkIZmaIWs70QOgIMA3bsy7Mx2uAF/zgklrJqtNDZtKcDBUrtXby1YP
         I32M6K2WqEB8SCZ3nJgOZ6Ube5/PB6/djCZb/ARjpOr2wGx8SwlWTzWw0KKLpmzgs0VN
         I2zQ3rYFDyPsKql2wzsi+wYadfUFOdVo9wchaFJG9doB8gNly5gFEkfKdTEz6u9c0MM9
         w2Y5N6UYin2y1f2c5xBjwoQVWVLlsyjQgjbs1AwoVhj6CArQTSPj4+Ww4l/7wYJTzOo2
         1mGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761230889; x=1761835689;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gOu4NGMCUBSkrR2LXCmniFlUsFFrudDXlxk8VUy4Cb0=;
        b=Rabw8b0yyl6kFFq4avBufBvNajmgn2XxhryeLOdoedJYnaaezSXiGPu62/tAwSY+iV
         Tm5Z3VHf6GAWBhjwUmTrW/Y1O4WyAYePP1I1gBJhZA/w3sG8WB1PplvIDNTV46+bFWk/
         Ff84JvAxaE5MErLQEl/nA6YMUYwh1cLMhUtIpHdhVeUdrelmKFJ8+mdi5ieBbPk038mb
         yDXveV27rtL8I82//ClOAqN7UR/VfF6tfXALTvRVPqdJ68z8+ekbO+PIbTDRa7ZMLbwy
         489IHAe/omiCJjqgw7kOZXB6FokZDYrV9OO/9v2H0noML/oEIBUSTAaaCjvXVEnWx8Ik
         gPTg==
X-Forwarded-Encrypted: i=1; AJvYcCUz8ZzS/x+uaoVROfu1EJBuG+6EWCAhVKxG2fa9y5Ufs83iq3qTB9R+D3cWelcxSlergztEz41XLFcX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7rhbUKYGvGad+9F09S/ATL8j1RAKpjtjUKmSjoAvhY6qdC0nq
	wY0hhnGOwieE1GB/vA9raYO2oOhOkwH88HeOkwZ0YTYHdjUF5q68mzfJieKmx3y69zI=
X-Gm-Gg: ASbGncvzWbvWwFiAqtn4r0eZC2WUwCausqPE+Z1S6TbJ9sgfiX/bRDr3JldLsieERmU
	3EVDATbz4WxzxTrLc374omuDX2fsnBTq38MsMlcHeIpBY86001QKjMIhkG4DxtBbhaaI67C05TX
	ZXksFjTwL21aS7uDlWxk70FZaff6w4AdLKP9Fk5DwDKWU9WRfGawogrM5A18tNbjujgXuRnG4fO
	9R0iXZDH1F2kNjq3CSJTXtcvuVMmjnpjUNhRX1SdsEhp7W2pEJ79H+tCoarPY190dJody6/yXc0
	FNjJd1tXsjSTojXWs2n8zGILLZtDwgF7QkBM2rFz8zPEhv2DlHCcvpSXS4ipQ5CADHf2zUSuJH1
	I84SlU7iyOcYnEfVfLieWUr1mVkTyWCnQcKrD3ZN7AnWBBAw1aXh1KtQpRmRq0IyilplaAeenJP
	wYCkrijwIen759ddEV
X-Google-Smtp-Source: AGHT+IHPh2MT5lwbkEnF6WyBRT0yvdgZZWzMZDal2Q67sdKk48DCYJobcUZUTlENYCgL3UDZOXyWQA==
X-Received: by 2002:a05:600c:37c7:b0:46e:477a:16cc with SMTP id 5b1f17b1804b1-47117902f6cmr144699475e9.24.1761230889325;
        Thu, 23 Oct 2025 07:48:09 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-474949df22csm64839095e9.0.2025.10.23.07.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 07:48:09 -0700 (PDT)
Date: Thu, 23 Oct 2025 17:48:05 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Jonathan Brophy <professorjonny98@gmail.com>,
	lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
	Jonathan Brophy <professor_jonny@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Radoslav Tsvetkov <rtsvetkov@gradotech.eu>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: Re: [PATCH v2 4/4] leds: Add Virtual Color LED Group driver
Message-ID: <202510231653.3V9E5oxE-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013120955.227572-5-professorjonny98@gmail.com>

Hi Jonathan,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Jonathan-Brophy/dt-bindings-leds-Add-YAML-bindings-for-Virtual-Color-LED-Group-driver/20251013-201353
base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/leds.git for-leds-next
patch link:    https://lore.kernel.org/r/20251013120955.227572-5-professorjonny98%40gmail.com
patch subject: [PATCH v2 4/4] leds: Add Virtual Color LED Group driver
config: loongarch-randconfig-r072-20251019 (https://download.01.org/0day-ci/archive/20251023/202510231653.3V9E5oxE-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 15.1.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202510231653.3V9E5oxE-lkp@intel.com/

smatch warnings:
drivers/leds/rgb/leds-group-virtualcolor.c:239 leds_virtualcolor_init_vled() warn: 'phandle_count' unsigned <= 0

vim +/phandle_count +239 drivers/leds/rgb/leds-group-virtualcolor.c

793ec9b4ba92eea Jonathan Brophy 2025-10-14  218  static int leds_virtualcolor_init_vled(struct device *dev, struct device_node *child,
793ec9b4ba92eea Jonathan Brophy 2025-10-14  219  				       struct virtual_led *vled, struct leds_virtualcolor *vc_data)
793ec9b4ba92eea Jonathan Brophy 2025-10-14  220  {
793ec9b4ba92eea Jonathan Brophy 2025-10-14  221  	struct led_init_data init_data = {};
793ec9b4ba92eea Jonathan Brophy 2025-10-14  222  	u32 blink_interval;
793ec9b4ba92eea Jonathan Brophy 2025-10-14  223  	u32 phandle_count;
793ec9b4ba92eea Jonathan Brophy 2025-10-14  224  	u32 max_brightness;
793ec9b4ba92eea Jonathan Brophy 2025-10-14  225  	int ret;
793ec9b4ba92eea Jonathan Brophy 2025-10-14  226  	int i;
793ec9b4ba92eea Jonathan Brophy 2025-10-14  227  
793ec9b4ba92eea Jonathan Brophy 2025-10-14  228  	ret = of_property_read_u32(child, "priority", &vled->priority);
793ec9b4ba92eea Jonathan Brophy 2025-10-14  229  	if (ret)
793ec9b4ba92eea Jonathan Brophy 2025-10-14  230  		vled->priority = 0;
793ec9b4ba92eea Jonathan Brophy 2025-10-14  231  
793ec9b4ba92eea Jonathan Brophy 2025-10-14  232  	ret = of_property_read_u32(child, "blink", &blink_interval);
793ec9b4ba92eea Jonathan Brophy 2025-10-14  233  	if (!ret) {
793ec9b4ba92eea Jonathan Brophy 2025-10-14  234  		vled->blink_delay_on = blink_interval;
793ec9b4ba92eea Jonathan Brophy 2025-10-14  235  		vled->blink_delay_off = blink_interval;
793ec9b4ba92eea Jonathan Brophy 2025-10-14  236  	}
793ec9b4ba92eea Jonathan Brophy 2025-10-14  237  
793ec9b4ba92eea Jonathan Brophy 2025-10-14  238  	phandle_count = of_property_count_elems_of_size(child, "leds", sizeof(u32));
793ec9b4ba92eea Jonathan Brophy 2025-10-14 @239  	if (phandle_count <= 0) {
                                                            ^^^^^^^^^^^^^^^^^^
u32 can't be < 0.

793ec9b4ba92eea Jonathan Brophy 2025-10-14  240  		dev_err(dev, "No monochromatic LEDs specified for virtual LED %s\n",
793ec9b4ba92eea Jonathan Brophy 2025-10-14  241  			vled->cdev.name);
793ec9b4ba92eea Jonathan Brophy 2025-10-14  242  		return -EINVAL;
793ec9b4ba92eea Jonathan Brophy 2025-10-14  243  	}
793ec9b4ba92eea Jonathan Brophy 2025-10-14  244  
793ec9b4ba92eea Jonathan Brophy 2025-10-14  245  	vled->num_monochromatics = phandle_count;
793ec9b4ba92eea Jonathan Brophy 2025-10-14  246  	vled->monochromatics = devm_kcalloc(dev, vled->num_monochromatics,
793ec9b4ba92eea Jonathan Brophy 2025-10-14  247  					    sizeof(*vled->monochromatics), GFP_KERNEL);
793ec9b4ba92eea Jonathan Brophy 2025-10-14  248  	if (!vled->monochromatics)
793ec9b4ba92eea Jonathan Brophy 2025-10-14  249  		return -ENOMEM;

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


