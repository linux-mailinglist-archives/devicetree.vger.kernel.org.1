Return-Path: <devicetree+bounces-157877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0BFA633BB
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 05:13:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1533171BC5
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 04:13:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D59717DE2D;
	Sun, 16 Mar 2025 04:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m8ITsgk+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860F31714A5
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 04:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742098169; cv=none; b=WTYTfQaCpPMv0SFUw5RzCBQ66NR7nsdVbG+V/skQD+9yr1wO0dch+S0VbH521f0OH+Y75MGtCxBVa2vOHW13v//eU7asudiic35rgu3HvyV6ql90h0TPcDz+mk3lgizc/xJvU9B15h8njwGxG5WXOI24nqYatICcu4FUCtkvk+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742098169; c=relaxed/simple;
	bh=yWEF9FfgSMro3JM5NRtiJnP4N/6t+P4l+2CN6d00taU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bexKf8SxFzgDapNEddrSP/7WNCfxyzy/4hOmF/ttx6blyEJ6OpLrPdsYl8jG5C8E6LAzbHawxzYIcysCzKTV5xPJG4NmcvWdNdF79PztEyDRT8k8NuNwAzs2jd6T3/KkVyJOAbk88KwhT20FC/cOXxU91E5BBoEQbAidm/CMcsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m8ITsgk+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52G2IR8A007401
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 04:09:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xv8zfW7Cre35JOZesm+apeptzfBIC/xE7UmrikMqnrs=; b=m8ITsgk+nQmkl5/P
	RpyTK/hzvSLFomwunMnLhJm2a8D4WrYFK30ssfw6T8+imOWRWWjjWFEmXlCAeS4q
	Uew8BzpA0AwpO3SmtM7nXi1Eh7ss5/qz4DD4oRTuX2KLAY7xYSavsT3BbPDSwZHC
	VXZu5Ekle+UWijhi2ZJwPUI999H+W5jX4a0SVrh5RsLx9P9gwIyucnLJMouSt8j+
	VMvRu/rkmyz4/EHNkQ+0bF5KN2KUuQwtiqi4Jelx7slWzow3MVxYjO2VfNdZ/Y4H
	JIfHnoQ526KcW3wo3c98tGbA91nZDAXoa08pNt5X/jlsoWcPYfDtQxqazRyTPJyt
	uGbbvQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1u89pbw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 04:09:26 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2ff62f96b10so1179388a91.0
        for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 21:09:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742098166; x=1742702966;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xv8zfW7Cre35JOZesm+apeptzfBIC/xE7UmrikMqnrs=;
        b=nTf2fCr6H0tafyTzjnCvzLKMhkRQeWjR6pGAhIM9Vkg1j+3sVTHYo+yJOrUCwKdSFb
         X4BYHxd0GHbDH3SEUBMXGkKttivtkeM7gg5OfRQHll1zNYIUxW3D1hpIxqcgEKwo9lWF
         GgxbxwFXPArtDzK8sc6GwYntBhXET2XP/Zi1HOL/d/gMQRquIisOrOusVBsbrxB8EuqO
         1proQLATIAfwtlFb2wzKGQbvM5GU7qm6zWwlCHm5RSd+cIrlffNIHMpGODtL5xNuI5jd
         wz5yYfFAMUNXwh9lM9+1J3XBP+tdXed0zn4KWR+bTe8IkXbl2yFds/6N5rueBafw3vCs
         4s/A==
X-Forwarded-Encrypted: i=1; AJvYcCXb+CJExlOdKGY70XPIJ43DRS4ipK7jlOtN0zq+FYwbrrzXQM9mttFKoQwXSkohUFIZKvlsmXEHluTN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5jhiD4S1an4AANz8bqkHgVT6h6HR0pmejl+wsQ2wexPxXrXrL
	CVlukTqccShByBa8GUiOHvf+bVYAbY3a9dFkgurlcEDT/QQm/xhGzNamWRf1AF7mojtjFW2hHZm
	9eV0LGKbd0uxQJCP469YoXwScj6r+tzaBbQYrvODW7GmEtMgpXG+i5rk6A1Nw
X-Gm-Gg: ASbGncskn118wv9wgUQKejOppSBKvgg7x0igpvQaWMiMn+djug7HVeKqazVb5GGRrNK
	l/LV+fiacwvVeQw6rSyB3lsyYq3cnvrgqxJrlX2pcv6u/lbhOSQLaHv5e/nkTv+ufdqrlgkG2aF
	m5DVgkpXfwClXoctfF0/6iSTIYjhfXMwlb94MWyJe2Oi1Oqt56IoZnEwmU0EGU7HqO9zdiYqd8G
	Htz/fbuYeHKMOlCddiEBGl2kNCtZod2i/S4hvjg8ma2fMcX8Felu+nwdWyjEn1G7RqgPb7VW2xu
	e35VqJms7OT7p47YI5gqwnWBv2qLu7nywli20XT65zp1KdMYwI4=
X-Received: by 2002:a17:90b:510a:b0:2ff:71d2:ee8f with SMTP id 98e67ed59e1d1-301521898famr10037131a91.13.1742098165667;
        Sat, 15 Mar 2025 21:09:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCsyQGnpG/KNnJzpYYHHg0cCT+aZytNQyvAeXV6GvZpDMgTC5X+RQsIaPJNXCJm/kzj/KrDg==
X-Received: by 2002:a17:90b:510a:b0:2ff:71d2:ee8f with SMTP id 98e67ed59e1d1-301521898famr10037108a91.13.1742098165287;
        Sat, 15 Mar 2025 21:09:25 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30153bc301esm3490438a91.49.2025.03.15.21.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Mar 2025 21:09:24 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 16 Mar 2025 09:39:02 +0530
Subject: [PATCH v8 2/4] PCI: of: Add of_pci_get_equalization_presets() API
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250316-preset_v6-v8-2-0703a78cb355@oss.qualcomm.com>
References: <20250316-preset_v6-v8-0-0703a78cb355@oss.qualcomm.com>
In-Reply-To: <20250316-preset_v6-v8-0-0703a78cb355@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_mrana@quicinc.com, quic_vbadigan@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742098148; l=4772;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=yWEF9FfgSMro3JM5NRtiJnP4N/6t+P4l+2CN6d00taU=;
 b=NGc/RmBhUgLQXkNdt0OR+6NVIFWUh318ktCccy0DjG5ZPKPXD57krkeoNHzu3+yll7nHuiNoE
 V9G0dKJJi1WBwrre/S8ORrKCyc9DtJ7rzuPX38C+O+RvwUYexJC38lA
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: KrGFxQGyAT8DUIG61GxGRN2I2WSJWmtz
X-Authority-Analysis: v=2.4 cv=c42rQQ9l c=1 sm=1 tr=0 ts=67d64ef6 cx=c_pps a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=C2froRUT8Woxtj4mbF0A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: KrGFxQGyAT8DUIG61GxGRN2I2WSJWmtz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-16_01,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=999 priorityscore=1501 suspectscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503160029

PCIe equalization presets are predefined settings used to optimize
signal integrity by compensating for signal loss and distortion in
high-speed data transmission.

As per PCIe spec 6.0.1 revision section 8.3.3.3 & 4.2.4 for data rates
of 8.0 GT/s, 16.0 GT/s, 32.0 GT/s, and 64.0 GT/s, there is a way to
configure lane equalization presets for each lane to enhance the PCIe
link reliability. Each preset value represents a different combination
of pre-shoot and de-emphasis values. For each data rate, different
registers are defined: for 8.0 GT/s, registers are defined in section
7.7.3.4; for 16.0 GT/s, in section 7.7.5.9, etc. The 8.0 GT/s rate has
an extra receiver preset hint, requiring 16 bits per lane, while the
remaining data rates use 8 bits per lane.

Based on the number of lanes and the supported data rate,
of_pci_get_equalization_presets() reads the device tree property and
stores in the presets structure.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/of.c  | 44 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci.h | 32 +++++++++++++++++++++++++++++++-
 2 files changed, 75 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index 7a806f5c0d20..18691483e108 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -851,3 +851,47 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
 	return slot_power_limit_mw;
 }
 EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
+
+/**
+ * of_pci_get_equalization_presets - Parses the "eq-presets-Ngts" property.
+ *
+ * @dev: Device containing the properties.
+ * @presets: Pointer to store the parsed data.
+ * @num_lanes: Maximum number of lanes supported.
+ *
+ * If the property is present, read and store the data in the @presets structure.
+ * Else, assign a default value of PCI_EQ_RESV.
+ *
+ * Return: 0 if the property is not available or successfully parsed else
+ * errno otherwise.
+ */
+int of_pci_get_equalization_presets(struct device *dev,
+				    struct pci_eq_presets *presets,
+				    int num_lanes)
+{
+	char name[20];
+	int ret;
+
+	presets->eq_presets_8gts[0] = PCI_EQ_RESV;
+	ret = of_property_read_u16_array(dev->of_node, "eq-presets-8gts",
+					 presets->eq_presets_8gts, num_lanes);
+	if (ret && ret != -EINVAL) {
+		dev_err(dev, "Error reading eq-presets-8gts :%d\n", ret);
+		return ret;
+	}
+
+	for (int i = 0; i < EQ_PRESET_TYPE_MAX - 1; i++) {
+		presets->eq_presets_Ngts[i][0] = PCI_EQ_RESV;
+		snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << (i + 1));
+		ret = of_property_read_u8_array(dev->of_node, name,
+						presets->eq_presets_Ngts[i],
+						num_lanes);
+		if (ret && ret != -EINVAL) {
+			dev_err(dev, "Error reading %s :%d\n", name, ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_pci_get_equalization_presets);
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 01e51db8d285..78c9cc0ad8fa 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -9,6 +9,8 @@ struct pcie_tlp_log;
 /* Number of possible devfns: 0.0 to 1f.7 inclusive */
 #define MAX_NR_DEVFNS 256
 
+#define MAX_NR_LANES 16
+
 #define PCI_FIND_CAP_TTL	48
 
 #define PCI_VSEC_ID_INTEL_TBT	0x1234	/* Thunderbolt */
@@ -808,6 +810,21 @@ static inline u64 pci_rebar_size_to_bytes(int size)
 
 struct device_node;
 
+#define PCI_EQ_RESV	0xff
+
+enum equalization_preset_type {
+	EQ_PRESET_TYPE_8GTS,
+	EQ_PRESET_TYPE_16GTS,
+	EQ_PRESET_TYPE_32GTS,
+	EQ_PRESET_TYPE_64GTS,
+	EQ_PRESET_TYPE_MAX
+};
+
+struct pci_eq_presets {
+	u16 eq_presets_8gts[MAX_NR_LANES];
+	u8 eq_presets_Ngts[EQ_PRESET_TYPE_MAX - 1][MAX_NR_LANES];
+};
+
 #ifdef CONFIG_OF
 int of_get_pci_domain_nr(struct device_node *node);
 int of_pci_get_max_link_speed(struct device_node *node);
@@ -822,7 +839,9 @@ void pci_release_bus_of_node(struct pci_bus *bus);
 
 int devm_of_pci_bridge_init(struct device *dev, struct pci_host_bridge *bridge);
 bool of_pci_supply_present(struct device_node *np);
-
+int of_pci_get_equalization_presets(struct device *dev,
+				    struct pci_eq_presets *presets,
+				    int num_lanes);
 #else
 static inline int
 of_get_pci_domain_nr(struct device_node *node)
@@ -867,6 +886,17 @@ static inline bool of_pci_supply_present(struct device_node *np)
 {
 	return false;
 }
+
+static inline int of_pci_get_equalization_presets(struct device *dev,
+						  struct pci_eq_presets *presets,
+						  int num_lanes)
+{
+	presets->eq_presets_8gts[0] = PCI_EQ_RESV;
+	for (int i = 0; i < EQ_PRESET_TYPE_MAX - 1; i++)
+		presets->eq_presets_Ngts[i][0] = PCI_EQ_RESV;
+
+	return 0;
+}
 #endif /* CONFIG_OF */
 
 struct of_changeset;

-- 
2.34.1


