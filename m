Return-Path: <devicetree+bounces-17157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 576177F165C
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:53:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8969C1C21574
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 14:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A0E118E12;
	Mon, 20 Nov 2023 14:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WvMqMruZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68ABD271B;
	Mon, 20 Nov 2023 06:52:53 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-da7238b3eb4so4486479276.1;
        Mon, 20 Nov 2023 06:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700491972; x=1701096772; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=3qHPMK/nPQeJpHqpbeb3m3W/Zwv9dUdlHR5D9mZqK24=;
        b=WvMqMruZG7gsX0qRoN5WBMmSb0RZkm+x8CBiTo0HZBYRyy+s7k9PWzSqhko7+G5Q2V
         TpOiHDvtrz0ljWqW7RAd79jLxjrlTrQVDXaFDy4dId/GLfsvkxSrzBUwZg8UmJMLy7Q8
         mTzXRY0Q+IqBKXCt1+87CIkdRVL8esya+JEMMtGG1w3OCnuo5GralL/qJqJAYrvqnGAz
         INLxPEbZr33wdieB8zBN10NVC5GGyIXlinB5a715w8n86zcSSrdUG6qmDJSkV7O8NB1m
         OrIg9UKcpZkulfFfHGSfUgk0OhlJkGdsl4xe1beaXvA1HuTRuyuTRfUA5WBiEW2Ni5/U
         G0iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700491972; x=1701096772;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3qHPMK/nPQeJpHqpbeb3m3W/Zwv9dUdlHR5D9mZqK24=;
        b=Cz3aOEmiRSTKn84Q7weqwwTEPsgufMldN9lUuR0gXxAB3SIrfGhpK5sjsKHzRnvdpG
         5OIxCRaQM/PfMR11zli1u2CnXgdVS1Fj5+1MgPUeFmUE1WW1vh8Ww6n0fIUnIFctcIIJ
         L2YYP6Vwyv21LlUg2ppRk2n1cdoomzsBOdn55wV+6QelVjVlC4DSzCsvsKvbpYj6/37e
         oE+S7M2ZK1uxwG4ST3K5vPdAuaoP/xpzYHjJlyqZn7qhhEr/LsDKB+8nsrDV6LLXeUTh
         /ncz7hDegehYUA1HvtFp32APl/FRFZLXAGccIYa2hMQfq0RQIuRJGj/JNIhhEINi9VGT
         r16w==
X-Gm-Message-State: AOJu0Yzn6MVU0b/GW2B/uQqsdSVISO3mRJGwPT33soL4wqPr5fNxHPXO
	EAk1WkQm8raH2J18vJyjUOA=
X-Google-Smtp-Source: AGHT+IHPesf2IPH8qMkl34QrA2uEejr5dZvuu/lgS1+54IpfxxJID15h0vUj+alIvs2WwwKIdNI6Dg==
X-Received: by 2002:a25:3452:0:b0:d9c:7d7d:1ac9 with SMTP id b79-20020a253452000000b00d9c7d7d1ac9mr6775451yba.14.1700491972419;
        Mon, 20 Nov 2023 06:52:52 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 2-20020a251802000000b00d9c7bf8f32fsm48622yby.42.2023.11.20.06.52.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 06:52:52 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <7ceb1104-ace0-47a7-93ed-64a03c149f63@roeck-us.net>
Date: Mon, 20 Nov 2023 06:52:49 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] hwmon: ltc4282: add support for the LTC4282 chip
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>, oe-kbuild@lists.linux.dev,
 Nuno Sa <nuno.sa@analog.com>, linux-hwmon@vger.kernel.org,
 linux-doc@vger.kernel.org, devicetree@vger.kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
 Bartosz Golaszewski <brgl@bgdev.pl>, Jonathan Corbet <corbet@lwn.net>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Shevchenko <andy@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 Conor Dooley <conor+dt@kernel.org>
References: <63effee3-359b-48a5-b5a4-36b0478f6045@suswa.mountain>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <63effee3-359b-48a5-b5a4-36b0478f6045@suswa.mountain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/20/23 04:10, Dan Carpenter wrote:
> Hi Nuno,
> 
> kernel test robot noticed the following build warnings:
> 
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Nuno-Sa/dt-bindings-hwmon-Add-LTC4282-bindings/20231110-232017
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hwmon-next
> patch link:    https://lore.kernel.org/r/20231110151905.1659873-3-nuno.sa%40analog.com
> patch subject: [PATCH 2/2] hwmon: ltc4282: add support for the LTC4282 chip
> config: i386-randconfig-141-20231112 (https://download.01.org/0day-ci/archive/20231113/202311130219.YBiF8Xu3-lkp@intel.com/config)
> compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
> reproduce: (https://download.01.org/0day-ci/archive/20231113/202311130219.YBiF8Xu3-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <error27@gmail.com>
> | Closes: https://lore.kernel.org/r/202311130219.YBiF8Xu3-lkp@intel.com/
> 
> smatch warnings:
> drivers/hwmon/ltc4282.c:859 ltc4282_is_visible() warn: signedness bug returning '(-524)'
> drivers/hwmon/ltc4282.c:1143 ltc4282_gpio_setup() warn: passing zero to 'dev_err_probe'
> 
> vim +859 drivers/hwmon/ltc4282.c
> 
> 31ea069ddf481b Nuno Sa 2023-11-10  844  static umode_t ltc4282_is_visible(const void *data,
> 31ea069ddf481b Nuno Sa 2023-11-10  845  				  enum hwmon_sensor_types type,
> 31ea069ddf481b Nuno Sa 2023-11-10  846  				  u32 attr, int channel)
> 31ea069ddf481b Nuno Sa 2023-11-10  847  {
> 31ea069ddf481b Nuno Sa 2023-11-10  848  	switch (type) {
> 31ea069ddf481b Nuno Sa 2023-11-10  849  	case hwmon_in:
> 31ea069ddf481b Nuno Sa 2023-11-10  850  		return ltc4282_in_is_visible(data, attr);
> 31ea069ddf481b Nuno Sa 2023-11-10  851  	case hwmon_curr:
> 31ea069ddf481b Nuno Sa 2023-11-10  852  		return ltc4282_curr_is_visible(attr);
> 31ea069ddf481b Nuno Sa 2023-11-10  853  	case hwmon_power:
> 31ea069ddf481b Nuno Sa 2023-11-10  854  		return ltc4282_power_is_visible(attr);
> 31ea069ddf481b Nuno Sa 2023-11-10  855  	case hwmon_energy:
> 31ea069ddf481b Nuno Sa 2023-11-10  856  		/* hwmon_energy_enable */
> 31ea069ddf481b Nuno Sa 2023-11-10  857  		return 0644;
> 31ea069ddf481b Nuno Sa 2023-11-10  858  	default:
> 31ea069ddf481b Nuno Sa 2023-11-10 @859  		return -ENOTSUPP;
> 
> This function returns umode_t (which must be unsigned and smaller than
> int for this warning to trigger).
> 

Yes, this is an is_visible() function which should return 0 if the attribute
isn't visible.

Guenter


