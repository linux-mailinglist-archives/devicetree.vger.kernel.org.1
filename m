Return-Path: <devicetree+bounces-20681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DF0800917
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 11:53:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF575B20BF8
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:53:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0928D20B1A;
	Fri,  1 Dec 2023 10:53:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F27EA10E2;
	Fri,  1 Dec 2023 02:53:00 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3B1AqFaO5299708, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36505.realtek.com.tw[172.21.6.25])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3B1AqFaO5299708
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 1 Dec 2023 18:52:15 +0800
Received: from RTEXMBS02.realtek.com.tw (172.21.6.95) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.32; Fri, 1 Dec 2023 18:52:15 +0800
Received: from RTEXH36505.realtek.com.tw (172.21.6.25) by
 RTEXMBS02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Fri, 1 Dec 2023 18:52:14 +0800
Received: from localhost.localdomain (172.21.252.101) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server id
 15.1.2375.32 via Frontend Transport; Fri, 1 Dec 2023 18:52:14 +0800
From: Tzuyi Chang <tychang@realtek.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Stanley Chang <stanley_chang@realtek.com>,
        Tzuyi Chang <tychang@realtek.com>
Subject: [PATCH 0/2] Add PCIe PHY driver support for Realtek DHC SoCs
Date: Fri, 1 Dec 2023 18:52:05 +0800
Message-ID: <20231201105207.11786-1-tychang@realtek.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-KSE-ServerInfo: RTEXMBS02.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-ServerInfo: RTEXH36505.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback

These patches add the bindings and the PCIe phy driver for Realtek
DHC(Digital Home Center) RTD SoCs(RTD1319, RTD1619B, RTD1319D and RTD1315E).

Tzuyi Chang (2):
  dt-bindings: phy: realtek: Add Realtek DHC RTD SoC PCIe PHY
  phy: realtek: pcie: Add PCIe PHY support for Realtek DHC RTD SoCs

 .../bindings/phy/realtek,rtd-pcie-phy.yaml    |  61 ++
 drivers/phy/realtek/Kconfig                   |   8 +
 drivers/phy/realtek/Makefile                  |   1 +
 drivers/phy/realtek/phy-rtk-pcie.c            | 738 ++++++++++++++++++
 4 files changed, 808 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtd-pcie-phy.yaml
 create mode 100644 drivers/phy/realtek/phy-rtk-pcie.c

-- 
2.43.0


