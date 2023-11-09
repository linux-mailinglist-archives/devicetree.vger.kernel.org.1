Return-Path: <devicetree+bounces-14714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4A77E6525
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 09:22:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 565672811A7
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 08:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDDCB107B8;
	Thu,  9 Nov 2023 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A673B107B4
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 08:22:22 +0000 (UTC)
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 081C22D50;
	Thu,  9 Nov 2023 00:22:21 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3A98KlW721426813, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36505.realtek.com.tw[172.21.6.25])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3A98KlW721426813
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 9 Nov 2023 16:20:47 +0800
Received: from RTEXMBS02.realtek.com.tw (172.21.6.95) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.32; Thu, 9 Nov 2023 16:20:47 +0800
Received: from RTEXH36505.realtek.com.tw (172.21.6.25) by
 RTEXMBS02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Thu, 9 Nov 2023 16:20:46 +0800
Received: from localhost.localdomain (172.21.252.101) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server id
 15.1.2375.32 via Frontend Transport; Thu, 9 Nov 2023 16:20:46 +0800
From: Jyan Chou <jyanchou@realtek.com>
To: <ulf.hansson@linaro.org>, <adrian.hunter@intel.com>,
        <jh80.chung@samsung.com>, <riteshh@codeaurora.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>
CC: <conor+dt@kernel.org>, <asutoshd@codeaurora.org>, <p.zabel@pengutronix.de>,
        <linux-mmc@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <arnd@arndb.de>,
        <briannorris@chromium.org>, <doug@schmorgal.com>,
        <tonyhuang.sunplus@gmail.com>, <abel.vesa@linaro.org>,
        <william.qiu@starfivetech.com>, <jyanchou@realtek.com>
Subject: [PATCH V6][0/4] Add DesignWare Mobile mmc driver
Date: Thu, 9 Nov 2023 16:20:39 +0800
Message-ID: <20231109082043.27147-1-jyanchou@realtek.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-KSE-ServerInfo: RTEXMBS02.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-ServerInfo: RTEXH36505.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback

We added Synopsys DesignWare mmc cmdq driver and also added
Realtek mmc driver to make good use of it.

Jyan Chou (4):
  mmc: solve DMA boundary limitation of CQHCI driver
  mmc: Add Synopsys DesignWare mmc cmdq host driver
  mmc: Add dw mobile mmc cmdq rtk driver
  dt-bindings: mmc: Add dt-bindings for realtek mmc driver

 .../bindings/mmc/realtek,rtd-dw-cqe-emmc.yaml |  162 ++
 drivers/mmc/host/Kconfig                      |   22 +
 drivers/mmc/host/Makefile                     |    2 +
 drivers/mmc/host/cqhci-core.c                 |   11 +-
 drivers/mmc/host/cqhci.h                      |    8 +
 drivers/mmc/host/dw_mmc_cqe-rtk.c             |  775 +++++++++
 drivers/mmc/host/dw_mmc_cqe-rtk.h             |  160 ++
 drivers/mmc/host/dw_mmc_cqe.c                 | 1467 +++++++++++++++++
 drivers/mmc/host/dw_mmc_cqe.h                 |  456 +++++
 9 files changed, 3060 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/realtek,rtd-dw-cqe-emmc.yaml
 create mode 100644 drivers/mmc/host/dw_mmc_cqe-rtk.c
 create mode 100644 drivers/mmc/host/dw_mmc_cqe-rtk.h
 create mode 100644 drivers/mmc/host/dw_mmc_cqe.c
 create mode 100644 drivers/mmc/host/dw_mmc_cqe.h

-- 
2.42.0


