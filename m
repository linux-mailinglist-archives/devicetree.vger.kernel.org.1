Return-Path: <devicetree+bounces-14441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2E97E493D
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 20:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C629FB20E87
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 19:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1007C36AF0;
	Tue,  7 Nov 2023 19:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="fKHX/0bx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A13330CFC
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 19:34:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6F03184;
	Tue,  7 Nov 2023 11:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699385697; x=1730921697;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=91osQpReCsR7gq9k1QepRGDJYtuDgzaUF/hpb6LJpqo=;
  b=fKHX/0bx8sjrTdE2OH1oRh4bDF37yD2qmE5J0OmZHE9zvzvpiCRerVk8
   fdZZBGRWH427AjQCjwyUvzrvpQ1CvQZsbzedznmWkkeLLsC/huiLBSCgb
   wVmHq9tsnwu5n8eITAqUhKCe15AaU2gTUXejVhePbZAdCOYkggVcwB2qf
   44UAvp/I/LPMiB0ddjrPKlZsXCwtbtJZUUbPFWuY4MsSi9lq8RAI0GSiw
   KuaaUHm0UMfPp36hONhCJX/j+iZPfPTUuQBNdyr8oerXv6n3ENI+mNzYu
   KOEQGWYyhdt3hPVMN1hcCp+gt1/GsdAmPTkawgGKm1pNENFWvRHYA8ctq
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="2539081"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; 
   d="scan'208";a="2539081"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Nov 2023 11:34:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="828720602"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; 
   d="scan'208";a="828720602"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 07 Nov 2023 11:34:53 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1r0Rqc-0007MC-2j;
	Tue, 07 Nov 2023 19:34:50 +0000
Date: Wed, 8 Nov 2023 03:34:44 +0800
From: kernel test robot <lkp@intel.com>
To: Anshul Dalal <anshulusr@gmail.com>, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev, Anshul Dalal <anshulusr@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas =?iso-8859-1?Q?Wei=DFschuh?= <linux@weissschuh.net>,
	Jeff LaBundy <jeff@labundy.com>,
	Shuah Khan <skhan@linuxfoundation.org>,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/2] input: joystick: driver for Adafruit Seesaw
 Gamepad
Message-ID: <202311080319.73n9aQfj-lkp@intel.com>
References: <20231106164134.114668-2-anshulusr@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231106164134.114668-2-anshulusr@gmail.com>

Hi Anshul,

kernel test robot noticed the following build errors:

[auto build test ERROR on dtor-input/next]
[also build test ERROR on dtor-input/for-linus hid/for-next linus/master v6.6 next-20231107]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Anshul-Dalal/input-joystick-driver-for-Adafruit-Seesaw-Gamepad/20231107-004813
base:   https://git.kernel.org/pub/scm/linux/kernel/git/dtor/input.git next
patch link:    https://lore.kernel.org/r/20231106164134.114668-2-anshulusr%40gmail.com
patch subject: [PATCH v7 2/2] input: joystick: driver for Adafruit Seesaw Gamepad
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20231108/202311080319.73n9aQfj-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231108/202311080319.73n9aQfj-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311080319.73n9aQfj-lkp@intel.com/

All errors (new ones prefixed by >>):

>> make[6]: *** No rule to make target 'drivers/input/joystick/adafruit_seesaw.o', needed by 'drivers/input/joystick/built-in.a'.
   make[6]: Target 'drivers/input/joystick/' not remade because of errors.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

