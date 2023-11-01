Return-Path: <devicetree+bounces-13350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B73D77DDC5C
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 06:45:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42CF32817A2
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 05:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B2D187B;
	Wed,  1 Nov 2023 05:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F567F
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 05:45:00 +0000 (UTC)
Received: from SHSQR01.spreadtrum.com (unknown [222.66.158.135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FA4E107
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 22:44:57 -0700 (PDT)
Received: from dlp.unisoc.com ([10.29.3.86])
	by SHSQR01.spreadtrum.com with ESMTP id 3A15ih0A023577;
	Wed, 1 Nov 2023 13:44:43 +0800 (+08)
	(envelope-from pu.li@unisoc.com)
Received: from SHDLP.spreadtrum.com (shmbx06.spreadtrum.com [10.0.1.11])
	by dlp.unisoc.com (SkyGuard) with ESMTPS id 4SKwnb0BfKz2LjbCt;
	Wed,  1 Nov 2023 13:40:03 +0800 (CST)
Received: from zebjkernups01.spreadtrum.com (10.0.93.153) by
 shmbx06.spreadtrum.com (10.0.1.11) with Microsoft SMTP Server (TLS) id
 15.0.1497.23; Wed, 1 Nov 2023 13:44:41 +0800
From: Pu Li <pu.li@unisoc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: Pu Li <pu.li@unisoc.com>, Zhiyong Liu <zhiyong.liu@unisoc.com>,
        Chunyan
 Zhang <zhang.lyra@gmail.com>,
        Orson Zhai <orsonzhai@gmail.com>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] phy: sprd: Add Spreadtrum USB20 HSPHY Driver
Date: Wed, 1 Nov 2023 13:44:30 +0800
Message-ID: <20231101054432.27509-1-pu.li@unisoc.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.0.93.153]
X-ClientProxiedBy: SHCAS01.spreadtrum.com (10.0.1.201) To
 shmbx06.spreadtrum.com (10.0.1.11)
X-MAIL:SHSQR01.spreadtrum.com 3A15ih0A023577

This patchset is used to add spreadtrum usb20 high speed phy driver. Patch 1
is dt-binding Documentation supports, and patch 2 is the specific implementation.

Pu Li (2):
  dt-bindings: phy: Add Spreadtrum usb20 hsphy yaml
  phy: sprd: Add Spreadtrum usb20 hsphy driver

 .../bindings/phy/phy-sprd-usb20-hs.yaml       |   70 +
 drivers/phy/Kconfig                           |    1 +
 drivers/phy/Makefile                          |    1 +
 drivers/phy/sprd/Kconfig                      |   14 +
 drivers/phy/sprd/Makefile                     |    6 +
 drivers/phy/sprd/phy-sprd-usb20-hs.c          | 1324 +++++++++++++++++
 drivers/phy/sprd/phy-sprd-usb20-hs.h          |  525 +++++++
 7 files changed, 1941 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-sprd-usb20-hs.yaml
 create mode 100644 drivers/phy/sprd/Kconfig
 create mode 100644 drivers/phy/sprd/Makefile
 create mode 100644 drivers/phy/sprd/phy-sprd-usb20-hs.c
 create mode 100644 drivers/phy/sprd/phy-sprd-usb20-hs.h

-- 
2.17.1


