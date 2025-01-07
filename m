Return-Path: <devicetree+bounces-136202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7CBA04382
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:59:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 343831641F3
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94BC61F2373;
	Tue,  7 Jan 2025 14:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="bt7rzF2h"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2726080BFF;
	Tue,  7 Jan 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736261937; cv=none; b=BFAX9xmSQ5amLDdSpMB9Sg62xfyEM22peg1eKnEiPXxcPw6bpQHCPbX3gRi3WjeznVbk4sx8loGgQni/v5D5XcdvDvEncuTjBxQRzHPdEEiuF/p4CU0eNq8RTScLWvbgHsNh3uvwQyq+tp+NXqSiIpPKIC2Hslb4A1xBr+USQAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736261937; c=relaxed/simple;
	bh=Fdd/qXxUOKyLEbfLqRWJaHAiGNUfNCVPGjChUerDnn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l3dFbF989chcfN3AapZZhyQaN26LtZ17dQIqXjQn/aUjhKUpdi8Rp0Jw0+fcCK7sIBfj16PdfQTVHFFmRyxk8pJ0d1RFC8JlFtjYpvwjQEk/4DFIMjyFFfbKSArnC/8mfbg0DZ0AANZ3Hg86Zi20TCSVICsgJpIugpnLLcgPuQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=bt7rzF2h; arc=none smtp.client-ip=198.175.65.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736261933; x=1767797933;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Fdd/qXxUOKyLEbfLqRWJaHAiGNUfNCVPGjChUerDnn8=;
  b=bt7rzF2hU27PBzyKl/v7hqE3Ym6PciaUqelcngndUq7iGn1P8idnEm5e
   4dksPjDv7kEdEPQ710H0GKMy2d1UrdD9MvM9F8wMxLHBmHC5lgZs7o4Vm
   MA8qHk88gIp0AAgyEt3eIYaIUh7noCnCh1byEuhec+RXC7Gfp5KtqFdH9
   +v1359w3wEqC2YevB8szHhUzP3nBqPneRz9WtU/e65o/aGRu164J7gh4N
   5m8FfyfCmipoOHd2TK/fv9XLevbhjDniLleZtrIGIWEHO/C4bs6VdqZt7
   GFNS1UdvZRnbzdku2QzZPHOuIxmQxJDX79aRwL358Vdw7EvUrSgX0FYjk
   Q==;
X-CSE-ConnectionGUID: 3pChvPTmQrKIEflmXDm1Tg==
X-CSE-MsgGUID: AH6IRnS+Szi5DibHsPJPyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="46944099"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; 
   d="scan'208";a="46944099"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jan 2025 06:58:53 -0800
X-CSE-ConnectionGUID: RDvuaEXnQpa/h9OCAEyF9g==
X-CSE-MsgGUID: cqy4g4trSk6yPYPHjwBx0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="106811591"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 07 Jan 2025 06:58:50 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1tVB2e-000ErL-0F;
	Tue, 07 Jan 2025 14:58:48 +0000
Date: Tue, 7 Jan 2025 22:58:43 +0800
From: kernel test robot <lkp@intel.com>
To: niravkumar.l.rabara@intel.com, Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Subject: Re: [PATCH] arm64: dts: socfpga: agilex5: add NAND board file
Message-ID: <202501072244.kNb1e8KP-lkp@intel.com>
References: <20250107084831.2750035-2-niravkumar.l.rabara@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250107084831.2750035-2-niravkumar.l.rabara@intel.com>

Hi,

kernel test robot noticed the following build errors:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v6.13-rc6 next-20250107]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/niravkumar-l-rabara-intel-com/arm64-dts-socfpga-agilex5-add-NAND-board-file/20250107-165406
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
patch link:    https://lore.kernel.org/r/20250107084831.2750035-2-niravkumar.l.rabara%40intel.com
patch subject: [PATCH] arm64: dts: socfpga: agilex5: add NAND board file
config: arm64-randconfig-002-20250107 (https://download.01.org/0day-ci/archive/20250107/202501072244.kNb1e8KP-lkp@intel.com/config)
compiler: clang version 20.0.0git (https://github.com/llvm/llvm-project 096551537b2a747a3387726ca618ceeb3950e9bc)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250107/202501072244.kNb1e8KP-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501072244.kNb1e8KP-lkp@intel.com/

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_nand.dts:39.1-7 Label or path gpio0 not found
   FATAL ERROR: Syntax error parsing input tree

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

