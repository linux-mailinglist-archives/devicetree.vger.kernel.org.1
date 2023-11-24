Return-Path: <devicetree+bounces-18567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 694477F71EB
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 11:45:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 260CF281ABD
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA48717736;
	Fri, 24 Nov 2023 10:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 585CF10EC;
	Fri, 24 Nov 2023 02:45:00 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id F1F357F98;
	Fri, 24 Nov 2023 18:44:52 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 24 Nov
 2023 18:44:52 +0800
Received: from yang-virtual-machine.localdomain (113.72.144.198) by
 EXMBX171.cuchost.com (172.16.6.91) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Fri, 24 Nov 2023 18:44:51 +0800
From: Shengyang Chen <shengyang.chen@starfivetech.com>
To: <devicetree@vger.kernel.org>, <dri-devel@lists.freedesktop.org>
CC: <neil.armstrong@linaro.org>, <quic_jesszhan@quicinc.com>,
	<sam@ravnborg.org>, <airlied@gmail.com>, <daniel@ffwll.ch>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<florian.fainelli@broadcom.com>, <bcm-kernel-feedback-list@broadcom.com>,
	<eric@anholt.net>, <thierry.reding@gmail.com>,
	<changhuang.liang@starfivetech.com>, <keith.zhao@starfivetech.com>,
	<shengyang.chen@starfivetech.com>, <jack.zhu@starfivetech.com>,
	<linux-rpi-kernel@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 0/2] Add waveshare 7inch touchscreen panel support
Date: Fri, 24 Nov 2023 18:44:49 +0800
Message-ID: <20231124104451.44271-1-shengyang.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag

This patchset adds waveshare 7inch touchscreen panel support
for the StarFive JH7110 SoC.

Patch 1 add new compatible for the raspberrypi panel driver and its dt-binding.
Patch 2 add new display mode and new probing process for raspberrypi panel driver.

Waveshare 7inch touchscreen panel is a kind of raspberrypi panel
which can be drived by raspberrypi panel driver.

The series has been tested on the VisionFive 2 board.

Shengyang Chen (2):
  dt-bindings: display: panel: raspberrypi: Add compatible property for
    waveshare 7inch touchscreen panel
  gpu: drm: panel: raspberrypi: add new display mode and new probing
    process

 .../panel/raspberrypi,7inch-touchscreen.yaml  |  4 +-
 .../drm/panel/panel-raspberrypi-touchscreen.c | 99 ++++++++++++++++---
 2 files changed, 91 insertions(+), 12 deletions(-)

-- 
2.17.1


