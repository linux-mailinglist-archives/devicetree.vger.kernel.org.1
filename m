Return-Path: <devicetree+bounces-235140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D40C34C18
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 10:20:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A060434D04E
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 09:20:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5C6931282F;
	Wed,  5 Nov 2025 09:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ccsDX/ah";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XA80tFHl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE030312800
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 09:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762334209; cv=none; b=OypE2Nzbj9ymiWPLEQbiwamQs5d1wtMxmeT3Nz/ABCQQOPtl3LqvMCA0er1oYffh29f/B10PCBK4LXd8iBqR6/LyVYw3s+WcwwI0oguiqzFb6pzgYY4lodQlcX5gexbCzGBVDHvDCyH2JZnSYGcWznn1g/7DPBRVVCtcQkJsbLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762334209; c=relaxed/simple;
	bh=6JV6iijCVKWK12xOisbku7kPcAUn8AtYsjIJ5OCWPFI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KsZRqSsQsJeSbnuRLsZAziV70qdN/6LUfvBxGfL52uDYBJZXwGjpn65AfLYa7N+/zPqT81QyBBtKP2W9ldKJkHFWhPojvARATn/NjjPSCrbn5KDLQUEzKlmhhS0vhLbxusHAjoieUN5St/Kaqz95/EYPmLfv57zzyUjvRgoJ234=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ccsDX/ah; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XA80tFHl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A54YfCX4056297
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 09:16:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fr/wxR5o/dgbV3wh8KKr+sf9R0I5j0Vgjg2foUPt36M=; b=ccsDX/ahHOAU9SIv
	k3oUU+hyAQAwcC8vJfmonKiSpfSdySdaktnVMMAOnhqz8JtoRLtCwUL/HmatQITz
	aBuEQkq86E9l7fdcXBB8z1HKLrc8JR6z98Y09b9BhdDckuAWbATQt6GRHS413PNM
	IDvOU4limZzAZLQW0vJo3HZPoe9qx8gIyNi6fJhPIN5fKnehNRXY3R5mHgljikgk
	ilRbSQCNTxJgROm+Sa5dF+uXFRxNBuvS22vCocC7GhElp14chhS3MFx51rNasCQR
	sHNFCO9L0Am/8S4G9M33MaUHpevKP9lu9MIhNcedN/g6Lw+NFEvJW6j+03Y4Vc7R
	lkPq0g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7yp60qa6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 09:16:46 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3416dc5754fso2918262a91.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 01:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762334206; x=1762939006; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fr/wxR5o/dgbV3wh8KKr+sf9R0I5j0Vgjg2foUPt36M=;
        b=XA80tFHlUKQevg11jRpdq5xPLgHxMAocgf6eKG5XYHFJaB8mXZqahm1sgQJwAlwd9A
         pmSCbdevpf93HuEcWMuAExYHgN2n4omUZKL8EmGHeSERYE0xOTfUvVxo/KHPkai5s7Fe
         HfM+cYQnVdG1oU0Sj7m6PEz8FeMBq90a2jevJ67trP9vZLXBKr4GhbK1hXQmVwxTWnkg
         U7jsa45xpPa2FEIvqDG2RIkiWpq7JSpFQWrAad3JNfOI11SMr3n9Pyn3v5ZlmUYfsdNX
         qv6kO0cHDcwDm4lXxmg1VuvzZUq6WBo1LgBCM+CqxjFf+htaoDf2rDSQ68CnT2dypC8H
         gZmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762334206; x=1762939006;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fr/wxR5o/dgbV3wh8KKr+sf9R0I5j0Vgjg2foUPt36M=;
        b=p1kPuZyDIipzND0xQFK43kqydZZ04yeWWcQ/xARyIRnj43pWZ5ppbR668Zz8p2iD5C
         utSLuVOqEqu6XA0a/rSG8HGdtNb9iZYGs4p5pEOyZkKZvnKYShs2zmHIeAlEJ64Xz+xX
         XgnTmqO4hI3SpAm4Ct5ISoaC8Nrb9OXvQ28QfQtenbJyk0bDfyObH5biNXt08oHtMLv3
         ZuxAX2E7KcEgh6K3jIXy/BUZXe7TzJX0Qmk1H+2iS567LB7qEIOZk5yoYU2e2k2MHJWa
         VPRD5h+tvE/y5ElyKr5T9Uf2Tc3pF+1YLsylmlfDN7KlmbH7RUFO47GWlpsJo2xndmFC
         pSBw==
X-Forwarded-Encrypted: i=1; AJvYcCVUujzV+rw3H1JTsqCna5xxARLcwbGcB89kKkymnPeqz/tNmePN6Q2GJqmbo43T3e7G/XzgCfI2ws0r@vger.kernel.org
X-Gm-Message-State: AOJu0YxzI3OHjAYF9GLneMFiJNvaGor2oH3uFbFcq4U6qAjaZFwfdi1n
	TwmkMMUm++ZsnDJGsObwcbQ8yKG9CF0CRyO2Pqajg3GRrnrnN4GIWZ6bq9QKKRvqHRigNftPtC9
	PxLwILgAPO/5DxKUfxeDa3sF5S5H3WXhYDM1Erjcu7O5WSpxxJmNXo9k1czuwSn+a
X-Gm-Gg: ASbGncuQUL/7jYN3bd2fAlk544wzbbB13h1gbvG4OJMP8d4aGLRpBpKz7PNWmajSLsz
	kAR5tq/GeWoqzmoZyStTLkUpt8ERW3w9zem5yzMIFz8UVceinoWqAmEegLSvK0AtpU/CPh3ooGp
	QmS31dzD8TwkgK0jKVYw63jJ/GskX2BDbzTf5a+XIybMBCC0KKfEPFOESWQ4V3dPzsrWXBqSBHP
	B23B6qipZIFh2/lsV0DcaZwmm9kbwk8n9I6CDAqZqm1k6qNR3jFy9psvlQi9VUf82zSySmiiMrP
	KBSCp06xshCsWWCrSJjs7IeBoq2gW8/6ZslSqHQvrlMeNtFQan0bZ1+/QDK7J4JWe+ZcbvL7vay
	KbG1h1i5WCmWjMNHqEkPyQAZC5pYa
X-Received: by 2002:a17:90b:48ca:b0:340:f05a:3ecb with SMTP id 98e67ed59e1d1-341a6ded3a8mr3020700a91.28.1762334205644;
        Wed, 05 Nov 2025 01:16:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFKwsvUGdrfKTQhaqiwzEypp+iS5QzZH09d6n929jY+N764lQ1Gt7nCYOFdvWBtf2B+FDuBSw==
X-Received: by 2002:a17:90b:48ca:b0:340:f05a:3ecb with SMTP id 98e67ed59e1d1-341a6ded3a8mr3020664a91.28.1762334205088;
        Wed, 05 Nov 2025 01:16:45 -0800 (PST)
Received: from [192.168.1.102] ([120.60.68.120])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3417a385563sm2274249a91.0.2025.11.05.01.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 01:16:44 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Date: Wed, 05 Nov 2025 14:45:50 +0530
Subject: [PATCH 2/4] PCI/pwrctrl: Add support for handling PCIe M.2
 connectors
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251105-pci-m2-v1-2-84b5f1f1e5e8@oss.qualcomm.com>
References: <20251105-pci-m2-v1-0-84b5f1f1e5e8@oss.qualcomm.com>
In-Reply-To: <20251105-pci-m2-v1-0-84b5f1f1e5e8@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3917;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=6JV6iijCVKWK12xOisbku7kPcAUn8AtYsjIJ5OCWPFI=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBpCxXoCyTIkkKmbRofz4BXOgj+hgIcJiMyJzFHE
 6fXLle3+wmJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaQsV6AAKCRBVnxHm/pHO
 9SofB/97Zy40OYNFyPILHV9/VogbBFLuszEaspIiN624N2tKtZSWiU/fsRJB7et/oc+uBk8YhVY
 JnIO5xFZSpLLIn1wV5J9V5qxSp9rXKUaPIaVnhPYyrM6xOBowoL9vCNQEAwQkTi4DUyJFVawRfG
 bpoLxDWiV4f1I+EglDR0L8yr3zsIBzBv3r/H7+0MgvegB8IOi34Yi7Z9xzyXVB5ZJuDD7G9U1rD
 r5BOseJOjqhHqzd9uSNttgb16/CF2W1ailQJxwUGmNnBT17mU1QbtOHGMJc3FS3CqrXNSUT8po9
 l6SAIlGuRIbWRhvk+dNukITDyeAvd1drTpvjgXMM8j/ZPsZj
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-Proofpoint-GUID: N2SrUfedLacphDrein0unAcJCA0yp6rb
X-Proofpoint-ORIG-GUID: N2SrUfedLacphDrein0unAcJCA0yp6rb
X-Authority-Analysis: v=2.4 cv=TsrrRTXh c=1 sm=1 tr=0 ts=690b15fe cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=adoi+G5QptZiRYWGMQz2cA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=T-2iuOupZRtFYbKAKI8A:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA2OCBTYWx0ZWRfX98P7Tv8/Pxmv
 VsrqHIfZHMijARjvM6KvoUVEh+kGecvGF8ZTWLiG705XLLFyIgx3+dDdFlVFlBXVukSZNKtFGql
 u4ZIjAOPYlqoWTfG+dY+70B+xmj9009z74NJuFE+7lVNGySvBlMectClZH0uKuGd956lxGo/mQ7
 xNTR1mGkg3C/dvFBsTYlz0eW9g3NP6NrK3i3Zrg5BhqGn1JHJl6YcEEsne55iGEC4U+GtqGoQBE
 ZgIvuNiVrRhza46+yJv/CeaQk3OEdLiid0zOgoDEXNJxP9GQNQ4ZW2xOOP6VgHDz3rsJJ9GvprY
 xbfFYd9yCbzeg2Fb9yxWH3Rnw+UWRqSaGe+sUhpDu2Z06UPednMf76Hk1YMTNozp8m1neNx/A1C
 mfm5VwK6E5R4t8ElX33Icg/017rMlQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_03,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050068

Add support for handling the PCIe M.2 connectors as Power Sequencing
devices. These connectors are exposed as the Power Sequencing devices
as they often support multiple interfaces like PCIe/SATA, USB/UART to the
host machine and each interfaces could be driven by different client
drivers at the same time.

This driver handles the PCIe interface of these connectors. It first checks
for the presence of the graph port in the Root Port node with the help of
of_graph_is_present() API, if present, it acquires/poweres ON the
corresponding pwrseq device.

Once the pwrseq device is powered ON, the driver will skip parsing the Root
Port/Slot resources and registers with the pwrctrl framework.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 drivers/pci/pwrctrl/Kconfig |  1 +
 drivers/pci/pwrctrl/slot.c  | 35 ++++++++++++++++++++++++++++++-----
 2 files changed, 31 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/pwrctrl/Kconfig b/drivers/pci/pwrctrl/Kconfig
index 6956c18548114ce12247b560f1ef159eb7e90b10..9a195cb7e117465625c68301534af22000dfca8d 100644
--- a/drivers/pci/pwrctrl/Kconfig
+++ b/drivers/pci/pwrctrl/Kconfig
@@ -13,6 +13,7 @@ config PCI_PWRCTRL_PWRSEQ
 
 config PCI_PWRCTRL_SLOT
 	tristate "PCI Power Control driver for PCI slots"
+	select POWER_SEQUENCING
 	select PCI_PWRCTRL
 	help
 	  Say Y here to enable the PCI Power Control driver to control the power
diff --git a/drivers/pci/pwrctrl/slot.c b/drivers/pci/pwrctrl/slot.c
index 3320494b62d890ffbae6f125e2704167ebccf7b9..d46c2365208ac87c4e83ba8d69ac1914d9bf9088 100644
--- a/drivers/pci/pwrctrl/slot.c
+++ b/drivers/pci/pwrctrl/slot.c
@@ -8,8 +8,10 @@
 #include <linux/device.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
+#include <linux/of_graph.h>
 #include <linux/pci-pwrctrl.h>
 #include <linux/platform_device.h>
+#include <linux/pwrseq/consumer.h>
 #include <linux/regulator/consumer.h>
 #include <linux/slab.h>
 
@@ -17,12 +19,18 @@ struct pci_pwrctrl_slot_data {
 	struct pci_pwrctrl ctx;
 	struct regulator_bulk_data *supplies;
 	int num_supplies;
+	struct pwrseq_desc *pwrseq;
 };
 
 static void devm_pci_pwrctrl_slot_power_off(void *data)
 {
 	struct pci_pwrctrl_slot_data *slot = data;
 
+	if (slot->pwrseq) {
+		pwrseq_power_off(slot->pwrseq);
+		return;
+	}
+
 	regulator_bulk_disable(slot->num_supplies, slot->supplies);
 	regulator_bulk_free(slot->num_supplies, slot->supplies);
 }
@@ -38,6 +46,20 @@ static int pci_pwrctrl_slot_probe(struct platform_device *pdev)
 	if (!slot)
 		return -ENOMEM;
 
+	if (of_graph_is_present(dev_of_node(dev))) {
+		slot->pwrseq = devm_pwrseq_get(dev, "pcie");
+		if (IS_ERR(slot->pwrseq))
+			return dev_err_probe(dev, PTR_ERR(slot->pwrseq),
+				     "Failed to get the power sequencer\n");
+
+		ret = pwrseq_power_on(slot->pwrseq);
+		if (ret)
+			return dev_err_probe(dev, ret,
+				     "Failed to power-on the device\n");
+
+		goto skip_resources;
+	}
+
 	ret = of_regulator_bulk_get_all(dev, dev_of_node(dev),
 					&slot->supplies);
 	if (ret < 0) {
@@ -53,17 +75,20 @@ static int pci_pwrctrl_slot_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = devm_add_action_or_reset(dev, devm_pci_pwrctrl_slot_power_off,
-				       slot);
-	if (ret)
-		return ret;
-
 	clk = devm_clk_get_optional_enabled(dev, NULL);
 	if (IS_ERR(clk)) {
+		regulator_bulk_disable(slot->num_supplies, slot->supplies);
+		regulator_bulk_free(slot->num_supplies, slot->supplies);
 		return dev_err_probe(dev, PTR_ERR(clk),
 				     "Failed to enable slot clock\n");
 	}
 
+skip_resources:
+	ret = devm_add_action_or_reset(dev, devm_pci_pwrctrl_slot_power_off,
+				       slot);
+	if (ret)
+		return ret;
+
 	pci_pwrctrl_init(&slot->ctx, dev);
 
 	ret = devm_pci_pwrctrl_device_set_ready(dev, &slot->ctx);

-- 
2.48.1


