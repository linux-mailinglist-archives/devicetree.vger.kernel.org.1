Return-Path: <devicetree+bounces-16667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3EB7EF349
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 14:04:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 393641C20340
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 13:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEC622FE20;
	Fri, 17 Nov 2023 13:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F2F2D57;
	Fri, 17 Nov 2023 05:04:28 -0800 (PST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 5E8CE24E1C6;
	Fri, 17 Nov 2023 21:04:23 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 17 Nov
 2023 21:04:23 +0800
Received: from yang-virtual-machine.localdomain (183.27.97.246) by
 EXMBX171.cuchost.com (172.16.6.91) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Fri, 17 Nov 2023 21:04:23 +0800
From: Shengyang Chen <shengyang.chen@starfivetech.com>
To: <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<p.zabel@pengutronix.de>, <minda.chen@starfivetech.com>,
	<changhuang.liang@starfivetech.com>, <rogerq@kernel.org>,
	<geert+renesas@glider.be>, <keith.zhao@starfivetech.com>,
	<shengyang.chen@starfivetech.com>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 0/2] Add JH7110 MIPI DPHY TX support
Date: Fri, 17 Nov 2023 21:04:19 +0800
Message-ID: <20231117130421.79261-1-shengyang.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [183.27.97.246]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag

This patchset adds mipi dphy tx support for the StarFive JH7110 SoC.
It is used to transfer DSI data. The series has been tested on
the VisionFive 2 board.

Shengyang Chen (2):
  dt-bindings: phy: Add starfive,jh7110-dphy-tx
  phy: starfive: Add mipi dphy tx support

 .../bindings/phy/starfive,jh7110-dphy-tx.yaml |  74 +++
 MAINTAINERS                                   |   7 +
 drivers/phy/starfive/Kconfig                  |  10 +
 drivers/phy/starfive/Makefile                 |   1 +
 drivers/phy/starfive/phy-jh7110-dphy-tx.c     | 542 ++++++++++++++++++
 5 files changed, 634 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
 create mode 100644 drivers/phy/starfive/phy-jh7110-dphy-tx.c

-- 
2.17.1


