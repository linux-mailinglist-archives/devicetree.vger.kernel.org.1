Return-Path: <devicetree+bounces-196218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC11B04859
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 22:21:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCDB9189F813
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 20:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D85F8231A55;
	Mon, 14 Jul 2025 20:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e1D3uyo8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA6219E97A
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 20:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752524481; cv=none; b=U+9KQM0Z6ZWoJLBjlvfk9D7AdMNBCf7U907JmNHPgalX+5mtE/4xlhTagy9jalcIk1kNY4BDQopatA7e0HIGog/fuGbWLyr7ipnM6n9aZNKDvyCexxrGNmy4njQy4Qe5uqUc45VGxdPVnxsqvFTLwKXqJ9wHjpIfhVIZIFgIH6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752524481; c=relaxed/simple;
	bh=wLTbNI2R07o+D1NepavmZiMm+whbnGVIgC6z4dt4U5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=ltHxnj36iMOLPVn6c0lkWoN1cdTPg/+lYvJq6qDNtfba3C5uSTlAQLdMcEbVEiQds/ZQQ4Oqakd2qSj8jHqME4RI834vlWtLHgCRoDehpawJRt+gVflcX0ShSfAhUwDOwnSh5SuzdQTdcy9em2nRem8fDM+zK9TwgIowtRXBgA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e1D3uyo8; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-41baecbdd33so38071b6e.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 13:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752524479; x=1753129279; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ycdGmJV+qYX8wcokCOrkAh709cXQeQWK8C0X96xlypg=;
        b=e1D3uyo85ValJg673WW+Bn7jTRK550Jz14VvgTv1/TYDFflwzNBJP+ffsMXkdqA6fA
         nhNpVxNp6dMms8PqtiMfT5HTXOvYx7j/SI/ikENvkRseB2wjU0O2gYcAu9BF3duvwTAv
         UpwOprHz8rYy9fvdOqFUHHoHjAvM00E48gH3/UafUJL4c2yANddJpHWYCmsCdkSQQqJJ
         5Sl7CYD6eVJWTPkyZHQI1oVE8eSGzwKlVwsCelwso4NykVwHaEW6C6lHrhC5djtVK3AG
         a2uiASUvA6QfFLnkiC+fjzWFA7B7f5KKe7+g/KWhv7zW1wA6cftVRajB/v9UaNIbk2ic
         XaEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752524479; x=1753129279;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ycdGmJV+qYX8wcokCOrkAh709cXQeQWK8C0X96xlypg=;
        b=dASi8oF0MqV6vvlNSk12iS4y3mUliLN+KkWpDG4+Xp2Hbf9aCOANlqT9piAPXtQFQv
         GrTgWgGeRDRFmo5ugl+fdWR3RmrN6Qh2/R0PbkpL550TFTFPVw3EcFkoW2fynUtWZ5Ex
         J7xVxi1NMd7S9hHrxcEHq7u0n4ef7ICIHFvB/rKv93t0A/1ShC+SSNoiIe0PO3dQUYem
         yAZM8LKWhCsCc2cUcHxTEYXAkazYREFqfmQhZwHGxYvwOIWvHzcBudshPTkvBUprCtmc
         NEsyltw21+TdWo8+rxT/Xi5JNmU+4zJMt0eiDve3W9pN0UPJkN2g4dbdbU5s0NuXLFIN
         +eJw==
X-Forwarded-Encrypted: i=1; AJvYcCXRuhQRXOpCCM45SQJNnRBPZwqNczbdhvLufRqlT7QqDfHXsEPR40uqdxWwQk2ynaUNI8wu61I78bPU@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp3u3+FzU4pWcPLG6lmIx01eaiYof6+X/BaTvzDKPK5WkPtA13
	g5Q6KG1uG0FSS1raL+C4Qt3zf8Ja8NY9v8CoWgLwrr+2xEOoc5gGVSyG3AjFuTdKhzk=
X-Gm-Gg: ASbGnctndfFi1amjhQECAscV66kSVH4Asc3pgczABOf63EQCSJhMgwpvo6BWna5M8xs
	8oS6NDjyIlnnCp5F93KwpZCvO8tx47kSjQ7E6EdbhGT77gyt3PNFuuGrTQUueRQs4288dsdYnb/
	ePtDdHz2Ff+EARlDhLHlcukId/npjfLyAZXjkD4Zql7MCd/2XVsSQjjI4D69YXLkmvxx4st4VdO
	N1KeaLJaKybvDvSrP8N5p2CuYSTcCaf8AS84ejWrIJJpRWtpRmbvZI420Lr6mzZeRyqJsRxZ9my
	lopZ0WCxQjIWnnh0pX1WK13bL38pbnX4VeMNi7MiSN3jlQUGAi92v4hQwDZS97V1RGEYsyCfkK6
	F1OBFv7833hQIPKBJlJbCDAlQ4ecScQ==
X-Google-Smtp-Source: AGHT+IH+fwasq0/i0bYvELHjKa2oXJDxtEgu4bzO01bwJv4mdFLZ8rdbCcSBn37Olne122WdUzczHg==
X-Received: by 2002:a05:6808:164d:b0:40a:526e:5e8a with SMTP id 5614622812f47-41537182f92mr8877421b6e.1.1752524479039;
        Mon, 14 Jul 2025 13:21:19 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:6bb2:d90f:e5da:befc])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4141cb795c4sm1644290b6e.47.2025.07.14.13.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 13:21:18 -0700 (PDT)
Date: Mon, 14 Jul 2025 23:21:17 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Remi Buisson via B4 Relay <devnull+remi.buisson.tdk.com@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, Remi Buisson <remi.buisson@tdk.com>
Subject: Re: [PATCH v2 5/8] iio: imu: inv_icm45600: add I2C driver for
 inv_icm45600 driver
Message-ID: <9d091fe4-3068-4e8b-8a9c-49c25036a216@suswa.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250710-add_newport_driver-v2-5-bf76d8142ef2@tdk.com>

Hi Remi,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Remi-Buisson-via-B4-Relay/dt-bindings-iio-imu-Add-inv_icm45600/20250710-170143
base:   f8f559752d573a051a984adda8d2d1464f92f954
patch link:    https://lore.kernel.org/r/20250710-add_newport_driver-v2-5-bf76d8142ef2%40tdk.com
patch subject: [PATCH v2 5/8] iio: imu: inv_icm45600: add I2C driver for inv_icm45600 driver
config: s390-randconfig-r073-20250712 (https://download.01.org/0day-ci/archive/20250713/202507130115.7g0XWB2E-lkp@intel.com/config)
compiler: clang version 21.0.0git (https://github.com/llvm/llvm-project 01c97b4953e87ae455bd4c41e3de3f0f0f29c61c)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202507130115.7g0XWB2E-lkp@intel.com/

smatch warnings:
drivers/iio/imu/inv_icm45600/inv_icm45600_gyro.c:121 inv_icm45600_gyro_update_scan_mode() error: uninitialized symbol 'sleep'.
drivers/iio/imu/inv_icm45600/inv_icm45600_accel.c:123 inv_icm45600_accel_update_scan_mode() error: uninitialized symbol 'sleep'.

vim +/sleep +121 drivers/iio/imu/inv_icm45600/inv_icm45600_gyro.c

1fb5c2bf7348d0 Remi Buisson 2025-07-10   93  static int inv_icm45600_gyro_update_scan_mode(struct iio_dev *indio_dev,
1fb5c2bf7348d0 Remi Buisson 2025-07-10   94  					      const unsigned long *scan_mask)
1fb5c2bf7348d0 Remi Buisson 2025-07-10   95  {
1fb5c2bf7348d0 Remi Buisson 2025-07-10   96  	struct inv_icm45600_state *st = iio_device_get_drvdata(indio_dev);
1fb5c2bf7348d0 Remi Buisson 2025-07-10   97  	struct inv_icm45600_sensor_state *gyro_st = iio_priv(indio_dev);
1fb5c2bf7348d0 Remi Buisson 2025-07-10   98  	struct inv_icm45600_sensor_conf conf = INV_ICM45600_SENSOR_CONF_INIT;
1fb5c2bf7348d0 Remi Buisson 2025-07-10   99  	unsigned int fifo_en = 0;
1fb5c2bf7348d0 Remi Buisson 2025-07-10  100  	unsigned int sleep;
1fb5c2bf7348d0 Remi Buisson 2025-07-10  101  	int ret;
1fb5c2bf7348d0 Remi Buisson 2025-07-10  102  
1fb5c2bf7348d0 Remi Buisson 2025-07-10  103  	scoped_guard(mutex, &st->lock) {
1fb5c2bf7348d0 Remi Buisson 2025-07-10  104  		if (*scan_mask & BIT(INV_ICM45600_GYRO_SCAN_TEMP))
1fb5c2bf7348d0 Remi Buisson 2025-07-10  105  			fifo_en |= INV_ICM45600_SENSOR_TEMP;
1fb5c2bf7348d0 Remi Buisson 2025-07-10  106  
1fb5c2bf7348d0 Remi Buisson 2025-07-10  107  		if (*scan_mask & (BIT(INV_ICM45600_GYRO_SCAN_X) |
1fb5c2bf7348d0 Remi Buisson 2025-07-10  108  				 BIT(INV_ICM45600_GYRO_SCAN_Y) |
1fb5c2bf7348d0 Remi Buisson 2025-07-10  109  				 BIT(INV_ICM45600_GYRO_SCAN_Z))) {
1fb5c2bf7348d0 Remi Buisson 2025-07-10  110  			/* enable gyro sensor */
1fb5c2bf7348d0 Remi Buisson 2025-07-10  111  			conf.mode = gyro_st->power_mode;
1fb5c2bf7348d0 Remi Buisson 2025-07-10  112  			ret = inv_icm45600_set_gyro_conf(st, &conf, &sleep);

sleep isn't necessarily set if nothing changed.

1fb5c2bf7348d0 Remi Buisson 2025-07-10  113  			if (ret)
1fb5c2bf7348d0 Remi Buisson 2025-07-10  114  				return ret;
1fb5c2bf7348d0 Remi Buisson 2025-07-10  115  			fifo_en |= INV_ICM45600_SENSOR_GYRO;
1fb5c2bf7348d0 Remi Buisson 2025-07-10  116  		}
1fb5c2bf7348d0 Remi Buisson 2025-07-10  117  		/* update data FIFO write */
1fb5c2bf7348d0 Remi Buisson 2025-07-10  118  		ret = inv_icm45600_buffer_set_fifo_en(st, fifo_en | st->fifo.en);
1fb5c2bf7348d0 Remi Buisson 2025-07-10  119  	}
1fb5c2bf7348d0 Remi Buisson 2025-07-10  120  	/* sleep required time */
1fb5c2bf7348d0 Remi Buisson 2025-07-10 @121  	if (sleep)
1fb5c2bf7348d0 Remi Buisson 2025-07-10  122  		msleep(sleep);
1fb5c2bf7348d0 Remi Buisson 2025-07-10  123  
1fb5c2bf7348d0 Remi Buisson 2025-07-10  124  	return ret;
1fb5c2bf7348d0 Remi Buisson 2025-07-10  125  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


