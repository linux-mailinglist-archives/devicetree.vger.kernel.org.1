Return-Path: <devicetree+bounces-159875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BB350A6C80F
	for <lists+devicetree@lfdr.de>; Sat, 22 Mar 2025 08:30:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29E7B189C425
	for <lists+devicetree@lfdr.de>; Sat, 22 Mar 2025 07:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4250F1C84A1;
	Sat, 22 Mar 2025 07:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wVek8fET"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40411189528
	for <devicetree@vger.kernel.org>; Sat, 22 Mar 2025 07:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742628619; cv=none; b=CMrg3iTVwME5SVChJofh5GxUPY40ulRptB7XuYS1WKOvN2834m5Q4VKIwzMwCb74VXeoHKeYypArb4c03YczOyIaCbdsjbxMuAEvTGPFT1zplgMwClpoxtmoMwShxYG14DFCjV17cVsK14WO+1hyk41zvsqFxqO8JEXehRXIeMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742628619; c=relaxed/simple;
	bh=92RQh55jsrGFROKnG6xoihCWbNixqwF+HTtLMlW0uWQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=a9HMzuWs9mheadp79OFuXoQg8shxXDYZBLGtnYgj1KP3l2qEGbjKLRKdoID3JHzy3zVDvQGNO0/dHqV94YWJvzJdCSg3rrWH4ZCj6ibAE+TgSn2WjZWF3NEUpcbXrZtZ4sYIZrm6Izds4L5FRUdc6IbwdLbMFWO/tW4giPfskeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wVek8fET; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cf257158fso18937775e9.2
        for <devicetree@vger.kernel.org>; Sat, 22 Mar 2025 00:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742628614; x=1743233414; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UMKeYU6q3OdefJ5qoJnBTsWhUmldL9PQbm5T/LBiBo8=;
        b=wVek8fETwy0v/S34nn94wUXX4Y4VZypUzu1ocmA+98Ejb94snL4JQja4wS0/JJygG2
         p7zok+0n3+lb74tjepCHM62vBEeTyTu0ucGzwzXLqfQSQOOwH7AVyPJBqMDZ+jM21Rl2
         RglFxuhchPMSsBDYtx3t1mhKYnTmv1kl97HnX1K4uNdE2J9gZinC8fLyAcOc+eSf71fN
         vnRQ3rUtUw6MKmfjv7v0qtRPnEivPxoajOP74s3WvcupsSMWZMgncBH7IEKvBhypBBA5
         CDVpNMPFCSP/7ANHEkWpGyIhXaxZPh2gv+zhlI7l4H9A446Z81+7+6+BjMXc3pLJenB4
         z0Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742628614; x=1743233414;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UMKeYU6q3OdefJ5qoJnBTsWhUmldL9PQbm5T/LBiBo8=;
        b=TqvWpc2KqnmsGBxAlqIjk/aprSc9428yOt+KsWNMgsKLXCgFXeSqVrPd0VeEYHM0GJ
         dsI4vCwT/A977AMFy8ULf4SQYNUKD3QLQ7TF6+JBLuo7ZAqNZXu5RWFKLIYvh5jvj2zc
         x/pURBJdmIhb6bMnTztXPjw5WF8KqzUiFFE3A0I41tNKcP0o+rw5gR7krA7HQAUOjelt
         XFIBxMyeXm41tS+1ALbM0Km7v+TRHEJEpYObbgaxvG9WFh2+uNBjCj0uFU47bm99m5GU
         1knZVSLz2lkZvJTve4ov7mdAicKLug67KE8eN6IiaM/f+1nlLrg2zKleBkg3Za/2XuQw
         zEPg==
X-Forwarded-Encrypted: i=1; AJvYcCX6aJZAiK5oglEsx7ROISClwsP7WHKwbThdLxi7TJyra7PHBpQ3tguM3dYBBtDQ5sibPcOVbjhnYHrj@vger.kernel.org
X-Gm-Message-State: AOJu0YyJK9Ju89tDqwmCWh1FMVR3jdcv4QNITFoXEg5pPHCWbaKTdOr1
	RG9/oZTPW/acf4SAFnY18U4/wVEmXqVOI+YlHgKSgmI1DrRyYalwAAU5xDtFYfE=
X-Gm-Gg: ASbGncuO6OM8rR30ljmk3Ztt1ed/Se+NQcFjauR+Tz1ssrSTKpo6z0yQYp1gXxoBEXX
	XWnD213guUkLci6X/nHICVYLY40eJEZiGeg/A+gaK/PJsDiI3kPwyGMITqqrJKemv/OaJgXNwUN
	fgD3pEW0YFspxdd0BObYLDncJJuoKoC6RuwY6NoMVrI+q+ggTcrhJ7Jeju5pLw1n6Byxkc7rg/T
	tsEBpTRVpGehiyI3OAT1XliLuWFn+FOgeJMdqlRSGkPm73Hl0telfEbpQ3RUJi9EJ0wZc8NcIVg
	P+LfU4HaiC+bb7UDXcyB8mzN9A68obEv8ZoycnR5I7ZBKmM9bg==
X-Google-Smtp-Source: AGHT+IG7qXonJx7QL3b5p+TPntVrGtmStjhpGd7w6D7GZ0R8PBo0Dj1oOcNu9xVsk8AEIq0wbiW2bg==
X-Received: by 2002:a05:600c:1548:b0:43c:f513:9591 with SMTP id 5b1f17b1804b1-43d509f73admr57076085e9.14.1742628614427;
        Sat, 22 Mar 2025 00:30:14 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3997f9e6767sm4506984f8f.66.2025.03.22.00.30.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Mar 2025 00:30:14 -0700 (PDT)
Date: Sat, 22 Mar 2025 10:30:11 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Matthias Fend <matthias.fend@emfend.at>,
	Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Matthias Fend <matthias.fend@emfend.at>,
	bsp-development.geo@leica-geosystems.com
Subject: Re: [PATCH v2 2/2] leds: tps6131x: add support for Texas Instruments
 TPS6131X flash LED driver
Message-ID: <87955568-f73b-4df1-bc94-9acb4c337c0e@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-leds-tps6131x-v2-2-bc09c7a50b2e@emfend.at>

Hi Matthias,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Matthias-Fend/dt-bindings-leds-add-Texas-Instruments-TPS6131x-flash-LED-driver/20250318-154318
base:   ffd294d346d185b70e28b1a28abe367bbfe53c04
patch link:    https://lore.kernel.org/r/20250318-leds-tps6131x-v2-2-bc09c7a50b2e%40emfend.at
patch subject: [PATCH v2 2/2] leds: tps6131x: add support for Texas Instruments TPS6131X flash LED driver
config: openrisc-randconfig-r073-20250321 (https://download.01.org/0day-ci/archive/20250322/202503221153.G9HPVANn-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 11.5.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202503221153.G9HPVANn-lkp@intel.com/

smatch warnings:
drivers/leds/flash/leds-tps6131x.c:534 tps6131x_parse_node() warn: 'num_channels' unsigned <= 0

vim +/num_channels +534 drivers/leds/flash/leds-tps6131x.c

02e7ee00455be1 Matthias Fend 2025-03-18  512  static int tps6131x_parse_node(struct tps6131x *tps6131x)
02e7ee00455be1 Matthias Fend 2025-03-18  513  {
02e7ee00455be1 Matthias Fend 2025-03-18  514  	const struct tps6131x_timer_config *timer_config;
02e7ee00455be1 Matthias Fend 2025-03-18  515  	struct device *dev = tps6131x->dev;
02e7ee00455be1 Matthias Fend 2025-03-18  516  	u32 channels[TPS6131X_MAX_CHANNELS];
02e7ee00455be1 Matthias Fend 2025-03-18  517  	u32 current_step_multiplier;
02e7ee00455be1 Matthias Fend 2025-03-18  518  	u32 current_ua;
02e7ee00455be1 Matthias Fend 2025-03-18  519  	u32 max_current_flash_ma, max_current_torch_ma;
02e7ee00455be1 Matthias Fend 2025-03-18  520  	u32 num_channels;
02e7ee00455be1 Matthias Fend 2025-03-18  521  	u32 timeout_us;
02e7ee00455be1 Matthias Fend 2025-03-18  522  	int i;
02e7ee00455be1 Matthias Fend 2025-03-18  523  	int ret;
02e7ee00455be1 Matthias Fend 2025-03-18  524  
02e7ee00455be1 Matthias Fend 2025-03-18  525  	tps6131x->valley_current_limit = device_property_read_bool(dev, "ti,valley-current-limit");
02e7ee00455be1 Matthias Fend 2025-03-18  526  
02e7ee00455be1 Matthias Fend 2025-03-18  527  	tps6131x->led_node = fwnode_get_next_available_child_node(dev->fwnode, NULL);
02e7ee00455be1 Matthias Fend 2025-03-18  528  	if (!tps6131x->led_node) {
02e7ee00455be1 Matthias Fend 2025-03-18  529  		dev_err(dev, "Missing LED node\n");
02e7ee00455be1 Matthias Fend 2025-03-18  530  		return -EINVAL;
02e7ee00455be1 Matthias Fend 2025-03-18  531  	}
02e7ee00455be1 Matthias Fend 2025-03-18  532  
02e7ee00455be1 Matthias Fend 2025-03-18  533  	num_channels = fwnode_property_count_u32(tps6131x->led_node, "led-sources");
02e7ee00455be1 Matthias Fend 2025-03-18 @534  	if (num_channels <= 0) {

num_channels needs to be signed.

02e7ee00455be1 Matthias Fend 2025-03-18  535  		dev_err(dev, "Failed to read led-sources property\n");
02e7ee00455be1 Matthias Fend 2025-03-18  536  		return -EINVAL;
02e7ee00455be1 Matthias Fend 2025-03-18  537  	}
02e7ee00455be1 Matthias Fend 2025-03-18  538  
02e7ee00455be1 Matthias Fend 2025-03-18  539  	if (num_channels > TPS6131X_MAX_CHANNELS) {
02e7ee00455be1 Matthias Fend 2025-03-18  540  		dev_err(dev, "led-sources count %u exceeds maximum channel count %u\n",
02e7ee00455be1 Matthias Fend 2025-03-18  541  			num_channels, TPS6131X_MAX_CHANNELS);
02e7ee00455be1 Matthias Fend 2025-03-18  542  		return -EINVAL;
02e7ee00455be1 Matthias Fend 2025-03-18  543  	}
02e7ee00455be1 Matthias Fend 2025-03-18  544  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


