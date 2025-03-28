Return-Path: <devicetree+bounces-161548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FF1A7484E
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 11:30:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 89A1F7A78DF
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 10:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D93421CC48;
	Fri, 28 Mar 2025 10:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FjG5K+U9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AFD21CA13
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 10:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743157765; cv=none; b=k/+RVDK7qC5EGgHFZhoWxePYDXj5tX1SYyEzONiuwaFK7ce1dKON9pUi+Bm1VHBrLAati+DwTJk3RcAXmy1TqmITrSGzT9zlyg97NfZrhV9Q4zDQ53+owJRUUrsAWMTdiuxgg52jizy76NaYjDLD4jqb5Tjo7wYsfaAX5a0LR6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743157765; c=relaxed/simple;
	bh=U7DWrCD6EQXqUQIkpwerhpxSQhLGZ9eFto7N2dbcVTs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q/pG0uL2tVNZt0LFLSL8aMMLaIRDIzPHIa60AYoVVPnUbNM3k64qTdTL/h9pkAp+kCKLeGV6GFyLFAjiNDnU9fMhf6En1c6wJ7vyTUp4SkCAC8kNdiJVoFy19HPTIpb3lPtPImZ9f4mNXiAv+VFHbblRG+ayTGSQ9n7B/Vkyspk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FjG5K+U9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52S76npk026114
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 10:29:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YZyozmENnf1D4BlU1MbFdQpfwvTwdNp0J/DqysHuxfs=; b=FjG5K+U95cf8EhPB
	6x4JwH11FCMLZvGAdwnJjjL/o78Y9ujkdHHpeQ2krlZXflnlCWWR6rkJr/6EMfCA
	jFpfXnRSZvczgEiNCGihfaV4dFBYtKUcSPe8RxqjdgmXDvhNd64rPAj69tHj3NlW
	HdPXiG8LGRLPWAVC+uz91IsQBLAr/EFwWwarKJ4rF3SCkrOGwKCzzxhYHO9PULe9
	0qy45rfs64BPDY4M2iXbDELE7SkLm2CKoXgj9US9p0OhBqzcfDDmNrpUp1ApbpFO
	PnEvXY4Ii5YsioEhvyhzRKVhLYukSnxQpdXV3wRwWWffcFT9tx8iJyeLIuRwGlXD
	6tnwoA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45nat0td6x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 10:29:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-224364f2492so36412025ad.3
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 03:29:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743157761; x=1743762561;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YZyozmENnf1D4BlU1MbFdQpfwvTwdNp0J/DqysHuxfs=;
        b=PwGKXmA/nxkt5K0j6qiciXXraAw8Su/nycv/1DGDu6MU5GWgEA9jcBtm5Zdy/NmjF1
         SNh37dX4tkiJXMXbVqzJYzKahf+7szFD466uTSSmCvhOTunXNkXKxF2od3QLQLTIWwkZ
         +tNR7nPPb4p4HhR0tTyNuargqg+H9I0+s7JtbAuoEVx6LLx/xi4u5e3T5sEle39cvxIz
         lv7hBKXIZPjoM2vxoOXL0B03mFjkJQKhyJCQaDXEhlluicLwKFblUeimI/yMWN+ZDQw0
         W2q+PDwNpZDpB8R6yla6GNa5FSiuKS0Zgxydw0nVcu10h0YuKdwP4qwInrMnoPlw5KbR
         jnaw==
X-Forwarded-Encrypted: i=1; AJvYcCViZc5NRMGoetFL5oMuUfZSHAMPuwi+VHUJxNXvyISX8sy5YgZwDwat6bbc+aZ7K96LgocnbKypZ4bI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7pyWX7PUPOJx0YwYV4YaVcHRiITpoVAycCWPr9UixG/fKC+Ab
	BjdL5GOVUpdAqG1cVUWxRJ3wJ8jIc/tGjYryW6QPX0C1k1bFeGlrzdRNtFY3Ql5j85LQQwBZrrl
	zpumDrSjOhQvIzMxxKOk7qXg1fKadNnDZGfdzsBxXnSsrbQIEIjHk0ADEEZua
X-Gm-Gg: ASbGncu+UINpItCip72ceuXBhS6yQpdHo2MCxY41wuJRk3/ExHWy1xjDOWgOQN0bc7Z
	bCF/u5vTwNXe/tMRncTf7Q+UIVemG8jR1bVSl/WiBFftboy4d/akW1OvM458I3oZpIn9grDX1zA
	j4wYXUdxd3LlKzP1L62sLM2jGqraW+Px4QPujWObjfnZk0mLpv0XTL5vHqfmS2Wo+S5mTKJe39K
	yU4i8hK+utMaLdrBOXohbHa3WqvqfrOyG7wYQfLqSCcOywzAzPrAowjLFOurNIoQRc2+WkGIX25
	t70BfKHawzmXXcps1l2/G+KXOcPzyI4ykaIwtQ/Wk6YbXbQhSQ4=
X-Received: by 2002:a17:902:f646:b0:224:f12:3735 with SMTP id d9443c01a7336-228048c8674mr121121855ad.31.1743157761010;
        Fri, 28 Mar 2025 03:29:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTLwXEUOwEmMsUdJEpr/rmOv1KKLheXbqRHRhCDP2HIepa0hdRuCAfWHrz2ORIUC0rf+g8sA==
X-Received: by 2002:a17:902:f646:b0:224:f12:3735 with SMTP id d9443c01a7336-228048c8674mr121121265ad.31.1743157760482;
        Fri, 28 Mar 2025 03:29:20 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291eee11b7sm14561965ad.86.2025.03.28.03.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 03:29:20 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 28 Mar 2025 15:58:33 +0530
Subject: [PATCH v9 5/5] PCI: dwc: Add support for configuring lane
 equalization presets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250328-preset_v6-v9-5-22cfa0490518@oss.qualcomm.com>
References: <20250328-preset_v6-v9-0-22cfa0490518@oss.qualcomm.com>
In-Reply-To: <20250328-preset_v6-v9-0-22cfa0490518@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1743157732; l=4766;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=U7DWrCD6EQXqUQIkpwerhpxSQhLGZ9eFto7N2dbcVTs=;
 b=ViVIJg5kkCvIkqx3JzuIUQN0sSRyoXOi/qnO2mEdfQm4OUIlPz9oHhnr8KbEv4i7UX18xCpYj
 /+zdbyIrLUjCq8x/e45RiGbdUi1PTRy2ZoMyrZhMZAZ0+CXHcpW0mX/
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=PPkP+eqC c=1 sm=1 tr=0 ts=67e67a02 cx=c_pps a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=S-wDCh2AgS0RhsWIeBgA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 3KM_T4Xg0c2MKPJaFWCZgZs1cpb646L7
X-Proofpoint-ORIG-GUID: 3KM_T4Xg0c2MKPJaFWCZgZs1cpb646L7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_05,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 mlxscore=0 bulkscore=0
 phishscore=0 spamscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503280071

PCIe equalization presets are predefined settings used to optimize
signal integrity by compensating for signal loss and distortion in
high-speed data transmission.

Based upon the number of lanes and the data rate supported, write
the preset data read from the device tree in to the lane equalization
control registers.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 76 +++++++++++++++++++++++
 drivers/pci/controller/dwc/pcie-designware.h      |  3 +
 2 files changed, 79 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index dd56cc02f4ef..153f9ce93ccd 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -507,6 +507,10 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 	if (pci->num_lanes < 1)
 		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
 
+	ret = of_pci_get_equalization_presets(dev, &pp->presets, pci->num_lanes);
+	if (ret)
+		goto err_free_msi;
+
 	/*
 	 * Allocate the resource for MSG TLP before programming the iATU
 	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
@@ -808,6 +812,77 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
 	return 0;
 }
 
+static void dw_pcie_program_presets(struct dw_pcie_rp *pp, enum pci_bus_speed speed)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	u8 lane_eq_offset, lane_reg_size, cap_id;
+	u8 *presets;
+	u32 cap;
+	int i;
+
+	if (speed == PCIE_SPEED_8_0GT) {
+		presets = (u8 *)pp->presets.eq_presets_8gts;
+		lane_eq_offset =  PCI_SECPCI_LE_CTRL;
+		cap_id = PCI_EXT_CAP_ID_SECPCI;
+		/* For data rate of 8 GT/S each lane equalization control is 16bits wide*/
+		lane_reg_size = 0x2;
+	} else if (speed == PCIE_SPEED_16_0GT) {
+		presets = pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_16GTS - 1];
+		lane_eq_offset = PCI_PL_16GT_LE_CTRL;
+		cap_id = PCI_EXT_CAP_ID_PL_16GT;
+		lane_reg_size = 0x1;
+	} else if (speed == PCIE_SPEED_32_0GT) {
+		presets =  pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_32GTS - 1];
+		lane_eq_offset = PCI_PL_32GT_LE_CTRL;
+		cap_id = PCI_EXT_CAP_ID_PL_32GT;
+		lane_reg_size = 0x1;
+	} else if (speed == PCIE_SPEED_64_0GT) {
+		presets =  pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_64GTS - 1];
+		lane_eq_offset = PCI_PL_64GT_LE_CTRL;
+		cap_id = PCI_EXT_CAP_ID_PL_64GT;
+		lane_reg_size = 0x1;
+	} else {
+		return;
+	}
+
+	if (presets[0] == PCI_EQ_RESV)
+		return;
+
+	cap = dw_pcie_find_ext_capability(pci, cap_id);
+	if (!cap)
+		return;
+
+	/*
+	 * Write preset values to the registers byte-by-byte for the given
+	 * number of lanes and register size.
+	 */
+	for (i = 0; i < pci->num_lanes * lane_reg_size; i++)
+		dw_pcie_writeb_dbi(pci, cap + lane_eq_offset + i, presets[i]);
+}
+
+static void dw_pcie_config_presets(struct dw_pcie_rp *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	enum pci_bus_speed speed = pcie_link_speed[pci->max_link_speed];
+
+	/*
+	 * Lane equalization needs to be perfomed for all data rates
+	 * the controller supports and for all supported lanes.
+	 */
+
+	if (speed >= PCIE_SPEED_8_0GT)
+		dw_pcie_program_presets(pp, PCIE_SPEED_8_0GT);
+
+	if (speed >= PCIE_SPEED_16_0GT)
+		dw_pcie_program_presets(pp, PCIE_SPEED_16_0GT);
+
+	if (speed >= PCIE_SPEED_32_0GT)
+		dw_pcie_program_presets(pp, PCIE_SPEED_32_0GT);
+
+	if (speed >= PCIE_SPEED_64_0GT)
+		dw_pcie_program_presets(pp, PCIE_SPEED_64_0GT);
+}
+
 int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
@@ -861,6 +936,7 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
 		PCI_COMMAND_MASTER | PCI_COMMAND_SERR;
 	dw_pcie_writel_dbi(pci, PCI_COMMAND, val);
 
+	dw_pcie_config_presets(pp);
 	/*
 	 * If the platform provides its own child bus config accesses, it means
 	 * the platform uses its own address translation component rather than
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 61d1fb6b437b..30ae8d3f4282 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -25,6 +25,8 @@
 #include <linux/pci-epc.h>
 #include <linux/pci-epf.h>
 
+#include "../../pci.h"
+
 /* DWC PCIe IP-core versions (native support since v4.70a) */
 #define DW_PCIE_VER_365A		0x3336352a
 #define DW_PCIE_VER_460A		0x3436302a
@@ -381,6 +383,7 @@ struct dw_pcie_rp {
 	int			msg_atu_index;
 	struct resource		*msg_res;
 	bool			use_linkup_irq;
+	struct pci_eq_presets	presets;
 };
 
 struct dw_pcie_ep_ops {

-- 
2.34.1


