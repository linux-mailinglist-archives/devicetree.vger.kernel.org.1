Return-Path: <devicetree+bounces-13284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A817DD49C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 18:24:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A1521C20CD3
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 17:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D8D7208B2;
	Tue, 31 Oct 2023 17:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="P50E34PY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8681DFFE
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 17:24:48 +0000 (UTC)
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F4EFDA
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 10:24:46 -0700 (PDT)
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 20231031172341ce7ef71fead51a4ad9
        for <devicetree@vger.kernel.org>;
        Tue, 31 Oct 2023 18:23:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=lFP+tbCCO5Al81BN5LxLj92CbDsS9TZpPfpARMeq65M=;
 b=P50E34PYGosi/ecNJHdTkYldQFW7FWtv2UoYbVfGe2P9oTlvGLldNnyb7IIgzRZxuCnvjr
 2SR9b8gPJeYgGaIwjLk++t/98j4iWVGq1s0idvlFI09pw8beYegkEv4QDQg2/Z0cAwqFoHmU
 JOGv70edFoDPs4YLxvyUMRnKFg1qo=;
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
Subject: [PATCH v2 0/5] arm64: dts: iot2050: DT fixes, cleanups and enhancements
Date: Tue, 31 Oct 2023 18:23:34 +0100
Message-Id: <cover.1698773019.git.jan.kiszka@siemens.com>
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
PG2/M.2 device variants (depends on [1]). PG1 devices still need changes
to the TI driver to enable them as well.

Changes in v2:
 - dropped spidev enabling - still looking for flexible and acceptable
   solution
 - added some missing signed-offs

Jan

[1] https://lore.kernel.org/lkml/35a3c4c9-5c1b-4891-9ea2-e3f648a9afe0@ti.com/

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
 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 828 +++++++++++++++++-
 .../dts/ti/k3-am6548-iot2050-advanced-m2.dts  |  12 +-
 4 files changed, 794 insertions(+), 60 deletions(-)

-- 
2.35.3


