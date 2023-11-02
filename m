Return-Path: <devicetree+bounces-13558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 362697DEDFC
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 09:16:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6564C1C20E2F
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 08:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7663D6FC8;
	Thu,  2 Nov 2023 08:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F69E6FC7
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 08:16:07 +0000 (UTC)
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDFFF128;
	Thu,  2 Nov 2023 01:16:05 -0700 (PDT)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3A28FNlmC2678943, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3A28FNlmC2678943
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 2 Nov 2023 16:15:23 +0800
Received: from RTEXMBS01.realtek.com.tw (172.21.6.94) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Thu, 2 Nov 2023 16:15:23 +0800
Received: from RTEXH36506.realtek.com.tw (172.21.6.27) by
 RTEXMBS01.realtek.com.tw (172.21.6.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Thu, 2 Nov 2023 16:15:22 +0800
Received: from localhost.localdomain (172.21.252.101) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server id
 15.1.2507.17 via Frontend Transport; Thu, 2 Nov 2023 16:15:22 +0800
From: Jyan Chou <jyanchou@realtek.com>
To: <ulf.hansson@linaro.org>, <adrian.hunter@intel.com>,
        <jh80.chung@samsung.com>, <riteshh@codeaurora.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <asutoshd@codeaurora.org>
CC: <p.zabel@pengutronix.de>, <linux-mmc@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <arnd@arndb.de>, <briannorris@chromium.org>, <doug@schmorgal.com>,
        <tonyhuang.sunplus@gmail.com>, <abel.vesa@linaro.org>,
        <william.qiu@starfivetech.com>, <jyanchou@realtek.com>
Subject: [PATCH V5][0/4] Add DesignWare Mobile mmc driver
Date: Thu, 2 Nov 2023 16:15:10 +0800
Message-ID: <20231102081514.22945-1-jyanchou@realtek.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-KSE-ServerInfo: RTEXMBS01.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: license violation
X-KSE-Antivirus-Attachment-Filter-Interceptor-Info: license violation

We added Synopsys DesignWare mmc cmdq driver and also added
Realtek mmc driver to make good use of it.

Jyan Chou (4):
  mmc: solve DMA boundary limitation of CQHCI driver
  mmc: Add Synopsys DesignWare mmc cmdq host driver
  mmc: Add dw mobile mmc cmdq rtk driver
  dt-bindings: mmc: Add dt-bindings for realtek mmc driver

 .../bindings/mmc/realtek,rtd-dw-cqe-emmc.yaml |  157 ++
 drivers/mmc/host/Kconfig                      |   22 +
 drivers/mmc/host/Makefile                     |    2 +
 drivers/mmc/host/cqhci-core.c                 |    8 +-
 drivers/mmc/host/cqhci.h                      |    8 +
 drivers/mmc/host/dw_mmc_cqe-rtk.c             |  802 +++++++++
 drivers/mmc/host/dw_mmc_cqe-rtk.h             |  160 ++
 drivers/mmc/host/dw_mmc_cqe.c                 | 1536 +++++++++++++++++
 drivers/mmc/host/dw_mmc_cqe.h                 |  456 +++++
 9 files changed, 3150 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/realtek,rtd-dw-cqe-emmc.yaml
 create mode 100644 drivers/mmc/host/dw_mmc_cqe-rtk.c
 create mode 100644 drivers/mmc/host/dw_mmc_cqe-rtk.h
 create mode 100644 drivers/mmc/host/dw_mmc_cqe.c
 create mode 100644 drivers/mmc/host/dw_mmc_cqe.h

-- 
2.42.0


