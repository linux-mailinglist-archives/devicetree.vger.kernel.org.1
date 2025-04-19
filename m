Return-Path: <devicetree+bounces-168704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECFDA941D4
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 07:44:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 420AB8E1BEF
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 05:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4266A19259F;
	Sat, 19 Apr 2025 05:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B3tfcXbF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DEF8191F94
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 05:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745041416; cv=none; b=l63T/eiv7vWd6cMq9sT/1rZF33k3QjO044Z62jiAasbbwOT6rm5GQOpFazWKiKOusab8dgjimPJuM/M1zuzD84FBn5WV8nbMQbt1F0BMHddd75ux+0/lArGegI2gzTTa0dagZBG+TrFQE0cBfwKj/97sVE9jNWVm2cOBFog5+Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745041416; c=relaxed/simple;
	bh=l+iLQRs3Sd9q7CUv85IAG9PJ5au9ED/F26dF58ymUtk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mvr1BFXj4aHH4sI1KhUklh0o1OZDp6bmNc3JQf4wd69BdhfpO8vjmM5FAFbIDzbtVccsN4XbKisahM+jqhUdIz79TWZqgJwafh3HrcYLt8HE/P4vRq2aRGkQpUH5ssmlPZH28LV+gXKJSVDkRSamXrEUijdH3EpTESW8XpQRmnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B3tfcXbF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53J2tMuq030215
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 05:43:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HBnyWza8rS1v7HrmjjSzQ1pFiEcjxC/rJnoS7wzUeqY=; b=B3tfcXbF88TMtoNU
	OyzIzxLDCHBGM/Kc9nQOwItkQ6M/XoT2DGsLx6TmsLZzevrG4LHEN7HDVJYiMi2+
	Ld0jCnpyf3yLbfGVrpavWUCVs0QVxvf6XTyumJXgJ/SvyBcMT7GluJa9llc7qSuY
	agvY65shLDtBkKM4s60FZg+NO1eQSqJLI1dcyv+NRNxZtjfeFVyRaH+WSljjH5Tq
	1jn4gvtQA3XuL42w3Nqyzw+hJXrL03N/wDGdS0I8CDe4UwaDaaBChX01DHgKkWTz
	fayzgJB6fsnkTfIBWhtFzLdH/2rgqImvwj4ASmP3ERi6rRhJwW2pwfTQl1YJMB1s
	sht2bQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46416qrab8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 05:43:33 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ff6af1e264so3196326a91.3
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 22:43:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745041412; x=1745646212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HBnyWza8rS1v7HrmjjSzQ1pFiEcjxC/rJnoS7wzUeqY=;
        b=chzGF8aysLBgSgP3A1VyQQmF2i1eiJRHdIQ+QGta9t4TL48JDnI89ETO7PdXsRDOS3
         RzI+n1K6ClNgPUPbHP1QvxUZahDvfo8BkqfkxnIMeoSJJyMmliIeBlOhp4YBL0kMZysR
         PCEuOOXS9WGxJ/ss6ycJsYX5JrQo4Fv85FZmI0xTJSg7S/B7bLk39yKI1zROjmtdRXoQ
         0kWrbtW8pLl2MOflkrMh0PG/qaMHajSrnVRAYRbBwVywcEDrW47CHg95BKs/HjJq95+U
         nFNXrCC/7zOK08jWSbFL+qQ0Hr758JKBVWbA4v/SLzF5Yg+LWlIWiqDCPT0viW+I9+d/
         ps1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUf+18BDztlNAnvjfVbkpyjI66Koam0twUWyuIozu9ba2ZBVjm0jw5h/oHDGVxUpqDDO0UMq7vl18cG@vger.kernel.org
X-Gm-Message-State: AOJu0YzZGW4KoB7Rn0gnyJvZ/3LjF+/LkFzkb8fYuVyAScFoNN/EUzLF
	03bkBfkPdJeld/E2vmbotdbcm+RhXz+x3kSjZYzPKSdK6zwSYGbsH3++JHI3UevrzOz0kt5wtcv
	wtqmd7fxWrWF8nmIXNxhKkd6yr/w38J5KCbrKeBJ2KE9MP0t9yliQPS7NI6Ko
X-Gm-Gg: ASbGncvmGI4uH7A/AxNblsLOBa4xAP1he5/ZDKP89LYxDx368DeS6lbrl80b6+HBvLB
	qHe+aABYNZ+KgFCRP/0bw9B3UKnAhsw+YU/RUnfZX7TXPXh9gPYT88a5XCV7TD3Ao+bGZOv5r5u
	46bL6TpIPeRQ4WYjv2ryiwRF+v8pyS9ljpaTPLBSkFp5N4bH2uCcP+WXFQLlhapCUbxJzKNCIOI
	42WG7lF6GSId/7bXJ+UqZFiM4clCg2wGmlVHf5k5ZsUYUXERDcwZVx2c+O3hRCsKIoqEFhFTT5G
	BFoXSCXv2f1OAvLhkZ/br0sfb9t3vfHTrAykMhTETzcsAFk=
X-Received: by 2002:a17:903:32d1:b0:224:fa0:36da with SMTP id d9443c01a7336-22c5358321dmr58141425ad.18.1745041411763;
        Fri, 18 Apr 2025 22:43:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzWEAMRvo6PUazfjfHTnWx8uUrubDqpzpgGItMl2BoJHPEaH7gA3csflj14Pu/DY/NJrWd/w==
X-Received: by 2002:a17:903:32d1:b0:224:fa0:36da with SMTP id d9443c01a7336-22c5358321dmr58141215ad.18.1745041411390;
        Fri, 18 Apr 2025 22:43:31 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50eceb37sm26014945ad.179.2025.04.18.22.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 22:43:31 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 19 Apr 2025 11:13:04 +0530
Subject: [PATCH v2 2/2] PCI: Add support for PCIe wake interrupt
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250419-wake_irq_support-v2-2-06baed9a87a1@oss.qualcomm.com>
References: <20250419-wake_irq_support-v2-0-06baed9a87a1@oss.qualcomm.com>
In-Reply-To: <20250419-wake_irq_support-v2-0-06baed9a87a1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745041398; l=5149;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=l+iLQRs3Sd9q7CUv85IAG9PJ5au9ED/F26dF58ymUtk=;
 b=Y3KF+GIIZYUGLI6u3qqIz8HUKIe4N/LUFLwc4f/nbvf/ewo8/wiGDrihcavfWs4SaYd9VSleO
 s+isiQTAOLfDcGjNQPpie72yhaQFIUqCPiiKgGS72yxjAIgT6hoHMeH
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=N7UpF39B c=1 sm=1 tr=0 ts=68033805 cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=iljMX2kAvVRlE-iODa4A:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: Q-tBFz4-GcHFM4BsaFS4dJAZpkLirnok
X-Proofpoint-ORIG-GUID: Q-tBFz4-GcHFM4BsaFS4dJAZpkLirnok
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-19_02,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 mlxscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=994 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504190042

PCIe wake interrupt is needed for bringing back PCIe device state
from D3cold to D0.

Implement new functions, of_pci_setup_wake_irq() and
of_pci_teardown_wake_irq(), to manage wake interrupts for PCI devices
using the Device Tree.

From the port bus driver call these functions to enable wake support
for bridges.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/of.c           | 60 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci.h          |  6 +++++
 drivers/pci/pcie/portdrv.c | 12 +++++++++-
 3 files changed, 77 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index ab7a8252bf4137a17971c3eb8ab70ce78ca70969..13623797c88a03dfb9d9079518d87a5e1e68df38 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -7,6 +7,7 @@
 #define pr_fmt(fmt)	"PCI: OF: " fmt
 
 #include <linux/cleanup.h>
+#include <linux/gpio/consumer.h>
 #include <linux/irqdomain.h>
 #include <linux/kernel.h>
 #include <linux/pci.h>
@@ -15,6 +16,7 @@
 #include <linux/of_address.h>
 #include <linux/of_pci.h>
 #include <linux/platform_device.h>
+#include <linux/pm_wakeirq.h>
 #include "pci.h"
 
 #ifdef CONFIG_PCI
@@ -966,3 +968,61 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
 	return slot_power_limit_mw;
 }
 EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
+
+/**
+ * of_pci_setup_wake_irq - Set up wake interrupt for PCI device
+ * @pdev: The PCI device structure
+ *
+ * This function sets up the wake interrupt for a PCI device by getting the
+ * corresponding GPIO pin from the device tree, and configuring it as a
+ * dedicated wake interrupt.
+ *
+ * Return: 0 if the wake gpio is not available or successfully parsed else
+ * errno otherwise.
+ */
+int of_pci_setup_wake_irq(struct pci_dev *pdev)
+{
+	struct gpio_desc *wake;
+	struct device_node *dn;
+	int ret, wake_irq;
+
+	dn = pci_device_to_OF_node(pdev);
+	if (!dn)
+		return 0;
+
+	wake = devm_fwnode_gpiod_get(&pdev->dev, of_fwnode_handle(dn),
+				     "wake", GPIOD_IN, NULL);
+	if (IS_ERR(wake)) {
+		dev_warn(&pdev->dev, "Cannot get wake GPIO\n");
+		return 0;
+	}
+
+	wake_irq = gpiod_to_irq(wake);
+	device_init_wakeup(&pdev->dev, true);
+
+	ret = dev_pm_set_dedicated_wake_irq(&pdev->dev, wake_irq);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Failed to set wake IRQ: %d\n", ret);
+		device_init_wakeup(&pdev->dev, false);
+		return ret;
+	}
+	irq_set_irq_type(wake_irq, IRQ_TYPE_EDGE_FALLING);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_pci_setup_wake_irq);
+
+/**
+ * of_pci_teardown_wake_irq - Teardown wake interrupt setup for PCI device
+ *
+ * @pdev: The PCI device structure
+ *
+ * This function tears down the wake interrupt setup for a PCI device,
+ * clearing the dedicated wake interrupt and disabling device wake-up.
+ */
+void of_pci_teardown_wake_irq(struct pci_dev *pdev)
+{
+	dev_pm_clear_wake_irq(&pdev->dev);
+	device_init_wakeup(&pdev->dev, false);
+}
+EXPORT_SYMBOL_GPL(of_pci_teardown_wake_irq);
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index b81e99cd4b62a3022c8b07a09f212f6888674487..b2f65289f4156fa1851c2d2f20c4ca948f36258f 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -888,6 +888,9 @@ void pci_release_of_node(struct pci_dev *dev);
 void pci_set_bus_of_node(struct pci_bus *bus);
 void pci_release_bus_of_node(struct pci_bus *bus);
 
+int of_pci_setup_wake_irq(struct pci_dev *pdev);
+void of_pci_teardown_wake_irq(struct pci_dev *pdev);
+
 int devm_of_pci_bridge_init(struct device *dev, struct pci_host_bridge *bridge);
 bool of_pci_supply_present(struct device_node *np);
 
@@ -931,6 +934,9 @@ static inline int devm_of_pci_bridge_init(struct device *dev, struct pci_host_br
 	return 0;
 }
 
+static int of_pci_setup_wake_irq(struct pci_dev *pdev) { return 0; }
+static void of_pci_teardown_wake_irq(struct pci_dev *pdev) { }
+
 static inline bool of_pci_supply_present(struct device_node *np)
 {
 	return false;
diff --git a/drivers/pci/pcie/portdrv.c b/drivers/pci/pcie/portdrv.c
index e8318fd5f6ed537a1b236a3a0f054161d5710abd..33220ecf821c348d49782855eb5aa3f2fe5c335e 100644
--- a/drivers/pci/pcie/portdrv.c
+++ b/drivers/pci/pcie/portdrv.c
@@ -694,12 +694,18 @@ static int pcie_portdrv_probe(struct pci_dev *dev,
 	     (type != PCI_EXP_TYPE_RC_EC)))
 		return -ENODEV;
 
+	status = of_pci_setup_wake_irq(dev);
+	if (status)
+		return status;
+
 	if (type == PCI_EXP_TYPE_RC_EC)
 		pcie_link_rcec(dev);
 
 	status = pcie_port_device_register(dev);
-	if (status)
+	if (status) {
+		of_pci_teardown_wake_irq(dev);
 		return status;
+	}
 
 	pci_save_state(dev);
 
@@ -732,6 +738,8 @@ static void pcie_portdrv_remove(struct pci_dev *dev)
 
 	pcie_port_device_remove(dev);
 
+	of_pci_teardown_wake_irq(dev);
+
 	pci_disable_device(dev);
 }
 
@@ -744,6 +752,8 @@ static void pcie_portdrv_shutdown(struct pci_dev *dev)
 	}
 
 	pcie_port_device_remove(dev);
+
+	of_pci_teardown_wake_irq(dev);
 }
 
 static pci_ers_result_t pcie_portdrv_error_detected(struct pci_dev *dev,

-- 
2.34.1


