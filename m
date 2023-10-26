Return-Path: <devicetree+bounces-12183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6277D8425
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91369B20FF2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66D562E411;
	Thu, 26 Oct 2023 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="j8VxZBm/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882372E405
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:00:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54B2EC0;
	Thu, 26 Oct 2023 07:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698328829; x=1729864829;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=hMIb6jIAp5cnu41iskfx2yl/V0PgGK/sntAZ4A8XnVI=;
  b=j8VxZBm/iSeiqKeo5X/tKh4GB8+OLLzGYEjUuGvrYX6GrZloGxXstYgM
   v+i0FG4S1Bba8Sy4spu2H/0MSgnjcdGOuJ+qs6othoUkzzpQ1zQWVJwDs
   VVr3XBs4xStaBppYEwwBLLd1FDWAyAnfJA/xZFIH9HpZhPe0175AFFP2Z
   jGaH4kw46DFhXZN9MPxGT2SjZinmE5e9qf5A5x98DoPj5n5amJaGa6qsn
   aDwVsHYZGp4A3+dJYrb9cAF8K8p5FisCX4H6T7yk8EX6k3iCWfo5Qe4nR
   FjVHZtu9wrO9eNHJZ6jFd4rotQualFpoaNcDyajuh87H9etgSrxWD3BKP
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="384761292"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="384761292"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2023 07:00:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="752759221"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="752759221"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 26 Oct 2023 07:00:23 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qw0uL-0009q3-1h;
	Thu, 26 Oct 2023 14:00:21 +0000
Date: Thu, 26 Oct 2023 22:00:01 +0800
From: kernel test robot <lkp@intel.com>
To: Ayush Singh <ayushdevel1325@gmail.com>, greybus-dev@lists.linaro.org
Cc: oe-kbuild-all@lists.linux.dev, Ayush Singh <ayushdevel1325@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org, vaishnav@beagleboard.org,
	jkridner@beagleboard.org, nm@ti.com,
	krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com,
	kristo@kernel.org, robh+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v9 1/3] dt-bindings: net: Add ti,cc1352p7
Message-ID: <202310262150.cA8h8EiZ-lkp@intel.com>
References: <20231017101116.178041-2-ayushdevel1325@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231017101116.178041-2-ayushdevel1325@gmail.com>

Hi Ayush,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 6269320850097903b30be8f07a5c61d9f7592393]

url:    https://github.com/intel-lab-lkp/linux/commits/Ayush-Singh/dt-bindings-net-Add-ti-cc1352p7/20231017-181305
base:   6269320850097903b30be8f07a5c61d9f7592393
patch link:    https://lore.kernel.org/r/20231017101116.178041-2-ayushdevel1325%40gmail.com
patch subject: [PATCH v9 1/3] dt-bindings: net: Add ti,cc1352p7
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce: (https://download.01.org/0day-ci/archive/20231026/202310262150.cA8h8EiZ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310262150.cA8h8EiZ-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
>> Documentation/devicetree/bindings/mtd/amlogic,meson-nand.yaml:70:27: [error] string value is redundantly quoted with any quotes (quoted-strings)
   Documentation/devicetree/bindings/mtd/amlogic,meson-nand.yaml:71:28: [error] string value is redundantly quoted with any quotes (quoted-strings)

vim +70 Documentation/devicetree/bindings/mtd/amlogic,meson-nand.yaml

fbc00b5e746f13 Liang Yang      2022-09-07   8  
fbc00b5e746f13 Liang Yang      2022-09-07   9  allOf:
fbc00b5e746f13 Liang Yang      2022-09-07  10    - $ref: nand-controller.yaml
fbc00b5e746f13 Liang Yang      2022-09-07  11  
fbc00b5e746f13 Liang Yang      2022-09-07  12  maintainers:
fbc00b5e746f13 Liang Yang      2022-09-07  13    - liang.yang@amlogic.com
fbc00b5e746f13 Liang Yang      2022-09-07  14  
fbc00b5e746f13 Liang Yang      2022-09-07  15  properties:
fbc00b5e746f13 Liang Yang      2022-09-07  16    compatible:
fbc00b5e746f13 Liang Yang      2022-09-07  17      enum:
fbc00b5e746f13 Liang Yang      2022-09-07  18        - amlogic,meson-gxl-nfc
fbc00b5e746f13 Liang Yang      2022-09-07  19        - amlogic,meson-axg-nfc
fbc00b5e746f13 Liang Yang      2022-09-07  20  
fbc00b5e746f13 Liang Yang      2022-09-07  21    reg:
fbc00b5e746f13 Liang Yang      2022-09-07  22      maxItems: 2
fbc00b5e746f13 Liang Yang      2022-09-07  23  
fbc00b5e746f13 Liang Yang      2022-09-07  24    reg-names:
fbc00b5e746f13 Liang Yang      2022-09-07  25      items:
fbc00b5e746f13 Liang Yang      2022-09-07  26        - const: nfc
fbc00b5e746f13 Liang Yang      2022-09-07  27        - const: emmc
fbc00b5e746f13 Liang Yang      2022-09-07  28  
fbc00b5e746f13 Liang Yang      2022-09-07  29    interrupts:
fbc00b5e746f13 Liang Yang      2022-09-07  30      maxItems: 1
fbc00b5e746f13 Liang Yang      2022-09-07  31  
fbc00b5e746f13 Liang Yang      2022-09-07  32    clocks:
fbc00b5e746f13 Liang Yang      2022-09-07  33      minItems: 2
fbc00b5e746f13 Liang Yang      2022-09-07  34  
fbc00b5e746f13 Liang Yang      2022-09-07  35    clock-names:
fbc00b5e746f13 Liang Yang      2022-09-07  36      items:
fbc00b5e746f13 Liang Yang      2022-09-07  37        - const: core
fbc00b5e746f13 Liang Yang      2022-09-07  38        - const: device
fbc00b5e746f13 Liang Yang      2022-09-07  39  
fbc00b5e746f13 Liang Yang      2022-09-07  40  patternProperties:
fbc00b5e746f13 Liang Yang      2022-09-07  41    "^nand@[0-7]$":
fbc00b5e746f13 Liang Yang      2022-09-07  42      type: object
e37eaf5ebc5be6 Miquel Raynal   2023-06-19  43      $ref: raw-nand-chip.yaml
fbc00b5e746f13 Liang Yang      2022-09-07  44      properties:
fbc00b5e746f13 Liang Yang      2022-09-07  45        reg:
fbc00b5e746f13 Liang Yang      2022-09-07  46          minimum: 0
fbc00b5e746f13 Liang Yang      2022-09-07  47          maximum: 1
fbc00b5e746f13 Liang Yang      2022-09-07  48  
fbc00b5e746f13 Liang Yang      2022-09-07  49        nand-ecc-mode:
fbc00b5e746f13 Liang Yang      2022-09-07  50          const: hw
fbc00b5e746f13 Liang Yang      2022-09-07  51  
fbc00b5e746f13 Liang Yang      2022-09-07  52        nand-ecc-step-size:
c3519aed2a3faf Arseniy Krasnov 2023-07-11  53          enum: [512, 1024]
fbc00b5e746f13 Liang Yang      2022-09-07  54  
fbc00b5e746f13 Liang Yang      2022-09-07  55        nand-ecc-strength:
fbc00b5e746f13 Liang Yang      2022-09-07  56          enum: [8, 16, 24, 30, 40, 50, 60]
fbc00b5e746f13 Liang Yang      2022-09-07  57          description: |
fbc00b5e746f13 Liang Yang      2022-09-07  58            The ECC configurations that can be supported are as follows.
fbc00b5e746f13 Liang Yang      2022-09-07  59              meson-gxl-nfc 8, 16, 24, 30, 40, 50, 60
fbc00b5e746f13 Liang Yang      2022-09-07  60              meson-axg-nfc 8
fbc00b5e746f13 Liang Yang      2022-09-07  61  
262bc0096b7c91 Arseniy Krasnov 2023-06-08  62        nand-rb:
262bc0096b7c91 Arseniy Krasnov 2023-06-08  63          maxItems: 1
262bc0096b7c91 Arseniy Krasnov 2023-06-08  64          items:
262bc0096b7c91 Arseniy Krasnov 2023-06-08  65            maximum: 0
262bc0096b7c91 Arseniy Krasnov 2023-06-08  66  
e37eaf5ebc5be6 Miquel Raynal   2023-06-19  67      unevaluatedProperties: false
e37eaf5ebc5be6 Miquel Raynal   2023-06-19  68  
350301a3d73b21 Arseniy Krasnov 2023-07-17  69      dependencies:
350301a3d73b21 Arseniy Krasnov 2023-07-17 @70        nand-ecc-strength: ['nand-ecc-step-size']
350301a3d73b21 Arseniy Krasnov 2023-07-17  71        nand-ecc-step-size: ['nand-ecc-strength']
350301a3d73b21 Arseniy Krasnov 2023-07-17  72  
e37eaf5ebc5be6 Miquel Raynal   2023-06-19  73  
fbc00b5e746f13 Liang Yang      2022-09-07  74  required:
fbc00b5e746f13 Liang Yang      2022-09-07  75    - compatible
fbc00b5e746f13 Liang Yang      2022-09-07  76    - reg
fbc00b5e746f13 Liang Yang      2022-09-07  77    - interrupts
fbc00b5e746f13 Liang Yang      2022-09-07  78    - clocks
fbc00b5e746f13 Liang Yang      2022-09-07  79    - clock-names
fbc00b5e746f13 Liang Yang      2022-09-07  80  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

