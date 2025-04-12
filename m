Return-Path: <devicetree+bounces-166230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC309A86A46
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 03:54:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA8B419E375E
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 01:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9FB31448E3;
	Sat, 12 Apr 2025 01:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j3zymVUJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB2317BA1
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744422672; cv=none; b=UQFvq0ScB35Ew41JPCO6Wf+2nHhz1MgpXVxB+9dC1WMBd0Y8HdN2599JGvbJmXGxSawFQOrMAD4kTrso3U94P5mpJ2EPHX4uG1+gnwsfGGe2KJ9SFbglQ0k0V0VXrwitMZrESmkjT0aKiaLgstA1JoyVleXExMZhIuYCdHZzpKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744422672; c=relaxed/simple;
	bh=bIEBVjy9Ps3Bs5Az3H0qcu88DFS+DOGxuF1ReT7QAPs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pkjrg+Eyq2ZFPx8Ofh90I+tnf52TFoovSCAtz6j3yRn3gBCx5bxmXMgO+UDXS/HZEbHfsC2zmzAzXGg8smKICcgx3uvmE7E+zqYXNgK8w4XQpvlniPvf+nmZjEJCgGS+aZrtk1bX8mShm+b7C+vTV+/NKaaTHg2BkOWvwjfkA4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j3zymVUJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53C1pAmG006726
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:51:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qFeUaRiZMw95gdUKeUk+yYq0GTBUKJA4HO3FTl0Ch3s=; b=j3zymVUJIibc+7Ng
	oaEPWaizfvfgRtv+5PhyZ9mWsEHnzZh09WOXkfNntVA7VwYk2Kim7/t26Bz555wm
	X1JD6L3cHy00xIK+PWL5/2TmTjtEuYEA4RpP36xmSukbkO0ziUcy6b0pE1H9EoZg
	YjPZPPUxfJWk8kcp1ibpc69o4PP+vyvM4kmDMEgVTqbItt+Lcgy0hG5TixOom5Xk
	4en1LR+uBExgOTjo8jWc9TQZh5fUmjTMW6SJd5PeAVSVLpmbEbSzeZSpIBUedk58
	DAib7ep03Y2+IsLfybGMS8dhpk5EmTmqWQsDYJoiG23sRztbabKyny5nRwrP8cay
	XUmm2A==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd341yn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 12 Apr 2025 01:51:09 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7377139d8b1so1915710b3a.0
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 18:51:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744422654; x=1745027454;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qFeUaRiZMw95gdUKeUk+yYq0GTBUKJA4HO3FTl0Ch3s=;
        b=YPHwwmHJsnCV8NGpz+WxUVpZhscNv8hoo5GWlkQyYgW/lVl/zJfonB4lOXHupLAPLW
         SVKVaGZHG6rmA3nwbVzc6E948YwNEP17/IL9SbBiCMFX6fjcxpSkJP1I6lUJ49yvZbJ3
         R47jozY6gPoEzTmptE3K8LQP/VSNhg1NN4T+0zhRGEf4mSeo+sYXj7pRT33DRzwpmiip
         /0uado6ORbfSI9B+SAJVSD7xYUzZKk0d+QyNrvE3Hhckh56WyI2ESVMnuZ3SYPC1XbrI
         lN+jKr11IYFfIzaUjdmQgD4cG3fgmc9UWue4ChSQi9vPO2maY4v3LJPWpl0dxBodoVU+
         CAoA==
X-Forwarded-Encrypted: i=1; AJvYcCU3oxDK3RqLbbrVgneQ9zbt7PfIyDezBTkpo0QXZNVNmODeegjqX1RphLChBVS7uYv/1VLStyAlF+XE@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0Kf9uzzYTopCaPyNCsDyiF4AOh27BFSFXWzifzzIS3PkJ3rRX
	TrgooshRxOXVspD/kcjR+/xGSSVEDb5bLc/fu162PTub/jG9XzIjs7kfPB+c0nZcfRGCliACdI6
	tV/82T6JW3u81IdDV2PUaFJaEuaTnwjGcQyiul29YJyB3WjmiWPNyKkhD/FXS
X-Gm-Gg: ASbGncuN3ZUmpayKToCZ8AknC6YdxeZRE1G/tRo8QMUQVenx4d/Wlw93FMw/p2/bwmn
	0ThB5y53biiDJbpxG1SRsXOXGgzIfOCfXAE41NdSUCIAAfiqih5Pdklv1+bvvSVeFHgCiXeD0gS
	NQBFjCWZkenGcIg60uTzUTsiJrj1PvTVnE2ol9Yok74Qg/eIDA5a3qsZZNnEv3Gu6hZ2As78Zix
	hOjMF3hjlRWrVgRYLxe3dh1bnv7DaBCS1aPGk9pxlc+gVAIkwFW/iaphsURZZsCzRYXNGyCnfGi
	EaqK0lJS4Ns8/CoxEwwiL9biIud452/qH8v0wMm9ZCclw2A=
X-Received: by 2002:a05:6a00:1388:b0:739:56c2:b661 with SMTP id d2e1a72fcca58-73bd1203098mr6999385b3a.12.1744422654116;
        Fri, 11 Apr 2025 18:50:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEviRTBK5DZGcJJTgPEl0lFpmQZ5SGJAey7iNqvYjght/SAinY2nKvN4JeaBM1l1ukmlkmjLw==
X-Received: by 2002:a05:6a00:1388:b0:739:56c2:b661 with SMTP id d2e1a72fcca58-73bd1203098mr6999358b3a.12.1744422653631;
        Fri, 11 Apr 2025 18:50:53 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a3221832sm5516825a12.70.2025.04.11.18.50.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 18:50:53 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 12 Apr 2025 07:19:56 +0530
Subject: [PATCH v5 7/9] PCI: PCI: Add pcie_link_is_active() to determine if
 the PCIe link is active
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250412-qps615_v4_1-v5-7-5b6a06132fec@oss.qualcomm.com>
References: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
In-Reply-To: <20250412-qps615_v4_1-v5-0-5b6a06132fec@oss.qualcomm.com>
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
Cc: quic_vbadigan@quicnic.com, amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744422605; l=7044;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=bIEBVjy9Ps3Bs5Az3H0qcu88DFS+DOGxuF1ReT7QAPs=;
 b=qk2+PMsvx0JqWyt3SQiJcR2gbCvgKSF3VLo3erR5A3PKGX2bLKLsk1stMxJXgO5ndWUtiPxoN
 8NUE9KJpkoMCVGClilvZ4wob1PbEtVuzJpmSpsMNvJ7ckPfkwzDiNHD
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: m0p2gRLTwJ2vnUBDe1KuMR_-LGGEfu46
X-Proofpoint-GUID: m0p2gRLTwJ2vnUBDe1KuMR_-LGGEfu46
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f9c70e cx=c_pps a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=DLE-xEQoUa54y48t:21 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=c8k0nbeVto6RhVnl1UYA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-12_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504120012

Introduce a common API to check if the PCIe link is active, replacing
duplicate code in multiple locations.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/hotplug/pciehp.h      |  1 -
 drivers/pci/hotplug/pciehp_ctrl.c |  7 ++++---
 drivers/pci/hotplug/pciehp_hpc.c  | 33 +++------------------------------
 drivers/pci/pci.c                 | 26 +++++++++++++++++++++++---
 include/linux/pci.h               |  4 ++++
 5 files changed, 34 insertions(+), 37 deletions(-)

diff --git a/drivers/pci/hotplug/pciehp.h b/drivers/pci/hotplug/pciehp.h
index 273dd8c66f4eff8b62ab065cebf97db3c343977d..acef728530e36d6ea4d7db3afe97ed31b85be064 100644
--- a/drivers/pci/hotplug/pciehp.h
+++ b/drivers/pci/hotplug/pciehp.h
@@ -186,7 +186,6 @@ int pciehp_query_power_fault(struct controller *ctrl);
 int pciehp_card_present(struct controller *ctrl);
 int pciehp_card_present_or_link_active(struct controller *ctrl);
 int pciehp_check_link_status(struct controller *ctrl);
-int pciehp_check_link_active(struct controller *ctrl);
 void pciehp_release_ctrl(struct controller *ctrl);
 
 int pciehp_sysfs_enable_slot(struct hotplug_slot *hotplug_slot);
diff --git a/drivers/pci/hotplug/pciehp_ctrl.c b/drivers/pci/hotplug/pciehp_ctrl.c
index d603a7aa74838c748f6ac2d22ffb8b8cfe64e469..36468a9c31d669ec916e867ecfb7a8220cfab157 100644
--- a/drivers/pci/hotplug/pciehp_ctrl.c
+++ b/drivers/pci/hotplug/pciehp_ctrl.c
@@ -230,7 +230,8 @@ void pciehp_handle_disable_request(struct controller *ctrl)
 
 void pciehp_handle_presence_or_link_change(struct controller *ctrl, u32 events)
 {
-	int present, link_active;
+	bool link_active;
+	int present;
 
 	/*
 	 * If the slot is on and presence or link has changed, turn it off.
@@ -260,8 +261,8 @@ void pciehp_handle_presence_or_link_change(struct controller *ctrl, u32 events)
 	/* Turn the slot on if it's occupied or link is up */
 	mutex_lock(&ctrl->state_lock);
 	present = pciehp_card_present(ctrl);
-	link_active = pciehp_check_link_active(ctrl);
-	if (present <= 0 && link_active <= 0) {
+	link_active = pcie_link_is_active(ctrl->pcie->port);
+	if (present <= 0 && !link_active) {
 		if (ctrl->state == BLINKINGON_STATE) {
 			ctrl->state = OFF_STATE;
 			cancel_delayed_work(&ctrl->button_work);
diff --git a/drivers/pci/hotplug/pciehp_hpc.c b/drivers/pci/hotplug/pciehp_hpc.c
index 8a09fb6083e27669a12f1a3bb2a550369d471d16..278bc21d531dd20a38e06e5d33f5ccd18131c2c3 100644
--- a/drivers/pci/hotplug/pciehp_hpc.c
+++ b/drivers/pci/hotplug/pciehp_hpc.c
@@ -221,33 +221,6 @@ static void pcie_write_cmd_nowait(struct controller *ctrl, u16 cmd, u16 mask)
 	pcie_do_write_cmd(ctrl, cmd, mask, false);
 }
 
-/**
- * pciehp_check_link_active() - Is the link active
- * @ctrl: PCIe hotplug controller
- *
- * Check whether the downstream link is currently active. Note it is
- * possible that the card is removed immediately after this so the
- * caller may need to take it into account.
- *
- * If the hotplug controller itself is not available anymore returns
- * %-ENODEV.
- */
-int pciehp_check_link_active(struct controller *ctrl)
-{
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
-}
-
 static bool pci_bus_check_dev(struct pci_bus *bus, int devfn)
 {
 	u32 l;
@@ -467,7 +440,7 @@ int pciehp_card_present_or_link_active(struct controller *ctrl)
 	if (ret)
 		return ret;
 
-	return pciehp_check_link_active(ctrl);
+	return pcie_link_is_active(ctrl_dev(ctrl));
 }
 
 int pciehp_query_power_fault(struct controller *ctrl)
@@ -584,7 +557,7 @@ static void pciehp_ignore_dpc_link_change(struct controller *ctrl,
 	 * Synthesize it to ensure that it is acted on.
 	 */
 	down_read_nested(&ctrl->reset_lock, ctrl->depth);
-	if (!pciehp_check_link_active(ctrl))
+	if (!pcie_link_is_active(ctrl_dev(ctrl)))
 		pciehp_request(ctrl, PCI_EXP_SLTSTA_DLLSC);
 	up_read(&ctrl->reset_lock);
 }
@@ -884,7 +857,7 @@ int pciehp_slot_reset(struct pcie_device *dev)
 	pcie_capability_write_word(dev->port, PCI_EXP_SLTSTA,
 				   PCI_EXP_SLTSTA_DLLSC);
 
-	if (!pciehp_check_link_active(ctrl))
+	if (!pcie_link_is_active(ctrl_dev(ctrl)))
 		pciehp_request(ctrl, PCI_EXP_SLTSTA_DLLSC);
 
 	return 0;
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 4d7c9f64ea24ec754a135a2585c99489cfa641a9..d14cd6843a020f2cec3e4cc36522526cf1faf0ba 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -4926,7 +4926,6 @@ int pci_bridge_wait_for_secondary_bus(struct pci_dev *dev, char *reset_type)
 		return 0;
 
 	if (pcie_get_speed_cap(dev) <= PCIE_SPEED_5_0GT) {
-		u16 status;
 
 		pci_dbg(dev, "waiting %d ms for downstream link\n", delay);
 		msleep(delay);
@@ -4942,8 +4941,7 @@ int pci_bridge_wait_for_secondary_bus(struct pci_dev *dev, char *reset_type)
 		if (!dev->link_active_reporting)
 			return -ENOTTY;
 
-		pcie_capability_read_word(dev, PCI_EXP_LNKSTA, &status);
-		if (!(status & PCI_EXP_LNKSTA_DLLLA))
+		if (!pcie_link_is_active(dev))
 			return -ENOTTY;
 
 		return pci_dev_wait(child, reset_type,
@@ -6251,6 +6249,28 @@ void pcie_print_link_status(struct pci_dev *dev)
 }
 EXPORT_SYMBOL(pcie_print_link_status);
 
+/**
+ * pcie_link_is_active() - Checks if the link is active or not
+ * @pdev: PCI device to query
+ *
+ * Check whether the link is active or not.
+ *
+ * Return: true if link is active.
+ */
+bool pcie_link_is_active(struct pci_dev *pdev)
+{
+	u16 lnk_status;
+	int ret;
+
+	ret = pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &lnk_status);
+	if (ret == PCIBIOS_DEVICE_NOT_FOUND || PCI_POSSIBLE_ERROR(lnk_status))
+		return false;
+
+	pci_dbg(pdev, "lnk_status = %x\n", lnk_status);
+	return !!(lnk_status & PCI_EXP_LNKSTA_DLLLA);
+}
+EXPORT_SYMBOL(pcie_link_is_active);
+
 /**
  * pci_select_bars - Make BAR mask from the type of resource
  * @dev: the PCI device for which BAR mask is made
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 09cda518350c8ea86bf1c6bd64ed8d67e774c8df..2c34302dc5bb73aa2f9e3bd02c12684d8b6856d9 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1945,6 +1945,7 @@ pci_release_mem_regions(struct pci_dev *pdev)
 			    pci_select_bars(pdev, IORESOURCE_MEM));
 }
 
+bool pcie_link_is_active(struct pci_dev *dev);
 #else /* CONFIG_PCI is not enabled */
 
 static inline void pci_set_flags(int flags) { }
@@ -2093,6 +2094,9 @@ pci_alloc_irq_vectors(struct pci_dev *dev, unsigned int min_vecs,
 {
 	return -ENOSPC;
 }
+
+static inline bool pcie_link_is_active(struct pci_dev *dev)
+{ return false; }
 #endif /* CONFIG_PCI */
 
 /* Include architecture-dependent settings and functions */

-- 
2.34.1


