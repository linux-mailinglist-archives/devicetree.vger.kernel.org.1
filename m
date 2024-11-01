Return-Path: <devicetree+bounces-118086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7E99B8F50
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 11:37:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CDEB282591
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 10:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 372DE19EED4;
	Fri,  1 Nov 2024 10:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="pPvN0pES"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741A4198A1B;
	Fri,  1 Nov 2024 10:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730457319; cv=none; b=pSChrWpQtwntDoGsarzJ5RFAcAIjizOV/DRPP9l0pX5nfZxfghx5M/avDMYHJ27afCV3Dm01cYDOoSlXKmSXIPxS1T7qXikaYPJUEW0I/El/kOR6fVwreKirmqMAGVITnWqXiKdrsOTGR/RYvH1mLds02rh2LbWaFEN6JPZIrdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730457319; c=relaxed/simple;
	bh=PolE0UNqyAne3Dg4F8+n/5QUpLvNiQjGKwrF8SRbKxw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=Dy54gs3BuXOVjh12O5N/M+S9MD1FApV5BZoWDnn6+wM3SiVIvgTWQGia+unf51+9O4RZf5/k0Q1ny8N4AIHgjoKiyB6Ft+kZxJAwef+UvdMlyevcLxUGFpWdubdJwmR9QM7F4Y+LKZdo4X8M7gCcamZ/5hAKFRt6v+YkjE/rWJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=pPvN0pES; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A13wNhh002463;
	Fri, 1 Nov 2024 10:35:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4NCjRcPHKsYgrv+5+SeIpj1+zNFY/YM6QzlS3mQ0YSA=; b=pPvN0pES/Y5J0MrX
	RFKU+ZvRq8S/tEPIoYj/4AkBAplGgGpOiCsSJyY2g5Deyyuh8pBUkdLmgA4N9Pdi
	zBJ9jPnxIGumlkhsm0LUtpoz9OzjhOp7kZL7ltUd7m24abbJ7esIjn8QBBqCNshI
	a0KnITaXvxVSgLIA07LE6kE5oSxRv19CzsU+mrpjivl0DZv3DPizgwsH1gSxc4U0
	j2LXaQJPtvW7/Fg+758wjF5e1aNkrIhy/hNoez5iLbEz2ypyeuIx14stZJsWGZ7f
	72iVwYo6gkD7kq7ba5ay8e/1Kb6TAyGax5NH0altswXTbbkpPf9c7lBTwOfrPHYV
	rssJ6A==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42kmn5esbv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Nov 2024 10:35:02 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4A1AYsAg005054
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 1 Nov 2024 10:34:54 GMT
Received: from nsssdc-sh01-lnx.ap.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Fri, 1 Nov 2024 03:34:48 -0700
From: Lei Wei <quic_leiwei@quicinc.com>
Date: Fri, 1 Nov 2024 18:32:50 +0800
Subject: [PATCH net-next 2/5] net: pcs: Add PCS driver for Qualcomm IPQ9574
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241101-ipq_pcs_rc1-v1-2-fdef575620cf@quicinc.com>
References: <20241101-ipq_pcs_rc1-v1-0-fdef575620cf@quicinc.com>
In-Reply-To: <20241101-ipq_pcs_rc1-v1-0-fdef575620cf@quicinc.com>
To: "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet
	<edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni
	<pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andrew Lunn
	<andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King
	<linux@armlinux.org.uk>
CC: <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <quic_kkumarcs@quicinc.com>,
        <quic_suruchia@quicinc.com>, <quic_pavir@quicinc.com>,
        <quic_linchen@quicinc.com>, <quic_luoj@quicinc.com>,
        <quic_leiwei@quicinc.com>, <srinivas.kandagatla@linaro.org>,
        <bartosz.golaszewski@linaro.org>, <vsmuthu@qti.qualcomm.com>,
        <john@phrozen.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730457277; l=9080;
 i=quic_leiwei@quicinc.com; s=20240829; h=from:subject:message-id;
 bh=PolE0UNqyAne3Dg4F8+n/5QUpLvNiQjGKwrF8SRbKxw=;
 b=6JfbSiZbrVVcQMeYOrG0cpx3f6uxRRwCqPDZBCSZIjflwskfWLS7UoSrn/vphDBbgK4V1xO6h
 9zheuFUikKiASWgRE5myz3OJbHYGCkkmUe127nSrMyTVqMmKM2V3K8B
X-Developer-Key: i=quic_leiwei@quicinc.com; a=ed25519;
 pk=uFXBHtxtDjtIrTKpDEZlMLSn1i/sonZepYO8yioKACM=
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 51mb5ebkwCQKuHJZskoIp6yQbjf98Qob
X-Proofpoint-GUID: 51mb5ebkwCQKuHJZskoIp6yQbjf98Qob
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 mlxlogscore=999
 priorityscore=1501 mlxscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411010076

The 'UNIPHY' PCS hardware block in Qualcomm's IPQ SoC supports
different interface modes to enable Ethernet MAC connections
for different types of external PHYs/switch. Each UNIPHY block
includes a SerDes and PCS/XPCS blocks, and can operate in either
PCS or XPCS modes. It supports 1Gbps and 2.5Gbps interface modes
(Ex: SGMII) using the PCS, and 10Gbps interface modes (Ex: USXGMII)
using the XPCS. There are three UNIPHY (PCS) instances in IPQ9574
SoC which support the six Ethernet ports in the SoC.

This patch adds support for the platform driver, probe and clock
registrations for the PCS driver. The platform driver creates an
'ipq_pcs' instance for each of the UNIPHY used on the given board.

Signed-off-by: Lei Wei <quic_leiwei@quicinc.com>
---
 drivers/net/pcs/Kconfig        |   9 ++
 drivers/net/pcs/Makefile       |   1 +
 drivers/net/pcs/pcs-qcom-ipq.c | 244 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 254 insertions(+)

diff --git a/drivers/net/pcs/Kconfig b/drivers/net/pcs/Kconfig
index f6aa437473de..1053326958ee 100644
--- a/drivers/net/pcs/Kconfig
+++ b/drivers/net/pcs/Kconfig
@@ -25,6 +25,15 @@ config PCS_MTK_LYNXI
 	  This module provides helpers to phylink for managing the LynxI PCS
 	  which is part of MediaTek's SoC and Ethernet switch ICs.
 
+config PCS_QCOM_IPQ
+	tristate "Qualcomm IPQ PCS"
+	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	depends on HAS_IOMEM
+	help
+	  This module provides driver for UNIPHY PCS available on Qualcomm IPQ
+	  SoC such as IPQ9574. The UNIPHY PCS supports both PCS and XPCS functions
+	  to support different interface modes for MAC to PHY connections.
+
 config PCS_RZN1_MIIC
 	tristate "Renesas RZ/N1 MII converter"
 	depends on OF && (ARCH_RZN1 || COMPILE_TEST)
diff --git a/drivers/net/pcs/Makefile b/drivers/net/pcs/Makefile
index 4f7920618b90..399750c7c293 100644
--- a/drivers/net/pcs/Makefile
+++ b/drivers/net/pcs/Makefile
@@ -7,4 +7,5 @@ pcs_xpcs-$(CONFIG_PCS_XPCS)	:= pcs-xpcs.o pcs-xpcs-plat.o \
 obj-$(CONFIG_PCS_XPCS)		+= pcs_xpcs.o
 obj-$(CONFIG_PCS_LYNX)		+= pcs-lynx.o
 obj-$(CONFIG_PCS_MTK_LYNXI)	+= pcs-mtk-lynxi.o
+obj-$(CONFIG_PCS_QCOM_IPQ)	+= pcs-qcom-ipq.o
 obj-$(CONFIG_PCS_RZN1_MIIC)	+= pcs-rzn1-miic.o
diff --git a/drivers/net/pcs/pcs-qcom-ipq.c b/drivers/net/pcs/pcs-qcom-ipq.c
new file mode 100644
index 000000000000..e065bc61cd14
--- /dev/null
+++ b/drivers/net/pcs/pcs-qcom-ipq.c
@@ -0,0 +1,244 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/device.h>
+#include <linux/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include <dt-bindings/net/pcs-qcom-ipq.h>
+
+#define XPCS_INDIRECT_ADDR		0x8000
+#define XPCS_INDIRECT_AHB_ADDR		0x83fc
+#define XPCS_INDIRECT_ADDR_H		GENMASK(20, 8)
+#define XPCS_INDIRECT_ADDR_L		GENMASK(7, 0)
+#define XPCS_INDIRECT_DATA_ADDR(reg)	(FIELD_PREP(GENMASK(15, 10), 0x20) | \
+					 FIELD_PREP(GENMASK(9, 2), \
+					 FIELD_GET(XPCS_INDIRECT_ADDR_L, reg)))
+
+/* Private data for the PCS instance */
+struct ipq_pcs {
+	struct device *dev;
+	void __iomem *base;
+	struct regmap *regmap;
+	phy_interface_t interface;
+
+	/* RX clock supplied to NSSCC */
+	struct clk_hw rx_hw;
+	/* TX clock supplied to NSSCC */
+	struct clk_hw tx_hw;
+};
+
+static unsigned long ipq_pcs_clk_rate_get(struct ipq_pcs *qpcs)
+{
+	switch (qpcs->interface) {
+	case PHY_INTERFACE_MODE_USXGMII:
+		return 312500000;
+	default:
+		return 125000000;
+	}
+}
+
+/* Return clock rate for the RX clock supplied to NSSCC
+ * as per the interface mode.
+ */
+static unsigned long ipq_pcs_rx_clk_recalc_rate(struct clk_hw *hw,
+						unsigned long parent_rate)
+{
+	struct ipq_pcs *qpcs = container_of(hw, struct ipq_pcs, rx_hw);
+
+	return ipq_pcs_clk_rate_get(qpcs);
+}
+
+/* Return clock rate for the TX clock supplied to NSSCC
+ * as per the interface mode.
+ */
+static unsigned long ipq_pcs_tx_clk_recalc_rate(struct clk_hw *hw,
+						unsigned long parent_rate)
+{
+	struct ipq_pcs *qpcs = container_of(hw, struct ipq_pcs, tx_hw);
+
+	return ipq_pcs_clk_rate_get(qpcs);
+}
+
+static int ipq_pcs_clk_determine_rate(struct clk_hw *hw,
+				      struct clk_rate_request *req)
+{
+	switch (req->rate) {
+	case 125000000:
+	case 312500000:
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+/* Clock ops for the RX clock supplied to NSSCC */
+static const struct clk_ops qpcs_rx_clk_ops = {
+	.determine_rate = ipq_pcs_clk_determine_rate,
+	.recalc_rate = ipq_pcs_rx_clk_recalc_rate,
+};
+
+/* Clock ops for the TX clock supplied to NSSCC */
+static const struct clk_ops qpcs_tx_clk_ops = {
+	.determine_rate = ipq_pcs_clk_determine_rate,
+	.recalc_rate = ipq_pcs_tx_clk_recalc_rate,
+};
+
+static struct clk_hw *ipq_pcs_clk_hw_get(struct of_phandle_args *clkspec,
+					 void *data)
+{
+	struct ipq_pcs *qpcs = data;
+
+	switch (clkspec->args[0]) {
+	case PCS_RX_CLK:
+		return &qpcs->rx_hw;
+	case PCS_TX_CLK:
+		return &qpcs->tx_hw;
+	}
+
+	return ERR_PTR(-EINVAL);
+}
+
+/* Register the RX and TX clock which are output from SerDes to
+ * the NSSCC. The NSSCC driver assigns the RX and TX clock as
+ * parent, divides them to generate the MII RX and TX clock to
+ * each MII interface of the PCS as per the link speeds and
+ * interface modes.
+ */
+static int ipq_pcs_clk_register(struct ipq_pcs *qpcs)
+{
+	struct clk_init_data init = { };
+	int ret;
+
+	init.ops = &qpcs_rx_clk_ops;
+	init.name = devm_kasprintf(qpcs->dev, GFP_KERNEL, "%s::rx_clk",
+				   dev_name(qpcs->dev));
+	if (!init.name)
+		return -ENOMEM;
+
+	qpcs->rx_hw.init = &init;
+	ret = devm_clk_hw_register(qpcs->dev, &qpcs->rx_hw);
+	if (ret)
+		return ret;
+
+	init.ops = &qpcs_tx_clk_ops;
+	init.name = devm_kasprintf(qpcs->dev, GFP_KERNEL, "%s::tx_clk",
+				   dev_name(qpcs->dev));
+	if (!init.name)
+		return -ENOMEM;
+
+	qpcs->tx_hw.init = &init;
+	ret = devm_clk_hw_register(qpcs->dev, &qpcs->tx_hw);
+	if (ret)
+		return ret;
+
+	return devm_of_clk_add_hw_provider(qpcs->dev, ipq_pcs_clk_hw_get, qpcs);
+}
+
+static int ipq_pcs_regmap_read(void *context, unsigned int reg,
+			       unsigned int *val)
+{
+	struct ipq_pcs *qpcs = context;
+
+	/* PCS uses direct AHB access while XPCS uses indirect AHB access */
+	if (reg >= XPCS_INDIRECT_ADDR) {
+		writel(FIELD_GET(XPCS_INDIRECT_ADDR_H, reg),
+		       qpcs->base + XPCS_INDIRECT_AHB_ADDR);
+		*val = readl(qpcs->base + XPCS_INDIRECT_DATA_ADDR(reg));
+	} else {
+		*val = readl(qpcs->base + reg);
+	}
+
+	return 0;
+}
+
+static int ipq_pcs_regmap_write(void *context, unsigned int reg,
+				unsigned int val)
+{
+	struct ipq_pcs *qpcs = context;
+
+	/* PCS uses direct AHB access while XPCS uses indirect AHB access */
+	if (reg >= XPCS_INDIRECT_ADDR) {
+		writel(FIELD_GET(XPCS_INDIRECT_ADDR_H, reg),
+		       qpcs->base + XPCS_INDIRECT_AHB_ADDR);
+		writel(val, qpcs->base + XPCS_INDIRECT_DATA_ADDR(reg));
+	} else {
+		writel(val, qpcs->base + reg);
+	}
+
+	return 0;
+}
+
+static const struct regmap_config ipq_pcs_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_read = ipq_pcs_regmap_read,
+	.reg_write = ipq_pcs_regmap_write,
+	.fast_io = true,
+};
+
+static int ipq_pcs_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct ipq_pcs *qpcs;
+	struct clk *clk;
+	int ret;
+
+	qpcs = devm_kzalloc(dev, sizeof(*qpcs), GFP_KERNEL);
+	if (!qpcs)
+		return -ENOMEM;
+
+	qpcs->dev = dev;
+
+	qpcs->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(qpcs->base))
+		return dev_err_probe(dev, PTR_ERR(qpcs->base),
+				     "Failed to ioremap resource\n");
+
+	qpcs->regmap = devm_regmap_init(dev, NULL, qpcs, &ipq_pcs_regmap_cfg);
+	if (IS_ERR(qpcs->regmap))
+		return dev_err_probe(dev, PTR_ERR(qpcs->regmap),
+				     "Failed to allocate register map\n");
+
+	clk = devm_clk_get_enabled(dev, "sys");
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk),
+				     "Failed to enable SYS clock\n");
+
+	clk = devm_clk_get_enabled(dev, "ahb");
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk),
+				     "Failed to enable AHB clock\n");
+
+	ret = ipq_pcs_clk_register(qpcs);
+	if (ret)
+		return ret;
+
+	platform_set_drvdata(pdev, qpcs);
+
+	return 0;
+}
+
+static const struct of_device_id ipq_pcs_of_mtable[] = {
+	{ .compatible = "qcom,ipq9574-pcs" },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, ipq_pcs_of_mtable);
+
+static struct platform_driver ipq_pcs_driver = {
+	.driver = {
+		.name = "ipq_pcs",
+		.of_match_table = ipq_pcs_of_mtable,
+	},
+	.probe = ipq_pcs_probe,
+};
+module_platform_driver(ipq_pcs_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Qualcomm IPQ PCS driver");
+MODULE_AUTHOR("Lei Wei <quic_leiwei@quicinc.com>");

-- 
2.34.1


