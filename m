Return-Path: <devicetree+bounces-141354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE501A20776
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 10:38:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A710165396
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 09:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5A9219DF44;
	Tue, 28 Jan 2025 09:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VgOObJ2o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C3119D8A2
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738057083; cv=none; b=NMdCmaOKmTHBbXhcOIJ+CPvs1r9A4b7+WU9vbIypaCh/hBEmdYxHH8P5NWu41yEkl0cQI/2OlYJQeR3tWeVbXNlNWEyuG+KnuIqpbfSZ0JVDAG/rxZeK+ROs6q6U7ItOB7aPgQ/tUntXgM/1eO2fqWm1TwpiFvhUHz4WOyf9RvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738057083; c=relaxed/simple;
	bh=TGay/ms07m+y9zjJNHgOuatl35sTzD0up2JKOYY0A7E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SCXM/8dwbHLf48nu+1ifxC4LgKorBIfakBxBYg7GYp/XdXJ4YeEkPNWPjVJdMz3reYdjeYd0HjEUsy4rJj1jHTjX4Bxra5BrWbhTKaoNtA27qnZVxI6XUYwzAPw645sTI3f/IUl5jRAp7S6Bhm8OGqINeIgfdUf/0+URMuh/gQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VgOObJ2o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50S9RcZn007136
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:38:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rxlAIbzt8Vr0dzxxhNrxsNUaklYUf2WYE46ISApfaPE=; b=VgOObJ2oftikIOAj
	suhZn8JTdJQmK143dbpREiqwislkcAzRRXypW6sjNEw6Mv/75ryIQaEyv/KcJgpW
	nAoCzgt9uuPnLptAg3CRbaDzoXLPBBgYaNwo0oShCA5cexhoxoxQTGdjdloYHA1h
	5UUWI5zdyfX93IQStBwYc49/IeoxdEILBTdTmVes1HKT5loBftEabAe/ZuSOTxyi
	QGtzSHbzzpiZf7rlyLDxa6FgBOsYVdbwyyRck/k3fTkLA+npKwIhDRfH1PVVy2ep
	QMFpmnaSSA8go54F0Fz1fry2ECS/vK7nDsZceeQCakcozrLTjJRIfjQf7AmaY1wE
	SombKg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ed5g9wt3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:38:01 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2ef91d5c863so11199617a91.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 01:38:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738057080; x=1738661880;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rxlAIbzt8Vr0dzxxhNrxsNUaklYUf2WYE46ISApfaPE=;
        b=Jbv90igIXhPY6DIOA8dpNFaPU+l2pFWONsXZV97oWw5iwiBC0GPZk8tNfx72VbSmI2
         N3sTgSQ1fyRO8L2Kf1nboIJdVvWIz+ba8jWmBi91LgGhqlcW67MnjItATLhBME6loPRt
         hqjTyVlbJJWsycQB7Sl0sxnGbwpFjVHtGtFjyr4XKwTsV1EI5doJhoanYkIW0RWrh8eB
         NXJlIW+UEXNIPn6aRh0oLxbzG/gKWkhsNJesgTzr/LY1iPcYotS9TygVrwb2UpIOeoaO
         eAcSZqXGJulZC3rtgnlKloqhFp4wQoiiGsw0S2hd1NBdWvfipW51E9DuIko8acgzXxpt
         0Jcg==
X-Forwarded-Encrypted: i=1; AJvYcCXOmNde87ULpJ+i+iHrMLXUj0DM4F8w8s+EibyIGMsIGOm5/NtWNTDAxprUxBPnURP4lgOh9U/8DctD@vger.kernel.org
X-Gm-Message-State: AOJu0YzNfUtBi2i01NIqJF56RTSl1cgRQVfx5sS1dLbQYdQzhXyIcHyU
	Nvgo/uPvFnNh9kvqr7hXHFDob67bciG4r3qHRNedoSMGi3tErLqjft3i/4xHTgUZI+zE4kgpI8D
	N7KQ1hwA+XHPVhKP2PSqE1U5qe86/uXO0J+zPQ7vMgV+TKzMYjjzi25nF0oR4SRpQ5YZv
X-Gm-Gg: ASbGncsCxczwxWWV0LvUiY1ODONgw5K2QBu859spW8APfyQ3yRe3tdj7rOD689Kd78Z
	2549UopkpvMBaoKNCubyd/eQFVRnT6LsqxRaEJFqrWH+gWKfh2AyelYzC5cXeLf+glVD20WJyp+
	GW/cN/WxvvtgrEO+mF/emHzTdSCuGI6aKmCgj7eO1XV1+W3ZLREqcxDRgu1qgsnI+zSySjpcZkp
	7x9fYKDf/xjoSOTsR+ZoKfQ+dv/fROIJnns+DZoYaimmN8+q1UzO2ImLIha4pwZl9y2Pvzghm3H
	3o9cm3mlB6JrdsH7XH/BEJROVYOg/f/Yan2pc8MV
X-Received: by 2002:a17:90a:c883:b0:2ee:db8a:29f0 with SMTP id 98e67ed59e1d1-2f782d307bemr60669562a91.27.1738057080194;
        Tue, 28 Jan 2025 01:38:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/W32LARVaT98M7eGQaibLCxjVyDe4GPNQjsm0HAph9aB0GWABaluoxt4Re1G+cepsUIbb5g==
X-Received: by 2002:a17:90a:c883:b0:2ee:db8a:29f0 with SMTP id 98e67ed59e1d1-2f782d307bemr60669541a91.27.1738057079811;
        Tue, 28 Jan 2025 01:37:59 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa456absm9749501a91.2.2025.01.28.01.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 01:37:59 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 15:07:40 +0530
Subject: [PATCH v5 2/4] PCI: of: Add API to retrieve equalization presets
 from device tree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250128-preset_v2-v5-2-4d230d956f8c@oss.qualcomm.com>
References: <20250128-preset_v2-v5-0-4d230d956f8c@oss.qualcomm.com>
In-Reply-To: <20250128-preset_v2-v5-0-4d230d956f8c@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com,
        quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738057065; l=4552;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=TGay/ms07m+y9zjJNHgOuatl35sTzD0up2JKOYY0A7E=;
 b=fnzy8VtACyr0idXou2EqUam17uaKrrzxFsm7lx1gDobN243LChUtg/IaK7LgOvM1W2Z8URkMH
 zpe0OVV7wX2CzvGpJHIllzwTx1kh7YRmsHsqAFaP4qMXWsmDWacU4G1
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: NQfE7x5k5Xd1LfNZ95jRlAv_4cqvKRCB
X-Proofpoint-ORIG-GUID: NQfE7x5k5Xd1LfNZ95jRlAv_4cqvKRCB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_03,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=999 impostorscore=0 clxscore=1015 spamscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 mlxscore=0
 lowpriorityscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501280074

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
 drivers/pci/pci.h | 26 +++++++++++++++++++++++++-
 2 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index dacea3fc5128..835ffefb9741 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -826,3 +826,46 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
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
+ * If the property is not found or is invalid, returns 0.
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
+			dev_err(dev, "Error %s %d\n", name, ret);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_pci_get_equalization_presets);
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 14d00ce45bfa..1070b10751db 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -7,6 +7,8 @@
 /* Number of possible devfns: 0.0 to 1f.7 inclusive */
 #define MAX_NR_DEVFNS 256
 
+#define MAX_NR_LANES 16
+
 #define PCI_FIND_CAP_TTL	48
 
 #define PCI_VSEC_ID_INTEL_TBT	0x1234	/* Thunderbolt */
@@ -732,6 +734,20 @@ static inline u64 pci_rebar_size_to_bytes(int size)
 
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
 int of_pci_parse_bus_range(struct device_node *node, struct resource *res);
 int of_get_pci_domain_nr(struct device_node *node);
@@ -746,7 +762,9 @@ void pci_set_bus_of_node(struct pci_bus *bus);
 void pci_release_bus_of_node(struct pci_bus *bus);
 
 int devm_of_pci_bridge_init(struct device *dev, struct pci_host_bridge *bridge);
-
+int of_pci_get_equalization_presets(struct device *dev,
+				    struct pci_eq_presets *presets,
+				    int num_lanes);
 #else
 static inline int
 of_pci_parse_bus_range(struct device_node *node, struct resource *res)
@@ -793,6 +811,12 @@ static inline int devm_of_pci_bridge_init(struct device *dev, struct pci_host_br
 	return 0;
 }
 
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


