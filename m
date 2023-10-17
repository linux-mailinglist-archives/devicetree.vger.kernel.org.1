Return-Path: <devicetree+bounces-9212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8F57CC163
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 13:02:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38B681C20E8A
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 11:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DEB941766;
	Tue, 17 Oct 2023 11:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="gaerQvBL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B816541A91
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 11:02:28 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D8B3A2;
	Tue, 17 Oct 2023 04:02:27 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPA id 59D071BF207;
	Tue, 17 Oct 2023 11:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697540545;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=uNnm02JCk44Tr5/Yas+vsF5cPz7HwoX99lHqaKeh5AU=;
	b=gaerQvBLMnnAXQwESoahLNGVxGLCxD/2WqhPHNZHjzhjGRgAfm0YuiwqpmFPX+WWdePWjt
	TsWQiBqea6weTZwDo12A3meSb0yFZ87oDJU44vQ85GGIC7vW0ZqqtnC5yaJOVgoDmt7nDV
	Aj7dBIp8WTfSGrZR6NFrx4I/5PjaREltsMy+PIDNdpkmuO95hiHNaifZu4mI/ePu2OoGLP
	eNOQcZ4KQioCRtco2Yjn9neBJodFOFbC2bBABwrAxJk7/Zi/MQoMLgzoTw35OFjnTfx0P2
	yoOAZ/WYyZD90CsSBmkFKk3tRBgwm3HAyHzkieDGs9K4LNdgs3VHKK47bKFIlw==
From: Herve Codina <herve.codina@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Lizhi Hou <lizhi.hou@amd.com>
Cc: Max Zhen <max.zhen@amd.com>,
	Sonal Santan <sonal.santan@amd.com>,
	Stefano Stabellini <stefano.stabellini@xilinx.com>,
	Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Allan Nielsen <allan.nielsen@microchip.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Steen Hegelund <steen.hegelund@microchip.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [PATCH v2 0/3] Fix DT based address translations
Date: Tue, 17 Oct 2023 13:02:15 +0200
Message-ID: <20231017110221.189299-1-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

This patch series fixes a DT based address translation (translations
using the ranges property).

The issue is present with a ranges property made of a 3 cells child
address, a 3 cells parent address and a 2 cells child size.
This can happen with the recent addition of of_pci_prop_ranges() in
commit 407d1a51921e ("PCI: Create device tree node for bridge")

The issue description is fully described in the first patch commit log.

In this series,
  - The first patch fixes the issue.
  - The second patch avoids duplicated code.
  - The third patch adds unit tests related address translations.

I previously sent the first patch alone:
  https://lore.kernel.org/linux-kernel/20231003065236.121987-1-herve.codina@bootlin.com/
This series v2 has to be considered as the next iteration based on the
review done on my previous patch sent alone.

Best regards,
Hervé

Changes v1 -> v2

 - Patch 1
   Simplify of_bus_default_flags_map().
   Fix the commit log (pci-ep-bus ranges[0] size is 0x200_0000 instead
   of 0x2000_0000).

 - Patch 2 (new in v2)
   Remove duplicated code.

 - Patch 3 (new in v2)
   Add unit tests.

Herve Codina (3):
  of: address: Fix address translation when address-size is greater than
    2
  of: address: Remove duplicated functions
  of: unittest: Add tests for address translations

 drivers/of/address.c                        |  43 ++++++---
 drivers/of/unittest-data/tests-address.dtsi | 101 ++++++++++++++++++++
 drivers/of/unittest.c                       |  74 ++++++++++++++
 3 files changed, 205 insertions(+), 13 deletions(-)

-- 
2.41.0


