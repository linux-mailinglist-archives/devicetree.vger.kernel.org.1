Return-Path: <devicetree+bounces-100612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0618996E41D
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 22:31:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 240961C23786
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 20:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CD84191F87;
	Thu,  5 Sep 2024 20:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="kR9IxBaD"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3B316BE15;
	Thu,  5 Sep 2024 20:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725568315; cv=none; b=cgReOPvs/4xqNzUOhquj4IGw2IZ4whfydyzr0kVEAOAN0E3iiruxGm/y04LEvNqZdPewq0zUpcwxDru6dlSGIq74bpyM3iiKaOTPc0ovKNAscCyWXleKKrQ/btxXIap+/ZoaqU1n3sIwTDfEFGIX5ScElVf+NqH34jBqv01Eoto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725568315; c=relaxed/simple;
	bh=5ylFWuf2Xbu91p6fl7AUsu4kYqMyJufe/dYoary0pno=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sJ/H6qGThZlTjyKV5cq4X5MFqUoCHBnDBF4BYpgBzWam+zPLgdlkY5hnizUTras61UHNruitKFVVAv/lxiA/ggP8rybSkxcjv71OHv9eqpmytS+LMxzcMlG8lY3sz7jCYnw51vuMqTZUYnB44eaWL/76Z/MiaOXsWpoXvvZwaEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=kR9IxBaD; arc=none smtp.client-ip=192.198.163.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725568312; x=1757104312;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=5ylFWuf2Xbu91p6fl7AUsu4kYqMyJufe/dYoary0pno=;
  b=kR9IxBaDcNnOFfuzy4Xa0lvqO3WBRH8X/kFzhg2lMGyLhVWCqz0OI88Q
   siGVmG6PU8kYByFpW4Ox97K02lCDVhwnpD2jIxZp3POVfMC2W5bmEwGeC
   kBWqT+E0jf7eurralIV67pDh5QskezN58O9mhItuDsA3/2HbEMhJR1iT7
   QR3OO5fNbY4X1+5nfW3bFV2BFOZW2EFHWvKSxsb2uxfFrXk2nBychzmzn
   3GeYchJrFxCwBQ7QYUNDHDLNPUcTLFhMOWSemJQN1Zw5o65HXq0GXSAI0
   ZUQdYL166EYRuJU5LL8a/UPha6REGQvmXxwk57w9CQXsMDXpYNUBf5ury
   g==;
X-CSE-ConnectionGUID: zlU2uO3rRBuj2FS+fGN+ow==
X-CSE-MsgGUID: 4RpBCBKFQX2S3TsRm9jw/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="24476450"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; 
   d="scan'208";a="24476450"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Sep 2024 13:31:51 -0700
X-CSE-ConnectionGUID: O9sNw/MWSjWmfUR4g3/YRw==
X-CSE-MsgGUID: Y6y+wGCCQD67NyTRkqM/OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; 
   d="scan'208";a="66072224"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
  by orviesa006.jf.intel.com with ESMTP; 05 Sep 2024 13:31:48 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1smJ8r-000AI3-1m;
	Thu, 05 Sep 2024 20:31:45 +0000
Date: Fri, 6 Sep 2024 04:31:21 +0800
From: kernel test robot <lkp@intel.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>,
	Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org, Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev
Subject: Re: [PATCH v1 02/10] ASoC: codecs: Add support for ES8323
Message-ID: <202409060459.dJs4SsBG-lkp@intel.com>
References: <c44a6525d77941ef235825a58a9ea91f9f7d7042.1725518229.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c44a6525d77941ef235825a58a9ea91f9f7d7042.1725518229.git.zhoubinbin@loongson.cn>

Hi Binbin,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 097a44db5747403b19d05a9664e8ec6adba27e3b]

url:    https://github.com/intel-lab-lkp/linux/commits/Binbin-Zhou/ASoC-dt-bindings-Add-Everest-ES8323-Codec/20240905-150958
base:   097a44db5747403b19d05a9664e8ec6adba27e3b
patch link:    https://lore.kernel.org/r/c44a6525d77941ef235825a58a9ea91f9f7d7042.1725518229.git.zhoubinbin%40loongson.cn
patch subject: [PATCH v1 02/10] ASoC: codecs: Add support for ES8323
config: parisc-randconfig-r071-20240906 (https://download.01.org/0day-ci/archive/20240906/202409060459.dJs4SsBG-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240906/202409060459.dJs4SsBG-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409060459.dJs4SsBG-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> sound/soc/codecs/es8323.c:173:38: warning: 'es8323_right_pga_controls' defined but not used [-Wunused-const-variable=]
     173 | static const struct snd_kcontrol_new es8323_right_pga_controls =
         |                                      ^~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from include/sound/tlv.h:10,
                    from sound/soc/codecs/es8323.c:25:
>> sound/soc/codecs/es8323.c:114:35: warning: 'pga_tlv' defined but not used [-Wunused-const-variable=]
     114 | static const DECLARE_TLV_DB_SCALE(pga_tlv, 0, 300, 0);
         |                                   ^~~~~~~
   include/uapi/sound/tlv.h:53:22: note: in definition of macro 'SNDRV_CTL_TLVD_DECLARE_DB_SCALE'
      53 |         unsigned int name[] = { \
         |                      ^~~~
   sound/soc/codecs/es8323.c:114:14: note: in expansion of macro 'DECLARE_TLV_DB_SCALE'
     114 | static const DECLARE_TLV_DB_SCALE(pga_tlv, 0, 300, 0);
         |              ^~~~~~~~~~~~~~~~~~~~


vim +/es8323_right_pga_controls +173 sound/soc/codecs/es8323.c

   113	
 > 114	static const DECLARE_TLV_DB_SCALE(pga_tlv, 0, 300, 0);
   115	static const DECLARE_TLV_DB_SCALE(adc_tlv, -9600, 50, 1);
   116	static const DECLARE_TLV_DB_SCALE(dac_tlv, -9600, 50, 1);
   117	static const DECLARE_TLV_DB_SCALE(out_tlv, -4500, 150, 0);
   118	static const DECLARE_TLV_DB_SCALE(bypass_tlv, 0, 300, 0);
   119	static const DECLARE_TLV_DB_SCALE(bypass_tlv2, -15, 300, 0);
   120	
   121	static const struct snd_kcontrol_new es8323_snd_controls[] = {
   122		SOC_ENUM("3D Mode", es8323_enum[4]),
   123		SOC_ENUM("ALC Capture Function", es8323_enum[5]),
   124		SOC_SINGLE("ALC Capture ZC Switch", ES8323_ADCCONTROL13, 6, 1, 0),
   125		SOC_SINGLE("ALC Capture Decay Time", ES8323_ADCCONTROL12, 4, 15, 0),
   126		SOC_SINGLE("ALC Capture Attack Time", ES8323_ADCCONTROL12, 0, 15, 0),
   127		SOC_SINGLE("ALC Capture NG Threshold", ES8323_ADCCONTROL14, 3, 31, 0),
   128		SOC_ENUM("ALC Capture NG Type", es8323_enum[6]),
   129		SOC_SINGLE("ALC Capture NG Switch", ES8323_ADCCONTROL14, 0, 1, 0),
   130		SOC_SINGLE("ZC Timeout Switch", ES8323_ADCCONTROL13, 6, 1, 0),
   131		SOC_DOUBLE_R_TLV("Capture Digital Volume", ES8323_LADC_VOL,
   132				 ES8323_RADC_VOL, 0, 192, 1, adc_tlv),
   133		SOC_SINGLE("Capture Mute", ES8323_ADC_MUTE, 2, 1, 0),
   134		SOC_SINGLE_TLV("Left Channel Capture Volume", ES8323_ADCCONTROL1, 4, 8,
   135			       0, bypass_tlv),
   136		SOC_SINGLE_TLV("Right Channel Capture Volume", ES8323_ADCCONTROL1, 0,
   137			       8, 0, bypass_tlv),
   138		SOC_ENUM("Playback De-emphasis", es8323_enum[7]),
   139		SOC_ENUM("Capture Polarity", es8323_enum[8]),
   140		SOC_DOUBLE_R_TLV("PCM Volume", ES8323_LDAC_VOL, ES8323_RDAC_VOL,
   141				 0, 192, 1, dac_tlv),
   142		SOC_SINGLE_TLV("Left Mixer Left Bypass Volume", ES8323_DACCONTROL17, 3,
   143			       7, 1, bypass_tlv2),
   144		SOC_SINGLE_TLV("Right Mixer Right Bypass Volume", ES8323_DACCONTROL20,
   145			       3, 7, 1, bypass_tlv2),
   146		SOC_DOUBLE_R_TLV("Output 1 Playback Volume", ES8323_LOUT1_VOL,
   147				 ES8323_ROUT1_VOL, 0, 33, 0, out_tlv),
   148		SOC_DOUBLE_R_TLV("Output 2 Playback Volume", ES8323_LOUT2_VOL,
   149				 ES8323_ROUT2_VOL, 0, 33, 0, out_tlv),
   150	};
   151	
   152	static const struct snd_kcontrol_new es8323_left_dac_mux_controls =
   153		SOC_DAPM_ENUM("Route", es8323_left_dac_enum);
   154	
   155	static const struct snd_kcontrol_new es8323_right_dac_mux_controls =
   156		SOC_DAPM_ENUM("Route", es8323_right_dac_enum);
   157	
   158	static const struct snd_kcontrol_new es8323_left_line_controls =
   159		SOC_DAPM_ENUM("LLIN Mux", es8323_llin_enum);
   160	
   161	static const struct snd_kcontrol_new es8323_right_line_controls =
   162		SOC_DAPM_ENUM("RLIN Mux", es8323_rlin_enum);
   163	
   164	/* Differential Mux */
   165	static const struct snd_kcontrol_new es8323_diffmux_controls =
   166		SOC_DAPM_ENUM("Route2", es8323_diff_enum);
   167	
   168	/* Mono ADC Mux */
   169	static const struct snd_kcontrol_new es8323_monomux_controls =
   170		SOC_DAPM_ENUM("Mono Mux", es8323_mono_enum);
   171	
   172	/* Right PGA Mux */
 > 173	static const struct snd_kcontrol_new es8323_right_pga_controls =
   174		SOC_DAPM_ENUM("Route", es8323_enum[3]);
   175	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

