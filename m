Return-Path: <devicetree+bounces-10546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C79487D1DB4
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 16:56:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C22681C20987
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 14:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 525F312B7C;
	Sat, 21 Oct 2023 14:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Q0VneZA9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2193410A04
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 14:56:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18236D7;
	Sat, 21 Oct 2023 07:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697900183; x=1729436183;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=mZbYrMuL0Hg/WJ42cgIbcLp2WjDVIiKbUXUWZ6rKagQ=;
  b=Q0VneZA9pTyiat1WKEjeUZqL8ezKRU8bhqn8702JcOQnHiPOboFvKMqa
   r2hHMoDc7HnX424NeAC/Uu/AEwxudv5JQo+SzUiZIFepZSU4wUv3l8UAd
   NmhAEaNEH64QhRLISdf8hrRXasXXTvuqlfwJawI3QRq6PqLV67Or3vq8I
   hir2n6rTFhmp04pxJ5djaCyXoH0yrTk4OKHJHzhRt1l9TGzXwXl1bc0f9
   4FU9tST7pnwkbj2azfc9xRnbRJG8ObJyCRtSuRh1gwEltaujCwM1YF4xu
   kZGZGdrYImb7NFIlxUdwdp2wBkiPXYAuizlu0ch3WZOhRgp1Jg2wVpSiO
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10870"; a="472860090"
X-IronPort-AV: E=Sophos;i="6.03,241,1694761200"; 
   d="scan'208";a="472860090"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2023 07:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10870"; a="874218846"
X-IronPort-AV: E=Sophos;i="6.03,241,1694761200"; 
   d="scan'208";a="874218846"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 21 Oct 2023 07:56:11 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1quDOb-0004ww-18;
	Sat, 21 Oct 2023 14:56:09 +0000
Date: Sat, 21 Oct 2023 22:56:04 +0800
From: kernel test robot <lkp@intel.com>
To: James Ogletree <james.ogletree@opensource.cirrus.com>
Cc: oe-kbuild-all@lists.linux.dev,
	James Ogletree <james.ogletree@cirrus.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
	Fred Treven <fred.treven@cirrus.com>,
	Ben Bright <ben.bright@cirrus.com>, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/4] mfd: cs40l50: Add support for CS40L50 core driver
Message-ID: <202310212247.exrCjFhj-lkp@intel.com>
References: <20231018175726.3879955-4-james.ogletree@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231018175726.3879955-4-james.ogletree@opensource.cirrus.com>

Hi James,

kernel test robot noticed the following build errors:

[auto build test ERROR on dtor-input/next]
[also build test ERROR on dtor-input/for-linus lee-mfd/for-mfd-next robh/for-next linus/master lee-mfd/for-mfd-fixes v6.6-rc6 next-20231020]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/James-Ogletree/dt-bindings-input-cirrus-cs40l50-Add-initial-DT-binding/20231019-015950
base:   https://git.kernel.org/pub/scm/linux/kernel/git/dtor/input.git next
patch link:    https://lore.kernel.org/r/20231018175726.3879955-4-james.ogletree%40opensource.cirrus.com
patch subject: [PATCH v4 3/4] mfd: cs40l50: Add support for CS40L50 core driver
config: sh-allyesconfig (https://download.01.org/0day-ci/archive/20231021/202310212247.exrCjFhj-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231021/202310212247.exrCjFhj-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310212247.exrCjFhj-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/mfd/cs40l50-spi.c:9:10: fatal error: linux/input/cs40l50.h: No such file or directory
       9 | #include <linux/input/cs40l50.h>
         |          ^~~~~~~~~~~~~~~~~~~~~~~
   compilation terminated.


vim +9 drivers/mfd/cs40l50-spi.c

   > 9	#include <linux/input/cs40l50.h>
    10	#include <linux/mfd/spi.h>
    11	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

