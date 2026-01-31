Return-Path: <devicetree+bounces-261432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBovBQ0Wfml6VQIAu9opvQ
	(envelope-from <devicetree+bounces-261432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:47:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7C5C28FD
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E66B7300D144
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 14:36:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A425354ACE;
	Sat, 31 Jan 2026 14:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UvJNrHet"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 762FC356A00
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 14:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769870164; cv=none; b=dBfo1dK5JZYe8JzdYfkEcoiuGVYwVkMl2a0ophDXufeZVx+22KVfICi7Z+usvTqiEHUsaQA4Y/VdL33m47bNYB3TYLqaZRIHG/YG289RZcXjK4fpTZsVWxEcXUhpVhqQgBRZNVE/v7Tea7GkrYFhGjQLY5U5DlGeR4mWiodGCBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769870164; c=relaxed/simple;
	bh=zvie+874fTn75a3eXFaIOd8Atel+XaljTeurFJOSLEw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=NZVC9K3eciJDq4LCbH8ETupvRnVS/1YSeOTb488P/n6CY0YtbRx86AwdRXcIBW101e8oYrLlNRF5+5P5SCtInmD6dmIDVf6hQ8nrtr4vqbIOIEJSuG/elu9YEA+Y0Yx/UECkyF4N1nj/vksxFaR2OPykj7XD3eJx4qqUgD/V40o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UvJNrHet; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-43601e96f72so35665f8f.2
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 06:36:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769870161; x=1770474961; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sVSIbao0S7N2+ApNZzv364LLiL6KFRy4sHA0aE5O/xE=;
        b=UvJNrHetDiXQJ7grvTO09YccQrMas+qpNuHYjrT1A35wI8nCty32ItdvH8s7F6Tmxg
         WyHdePxPRxY+nJ4P7TVriQ+9s+pVU3eZl06629Xz/TbJ3f5Yh/LH0LqDZ+7/uss1uM9e
         +L1PNRWQ3KAj4Yrgj5NdJZXqj168XJRFEJ2SyLEEtJ1dree9wjpg+3zoZxlNe8wjSe8S
         C2MQ3sGIS64hVHZcpeaJtT1tXxyJw7TroNfV8a9MaFdGNmHj6Yi3oCtEZXGUtNmlhjsj
         aU/n5TUuXkW99bj+dHnLECGoWKDS41KUYFCcGWwzMh2/G9ijoiog/9brjljdDXrN9aZE
         4ImA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769870161; x=1770474961;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sVSIbao0S7N2+ApNZzv364LLiL6KFRy4sHA0aE5O/xE=;
        b=KdsjjM2XwrsNFQvjgrrofBBV/zg9lLmfNWeJ15NAC1oTLObSndByJtwPRxA+B6onL/
         3q0jHqFC3AjVf6X6v5M48DWZkdxmDvCDkGOuCXNA94x3Q3XBkmxrYWh9rtw2yHQ27KBV
         lo/PaAecBvqpPNG6OI3yl/rJmvWoe0Nr+Ki8NRb4sYQq3N0wMEHnIBAUuLtVSEZ7MZlE
         5qImGablrOzeIwEY4grXGOXyI6sfS02GtWqizHQQTislBjHvrU+Di6NTfrTRNuizG+0a
         weJjPF8i2lw1kbRzJnKuB892mMtVdckoc8kYyw8iPlytsvx7pGpAXRvQiz5ladHrUPAe
         DPpg==
X-Forwarded-Encrypted: i=1; AJvYcCUL8Mk+Wj5ROlHhkVxtaW+sPrT0MjXeILv9J/O1CQLj3NZRdYwJ17ShkeM97Cx7wblUeM4v2pGvM8pR@vger.kernel.org
X-Gm-Message-State: AOJu0YypHO6flMUmZlHkMTpB767ckgxXtiCDts5+dVnuT8FRFJrF/t7o
	MLZx2NHrGyollsBDjs/fMzWPyEGb8f8/baBo8FFTlxn+Gc2qJoa3k5ev+gr8lZlNroY=
X-Gm-Gg: AZuq6aKbbZgSEJw8q3ICYQlnI5jL2GbKTUYD8YpdEF5c9cE+Ap4G4Yv0ZnQJZb8j4wt
	R98jIh8h5R+PSdfkaM6jacDsmGlTQ7xDGj9o7SJR1rdOIuXzkyUAG77bctEl8f6Vc3RAK+QPuVj
	xtKdzfh+/Rqfu/UIqch8rii3mqC7rweMA+GHBgVt/T7qyvTIL2dysOTbmxcUQUJSVXiT0DPRFWV
	QR8kDtcsfHrIezooA0nVLgRIWFTzDV6qd7sRRHtsNSeXLIcKOXarI93ZO+4Rd3kScJV0f5mCSOL
	cRdNlXg2NR6+RyjX6TmSHvx9WP3tnf14W5ujbLa/7+35KKgopcejpJrAJtWcC28Z1UkDrFAKnq5
	TbIUwCCT6dhdzzjCn/K2xlJdLTEBvMGp0RghM5U/e7DZJNuKaCQNaC/NNYx/nR/bzc0gOqc4X1E
	b3fFQbuJPnM6mbmnYK
X-Received: by 2002:a05:6000:4382:b0:435:99d5:9d8f with SMTP id ffacd0b85a97d-435f3a742f4mr9016413f8f.19.1769870160665;
        Sat, 31 Jan 2026 06:36:00 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10ee040sm29840712f8f.11.2026.01.31.06.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 06:36:00 -0800 (PST)
Date: Sat, 31 Jan 2026 17:35:57 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev,
	Abdurrahman Hussain via B4 Relay <devnull+abdurrahman.nexthop.ai@kernel.org>,
	Michal Simek <monstr@monstr.eu>, Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Abdurrahman Hussain <abdurrahman@nexthop.ai>
Subject: Re: [PATCH v7 5/6] i2c: xiic: cosmetic cleanup
Message-ID: <202601311615.10yziOui-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260129-i2c-xiic-v7-5-727e434897ef@nexthop.ai>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261432-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,abdurrahman.nexthop.ai,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:mid,intel.com:email,linaro.org:email,linaro.org:dkim]
X-Rspamd-Queue-Id: 8C7C5C28FD
X-Rspamd-Action: no action

Hi Abdurrahman,

kernel test robot noticed the following build warnings:

url:    https://github.com/intel-lab-lkp/linux/commits/Abdurrahman-Hussain-via-B4-Relay/i2c-xiic-skip-input-clock-setup-on-non-OF-systems/20260130-054653
base:   63804fed149a6750ffd28610c5c1c98cce6bd377
patch link:    https://lore.kernel.org/r/20260129-i2c-xiic-v7-5-727e434897ef%40nexthop.ai
patch subject: [PATCH v7 5/6] i2c: xiic: cosmetic cleanup
config: i386-randconfig-141-20260130 (https://download.01.org/0day-ci/archive/20260131/202601311615.10yziOui-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
smatch version: v0.5.0-8994-gd50c5a4c

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202601311615.10yziOui-lkp@intel.com/

smatch warnings:
drivers/i2c/busses/i2c-xiic.c:1539 xiic_i2c_remove() warn: pm_runtime_get_sync() also returns 1 on success

vim +1539 drivers/i2c/busses/i2c-xiic.c

e190a0c389e601 Uwe Kleine-König    2023-05-08  1529  static void xiic_i2c_remove(struct platform_device *pdev)
e1d5b6598cdc33 Richard Röjfors     2010-02-11  1530  {
2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1531  	struct device *dev = &pdev->dev;
e1d5b6598cdc33 Richard Röjfors     2010-02-11  1532  	struct xiic_i2c *i2c = platform_get_drvdata(pdev);
36ecbcab84d023 Shubhrajyoti Datta  2016-03-02  1533  	int ret;
e1d5b6598cdc33 Richard Röjfors     2010-02-11  1534  
e1d5b6598cdc33 Richard Röjfors     2010-02-11  1535  	/* remove adapter & data */
e1d5b6598cdc33 Richard Röjfors     2010-02-11  1536  	i2c_del_adapter(&i2c->adap);
e1d5b6598cdc33 Richard Röjfors     2010-02-11  1537  
2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1538  	ret = pm_runtime_get_sync(dev);
2557b4ba04df79 Abdurrahman Hussain 2026-01-29 @1539  	if (ret)
2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1540  		dev_warn(dev, "Failed to activate device for removal (%pe)\n",
810199f7315604 Uwe Kleine-König    2022-10-19  1541  			 ERR_PTR(ret));


pm_runtime_get_sync() can return 1 on success.  Perhaps use
pm_runtime_resume_and_get()?

810199f7315604 Uwe Kleine-König    2022-10-19  1542  	else
e1d5b6598cdc33 Richard Röjfors     2010-02-11  1543  		xiic_deinit(i2c);
810199f7315604 Uwe Kleine-König    2022-10-19  1544  
2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1545  	pm_runtime_put_sync(dev);
2557b4ba04df79 Abdurrahman Hussain 2026-01-29  1546  	pm_runtime_dont_use_autosuspend(dev);
e1d5b6598cdc33 Richard Röjfors     2010-02-11  1547  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


