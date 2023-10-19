Return-Path: <devicetree+bounces-9949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3B37CF1EA
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:03:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2AE0DB20F1D
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7C7613FEA;
	Thu, 19 Oct 2023 08:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="bhS9k0pW"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D02134D0
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:03:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B82212F;
	Thu, 19 Oct 2023 01:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697702586; x=1729238586;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=el3R2q8bJhLS09Xe5Rkf62rAafB0MmVgXTxS+XNrHKM=;
  b=bhS9k0pWr95zLvPH2C1EfROxDbZefiJm2HS7TJvdeTbVd6d6CDFWEKyh
   jumPHEiWsCNJclkgf2TlpatJ1+5c/uap7+z6o2htCputpOnpXWIppQ/EV
   Ld+29SWe5M5t7nu6+A4Q7Id/BA6vR/z46NYH9GDl0Nq0suwX6Ug5dq10U
   1jHofbXL2X+Ib/ybqFPsgTwMXzFEeZPMcQ4M5/05DrMImouYcp+oBvmON
   oJIVmvSUxNpHgvvZFR383roUv6q2FV8A2Bon9/rRzbW/go5FerSchA5KE
   hd3sEg3dIwvmUJ6KLbKSYGb++OeUi0EPOxlqtttcY/thSzYDoQSkmGb8L
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="452665935"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="452665935"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2023 01:03:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="750427438"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; 
   d="scan'208";a="750427438"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 19 Oct 2023 01:03:00 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qtNzd-0001qW-1u;
	Thu, 19 Oct 2023 08:02:57 +0000
Date: Thu, 19 Oct 2023 16:01:57 +0800
From: kernel test robot <lkp@intel.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Julien Massot <julien.massot@iot.bzh>,
	Trevor Wu <trevor.wu@mediatek.com>
Cc: oe-kbuild-all@lists.linux.dev, Simon Glass <sjg@chromium.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Drop kernel copy of common reserved-memory
 bindings
Message-ID: <202310191537.20z1Aolb-lkp@intel.com>
References: <20231013200851.347042-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013200851.347042-1-robh@kernel.org>

Hi Rob,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on krzk-dt/for-next remoteproc/rproc-next broonie-sound/for-next linus/master v6.6-rc6 next-20231018]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Rob-Herring/dt-bindings-Drop-kernel-copy-of-common-reserved-memory-bindings/20231017-125913
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20231013200851.347042-1-robh%40kernel.org
patch subject: [PATCH] dt-bindings: Drop kernel copy of common reserved-memory bindings
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20231019/202310191537.20z1Aolb-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
reproduce: (https://download.01.org/0day-ci/archive/20231019/202310191537.20z1Aolb-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310191537.20z1Aolb-lkp@intel.com/

All errors (new ones prefixed by >>):

   sort: -:2: disorder: 2023.8.dev2+gd5e5147
>> ERROR: dtschema minimum version is v2023.9

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

