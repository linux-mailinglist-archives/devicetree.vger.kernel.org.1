Return-Path: <devicetree+bounces-133479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5279FAACD
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 07:52:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FFBD165502
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 06:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2ECD190661;
	Mon, 23 Dec 2024 06:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PrImAiqQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1505118FDBC
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 06:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734936701; cv=none; b=GpKceHTmofr83lMvl955VaZl//fL+7aBDn2XfI90Ez/gzKIc9u5Xj2fadSn2VBm5B+ARcezMYJlcOD8sYwgptwzmUqVVf4Xp47IovN/nVHEDL4YHbZtFTcjAigqR0QwpLbfL9MR+ngHd0s7ylpK/eyYN6m/V3ptQZWaRGAwm74Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734936701; c=relaxed/simple;
	bh=BTyoDXzoLq9s40NBa/pshroRWzYAGvXUT/nxju8J8D0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u48zxA3QFvy1HnDRykVj423Nqey6fn3VnpLXlIv0Y3NCj+jPedCt9xnnGl4ApncMi6jm6QSpCdrHnv8bD4OIt63Ax3zZ18HIxur/LcezHbOrKaj9acM+Ufhhr99pZuVnWHS2aWl/XOOUsifljxzyeNIR+IgyWkkIvAp7MTv9kM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PrImAiqQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BN6BYrs020805
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 06:51:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AK+hrs/JALBW0DD9HIign1EsYk4zdtIZIxy745tr+Bk=; b=PrImAiqQFPSBJxK3
	+wfp93jsw/tqnxqeXsWUKGeBe/TG6xQf3G1o5V+GHq0CIvxrH0F+1Kowm+GiLNLs
	1M9fCrk0NUKXL/TqOuwCCyBc8yfLXPFNFz45aaWYDf6UyE2o5uwiVVymTZqLrQ5j
	k2rQazVzVXVYgYDi+yq0Z0MAbEgB6YPyA2Vmkxq3gdM5eVoSNOwzY5W8yu4GKm0N
	xZZ4WZAjM5hl8HvXfDbauCWkuyMpQXnGifqoYsAQqNY4v7Vo+UTwEpQrPPZoz6n7
	9vmFlqg8T6LnX7us4ayFznqyv+SvxAK3SB0Sq7IorZ/J3CP7i+riZE8ZzlIpnV8h
	rXNCkg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q2cm04uv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 06:51:39 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-21650d4612eso54494815ad.2
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 22:51:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734936698; x=1735541498;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AK+hrs/JALBW0DD9HIign1EsYk4zdtIZIxy745tr+Bk=;
        b=XikP8iu2VoLCh02AlzwgaGdmlyvb/uyoZCnAqGYousZL5vDl6cHFcyspTQ0jhTepPa
         nwEWU6BVUikssh0saGycCeXa4eXrKBC/Pblvla+SDqRaFrtME5yDaRqYrUM9HBwTvU8o
         i8ih9jzDwAM1lJTUhU3ql3vzPkQpSG1aUbUHb6MJZiDmQGGZ3B+kip6NMOLxQV3RfkYX
         hhQXgMbpTi4ui/nPcmlYcakCRelV98SyyYBG0w6lXGCDAthrJGVf5zmR5rpiIRn55dCP
         +4tyar/kJP0GHDM78qSUbYkRUm3EA6ucyb8/LRfrfUCe6t65WdQXwzLoiXxzVSWFV8TU
         BdmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEb9UXXe5MIZ3wQez3TLOBm30GxNXMTYEj3wvVGjqgjvsiLOV8TIdh3L460POwtDQfNGN+hGbPr+dU@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk6hUetWpYPWPJl/wCNP4NlJgv2YHELQgmCO1UcT5P+2IRJUJD
	M2qK4RJMVd8x2M8AuCyTEUO2Lovx6nol7u2YciJrysh4INOeDwQKIzxvdX4ddJSsJOqVTBIe5nv
	gVYNt7KliETgtj/CZJwx/ehbVqIG9kSinbDeckzWTApfA4MT0qKQ+md/CJ/mm
X-Gm-Gg: ASbGnct/JgAAg9xqqVu+mPtlnr61E8bRDOkY9CJPGjCpgHo93Um9RmyURBZXs8yOX6l
	YTkDfVsX3s86KVGveWLq2gkFMckXzGF3UhdNsDYk50qvEd73Wo9sTq0KpZ9ISviTrgoHyFmUDPR
	+i1nNyI8b5s8AHYrVD+Pjv/ldwZ+GCbm7OCkfioKLYQhRJuKLMHHCYlp/zFr0ffVZHHtMcJNZw5
	QNeH7x8xp7RINiONLFQHHs4ZHye7IQAY0HpGyudVAItf9jEyek6WYQ6XYw53IdV6cCJLy/G2+J2
	v63nqF2L5orl9VmO
X-Received: by 2002:a17:902:ec85:b0:216:45b9:43ad with SMTP id d9443c01a7336-219e6ed1eefmr150810875ad.34.1734936698303;
        Sun, 22 Dec 2024 22:51:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEmyRzksNnCrLRhxeP2eVQ5twQbsfm7dxy0tN7QPXZbzY5KftXPGqbFNRDaKO+aqvJ521z9Sg==
X-Received: by 2002:a17:902:ec85:b0:216:45b9:43ad with SMTP id d9443c01a7336-219e6ed1eefmr150810435ad.34.1734936697856;
        Sun, 22 Dec 2024 22:51:37 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9f4413sm66570155ad.172.2024.12.22.22.51.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 22:51:37 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 12:21:15 +0530
Subject: [PATCH v3 2/4] PCI: of: Add API to retrieve equalization presets
 from device tree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241223-preset_v2-v3-2-a339f475caf5@oss.qualcomm.com>
References: <20241223-preset_v2-v3-0-a339f475caf5@oss.qualcomm.com>
In-Reply-To: <20241223-preset_v2-v3-0-a339f475caf5@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734936683; l=4075;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=BTyoDXzoLq9s40NBa/pshroRWzYAGvXUT/nxju8J8D0=;
 b=WbEgznFVUiIIA5kOqXb6wHzrGIrLipGcVwfWec9f7V29xYB1V8QAE4wm921/s+il2t/w4zCUF
 4JnRRyWJXUwAhi/RIOS2chQ+iYTPdzo0NH8YNI8CsG+4eBOVnIhVKEc
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: TZ36mIsL1E6iVOxb_TrGFa7OPmYjIlYU
X-Proofpoint-ORIG-GUID: TZ36mIsL1E6iVOxb_TrGFa7OPmYjIlYU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 spamscore=0 phishscore=0 adultscore=0 suspectscore=0
 mlxlogscore=999 impostorscore=0 lowpriorityscore=0 bulkscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412230059

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
 drivers/pci/of.c  | 45 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci.h | 17 +++++++++++++++--
 2 files changed, 60 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index dacea3fc5128..99e0e7ae12e9 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -826,3 +826,48 @@ u32 of_pci_get_slot_power_limit(struct device_node *node,
 	return slot_power_limit_mw;
 }
 EXPORT_SYMBOL_GPL(of_pci_get_slot_power_limit);
+
+int of_pci_get_equalization_presets(struct device *dev,
+				    struct pci_eq_presets *presets,
+				    int num_lanes)
+{
+	char name[20];
+	void **preset;
+	void *temp;
+	int ret;
+
+	if (of_property_present(dev->of_node, "eq-presets-8gts")) {
+		presets->eq_presets_8gts = devm_kzalloc(dev, sizeof(u16) * num_lanes, GFP_KERNEL);
+		if (!presets->eq_presets_8gts)
+			return -ENOMEM;
+
+		ret = of_property_read_u16_array(dev->of_node, "eq-presets-8gts",
+						 presets->eq_presets_8gts, num_lanes);
+		if (ret) {
+			dev_err(dev, "Error reading eq-presets-8gts %d\n", ret);
+			return ret;
+		}
+	}
+
+	for (int i = 1; i < sizeof(struct pci_eq_presets) / sizeof(void *); i++) {
+		snprintf(name, sizeof(name), "eq-presets-%dgts", 8 << i);
+		if (of_property_present(dev->of_node, name)) {
+			temp = devm_kzalloc(dev, sizeof(u8) * num_lanes, GFP_KERNEL);
+			if (!temp)
+				return -ENOMEM;
+
+			ret = of_property_read_u8_array(dev->of_node, name,
+							temp, num_lanes);
+			if (ret) {
+				dev_err(dev, "Error %s %d\n", name, ret);
+				return ret;
+			}
+
+			preset = (void **)((u8 *)presets + i * sizeof(void *));
+			*preset = temp;
+		}
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_pci_get_equalization_presets);
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 14d00ce45bfa..82362d58bedc 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -731,7 +731,12 @@ static inline u64 pci_rebar_size_to_bytes(int size)
 }
 
 struct device_node;
-
+struct pci_eq_presets {
+	void *eq_presets_8gts;
+	void *eq_presets_16gts;
+	void *eq_presets_32gts;
+	void *eq_presets_64gts;
+};
 #ifdef CONFIG_OF
 int of_pci_parse_bus_range(struct device_node *node, struct resource *res);
 int of_get_pci_domain_nr(struct device_node *node);
@@ -746,7 +751,9 @@ void pci_set_bus_of_node(struct pci_bus *bus);
 void pci_release_bus_of_node(struct pci_bus *bus);
 
 int devm_of_pci_bridge_init(struct device *dev, struct pci_host_bridge *bridge);
-
+int of_pci_get_equalization_presets(struct device *dev,
+				    struct pci_eq_presets *presets,
+				    int num_lanes);
 #else
 static inline int
 of_pci_parse_bus_range(struct device_node *node, struct resource *res)
@@ -793,6 +800,12 @@ static inline int devm_of_pci_bridge_init(struct device *dev, struct pci_host_br
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


