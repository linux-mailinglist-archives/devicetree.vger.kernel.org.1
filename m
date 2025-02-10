Return-Path: <devicetree+bounces-144507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FEBA2E56A
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 08:31:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56FE7188A7CB
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 07:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29D071BD00C;
	Mon, 10 Feb 2025 07:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PYGjOplb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BD11BC099
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739172632; cv=none; b=mSVPMjT9tY5kDpfAt6vRHvsMSXKyQeMgAh5TD4oAGVucYnZWiks/16jxullGE2oPOpIvh9EqHF+H5AW9y5fb+M2ZVe3wkr2cetK6k2rrIPTExwr6tMkMgLrPCDcMBBZqQlXzQYAgfo+Ft4tx9Y4WPrhgQ0bPYqHWOSYY1ZmHsfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739172632; c=relaxed/simple;
	bh=Cl4JFaJxDzryIs/mN/kRhxhJFn3c+jBU5lxYfvGD3Bo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RVNP68cyVCKkDZNyxUBAwWSOhRzB6bAWBJBzVYTYgtdH31BPfG/eGHHkzHjtxfOn9gATENZF3tF6RDYgk9Hitj3fi6mw/RoTs2LAdCIojciipwIbnqkeWjUC/hZwDIQMp3DghEa/xipkSjfzpQRK1yR0nRwwinJL0UJ0clkCGNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PYGjOplb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 519LVYOn028752
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:30:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iVMR37ilbhZdZuNg7cIw79Nb+gL8nScpY3WJEBixtSY=; b=PYGjOplbIa5psQWX
	eklcHhcoaaE0w3AavcD11n/kgYB81dOG/A04n6famm8st0EY319HV2FXh8I0iYgr
	xiWG9EfEA1SefObAHyiu+JabyyoJDvzgo4Av1As+lhyqTnfFQ4qdXtB0MprCuQWl
	UfFUlbBTJfzQb4kDUFLa1k0hLZemQ9KDDRDefrL4j1Ur+qdo21DZC3y3O+TQM0H5
	56eQMr9hUkodZVLb+2KlaUqCKotTbnIPBkp+SwMo4f5fkYGKwBRgnxGBXGKXh2+R
	8pE/OHAuaX983JRb0xvkspLHWW/qTBdEeEdANMALJnaF4kg24SvkZRURcbKWCDOH
	XbXZ+w==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0dxkesm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:30:29 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2fa57c42965so2800809a91.1
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 23:30:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739172628; x=1739777428;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iVMR37ilbhZdZuNg7cIw79Nb+gL8nScpY3WJEBixtSY=;
        b=XySBoDqTJ/F7kWUVrN3pP+fU2yulGLowdarMhqo799pPm227d89NMOc3QxKWxtDwzd
         2h9eMR7geqDgObVfOSyCzm0hIJGJhwF3TeHyJrisCakSw9wc8yynYEY5MUzUwogYZzP9
         3qzgsXRz0XdaH7ikwuzNbhhQokn7mS/uh6+J/O6InT3lINgv6593qb5Ewze+N1mT/bnl
         u9yhdrxxU1Wbrm++kmKthUY4Caj2VI5N7qQYQcdXn2WKbjyyenAHRO+ybNF8i61RVqkh
         LxApvGBtdgI5epmEBr9IZ7A46yEo/ZsRK19mCC5QjiLW25067QDjTRmrSsw07oZ74eUM
         xibg==
X-Forwarded-Encrypted: i=1; AJvYcCUY2/CdAR4x/qsFp37EWfY9gktB3b5x7GFvgUJlAD8vfddJxx70TIvHfsDa3ib3TNYm0zuoTRHlg8nT@vger.kernel.org
X-Gm-Message-State: AOJu0YxP3e0t10oqdk6UoI9uLBP2JP5gSlgZcb891qP5izcu8qf7AEeh
	hn+dheYxEDY2Q8e/1KEUfIu6LdTT3hVlGSz53eUBoWoMGbXYky5dAQO62ODCc0DjnvPUQsvNMt1
	A/6tM0/ULdO/Di5ZETtdskiISQJ5q3FiEvcCxL9v9VLFTN9v4jlOXNQVHNXzC
X-Gm-Gg: ASbGncuFeeeWtnCbbu1wZp2mg5ZEl7dJhBFnbq/hrlKuk9x+v1GIVeA/SJIi6jr2T08
	H7XnOeld0cNuMMpko/AgZkvlzqS6KS3ESq372UxccNKbVwLEVQ8UGPA0+06n5drMQY9u6Kw5UBb
	AYVPRNfKFvoMqbYe65cSMWGEeQil0qIhLs+5cFyxfbEmkVvOTCoR7LB0J6rQkYnBiCd8o41v5yJ
	LpYl1bfCSQxxQbdfzTYZXveZBMyAZnvPOatp75eYGjk1Psyp2SqAxR2EtfKnBa+nG2sld58T0Xb
	h4pEBCSN17GmEBiRwHo/OgbTNZVyNrlOe+YjwaGR
X-Received: by 2002:a17:90b:510e:b0:2ef:67c2:4030 with SMTP id 98e67ed59e1d1-2fa242e5c6amr17844364a91.27.1739172627566;
        Sun, 09 Feb 2025 23:30:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSOpMpC2e4JGafXI8GZYwAZg2RfKrZm6bHipHYV3z7/cDG/+8TkM7I1j7eP7ZF+MkJdktefQ==
X-Received: by 2002:a17:90b:510e:b0:2ef:67c2:4030 with SMTP id 98e67ed59e1d1-2fa242e5c6amr17844322a91.27.1739172627161;
        Sun, 09 Feb 2025 23:30:27 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a6fe28sm7918507a91.26.2025.02.09.23.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 23:30:26 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 13:00:01 +0530
Subject: [PATCH v6 2/4] PCI: of: Add API to retrieve equalization presets
 from device tree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-preset_v6-v6-2-cbd837d0028d@oss.qualcomm.com>
References: <20250210-preset_v6-v6-0-cbd837d0028d@oss.qualcomm.com>
In-Reply-To: <20250210-preset_v6-v6-0-cbd837d0028d@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739172612; l=4565;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=Cl4JFaJxDzryIs/mN/kRhxhJFn3c+jBU5lxYfvGD3Bo=;
 b=29acobT21vTWtDtjMxRnTSFmbSUHMbJZyioTJp4qz/b6uRVPm11tg9ouLcyZnkmet8EY4ZcTf
 2XtE1M/RIdsBeT/swGo4AFIdkaL81UHJdRL/eIV6dCSK0tofIkcln6R
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: anhxifi0CaT8kvZYAVoLAt8JqHalD5JA
X-Proofpoint-ORIG-GUID: anhxifi0CaT8kvZYAVoLAt8JqHalD5JA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_04,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 mlxscore=0 phishscore=0
 suspectscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100062

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

Based on the number of lanes and the supported data rate, this function
reads the device tree property and stores in the presets structure.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/of.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci.h | 27 ++++++++++++++++++++++++++-
 2 files changed, 69 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index 7a806f5c0d20..705d5529fa95 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -851,3 +851,46 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
 	return slot_power_limit_mw;
 }
 EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
+
+/**
+ * of_pci_get_equalization_presets - Parses the "eq-presets-ngts" property.
+ *
+ * @dev: Device containing the properties.
+ * @presets: Pointer to store the parsed data.
+ * @num_lanes: Maximum number of lanes supported.
+ *
+ * If the property is present read and store the data in the preset structure
+ * assign default value 0xff to indicate property is not present.
+ *
+ * Return: 0 if the property is not available or successfully parsed; errno otherwise.
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
+		dev_err(dev, "Error reading eq-presets-8gts %d\n", ret);
+		return ret;
+	}
+
+	for (int i = 0; i < EQ_PRESET_TYPE_MAX; i++) {
+		presets->eq_presets_Ngts[i][0] = PCI_EQ_RESV;
+		snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << (i + 1));
+		ret = of_property_read_u8_array(dev->of_node, name,
+						presets->eq_presets_Ngts[i],
+						num_lanes);
+		if (ret && ret != -EINVAL) {
+			dev_err(dev, "Error reading %s %d\n", name, ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_pci_get_equalization_presets);
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 01e51db8d285..e87c2ffd1e85 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -9,6 +9,8 @@ struct pcie_tlp_log;
 /* Number of possible devfns: 0.0 to 1f.7 inclusive */
 #define MAX_NR_DEVFNS 256
 
+#define MAX_NR_LANES 16
+
 #define PCI_FIND_CAP_TTL	48
 
 #define PCI_VSEC_ID_INTEL_TBT	0x1234	/* Thunderbolt */
@@ -808,6 +810,20 @@ static inline u64 pci_rebar_size_to_bytes(int size)
 
 struct device_node;
 
+#define	PCI_EQ_RESV	0xff
+
+enum equalization_preset_type {
+	EQ_PRESET_TYPE_16GTS,
+	EQ_PRESET_TYPE_32GTS,
+	EQ_PRESET_TYPE_64GTS,
+	EQ_PRESET_TYPE_MAX
+};
+
+struct pci_eq_presets {
+	u16 eq_presets_8gts[MAX_NR_LANES];
+	u8 eq_presets_Ngts[EQ_PRESET_TYPE_MAX][MAX_NR_LANES];
+};
+
 #ifdef CONFIG_OF
 int of_get_pci_domain_nr(struct device_node *node);
 int of_pci_get_max_link_speed(struct device_node *node);
@@ -822,7 +838,9 @@ void pci_release_bus_of_node(struct pci_bus *bus);
 
 int devm_of_pci_bridge_init(struct device *dev, struct pci_host_bridge *bridge);
 bool of_pci_supply_present(struct device_node *np);
-
+int of_pci_get_equalization_presets(struct device *dev,
+				    struct pci_eq_presets *presets,
+				    int num_lanes);
 #else
 static inline int
 of_get_pci_domain_nr(struct device_node *node)
@@ -867,6 +885,13 @@ static inline bool of_pci_supply_present(struct device_node *np)
 {
 	return false;
 }
+
+static inline int of_pci_get_equalization_presets(struct device *dev,
+						  struct pci_eq_presets *presets,
+						  int num_lanes)
+{
+	return 0;
+}
 #endif /* CONFIG_OF */
 
 struct of_changeset;

-- 
2.34.1


