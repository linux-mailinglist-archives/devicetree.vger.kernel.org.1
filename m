Return-Path: <devicetree+bounces-13808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA887E0835
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 19:33:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC81EB21266
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 18:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 302382232A;
	Fri,  3 Nov 2023 18:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="W/VOMNLo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F92224DD
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 18:33:38 +0000 (UTC)
X-Greylist: delayed 62 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 03 Nov 2023 11:33:27 PDT
Received: from mta-65-228.siemens.flowmailer.net (mta-65-228.siemens.flowmailer.net [185.136.65.228])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBE39D63
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 11:33:27 -0700 (PDT)
Received: by mta-65-228.siemens.flowmailer.net with ESMTPSA id 202311031832228eec31000d9ac8c4ea
        for <devicetree@vger.kernel.org>;
        Fri, 03 Nov 2023 19:32:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=vKBWKfry9eyoqN3jSTWeUT2ziI/r2cCjhLtXTid2Kuo=;
 b=W/VOMNLo7Pver0mULSAkcSJlrIkk8n2Azgg2jJ3+9tlW5PkVce/63+gRYkdBhwbbJWvCc/
 IoJuefL6vCTQ5B/cIs4QcoA4vEtgHGMU5NJ+WbpE+zaQfn8Wh9kQSplikmaogQ+C/Q9PRAjZ
 t7p6aLCEWpx4ixMbrI2iXLLZbw0Hg=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
Subject: [PATCH v3 0/5] arm64: dts: iot2050: DT fixes, cleanups and enhancements
Date: Fri,  3 Nov 2023 19:32:16 +0100
Message-Id: <cover.1699036341.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

This fixes the lost aliases for the IOT2050 series, fixes mini PCIe card
hangs, drops an unused device node, brings runtime pinmuxing for the
Arduino connector via debugfs. Finally, it enables PRU-based Ethernet on
PG2/M.2 device variants. PG1 devices still need changes to the TI driver
to enable them as well (work in progress).

Changes in v3:
 - remove some SR1.0 bits in the SR2.0-only icssg-prueth nodes

Changes in v2:
 - dropped spidev enabling - still looking for flexible and acceptable
   solution
 - added some missing signed-offs

Jan

Benedikt Niedermayr (1):
  arm64: dts: ti: iot2050: Definitions for runtime pinmuxing

Jan Kiszka (3):
  arm64: dts: ti: iot2050: Re-add aliases
  arm64: dts: ti: iot2050: Drop unused ecap0 PWM
  arm64: dts: ti: iot2050: Add icssg-prueth nodes for PG2 devices

Su Bao Cheng (1):
  arm64: dts: ti: iot2050: Refactor the m.2 and minipcie power pin

 .../dts/ti/k3-am65-iot2050-common-pg1.dtsi    |  10 +-
 .../dts/ti/k3-am65-iot2050-common-pg2.dtsi    |   4 +-
 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 824 +++++++++++++++++-
 .../dts/ti/k3-am6548-iot2050-advanced-m2.dts  |  12 +-
 4 files changed, 790 insertions(+), 60 deletions(-)

-- 
2.35.3


