Return-Path: <devicetree+bounces-278063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YI+aFi3LvGnT2wIAu9opvQ
	(envelope-from <devicetree+bounces-278063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 05:21:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E44F2D5C23
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 05:21:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 77514300C82E
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 04:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C18342DF13F;
	Fri, 20 Mar 2026 04:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="L5LaXyqU"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B7C2C0298;
	Fri, 20 Mar 2026 04:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773980458; cv=none; b=Brcnzvv7iTn6K7dCdt87HEbdHDyHbMRI58kJAKaxoha/dM7Ppw0z5DRCJre66jnM8+PUm23gczGh0nfKs3iO3jnjzQfU9UcLMy0ifNvW136Sar8LTZTBW+9/oKhXSi8jf+EyiHRI0XCONnZQBjT0oHzkdoGQQbNNtZojdo01ZII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773980458; c=relaxed/simple;
	bh=OHnX7uZBV92R01nqYlUueQh+SwiiSpGawFPFVc+X9Ac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CrjUJvI+uuS8NW7xy1tQ9/k6KVuXxfxqCVQJ5By81UCvOqsgdhOwQkihuivtaGfXKDqneG9xh3GQ8t2A6KdyB2FjigkYR/Ng4wVXikUYYFY7ym5RPJZ8WPDGBOpb0J27knsK2krf7blGsZdSpX8wTaZCWfpus46SG2fi5XIZG5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=L5LaXyqU; arc=none smtp.client-ip=192.198.163.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773980457; x=1805516457;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=OHnX7uZBV92R01nqYlUueQh+SwiiSpGawFPFVc+X9Ac=;
  b=L5LaXyqUQuSe9rdSxkrQ/fc2MQGDqU5dOM72R0hr5sA2UrBzFxYzwSGJ
   H/ur1e4kexj//aCB29nGwoxmD3UxjrWUwYpj5/hh8/zAhTxtTfIqhCaDP
   id25clAsc3MlDgsk8oijH9RxevA4r5wmRCy87oouzK7wgWliDAGs9gNQU
   UR0HweJyPXQhr23ae8CkqA1OhXQbe/NwO/2q2bOHXGb+vwXoma8+nUBbK
   XDBLkdYdC5460QIcFJa98Hc5EsJredJKtvC2LTJL4fT5BsSzXfkiljoLK
   V5lQhNiZuDe2Otq0EvmbyxKXVc2ZPWAkO8zfYIKEeWDfZhEa9lIGlUpfI
   Q==;
X-CSE-ConnectionGUID: OVPjBsIYR+afVhH8+cmjBw==
X-CSE-MsgGUID: JbWpUPoNSGGhxREDwJ1Kvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="77670266"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; 
   d="scan'208";a="77670266"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2026 21:20:56 -0700
X-CSE-ConnectionGUID: f2vicg65TU+omWmZ32VWkg==
X-CSE-MsgGUID: Kgb03j0VRrWGSeCxQZ27jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; 
   d="scan'208";a="220549657"
Received: from lkp-server02.sh.intel.com (HELO a51c2a36b9df) ([10.239.97.151])
  by fmviesa008.fm.intel.com with ESMTP; 19 Mar 2026 21:20:53 -0700
Received: from kbuild by a51c2a36b9df with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1w3RLn-000000001wf-2k5k;
	Fri, 20 Mar 2026 04:20:45 +0000
Date: Fri, 20 Mar 2026 12:19:52 +0800
From: kernel test robot <lkp@intel.com>
To: aspeedyh <yh_chung@aspeedtech.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Ryan Chen <ryan_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org, maciej.lawniczak@intel.com,
	aspeedyh <yh_chung@aspeedtech.com>
Subject: Re: [PATCH 5/7] soc: aspeed: Add eSPI flash channel support
Message-ID: <202603201234.n0spXcAN-lkp@intel.com>
References: <20260313-upstream_espi-v1-5-9504428e1f43@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-upstream_espi-v1-5-9504428e1f43@aspeedtech.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278063-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.963];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,01.org:url]
X-Rspamd-Queue-Id: 7E44F2D5C23
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi aspeedyh,

kernel test robot noticed the following build errors:

[auto build test ERROR on 0257f64bdac7fdca30fa3cae0df8b9ecbec7733a]

url:    https://github.com/intel-lab-lkp/linux/commits/aspeedyh/dt-bindings-soc-aspeed-Add-AST2600-eSPI-controller/20260315-101647
base:   0257f64bdac7fdca30fa3cae0df8b9ecbec7733a
patch link:    https://lore.kernel.org/r/20260313-upstream_espi-v1-5-9504428e1f43%40aspeedtech.com
patch subject: [PATCH 5/7] soc: aspeed: Add eSPI flash channel support
config: riscv-allyesconfig (https://download.01.org/0day-ci/archive/20260320/202603201234.n0spXcAN-lkp@intel.com/config)
compiler: clang version 16.0.6 (https://github.com/llvm/llvm-project 7cbf1a2591520c2491aa35339f227775f4d3adf6)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260320/202603201234.n0spXcAN-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603201234.n0spXcAN-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/soc/aspeed/espi/ast2600-espi.c:137:9: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
           reg |= FIELD_PREP(ESPI_CTRL_FLASH_TAFS_MODE, flash->tafs.mode);
                  ^
   drivers/soc/aspeed/espi/ast2600-espi.c:172:28: warning: variable 'flash' set but not used [-Wunused-but-set-variable]
           struct aspeed_espi_flash *flash;
                                     ^
>> drivers/soc/aspeed/espi/ast2600-espi.c:194:13: error: call to undeclared function 'FIELD_GET'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
           hdr->cyc = FIELD_GET(ESPI_FLASH_RX_CTRL_CYC, reg);
                      ^
   drivers/soc/aspeed/espi/ast2600-espi.c:243:8: error: call to undeclared function 'FIELD_PREP'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
           reg = FIELD_PREP(ESPI_FLASH_TX_CTRL_CYC, cyc) |
                 ^
   1 warning and 3 errors generated.


vim +/FIELD_PREP +137 drivers/soc/aspeed/espi/ast2600-espi.c

   111	
   112	static void ast2600_espi_flash_reset(struct aspeed_espi *espi)
   113	{
   114		struct aspeed_espi_flash *flash;
   115		u32 reg;
   116	
   117		flash = &espi->flash;
   118	
   119		writel(ESPI_INT_EN_FLASH, espi->regs + ESPI_INT_EN_CLR);
   120		writel(ESPI_INT_STS_FLASH, espi->regs + ESPI_INT_STS);
   121	
   122		reg = readl(espi->regs + ESPI_CTRL);
   123		reg &= ~(ESPI_CTRL_FLASH_TX_SW_RST
   124			 | ESPI_CTRL_FLASH_RX_SW_RST
   125			 | ESPI_CTRL_FLASH_TX_DMA_EN
   126			 | ESPI_CTRL_FLASH_RX_DMA_EN
   127			 | ESPI_CTRL_FLASH_SW_RDY);
   128		writel(reg, espi->regs + ESPI_CTRL);
   129	
   130		udelay(1);
   131	
   132		reg |= (ESPI_CTRL_FLASH_TX_SW_RST | ESPI_CTRL_FLASH_RX_SW_RST);
   133		writel(reg, espi->regs + ESPI_CTRL);
   134	
   135		flash->tafs.mode = TAFS_MODE_SW;
   136		reg = readl(espi->regs + ESPI_CTRL) & ~ESPI_CTRL_FLASH_TAFS_MODE;
 > 137		reg |= FIELD_PREP(ESPI_CTRL_FLASH_TAFS_MODE, flash->tafs.mode);
   138		writel(reg, espi->regs + ESPI_CTRL);
   139	
   140		if (flash->dma.enable) {
   141			writel(flash->dma.tx_addr, espi->regs + ESPI_FLASH_TX_DMA);
   142			writel(flash->dma.rx_addr, espi->regs + ESPI_FLASH_RX_DMA);
   143	
   144			reg = readl(espi->regs + ESPI_CTRL)
   145			      | ESPI_CTRL_FLASH_TX_DMA_EN
   146			      | ESPI_CTRL_FLASH_RX_DMA_EN;
   147			writel(reg, espi->regs + ESPI_CTRL);
   148		}
   149	
   150		writel(ESPI_INT_EN_FLASH_RX_CMPLT, espi->regs + ESPI_INT_EN);
   151	
   152		reg = readl(espi->regs + ESPI_CTRL) | ESPI_CTRL_FLASH_SW_RDY;
   153		writel(reg, espi->regs + ESPI_CTRL);
   154	}
   155	
   156	int ast2600_espi_flash_probe(struct aspeed_espi *espi)
   157	{
   158		u32 regs;
   159	
   160		regs = readl(espi->regs + ESPI_STS);
   161		if (regs & (ESPI_STS_FLASH_TX_BUSY | ESPI_STS_FLASH_RX_BUSY)) {
   162			dev_warn(espi->dev, "eSPI flash channel is busy, deferring...\n");
   163			return -EPROBE_DEFER;
   164		}
   165	
   166		ast2600_espi_flash_reset(espi);
   167		return 0;
   168	}
   169	
   170	int ast2600_espi_flash_remove(struct aspeed_espi *espi)
   171	{
   172		struct aspeed_espi_flash *flash;
   173		u32 reg;
   174	
   175		flash = &espi->flash;
   176	
   177		writel(ESPI_INT_EN_FLASH, espi->regs + ESPI_INT_EN_CLR);
   178	
   179		reg = readl(espi->regs + ESPI_CTRL);
   180		reg &= ~(ESPI_CTRL_FLASH_TX_DMA_EN
   181			 | ESPI_CTRL_FLASH_RX_DMA_EN
   182			 | ESPI_CTRL_FLASH_SW_RDY);
   183		writel(reg, espi->regs + ESPI_CTRL);
   184	
   185		return 0;
   186	}
   187	
   188	int ast2600_espi_flash_get_hdr(struct aspeed_espi *espi,
   189				       struct espi_comm_hdr *hdr)
   190	{
   191		u32 reg, len;
   192	
   193		reg = readl(espi->regs + ESPI_FLASH_RX_CTRL);
 > 194		hdr->cyc = FIELD_GET(ESPI_FLASH_RX_CTRL_CYC, reg);
   195		hdr->tag = FIELD_GET(ESPI_FLASH_RX_CTRL_TAG, reg);
   196		len = FIELD_GET(ESPI_FLASH_RX_CTRL_LEN, reg);
   197		hdr->len_h = (len >> 8) & 0xff;
   198		hdr->len_l = len & 0xff;
   199	
   200		return 0;
   201	}
   202	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

