Return-Path: <devicetree+bounces-120301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9299C1F54
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 15:34:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8759828201E
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 14:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB231F429B;
	Fri,  8 Nov 2024 14:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OOOiCG06"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64C71EBA00
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 14:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731076446; cv=none; b=LzYU3lE7R1z6JDe0uFreRzvNb+bvFVInZCoLfYXSDmTkMqthPG/jRp5fffsZ2pNGsjX9xtiMdeUNnr/5/AUC5t7JYhHb+T7oozLXIvFb6ZvQn3ZzB8do3ZfSaMxh0XvYTqUCIh09I5zAPBD3bxfp167c8frVINaqX8VMWPtzAfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731076446; c=relaxed/simple;
	bh=DPU+D+82CmA9h5Ph6EL7ffraHSVchVSGoKUFRSRG56Q=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=h9jpGkKwR3YZgAkh+3R2IrLIpMOE54PxsTR0YsHqQwGhlbFbTsTux4DXLPYxjLqcyF+Bc13BgUIs79NMnBqb0Wsn94pHN57OLXodaBRn9ZYS4s0/lK4q9i9wVRyC6jVDpw6NiTZnr1N4aIPoTHYQOwx3c/ZoouzaultNiqcB27I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OOOiCG06; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-37ed7eb07a4so1486203f8f.2
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 06:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731076443; x=1731681243; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4aKxG3gwOAGANkGkZ2NSS+guj7HDwh0arnh3SiLCSnU=;
        b=OOOiCG067fS+8RfOqDQmbO6ma7hV+Ye9d/tLATYf9EJR/o9VgdWjn7HWb+g23E1tOI
         LzzGrIUMD7k9iiKFmWSqN8VxiB66U5OJeRo7cfgEjSU0Ur0ozBaHRmDed2NuXS3qL3VK
         dDtqLrQZziRpEqYrTurIb1fdGnBKs2ApynSxvdS+0oVLgnjxfTqrrGpD5UKdFMTScoMw
         1RPHDnYJeFQo1F2iPdbij2qxgyvtd0689OqBZt9vm+HwO0Gxg9XgO5fJYsq/vr8hnbKB
         b3UTDLvCudHdJdD1FZ0fm6iEaG10Jx+WEyQa8PvNLIBMcKihTVBly9EkV7visETRe/6/
         vRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731076443; x=1731681243;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4aKxG3gwOAGANkGkZ2NSS+guj7HDwh0arnh3SiLCSnU=;
        b=Kflo4bQOICC/xGUY+79/BTSwK8DEnUgAyGs75aLFz1RdmI1F6YoGT5Amb0NqGbCsuh
         aFWiC1XNfmuTCdHvh4JX6xqGlcKyWo59CkqaFYsyf9frmeF+l1zc8478VH4L9d+iXRNk
         O9CrM0kJPrvRscQQabedB4RvO/UDcdAWwzT5Gy5J3mrSKhOxmb9J3kIt3Y/eY2vKfUes
         TdDsfoSh+E1h3pwkJKcgHUXzU4ZJ5NE24hQVMPBcItDfDPQlQqiTS1r0tZRxGRVeoqDz
         xdwkTzsxPjul2jIntHrEsL9QR8z2dycddKETgo2x15tSsl75/0yaV1K31QTgxJTNyVSE
         VY5g==
X-Forwarded-Encrypted: i=1; AJvYcCX2bsR58ZvNblFYNMCq1A4Xxm9IgQn4smWDcLnUaIJbv3RTc2jRKTwBGDg8uNW2u8QgbV6mTKpRcNwg@vger.kernel.org
X-Gm-Message-State: AOJu0Ywycvmw5K0NzuLH8yeUIfzlzpOGVNlMye96BwWzSqFfmOJjdxux
	M9vuK+i2LwDtnmWZTExcRukxwO5Wawgit7toaa5PDMY4GovrlKMuNPjXBa8xecI=
X-Google-Smtp-Source: AGHT+IFiQTvvUUVNBS+RC050g+C25oacYB7OQt6yFvIZkoyX4jf9tm4lHFTxhmnrBwsgz4a+MFioMQ==
X-Received: by 2002:a05:6000:1866:b0:37d:4870:dedf with SMTP id ffacd0b85a97d-381f172a6e7mr2781004f8f.19.1731076443139;
        Fri, 08 Nov 2024 06:34:03 -0800 (PST)
Received: from localhost ([89.101.134.25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381ed99a34bsm4960209f8f.54.2024.11.08.06.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 06:34:02 -0800 (PST)
Date: Fri, 8 Nov 2024 17:34:01 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>,
	Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH 3/3] [PATCH v6] leds: Add LED1202 I2C driver
Message-ID: <954d6aa4-5dc7-4421-9b92-4cb9a0b9d40c@suswa.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241106061812.6819-3-vicentiu.galanopulo@remote-tech.co.uk>

Hi Vicentiu,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Vicentiu-Galanopulo/dt-bindings-leds-Add-LED1202-LED-Controller/20241106-142011
base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/leds.git for-leds-next
patch link:    https://lore.kernel.org/r/20241106061812.6819-3-vicentiu.galanopulo%40remote-tech.co.uk
patch subject: [PATCH 3/3] [PATCH v6] leds: Add LED1202 I2C driver
config: loongarch-randconfig-r073-20241107 (https://download.01.org/0day-ci/archive/20241108/202411080756.6eYdrM5X-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 14.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202411080756.6eYdrM5X-lkp@intel.com/

smatch warnings:
drivers/leds/leds-st1202.c:175 st1202_brightness_get() error: uninitialized symbol 'value'.

vim +/value +175 drivers/leds/leds-st1202.c

7e6780184dc934 Vicentiu Galanopulo 2024-11-06  155  static enum led_brightness st1202_brightness_get(struct led_classdev *led_cdev)
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  156  {
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  157  	struct st1202_led *led;
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  158  	struct st1202_chip *chip;
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  159  	u8 value;
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  160  	int ret;
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  161  
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  162  	led = cdev_to_st1202_led(led_cdev);
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  163  	chip = led->chip;
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  164  
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  165  	mutex_lock(&chip->lock);
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  166  
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  167  	ret = st1202_read_reg(chip, ST1202_ILED_REG0 + led->led_num,
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  168  				&value);
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  169  	if (ret != 0)
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  170  		dev_err(&chip->client->dev, "Reading register [0x%x] failed, error: %d\n",
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  171  			ST1202_ILED_REG0 + led->led_num, ret);

Presumably value is uninitialized if st1202_read_reg() fails.  Normally
I would just mark st1202_read_reg() as a no-fail function and not
report it but here there is explicit error checking so it's weird.

7e6780184dc934 Vicentiu Galanopulo 2024-11-06  172  
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  173  	mutex_unlock(&chip->lock);
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  174  
7e6780184dc934 Vicentiu Galanopulo 2024-11-06 @175  	return value;
7e6780184dc934 Vicentiu Galanopulo 2024-11-06  176  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


