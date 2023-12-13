Return-Path: <devicetree+bounces-23717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D263680C23D
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:42:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BC00280D89
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 07:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28901208CC;
	Mon, 11 Dec 2023 07:42:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SHSQR01.spreadtrum.com (unknown [222.66.158.135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0A8012E;
	Sun, 10 Dec 2023 23:42:46 -0800 (PST)
Received: from dlp.unisoc.com ([10.29.3.86])
	by SHSQR01.spreadtrum.com with ESMTP id 3BB7fSEN057284;
	Mon, 11 Dec 2023 15:41:28 +0800 (+08)
	(envelope-from xinhu.wu@unisoc.com)
Received: from SHDLP.spreadtrum.com (shmbx07.spreadtrum.com [10.0.1.12])
	by dlp.unisoc.com (SkyGuard) with ESMTPS id 4SpYSL3PS5z2Pb2Zw;
	Mon, 11 Dec 2023 15:35:30 +0800 (CST)
Received: from zebjkernups01.spreadtrum.com (10.0.93.153) by
 shmbx07.spreadtrum.com (10.0.1.12) with Microsoft SMTP Server (TLS) id
 15.0.1497.23; Mon, 11 Dec 2023 15:41:26 +0800
From: Xinhu Wu <xinhu.wu@unisoc.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <orsonzhai@gmail.com>, <baolin.wang@linux.alibaba.com>,
        <zhang.lyra@gmail.com>, <heikki.krogerus@linux.intel.com>,
        <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
CC: <xinhuwu.unisoc@gmail.com>, <zhiyong.liu@unisoc.com>,
        <peak.yang@unisoc.com>, <teng.zhang1@unisoc.com>,
        <bruce.chen@unisoc.com>, <surong.pang@unisoc.com>,
        <xingxing.luo@unisoc.com>, <xinhu.wu@unisoc.com>
Subject: [PATCH V2 0/2] usb: typec: sprd: Add Unisoc PMIC typec driver
Date: Mon, 11 Dec 2023 15:41:18 +0800
Message-ID: <20231211074120.27958-1-xinhu.wu@unisoc.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: SHCAS03.spreadtrum.com (10.0.1.207) To
 shmbx07.spreadtrum.com (10.0.1.12)
X-MAIL:SHSQR01.spreadtrum.com 3BB7fSEN057284

Support typec driver on unisoc related pmic, using extcon mechanism framework
to notify client driver

change in V2
-Modify the commit message

Xinhu Wu (2):
  usb: typec: Support sprd_pmic_typec driver
  dt-bindings: usb: Add an Spreadtrum pmic typec yaml

 .../bindings/usb/sprd,pmic_typec.yaml         |  65 ++
 drivers/usb/typec/Kconfig                     |  11 +
 drivers/usb/typec/Makefile                    |   1 +
 drivers/usb/typec/sprd_pmic_typec.c           | 587 ++++++++++++++++++
 4 files changed, 664 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/sprd,pmic_typec.yaml
 create mode 100644 drivers/usb/typec/sprd_pmic_typec.c

-- 
2.17.1


