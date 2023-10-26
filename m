Return-Path: <devicetree+bounces-12084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BC57D7DA3
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 09:29:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A7C13B211FC
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 07:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14EF815AD6;
	Thu, 26 Oct 2023 07:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145E511C84
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:29:01 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51BCA19D;
	Thu, 26 Oct 2023 00:28:59 -0700 (PDT)
Received: from kwepemm000013.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4SGHNM4RHBzpWcT;
	Thu, 26 Oct 2023 15:24:03 +0800 (CST)
Received: from huawei.com (10.175.112.208) by kwepemm000013.china.huawei.com
 (7.193.23.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Thu, 26 Oct
 2023 15:28:56 +0800
From: Guo Mengqi <guomengqi3@huawei.com>
To: <vkoul@kernel.org>, <dmaengine@vger.kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>
CC: <xuqiang36@huawei.com>, <chenweilong@huawei.com>, <guomengqi3@huawei.com>
Subject: [PATCH v6 0/2] Add dma controller driver for HiSilicon Ascend310/910
Date: Thu, 26 Oct 2023 15:25:47 +0800
Message-ID: <20231026072549.103102-1-guomengqi3@huawei.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemm000013.china.huawei.com (7.193.23.81)
X-CFilter-Loop: Reflected

The patch set add driver and device-tree bindings for a dma controller
on HiSilicon Ascend310/910 platform.

Changes v5 to v6:
	- Use "depends on IOMMU_SVA" rather than "selects IOMMU_SVA" in Kconfig,
		the latter will cause build errors

Changes v4 to v5:
	- Remove the export symbol set_sdma_channel_info(),
		use current->mm->pasid for instead.
	- Reorganize the code and fix some indentations.
	- "dma-can-stall" now is not a required option in dts-binding
	
Changes v3 to v4:
	- dts-binding
		* filename changed to hisilicon,ascend-sdma.yaml
		* use common property "dma-channel-mask"
		* make a clearer description of property "pasid-num-bits"

Changes v2 to v3:
	- Fix dts-binding error:
		* Use "hisilicon" as a unified vendor prefix.

Changes v1 to v2:
	- Fix dts-binding error:
		* change "compatible" to two exact models: ascend310/ascend910.
		* add vendor prefix for customized channel-map property.
		* add $ref for customized channel-map property.
		* remove unnecessary label in example.
	- Logic change in probe function:
		* If iommu sva feature is disabled, probe will not lead to failure
	- Use common driver apis: dev_xxx() devm_xxx()

Guo Mengqi (2):
  dmaengine: Add HiSilicon Ascend SDMA engine support
  dt-bindings: dma: HiSilicon: Add bindings for HiSilicon Ascend sdma

 .../bindings/dma/hisilicon,ascend-sdma.yaml   |  73 ++
 drivers/dma/Kconfig                           |   9 +
 drivers/dma/Makefile                          |   1 +
 drivers/dma/hisi-ascend-sdma.c                | 788 ++++++++++++++++++
 4 files changed, 871 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
 create mode 100644 drivers/dma/hisi-ascend-sdma.c

-- 
2.17.1


