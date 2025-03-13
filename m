Return-Path: <devicetree+bounces-157328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCAAA5FF47
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 19:31:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 669651882443
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 18:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E501189F56;
	Thu, 13 Mar 2025 18:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p/oTe6SJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E037518952C
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 18:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741890688; cv=none; b=tR7tsmAtxwGAxMimPeHXDFfrxWvQt87vaVNOBBpIjZlh8b+O8HX9i9f+DMsEcl+4CYNeGC+jledYnVjgWEhAj/aBBsT9LoffW656WlJ10wWC7SVq7dDWk4RxCfA6/wbEJX3rYgDM8T+692VHdTptlOfBuyuRxmwe2vAigTrG/Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741890688; c=relaxed/simple;
	bh=gcHZob6HNebed2Cm6BRlntKCieNCU9GdUHJ19WCNgP8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=NP7o18bZUlTpv4ysClVp8MWWpqDaKlzvOafbNQ6OpjCjbwzQWr4Z5N58Zxct1umBRJxF/unMZD91sZSlUWjgK8kB2g5tupUx0pqMWkz1wOIl1fvFii7R0Ot/4Z2ldcvk2SIu10ZY4a6LWdT67cBNJ4GJic5N5LNSyqoutGRMPCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p/oTe6SJ; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-390f5f48eafso785381f8f.0
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 11:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741890683; x=1742495483; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vXnRxpxYe49SDy+ll8iRRrwvRZ2bdnRzd1C07n7AGFQ=;
        b=p/oTe6SJc5v4X7a+XOPk5EjqU6DAiby+ntQ3nD1vbmculKOi9lLrsGXRjYILVqocYc
         nEoZYHyJEO1JHVRs5PZAO7EUMDV4MrYxFJaTWCZ7OF2rTeiha0WDXTl7kKoU7wLSgjtI
         ZYDx0JdRmV3HQ3NrIWSCTVbOphejhk6bmYfWy+/7u2iQtKy4uUvnMSYLcJUg/aiyocOV
         4fdI5i+nSgtDaId+a/GdoHghWeOE6rUz1HKBmBf/VGlsrDJirkabXUV6CXjtSWdGSOvE
         n1Yv/pTyDeEjjcrKKJ4QRo120JjkONFVQh65W0UP6eNhIP9wGuEEUTX9lr6/+QyFAh+s
         B4VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741890683; x=1742495483;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vXnRxpxYe49SDy+ll8iRRrwvRZ2bdnRzd1C07n7AGFQ=;
        b=nBa/rX86aMrXTyjxn9FICnsHiEx0/NFCsMNdjAOxhcPG8miQYS98DfxZ3hq1eU9JMi
         VNcXdnaqVZpbEv/k8PFpLbJQ3w4tpWVvpo5R6aGMm8539ihrwc5ETr9c1CHCYoBdeD3m
         mi4AuaQ+szCMd3OLsgA55Ie4e+2RwUTrOIv/99QsrryW+V4CMBOoTwScnT0aiUT1nJU5
         QfteGEhiZRa3f2n7n/oGEOIzkt3o1AmuzCfEXWsru3J8SQ0YHyguxwHfYQB5kv7XCJyf
         uTpReLBk4iqwmVVA3kSX4mTsgRNo6R29aSQshGozD5uLXUn7OxJXIs6Wd4iWz0LK2nh7
         /Osw==
X-Forwarded-Encrypted: i=1; AJvYcCUePtk4U+biCKslbviYTuyYOvlHbkc9tm1+UQ9MfwcE1aJF+mhz7KHtvzm+2PTfdJqlTk8NrsPvgR/R@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv8neDAW+eDYi9DsqACrZMbcFqIqVFQyULavC8lyr3+4wiBf8d
	dPw72obQ4RSVVh54ONElDqKpgpqy22K9+OHqsl8KbCAcs4jdm4bewaZt2hzHPbo=
X-Gm-Gg: ASbGncuRoWTTKOVv7WxZVu7v1JnucZsNSGrn3RfUbd6bPUkdwzNchOuWk/bu/+KDbc1
	ModS0LvMJ2DfFAVBoPuRDEYh6Q3sK7Iw7zqiV1h5BsqBPKFETbSNHhVj5XA0ZFEDGLEQlYQnRsm
	ox3qnr7lN9ei6f34b2hMh46Da4JYi4t5bxk5W29Jt1zK8K+F5zRTXG+iuUHb9WGf1jSQsKpf3BN
	jLM3Yv8XKn5j1OWVcJJ3LfsP7m9yVdQTisfn9ETloFMh4T4s/pG+dTdjIYkvwYIsHCb8uH2mN90
	bpwJJz9V+dssiDTpqlqK13uJTh+FZY2b/YH4ylhA6uC+1mTOeg==
X-Google-Smtp-Source: AGHT+IEqhmMGPVvyYQ4YUNWWFgupgua68itRs76XFocxn1hRn/6jgNyhkZmatQ0VV7ymwyyFQmWQeQ==
X-Received: by 2002:a05:6000:2b09:b0:391:4b8e:a200 with SMTP id ffacd0b85a97d-396c21fbd06mr392167f8f.32.1741890683140;
        Thu, 13 Mar 2025 11:31:23 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43d188bb577sm28973315e9.19.2025.03.13.11.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 11:31:22 -0700 (PDT)
Date: Thu, 13 Mar 2025 21:31:19 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Roman Kisel <romank@linux.microsoft.com>,
	arnd@arndb.de, bhelgaas@google.com, bp@alien8.de,
	catalin.marinas@arm.com, conor+dt@kernel.org,
	dave.hansen@linux.intel.com, decui@microsoft.com,
	haiyangz@microsoft.com, hpa@zytor.com, joey.gouly@arm.com,
	krzk+dt@kernel.org, kw@linux.com, kys@microsoft.com,
	lenb@kernel.org, lpieralisi@kernel.org,
	manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
	maz@kernel.org, mingo@redhat.com, oliver.upton@linux.dev,
	rafael@kernel.org, robh@kernel.org, ssengar@linux.microsoft.com,
	sudeep.holla@arm.com, suzuki.poulose@arm.com, tglx@linutronix.de,
	wei.liu@kernel.org, will@kernel.org, yuzenghui@huawei.com,
	devicetree@vger.kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH hyperv-next v5 08/11] Drivers: hv: vmbus: Get the IRQ
 number from DeviceTree
Message-ID: <1283ab3a-a66b-4fe2-9ba4-8d5972daa89b@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250307220304.247725-9-romank@linux.microsoft.com>

Hi Roman,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Roman-Kisel/arm64-kvm-smccc-Introduce-and-use-API-for-detectting-hypervisor-presence/20250308-060639
base:   3a7f7785eae7cf012af128ca9e383c91e4955354
patch link:    https://lore.kernel.org/r/20250307220304.247725-9-romank%40linux.microsoft.com
patch subject: [PATCH hyperv-next v5 08/11] Drivers: hv: vmbus: Get the IRQ number from DeviceTree
config: arm64-randconfig-r071-20250312 (https://download.01.org/0day-ci/archive/20250313/202503132345.uKNehsnm-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 14.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202503132345.uKNehsnm-lkp@intel.com/

smatch warnings:
drivers/hv/vmbus_drv.c:2355 vmbus_set_irq() warn: platform_get_irq() does not return zero

vim +2355 drivers/hv/vmbus_drv.c

2e494cbd89c51d1 Roman Kisel    2025-03-07  2348  static int __maybe_unused vmbus_set_irq(struct platform_device *pdev)
2e494cbd89c51d1 Roman Kisel    2025-03-07  2349  {
2e494cbd89c51d1 Roman Kisel    2025-03-07  2350  	struct irq_data *data;
2e494cbd89c51d1 Roman Kisel    2025-03-07  2351  	int irq;
2e494cbd89c51d1 Roman Kisel    2025-03-07  2352  	irq_hw_number_t hwirq;
2e494cbd89c51d1 Roman Kisel    2025-03-07  2353  
2e494cbd89c51d1 Roman Kisel    2025-03-07  2354  	irq = platform_get_irq(pdev, 0);
2e494cbd89c51d1 Roman Kisel    2025-03-07 @2355  	if (irq == 0) {
2e494cbd89c51d1 Roman Kisel    2025-03-07  2356  		pr_err("VMBus interrupt mapping failure\n");
2e494cbd89c51d1 Roman Kisel    2025-03-07  2357  		return -EINVAL;

You can delete this if statement.  It's dead code.  See the comment
next to platform_get_irq().  I wrote a blog about the history of
this:
https://staticthinking.wordpress.com/2023/08/07/writing-a-check-for-zero-irq-error-codes/

2e494cbd89c51d1 Roman Kisel    2025-03-07  2358  	}
2e494cbd89c51d1 Roman Kisel    2025-03-07  2359  	if (irq < 0) {
2e494cbd89c51d1 Roman Kisel    2025-03-07  2360  		pr_err("VMBus interrupt data can't be read from DeviceTree, error %d\n", irq);
2e494cbd89c51d1 Roman Kisel    2025-03-07  2361  		return irq;
2e494cbd89c51d1 Roman Kisel    2025-03-07  2362  	}
2e494cbd89c51d1 Roman Kisel    2025-03-07  2363  
2e494cbd89c51d1 Roman Kisel    2025-03-07  2364  	data = irq_get_irq_data(irq);
2e494cbd89c51d1 Roman Kisel    2025-03-07  2365  	if (!data) {
2e494cbd89c51d1 Roman Kisel    2025-03-07  2366  		pr_err("No interrupt data for VMBus virq %d\n", irq);
2e494cbd89c51d1 Roman Kisel    2025-03-07  2367  		return -ENODEV;
2e494cbd89c51d1 Roman Kisel    2025-03-07  2368  	}
2e494cbd89c51d1 Roman Kisel    2025-03-07  2369  	hwirq = irqd_to_hwirq(data);
2e494cbd89c51d1 Roman Kisel    2025-03-07  2370  
2e494cbd89c51d1 Roman Kisel    2025-03-07  2371  	vmbus_irq = irq;
2e494cbd89c51d1 Roman Kisel    2025-03-07  2372  	vmbus_interrupt = hwirq;
2e494cbd89c51d1 Roman Kisel    2025-03-07  2373  	pr_debug("VMBus virq %d, hwirq %d\n", vmbus_irq, vmbus_interrupt);
2e494cbd89c51d1 Roman Kisel    2025-03-07  2374  
2e494cbd89c51d1 Roman Kisel    2025-03-07  2375  	return 0;
2e494cbd89c51d1 Roman Kisel    2025-03-07  2376  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


