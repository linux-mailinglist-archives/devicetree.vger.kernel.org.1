Return-Path: <devicetree+bounces-77602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCE290F5D8
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 20:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE6A31F222C5
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 18:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6819015747D;
	Wed, 19 Jun 2024 18:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="PWYxy6Cg"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FCF15572F;
	Wed, 19 Jun 2024 18:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718821002; cv=none; b=lb9yKbo+TjYatkEEbV8YT5JdSD21X7uLwzdLA5EOuyZQgMJW+F85ieRxcLY+B8xuiWEg0GLXs+vnQTw+wz3nyVi6oX3DTvWby7dKCA+j6iBvQFb3wQ8R6XpsOnw+qnxKVnHQ1xy0a60vq+9McF8ETxzmstEVqoZI65fWYseX3r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718821002; c=relaxed/simple;
	bh=63aVaK+yhLs7whgGbzIahQ7hJxL2q5fTzr6NiBxNoqo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kle7Y9O7dOl9M9M24tEgHhwLpo04qcDYg46s+7XdenGN7sJWtlSGgsC7aqaovd+681DAItUyLikiVGjYsg5vTRbot0gNZWVIl8RK9lG99DGJz6IwbnXd2gBUFmUtuahKYyWEhJcduH8CmXs4dGdevGvu8VRQRb7tqrBj7MuaLCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=PWYxy6Cg; arc=none smtp.client-ip=198.175.65.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1718821000; x=1750357000;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=63aVaK+yhLs7whgGbzIahQ7hJxL2q5fTzr6NiBxNoqo=;
  b=PWYxy6CgzYlp54vsCFah8uwEfwdD541FbWyowqhcDVuaTZbe9V8BddUf
   xl+gd8Ec4cM9WRUJjHP4S8lVW/fxO28FigGevw9tiMnjBNDo5ONTBkPWO
   jIoyawNJvpMBYUOZzO73eFKjbRiab+jGu4XfQHqqGvqILOxDHbSZciI2i
   GRin4iWntK2eAaMBBjJjqNFLBq8LZ8qJtob0N8q5WgjT9BkHCi7IOQf1O
   pIWIVLInf4enaoSpUjgAt+V/dKKfwlIYzxEI87KIGtcoLQpB5Dr3vgQ+H
   pYDFWEqR9OOTPc5OrWMSuEcx/z603oN0LBEdlH5rHLnZBke+x64ggc7s8
   Q==;
X-CSE-ConnectionGUID: xwlRtyFaSfSnQlsXPuoVmA==
X-CSE-MsgGUID: rTff7SBsRTGHXUADMr1oaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="27194617"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; 
   d="scan'208";a="27194617"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jun 2024 11:16:38 -0700
X-CSE-ConnectionGUID: IAzn4UM8TRCpkJBi84Bhog==
X-CSE-MsgGUID: Ixqc/qhbQ0qIV3IMcJ0Cxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; 
   d="scan'208";a="46365037"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 19 Jun 2024 11:16:34 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sJzrE-0006rM-0t;
	Wed, 19 Jun 2024 18:16:32 +0000
Date: Thu, 20 Jun 2024 02:15:34 +0800
From: kernel test robot <lkp@intel.com>
To: Yuntao Dai <d1581209858@live.com>, jassisinghbrar@gmail.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	unicorn_wang@outlook.com, inochiama@outlook.com,
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu
Cc: oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Yuntao Dai <d1581209858@live.com>
Subject: Re: [PATCH 3/3] mailbox: sophgo: add mailbox driver for cv18x SoCs
Message-ID: <202406200221.v3RvI4Qb-lkp@intel.com>
References: <SYBP282MB2238F93AB57A398E322644C3C4CE2@SYBP282MB2238.AUSP282.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SYBP282MB2238F93AB57A398E322644C3C4CE2@SYBP282MB2238.AUSP282.PROD.OUTLOOK.COM>

Hi Yuntao,

kernel test robot noticed the following build warnings:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linus/master v6.10-rc4 next-20240619]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Yuntao-Dai/dt-bindings-mailbox-add-Sophgo-cv18x-SoCs-mailbox/20240618-232307
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/SYBP282MB2238F93AB57A398E322644C3C4CE2%40SYBP282MB2238.AUSP282.PROD.OUTLOOK.COM
patch subject: [PATCH 3/3] mailbox: sophgo: add mailbox driver for cv18x SoCs
config: loongarch-allmodconfig (https://download.01.org/0day-ci/archive/20240620/202406200221.v3RvI4Qb-lkp@intel.com/config)
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240620/202406200221.v3RvI4Qb-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406200221.v3RvI4Qb-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/mailbox/cv1800b-mailbox.c: In function 'cv1800b_mbox_send_data':
>> drivers/mailbox/cv1800b-mailbox.c:83:19: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
      83 |         int idx = (int)chan->con_priv;
         |                   ^
   drivers/mailbox/cv1800b-mailbox.c: In function 'cv1800b_mbox_probe':
>> drivers/mailbox/cv1800b-mailbox.c:160:48: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
     160 |                 mb->mbox.chans[idx].con_priv = (void *)idx;
         |                                                ^


vim +83 drivers/mailbox/cv1800b-mailbox.c

    79	
    80	static int cv1800b_mbox_send_data(struct mbox_chan *chan, void *data)
    81	{
    82		struct cv1800b_mbox *mbox = dev_get_drvdata(chan->mbox->dev);
  > 83		int idx = (int)chan->con_priv;
    84		u8 en, valid;
    85		u64 *addr = (u64 *)(mbox->mbox_base + MAILBOX_CONTEXT_OFFSET) + idx;
    86	
    87		memcpy_toio(addr, data, 8);
    88	
    89		valid = 1 << idx;
    90		writeb(valid, mbox->mbox_base + MBOX_SET_CLR_REG(mbox->sendto));
    91		en = readb(mbox->mbox_base + MBOX_EN_REG(mbox->sendto));
    92		writeb(en | valid, mbox->mbox_base + MBOX_EN_REG(mbox->sendto));
    93		writeb(valid, mbox->mbox_base + MBOX_SET_REG);
    94	
    95		return 0;
    96	}
    97	
    98	static bool cv1800b_last_tx_done(struct mbox_chan *chan)
    99	{
   100		return true;
   101	}
   102	
   103	static const struct mbox_chan_ops cv1800b_mbox_chan_ops = {
   104		.send_data = cv1800b_mbox_send_data,
   105		.last_tx_done = cv1800b_last_tx_done,
   106	};
   107	
   108	static const struct of_device_id cv1800b_mbox_of_match[] = {
   109		{ .compatible = "sophgo,cv1800b-mailbox", },
   110		{},
   111	};
   112	MODULE_DEVICE_TABLE(of, cv1800b_mbox_of_match);
   113	
   114	static int cv1800b_mbox_probe(struct platform_device *pdev)
   115	{
   116		struct device *dev = &pdev->dev;
   117		struct cv1800b_mbox *mb;
   118		int irq, idx, err, cpu;
   119	
   120		if (!dev->of_node)
   121			return -ENODEV;
   122	
   123		mb = devm_kzalloc(dev, sizeof(*mb), GFP_KERNEL);
   124		if (!mb)
   125			return -ENOMEM;
   126	
   127		mb->mbox_base = devm_of_iomap(dev, dev->of_node, 0, NULL);
   128		if (IS_ERR(mb->mbox_base))
   129			return dev_err_probe(dev, PTR_ERR(mb->mbox_base),
   130					     "Failed to map resource\n");
   131	
   132		err = of_property_read_s32(dev->of_node, "sendto", &cpu);
   133		if (err)
   134			return dev_err_probe(dev, err,
   135					     "Failed to find <sendto> in of_node\n");
   136	
   137		mb->sendto = cpu;
   138	
   139		err = of_property_read_s32(dev->of_node, "recvid", &cpu);
   140		if (err) {
   141			return dev_err_probe(dev, err,
   142					     "Failed to find <recvid> in of_node\n");
   143		}
   144		mb->recvid = cpu;
   145	
   146		mb->mbox.dev = dev;
   147		mb->mbox.num_chans = MAILBOX_MAX_CHAN;
   148		mb->mbox.chans = mb->chans;
   149		mb->mbox.ops = &cv1800b_mbox_chan_ops;
   150		mb->mbox.txdone_poll = true;
   151	
   152		irq = platform_get_irq_byname(pdev, "mailbox");
   153		err = devm_request_threaded_irq(dev, irq, cv1800b_mbox_irq,
   154						cv1800b_mbox_isr, IRQF_ONESHOT,
   155						dev_name(&pdev->dev), mb);
   156		if (err < 0)
   157			return dev_err_probe(dev, err, "Failed to register irq\n");
   158	
   159		for (idx = 0; idx < MAILBOX_MAX_CHAN; idx++)
 > 160			mb->mbox.chans[idx].con_priv = (void *)idx;
   161	
   162		err = devm_mbox_controller_register(dev, &mb->mbox);
   163		if (err)
   164			return dev_err_probe(dev, err, "Failed to register mailbox\n");
   165	
   166		platform_set_drvdata(pdev, mb);
   167		return 0;
   168	}
   169	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

