Return-Path: <devicetree+bounces-133090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4629F9376
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:44:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6EFC57A339A
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:44:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 156EB2165E6;
	Fri, 20 Dec 2024 13:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="caoyk6gt"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD36216388;
	Fri, 20 Dec 2024 13:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734702214; cv=none; b=nHy7+ac1c6bMm6HgfLW6uwaysFrMu4zIwZz+JEN4ObTqP2pmu4PCPYtSzlepK0nrwCFTGj+eEfjoNszp5h3LID33P+Di+t2xLDwF8sZKkIEnEUxjoQP0G5YdIhpWzvcYZnJGFZ0Lu7Sf7O7RgTWwG60PcX27pehsw3PEwPgyHc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734702214; c=relaxed/simple;
	bh=uWGySZ2E4aRpnNq3hO6xAnpvheb5K/9j8N4u7HpP5i0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tEkwKQjt3ZMoTcKbBilj4FF1Lp/zabPwsjpb6bjszEEEAs+4VaJ7rWFRy+b4+u9ToFEY8m32fks/RotSdKQJWKMRgoEXyllaYnG0xjbmbdXPv812CXRTh/OmBImndrBOp4uoJu35bTzmqko4YjX/z5qXnRE5B6MOQDOqMwZ8VzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=caoyk6gt; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1734702212; x=1766238212;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=uWGySZ2E4aRpnNq3hO6xAnpvheb5K/9j8N4u7HpP5i0=;
  b=caoyk6gt175X/RtIlYmB++kkCwRRjICuG4rBG0DY+ZiqJwc9vFfCvrds
   gxR59iec8pfmfSYesD99Y/8RsN9rp1zKHmIVUzGxlPQz3tS6zueL2Uzcu
   pP4nFqK+qTSnDeDMgCIxAzVCnzyNaleYfYmE/49RoYUzum+isd/idtZpP
   3A8aD8Qt6op7wTdm03Ma7pB0fepAAwLquxrw544REf1lgFybVe96lKqas
   AVxS20RP0i3Nq5ICdRNBJOo68Asp7l5N8Tg1Nm3vua4GPOSooF/aIt3ru
   c5ign6eddN8yQuE67Y+Vqt12KZTjuFyPEJvtvH2WMRGYHwZ/X/En5fonU
   w==;
X-CSE-ConnectionGUID: IEYzbD4LQRe8a59DQqDQzQ==
X-CSE-MsgGUID: UJQRgCBWS2e3Kho+6u0WVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="35466067"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; 
   d="scan'208";a="35466067"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Dec 2024 05:43:31 -0800
X-CSE-ConnectionGUID: pabVtBuFQwq6GY9WwcCsYg==
X-CSE-MsgGUID: avlCIJwSQg+STeVO+/6JoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; 
   d="scan'208";a="103591853"
Received: from lkp-server01.sh.intel.com (HELO a46f226878e0) ([10.239.97.150])
  by orviesa003.jf.intel.com with ESMTP; 20 Dec 2024 05:43:26 -0800
Received: from kbuild by a46f226878e0 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tOdHn-0001C3-1Y;
	Fri, 20 Dec 2024 13:43:23 +0000
Date: Fri, 20 Dec 2024 21:42:49 +0800
From: kernel test robot <lkp@intel.com>
To: wangweidong.a@awinic.com, lgirdwood@gmail.com, broonie@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	perex@perex.cz, tiwai@suse.com, ivprusov@salutedevices.com,
	neil.armstrong@linaro.org, jack.yu@realtek.com,
	rf@opensource.cirrus.com, zhoubinbin@loongson.cn,
	quic_pkumpatl@quicinc.com, herve.codina@bootlin.com,
	masahiroy@kernel.org, nuno.sa@analog.com, yesanishhere@gmail.com,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	yijiangtao@awinic.com
Subject: Re: [PATCH V2 2/2] ASoC: codecs: Add aw88083 amplifier driver
Message-ID: <202412202139.OayEq3D3-lkp@intel.com>
References: <20241219123047.33330-3-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241219123047.33330-3-wangweidong.a@awinic.com>

Hi,

kernel test robot noticed the following build errors:

[auto build test ERROR on eabcdba3ad4098460a376538df2ae36500223c1e]

url:    https://github.com/intel-lab-lkp/linux/commits/wangweidong-a-awinic-com/ASoC-dt-bindings-Add-schema-for-awinic-aw88083/20241219-203933
base:   eabcdba3ad4098460a376538df2ae36500223c1e
patch link:    https://lore.kernel.org/r/20241219123047.33330-3-wangweidong.a%40awinic.com
patch subject: [PATCH V2 2/2] ASoC: codecs: Add aw88083 amplifier driver
config: i386-randconfig-014-20241220 (https://download.01.org/0day-ci/archive/20241220/202412202139.OayEq3D3-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20241220/202412202139.OayEq3D3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202412202139.OayEq3D3-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from sound/soc/codecs/aw88081.c:11:
   In file included from include/linux/i2c.h:19:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:21:
   In file included from include/linux/mm.h:2223:
   include/linux/vmstat.h:518:36: warning: arithmetic between different enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-enum-conversion]
     518 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip "nr_"
         |                               ~~~~~~~~~~~ ^ ~~~
>> sound/soc/codecs/aw88081.c:407:11: error: incompatible pointer types passing 'struct aw_device *' to parameter of type 'const struct device *' [-Werror,-Wincompatible-pointer-types]
     407 |                 dev_err(aw_dev, "unsupported this device\n");
         |                         ^~~~~~
   include/linux/dev_printk.h:154:44: note: expanded from macro 'dev_err'
     154 |         dev_printk_index_wrap(_dev_err, KERN_ERR, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                   ^~~
   include/linux/dev_printk.h:110:11: note: expanded from macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                         ^~~
   include/linux/dev_printk.h:50:36: note: passing argument to parameter 'dev' here
      50 | void _dev_err(const struct device *dev, const char *fmt, ...);
         |                                    ^
>> sound/soc/codecs/aw88081.c:442:52: error: incompatible pointer types passing 'u16 *' (aka 'unsigned short *') to parameter of type 'unsigned int *' [-Werror,-Wincompatible-pointer-types]
     442 |                 ret = aw8808x_reg_value_check(aw88081, reg_addr, &reg_val);
         |                                                                  ^~~~~~~~
   sound/soc/codecs/aw88081.c:394:43: note: passing argument to parameter 'reg_val' here
     394 |                                         unsigned int reg_addr, unsigned int *reg_val)
         |                                                                              ^
   1 warning and 2 errors generated.


vim +407 sound/soc/codecs/aw88081.c

   392	
   393	static int aw8808x_reg_value_check(struct aw88081 *aw88081,
   394						unsigned int reg_addr, unsigned int *reg_val)
   395	{
   396		struct aw_device *aw_dev = aw88081->aw_pa;
   397		int ret;
   398	
   399		switch (aw88081->devtype) {
   400		case AW88081:
   401			ret = aw88081_dev_reg_value_check(aw_dev, reg_addr, reg_val);
   402			break;
   403		case AW88083:
   404			ret = aw88083_dev_reg_value_check(aw_dev, reg_addr, reg_val);
   405			break;
   406		default:
 > 407			dev_err(aw_dev, "unsupported this device\n");
   408			ret = -EINVAL;
   409			break;
   410		}
   411	
   412		return ret;
   413	}
   414	
   415	static int aw88081_dev_reg_update(struct aw88081 *aw88081,
   416						unsigned char *data, unsigned int len)
   417	{
   418		struct aw_device *aw_dev = aw88081->aw_pa;
   419		struct aw_volume_desc *vol_desc = &aw_dev->volume_desc;
   420		int data_len, i, ret;
   421		int16_t *reg_data;
   422		u16 reg_val;
   423		u8 reg_addr;
   424	
   425		if (!len || !data) {
   426			dev_err(aw_dev->dev, "reg data is null or len is 0");
   427			return -EINVAL;
   428		}
   429	
   430		reg_data = (int16_t *)data;
   431		data_len = len >> 1;
   432	
   433		if (data_len & 0x1) {
   434			dev_err(aw_dev->dev, "data len:%d unsupported",	data_len);
   435			return -EINVAL;
   436		}
   437	
   438		for (i = 0; i < data_len; i += 2) {
   439			reg_addr = reg_data[i];
   440			reg_val = reg_data[i + 1];
   441	
 > 442			ret = aw8808x_reg_value_check(aw88081, reg_addr, &reg_val);
   443			if (ret)
   444				return ret;
   445	
   446			ret = regmap_write(aw_dev->regmap, reg_addr, reg_val);
   447			if (ret)
   448				return ret;
   449		}
   450	
   451		if (aw_dev->prof_cur != aw_dev->prof_index)
   452			vol_desc->ctl_volume = 0;
   453	
   454		/* keep min volume */
   455		aw88081_dev_set_volume(aw_dev, vol_desc->mute_volume);
   456	
   457		return 0;
   458	}
   459	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

