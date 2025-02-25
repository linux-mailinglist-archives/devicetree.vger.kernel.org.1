Return-Path: <devicetree+bounces-150816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 738A0A439D3
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:39:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40E3C19C39DC
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:37:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94E6D2638A9;
	Tue, 25 Feb 2025 09:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pPVxlwnL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131BF267383
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740476114; cv=none; b=RoN4Pl44QKhXv/NaqNCAD21R85vswuDZJmD0zWWNLV4n5h9kMvcZ559ip7wUjUknW8eY3qg8iACyBZwzbNwCcGsoaBD5Tfd0I7ArHjGDowdDimHKNP2uahaLDx5tuPtVBhv8+WnJH+IlNfcmr1nMppOQ3aPuQtzyr4UJs3O096g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740476114; c=relaxed/simple;
	bh=tBrPYy6jClIwhXSDiDX1gKatD1nRUDkWxKE00LALbY0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KqgzMZrR+qtGfqsGD7YvFyjai8TL3Tka+Y97pn/tGh8az/nPguxnRwiF5hCiXtpWDQ4WmqgkpyS5seLBJnqLcY/CRyCmbP9yAJBWcWhf45bm4KLc1GEl1tcgbzpBymvVCUk2plh4Ls2BWSufhbAQk0Csum2w4S9XdD1xW4kBilg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pPVxlwnL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8iYIC014595
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:35:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tpENwznM3Ab/FS3rch0QN0jlFBLvaM6eNF0S8OXyo28=; b=pPVxlwnLGqKCtAzD
	8oGZKWQfLUjinLNDpxAGDEr9DYgepMjxSfBWCXgs2xw3Zvt3emN2AN0m7EStEE7M
	3MqMGsFkdvFu3tnUpzBRuWA+dqZoaGXNCr0DhFTRJ8JoUjtK1fHTjWGwVFySNsVF
	24XsKy+tWRUUkC6Cg3SVghssfvzZntZdBQWvLVPohZQO2OLeZIyDjs+PY1xI7zOQ
	ph2MJNs3w+u9aBSR2ysl/kSx7e3ebRtJ1gyV6ogyOmxP8H7nqIJMEeY3UnupEhDp
	HAqXOiFMC7tr0eCBTRxzKhNbecNeXKVBp1NYJIehehmUSXmCkDpdNrR02kvj/Ny6
	JBdkXA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 450kqg4hte-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:35:12 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2f816a85facso11300087a91.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:35:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740476111; x=1741080911;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tpENwznM3Ab/FS3rch0QN0jlFBLvaM6eNF0S8OXyo28=;
        b=fpOxzNnVnXPaRz0i/kOiJ1kI0PwH3r71fTJ5CYdCUxLSIAQ0BFqccZ7zWQLiwjgUOp
         /NIooB4ybUP4xg5mkAfFMHn3g74Ic0K8X53VyaVY4EoFDfyROao9cXOmpxFMbDxsR4s0
         m/RGSnOYxItT9PqRziGIUfxTS9vOvquDwiSMkGk/11ic+ollAx21yDkaSEFXbJItVqft
         SFtZ0Gi/SnmPdWFIaZAhQUyxFkncBRLt0EK6bUrJw8Jb7LzSnEy2JYKJ4S9l1wYx8/2s
         Q5BNyMrrPS4OwMfaj3DjJ5lmJKTv3proaqz3IntRG1up3a1LtrAEepNUUgsSy6MTUoL7
         12hw==
X-Forwarded-Encrypted: i=1; AJvYcCWw95eDJ1z9i3TuLroGAL6o5VPa3xzqgH3d1f4n/I3Tkjq4g4KeLwVU1PiuMzFyw4KZx80hrkHNbctu@vger.kernel.org
X-Gm-Message-State: AOJu0Yzap/PZNgl9CvXjLKKEY2CEqPeR/sZgXbfpL9iEcgXV9v8ZKHEQ
	RIUWVSXOv2CY1oEP3nQs+r+rM+n8ThC8no9PSy7rQ+MAjCzJqB9gyC/8MZkpTRiIj/Z7iKtRyGt
	xlrIIgDbbn3uz5/w7t3HaG+fnJd6T2lYwO6D6m8Vsw3fyrEJk7Ncmuv3KtD21
X-Gm-Gg: ASbGnctbHLJcT8p+RHJRiG+Hl8JdG139b02HZ4LpWumArHcBUjGr2pzc7/BKTsxr8SB
	FlKfY2H2crd4qM/rhP050b/uv3FhzQus0AMNWqrgtqYjjqnN+eHsKchFVX8VZIKocjZW4eoJvrF
	wMVKGkV/1sOJBG9Rcbqlx9hhgY6wWqcg0Y0lsZbVC63QLsrycAruph4Ou8IXpYwgm4qLNalcivu
	1r4M8amDfQ9nopLFOS0mm2rLosHwOWyWEs5PiBGAeyS1xQRRohA8mGaZcw8iY0Nh3Um4IuBBnYN
	mmx6mLcbQ7lYdgdioOjwNJy57SwX50ol4lqoLrQu4iZFEHRsl84=
X-Received: by 2002:a17:90a:da87:b0:2fa:1f1b:3db6 with SMTP id 98e67ed59e1d1-2fce875b1e1mr27083686a91.29.1740476111549;
        Tue, 25 Feb 2025 01:35:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFXI2cvrJrVKemjd3SibfbqUc08kbM1mQxwPvC2ZFCfh6cLWmlluxx8UqPeRlPhYbWspo8iAA==
X-Received: by 2002:a17:90a:da87:b0:2fa:1f1b:3db6 with SMTP id 98e67ed59e1d1-2fce875b1e1mr27083647a91.29.1740476111099;
        Tue, 25 Feb 2025 01:35:11 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fe6a3dec52sm1080770a91.20.2025.02.25.01.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:35:10 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 15:04:04 +0530
Subject: [PATCH v4 07/10] PCI: PCI: Add pcie_is_link_active() to determine
 if the PCIe link is active
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-qps615_v4_1-v4-7-e08633a7bdf8@oss.qualcomm.com>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
In-Reply-To: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740476062; l=3655;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=tBrPYy6jClIwhXSDiDX1gKatD1nRUDkWxKE00LALbY0=;
 b=sWTPo/HUbrUlf1c9OljHc0r9e0NtdVWHAl2VC/CqIrM626UchAmAdMCqJTSBEo8myw9Mz5LL2
 hVhB10xgeJHDYBM33pFrMLBjVlPzzzd0R5tcWBumfucXIME+yDNa6+t
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: PYTryYSsOftZI2HaliIfDrtx_JLl_cyc
X-Proofpoint-ORIG-GUID: PYTryYSsOftZI2HaliIfDrtx_JLl_cyc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_03,2025-02-24_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 spamscore=0 clxscore=1015 mlxlogscore=999
 adultscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250066

Introduce a common API to check if the PCIe link is active, replacing
duplicate code in multiple locations.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/hotplug/pciehp_hpc.c | 13 +------------
 drivers/pci/pci.c                | 26 +++++++++++++++++++++++---
 include/linux/pci.h              |  5 +++++
 3 files changed, 29 insertions(+), 15 deletions(-)

diff --git a/drivers/pci/hotplug/pciehp_hpc.c b/drivers/pci/hotplug/pciehp_hpc.c
index bb5a8d9f03ad..d0a2efebb519 100644
--- a/drivers/pci/hotplug/pciehp_hpc.c
+++ b/drivers/pci/hotplug/pciehp_hpc.c
@@ -234,18 +234,7 @@ static void pcie_write_cmd_nowait(struct controller *ctrl, u16 cmd, u16 mask)
  */
 int pciehp_check_link_active(struct controller *ctrl)
 {
-	struct pci_dev *pdev = ctrl_dev(ctrl);
-	u16 lnk_status;
-	int ret;
-
-	ret = pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &lnk_status);
-	if (ret == PCIBIOS_DEVICE_NOT_FOUND || PCI_POSSIBLE_ERROR(lnk_status))
-		return -ENODEV;
-
-	ret = !!(lnk_status & PCI_EXP_LNKSTA_DLLLA);
-	ctrl_dbg(ctrl, "%s: lnk_status = %x\n", __func__, lnk_status);
-
-	return ret;
+	return pcie_is_link_active(ctrl_dev(ctrl));
 }
 
 static bool pci_bus_check_dev(struct pci_bus *bus, int devfn)
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 869d204a70a3..3d4fe6fefa13 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -4907,7 +4907,6 @@ int pci_bridge_wait_for_secondary_bus(struct pci_dev *dev, char *reset_type)
 		return 0;
 
 	if (pcie_get_speed_cap(dev) <= PCIE_SPEED_5_0GT) {
-		u16 status;
 
 		pci_dbg(dev, "waiting %d ms for downstream link\n", delay);
 		msleep(delay);
@@ -4923,8 +4922,7 @@ int pci_bridge_wait_for_secondary_bus(struct pci_dev *dev, char *reset_type)
 		if (!dev->link_active_reporting)
 			return -ENOTTY;
 
-		pcie_capability_read_word(dev, PCI_EXP_LNKSTA, &status);
-		if (!(status & PCI_EXP_LNKSTA_DLLLA))
+		if (pcie_is_link_active(dev))
 			return -ENOTTY;
 
 		return pci_dev_wait(child, reset_type,
@@ -6219,6 +6217,28 @@ void pcie_print_link_status(struct pci_dev *dev)
 }
 EXPORT_SYMBOL(pcie_print_link_status);
 
+/**
+ * pcie_is_link_active() - Checks if the link is active or not
+ * @pdev: PCI device to query
+ *
+ * Check whether the link is active or not.
+ *
+ * If the config read returns error then return -ENODEV.
+ */
+int pcie_is_link_active(struct pci_dev *pdev)
+{
+	u16 lnk_status;
+	int ret;
+
+	ret = pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &lnk_status);
+	if (ret == PCIBIOS_DEVICE_NOT_FOUND || PCI_POSSIBLE_ERROR(lnk_status))
+		return -ENODEV;
+
+	pci_dbg(pdev, "lnk_status = %x\n", lnk_status);
+	return !!(lnk_status & PCI_EXP_LNKSTA_DLLLA);
+}
+EXPORT_SYMBOL(pcie_is_link_active);
+
 /**
  * pci_select_bars - Make BAR mask from the type of resource
  * @dev: the PCI device for which BAR mask is made
diff --git a/include/linux/pci.h b/include/linux/pci.h
index bbec32be668b..84bb98e61e8a 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1946,6 +1946,7 @@ pci_release_mem_regions(struct pci_dev *pdev)
 			    pci_select_bars(pdev, IORESOURCE_MEM));
 }
 
+int pcie_is_link_active(struct pci_dev *dev);
 #else /* CONFIG_PCI is not enabled */
 
 static inline void pci_set_flags(int flags) { }
@@ -2094,6 +2095,10 @@ pci_alloc_irq_vectors(struct pci_dev *dev, unsigned int min_vecs,
 {
 	return -ENOSPC;
 }
+
+static inline int pcie_is_link_active(struct pci_dev *dev)
+{ return -ENODEV; }
+
 #endif /* CONFIG_PCI */
 
 /* Include architecture-dependent settings and functions */

-- 
2.34.1


