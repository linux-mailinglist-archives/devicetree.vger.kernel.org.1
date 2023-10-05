Return-Path: <devicetree+bounces-5987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C85C57B99F8
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 04:36:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7A8E1281D00
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 02:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0237C7E9;
	Thu,  5 Oct 2023 02:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Lf6EJ3b9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC8A64B
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 02:36:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39C48C0;
	Wed,  4 Oct 2023 19:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1696473404; x=1728009404;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=wCzJ4bq/A7WYAVJAq/Zir4st/tGC6jlHLq+4zYE7yrk=;
  b=Lf6EJ3b9YbkZAeoszbC7AGckxppv258Bt0pc0Im1aadEFttZ0tUeKeTY
   A4SXlXIE9DjofYSeJmlOVHgdtbIrOCFRXI6Gqm592PQBTW9tjK4/izwV2
   2m6mYdNB6KITZjWaX4tqTiGK4mY0UrGts2d/8oieNx3cV26GuynZ5J/tQ
   8dNkN85nXp7hsEpbuvB7kL5FH38w4NNjoWt1TGway5yLkO7RtmIazXzl6
   J3Ql9RWFrttuGBiFoAq3WUcJalxbDUTN2/ccNweil6zPAhKiadmzOFz9A
   k8jF64P9lDUmpx+TEmwnsbsgAfvg7u0m3uewPjpashau/vDdzjJvVXi/P
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="383282005"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; 
   d="scan'208";a="383282005"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2023 19:36:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="842194633"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; 
   d="scan'208";a="842194633"
Received: from lkp-server02.sh.intel.com (HELO c3b01524d57c) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 04 Oct 2023 19:36:40 -0700
Received: from kbuild by c3b01524d57c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qoEE9-000KtU-1S;
	Thu, 05 Oct 2023 02:36:37 +0000
Date: Thu, 5 Oct 2023 10:35:55 +0800
From: kernel test robot <lkp@intel.com>
To: niravkumar.l.rabara@intel.com,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: cadence: convert
 cadence-nand-controller.txt to yaml
Message-ID: <202310051014.XuwY3fGK-lkp@intel.com>
References: <20231004061214.17176-1-niravkumar.l.rabara@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004061214.17176-1-niravkumar.l.rabara@intel.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

kernel test robot noticed the following build warnings:

[auto build test WARNING on mtd/mtd/next]
[also build test WARNING on mtd/mtd/fixes robh/for-next linus/master v6.6-rc4 next-20231004]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/niravkumar-l-rabara-intel-com/dt-bindings-mtd-cadence-convert-cadence-nand-controller-txt-to-yaml/20231004-141601
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next
patch link:    https://lore.kernel.org/r/20231004061214.17176-1-niravkumar.l.rabara%40intel.com
patch subject: [PATCH] dt-bindings: mtd: cadence: convert cadence-nand-controller.txt to yaml
reproduce: (https://download.01.org/0day-ci/archive/20231005/202310051014.XuwY3fGK-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310051014.XuwY3fGK-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/mtd/cadence-nand-controller.txt

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

