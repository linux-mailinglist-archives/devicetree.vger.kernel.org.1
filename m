Return-Path: <devicetree+bounces-148144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E345A3AD03
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 01:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9213171EF3
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 00:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F792BA45;
	Wed, 19 Feb 2025 00:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="iaVPTuAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B2CF9D9
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 00:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739924326; cv=none; b=e7jc4VtNZYCu7f9EAAb+JXwncBkV4XUdNzCCo7W+c+ZrgfKCHzqoTFkarZbrHIS3tmY2LoQdvl6VJXtcEiBrnnjAsYtuok42YNR37ZtVWueq9KI/gbBZ+1sbcjWyW9/+GrP0wYnET9KzLSf4IdYVd5fjlV8OZHmnn5Yqp5ncTCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739924326; c=relaxed/simple;
	bh=PSlz7lGacbQde34+6kes0gYGdq4cNIvXDqX3rGM6ow8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FBroUtucwNnH3luzzjbfprl2z7Nz1sXjUQe74o53khDtG5AOYWjOt7e+EaMpx+gTBzOjUMpQex3H3lNre9+OKPbKmWk/OPVxz5FqDrqmBy3dTO/x4bWHqYswneTB86ILXpuuHqFAseqgtCvlspXcsnoRBzLee+SofaWLyupEZBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=iaVPTuAJ; arc=none smtp.client-ip=192.198.163.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1739924324; x=1771460324;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PSlz7lGacbQde34+6kes0gYGdq4cNIvXDqX3rGM6ow8=;
  b=iaVPTuAJMx6g05F1pdSaCsQsXei6OUMTvozDMw/+KEof3mt8dQ+ouMKs
   EhL5bwuBArp9hDPhMhC/laOjSmJc9W3s1a/mjxYFgztvsvzLfi18QddeT
   zpr+zBrTO8k/tLzUeY9Nh2vcUxHO++pzAt0rrSKLLC/FyIKP4CN9xx/Vp
   /FWJJLBLDsO/v4jn0NwjRHTxSuUeVkri2bRjsC2Vt9mpURm1Ki0wc9zqN
   U+5oOAIUR4FL0/vYvVNMTCp7IhC+WJRkHopH1Q4aN/k1urOi+NmralOZ2
   2BD5ABoXW0G2q8uihbxUNmp40IswpmvztqFCw1EueXiLnqdYaRakAQkCO
   g==;
X-CSE-ConnectionGUID: NJNqnVH7RLeBM9HGxae4FA==
X-CSE-MsgGUID: XeOybS85Rsum/V8Ih5TVPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="66001201"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; 
   d="scan'208";a="66001201"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Feb 2025 16:18:43 -0800
X-CSE-ConnectionGUID: /+X+8UdERG2lIWSYbJQ3TA==
X-CSE-MsgGUID: oYRb/WQ2Qvy4seYq8QYlrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; 
   d="scan'208";a="119663213"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
  by fmviesa004.fm.intel.com with ESMTP; 18 Feb 2025 16:18:37 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tkXnO-00010d-2h;
	Wed, 19 Feb 2025 00:18:34 +0000
Date: Wed, 19 Feb 2025 08:17:43 +0800
From: kernel test robot <lkp@intel.com>
To: Fred Treven <ftreven@opensource.cirrus.com>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Trimmer <simont@opensource.cirrus.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	James Ogletree <jogletre@opensource.cirrus.com>,
	Ben Bright <ben.bright@cirrus.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	David Rhodes <david.rhodes@cirrus.com>,
	Jeff LaBundy <jeff@labundy.com>, Heiko Stuebner <heiko@sntech.de>,
	Karel Balej <balejk@matfyz.cz>,
	Igor Prusov <ivprusov@salutedevices.com>,
	Jack Yu <jack.yu@realtek.com>,
	Weidong Wang <wangweidong.a@awinic.com>,
	Binbin Zhou <zhoubinbin@loongson.cn>,
	Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
	Paul Handrigan <paulha@opensource.cirrus.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nuno Sa <nuno.sa@analog.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	alsa-devel@alsa-project.org, patches@opensource.cirrus.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH RESEND 7/7] Input: cs40l26 - Add support for CS40L26
 haptic driver
Message-ID: <202502190805.6XI1dg3G-lkp@intel.com>
References: <20250204231835.2000457-8-ftreven@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204231835.2000457-8-ftreven@opensource.cirrus.com>

Hi Fred,

kernel test robot noticed the following build errors:

[auto build test ERROR on lee-mfd/for-mfd-next]
[also build test ERROR on broonie-sound/for-next linus/master v6.14-rc3 next-20250218]
[cannot apply to dtor-input/next dtor-input/for-linus lee-mfd/for-mfd-fixes]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Fred-Treven/firmware-cs_dsp-Fix-error-checking-in-wseq_write/20250217-181206
base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
patch link:    https://lore.kernel.org/r/20250204231835.2000457-8-ftreven%40opensource.cirrus.com
patch subject: [PATCH RESEND 7/7] Input: cs40l26 - Add support for CS40L26 haptic driver
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20250219/202502190805.6XI1dg3G-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250219/202502190805.6XI1dg3G-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202502190805.6XI1dg3G-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/input/misc/cs40l26-vibra.c:12:
   In file included from include/linux/input.h:19:
   In file included from include/linux/device.h:32:
   In file included from include/linux/device/driver.h:21:
   In file included from include/linux/module.h:19:
   In file included from include/linux/elf.h:6:
   In file included from arch/s390/include/asm/elf.h:181:
   In file included from arch/s390/include/asm/mmu_context.h:11:
   In file included from arch/s390/include/asm/pgalloc.h:18:
   In file included from include/linux/mm.h:2224:
   include/linux/vmstat.h:504:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     504 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     505 |                            item];
         |                            ~~~~
   include/linux/vmstat.h:511:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     511 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     512 |                            NR_VM_NUMA_EVENT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~~
   include/linux/vmstat.h:524:43: warning: arithmetic between different enumeration types ('enum zone_stat_item' and 'enum numa_stat_item') [-Wenum-enum-conversion]
     524 |         return vmstat_text[NR_VM_ZONE_STAT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~ ^
     525 |                            NR_VM_NUMA_EVENT_ITEMS +
         |                            ~~~~~~~~~~~~~~~~~~~~~~
>> drivers/input/misc/cs40l26-vibra.c:400:3: error: cannot jump from this goto statement to its label
     400 |                 goto out_free;
         |                 ^
   drivers/input/misc/cs40l26-vibra.c:402:2: note: jump bypasses initialization of variable with __attribute__((cleanup))
     402 |         guard(mutex)(&cs40l26->dsp.pwr_lock);
         |         ^
   include/linux/cleanup.h:309:15: note: expanded from macro 'guard'
     309 |         CLASS(_name, __UNIQUE_ID(guard))
         |                      ^
   include/linux/compiler.h:166:29: note: expanded from macro '__UNIQUE_ID'
     166 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
         |                             ^
   include/linux/compiler_types.h:84:22: note: expanded from macro '__PASTE'
      84 | #define __PASTE(a,b) ___PASTE(a,b)
         |                      ^
   include/linux/compiler_types.h:83:23: note: expanded from macro '___PASTE'
      83 | #define ___PASTE(a,b) a##b
         |                       ^
   <scratch space>:141:1: note: expanded from here
     141 | __UNIQUE_ID_guard557
         | ^
   drivers/input/misc/cs40l26-vibra.c:548:3: error: cannot jump from this goto statement to its label
     548 |                 goto out_free;
         |                 ^
   drivers/input/misc/cs40l26-vibra.c:551:2: note: jump bypasses initialization of variable with __attribute__((cleanup))
     551 |         guard(mutex)(&vib->cs40l26->dsp.pwr_lock);
         |         ^
   include/linux/cleanup.h:309:15: note: expanded from macro 'guard'
     309 |         CLASS(_name, __UNIQUE_ID(guard))
         |                      ^
   include/linux/compiler.h:166:29: note: expanded from macro '__UNIQUE_ID'
     166 | #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
         |                             ^
   include/linux/compiler_types.h:84:22: note: expanded from macro '__PASTE'
      84 | #define __PASTE(a,b) ___PASTE(a,b)
         |                      ^
   include/linux/compiler_types.h:83:23: note: expanded from macro '___PASTE'
      83 | #define ___PASTE(a,b) a##b
         |                       ^
   <scratch space>:169:1: note: expanded from here
     169 | __UNIQUE_ID_guard558
         | ^
   3 warnings and 2 errors generated.


vim +400 drivers/input/misc/cs40l26-vibra.c

   386	
   387	static void cs40l26_start_playback_worker(struct work_struct *work)
   388	{
   389		struct cs40l26_work *work_data = container_of(work, struct cs40l26_work, work);
   390		struct cs40l26 *cs40l26 = work_data->vib->cs40l26;
   391		struct cs40l26_effect *effect;
   392		u16 duration;
   393		int id;
   394	
   395		id = work_data->ff_effect->id;
   396	
   397		duration = work_data->ff_effect->replay.length;
   398	
   399		if (pm_runtime_resume_and_get(cs40l26->dev))
 > 400			goto out_free;
   401	
   402		guard(mutex)(&cs40l26->dsp.pwr_lock);
   403	
   404		if (cs40l26_fw_write(&cs40l26->dsp, "TIMEOUT_MS", cs40l26->variant->info->vibegen_algo_id,
   405				     duration))
   406			goto out_pm;
   407	
   408		effect = cs40l26_find_effect(work_data->vib, id);
   409		if (effect) {
   410			while (--work_data->count >= 0) {
   411				if (cs40l26_dsp_write(cs40l26, effect->index))
   412					goto out_pm;
   413	
   414				usleep_range(duration, duration + 100);
   415			}
   416		} else {
   417			dev_err(cs40l26->dev, "No effect found with ID %d\n", id);
   418		}
   419	
   420	out_pm:
   421		cs40l26_pm_exit(cs40l26->dev);
   422	
   423	out_free:
   424		kfree(work_data);
   425	}
   426	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

