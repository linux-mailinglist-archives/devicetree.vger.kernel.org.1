Return-Path: <devicetree+bounces-157878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C1BA633C2
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 05:13:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B71A3B02FD
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 04:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C2CE1898F8;
	Sun, 16 Mar 2025 04:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dbwKHVkd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92084187872
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 04:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742098174; cv=none; b=QHWD1hWILePwTOK2SSevY1apyiNzGKfmlUCi2xB6d+wRdPXbmEDT5z52BCkNVoT4zSPRW4A4aEZM166CcJGLwltHLyFsdpKRSRmG2zXtU8vxY4nv9QAJ3TYnNLe9TAkeYZhyzPBIGhyY/KhoT/J8WFrDDQ2gpjh0dZmcC6W9Zco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742098174; c=relaxed/simple;
	bh=vAL22FsrdmpzZDSOTzsqtv09wm/NpEqSyY/He8Q3rWo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O9MlLlzqqEKBeVDIpjeJXPEvvu0Gzm4U9u2JgkxGixUTehxyYbwoqDynC4iIqeDX4LiJyzVLugZ7+KW/ugxJ5UPfVDbP7Vr1RAZM0ImTJKj8XxtUrpM35L7K1Zg1n+KYrtKL+/elBSD+bguTbC/08rA3WehveMLHLV7IpffbAeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dbwKHVkd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52G1oDCI025544
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 04:09:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RTARSqVulqseS/hBvUMMQSRM65+7IsS9eYK8VLj5/5A=; b=dbwKHVkd39G0qWOg
	mHU31GZOBsWAahz5iu38SwXwZbcqo1Z78Hrv84I4h2P3JqxJXTAdoaQ+/yoETH6K
	zeE98bNpTCcz38NWPa74vRosdB6UirprkoETqZhpGfBhPAh7gDZIz1uY34ozJABw
	X5WS5WUtGNXEO0S4oIliMRY+Hpqs/XJt8uk7wktc2IyRojUgf5O8AX3V74Xgl2B9
	vvmCPn82Zu07seFiyH9ANmte0xVzmxUGEkQcB6GNqijMIauitDocO6sybOuDQ1US
	fMCxr/vfdRNlH5dxBh4o8gaNW3jfiG3rME3NHGkvHhNx/NNE0/BCH7Xiv4j12ce+
	qkSZ5w==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1u89pc3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 04:09:31 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-300fefb8e25so1342103a91.3
        for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 21:09:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742098171; x=1742702971;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RTARSqVulqseS/hBvUMMQSRM65+7IsS9eYK8VLj5/5A=;
        b=mFSowvM/mlF1t/xJ5TjH0T+i+KI+uyu48/yi42YlRGWL1n/HmDtvCBxiTQpoYphui+
         BoZ2b31GWpMtkmM3EOumlln6iiY0vIyG8IwCzQPxHlntMHHjF53zOwcVHVWhjcNJOgb4
         1sWy4BSNmM161eU096YNXJNR7YNK7H87TQ8qbCyIEzE3AfI1t0he+gw/EhPAPpOlsOZi
         3LoImpBwOF6dhlfGvZJ4WQaP8FeWLEGZnzJ5zT6C207c3lWK433j9wZNdf3tiPBett1Z
         i1BlkO54dy8nEh+fQXlQj6B3ZMkFyDh7Ku2P/PM3pcVBnwQnVXsB3NXuej5dbeur8gsy
         nKFw==
X-Forwarded-Encrypted: i=1; AJvYcCXebXBG+dHiO5i/TXemz88xanDBsY3z1EC9uiJF26LFGN2B+P9g6xIxSKwHU/OS0aPKh9VWcsn2gSue@vger.kernel.org
X-Gm-Message-State: AOJu0YxGPVVDYxKQ2CEa+M9DOr+eQHBgM6CwV7+60W2OeJOvFXMAMXqL
	Znlh8P3OioXeG4I4jRL8YBd4vra5o0AQF2PgmXyWPK5Evw3KIGg1+IBwlwEy7A8gFAIOuUyahTW
	snSEWwgL2NQ07CHpyvVBpyI4+jrdCdSnuFrdDC27gOVUqneeNfqoxErrAAssJ
X-Gm-Gg: ASbGncuZg2xmaE0RKzWJ24OXrs348VoKrNB5deTXM9VOxLUTEBVGc7uKeEjZL4iW+l3
	GwEJkcZmmfNhPjHJG+wLzwCajwFX/Isjo/P+W4VwAqs+AlVJmbQw3C4RIHD9ab208rtFOyezw/J
	SC++vMflkVuJFv/VmREH4K2qO76CjosfJ6bk/tJFoCvRRwFphD2shETG+flbqCCj4LhFfDySs6X
	e9m17MRN+IrOR4GRqhJWy2LP3amlJAfaSEVryZwhenRZ3548kRzl2DoA6Th+DwPSruU7Bl3PTF7
	8UPcUtUqxhfHnEm4eEg6wYgrzD7buSQUHsW00/Qn2uf8FuGfkBY=
X-Received: by 2002:a17:90b:5143:b0:2f7:4cce:ae37 with SMTP id 98e67ed59e1d1-30151d03d08mr11205606a91.18.1742098170743;
        Sat, 15 Mar 2025 21:09:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHz3+v7IiV5+3h8ypqZ8mTRGjTBVXic61hpA9zS0rNMDjVKafG9HFgpoWDDAv6/CojeGl1iPA==
X-Received: by 2002:a17:90b:5143:b0:2f7:4cce:ae37 with SMTP id 98e67ed59e1d1-30151d03d08mr11205579a91.18.1742098170384;
        Sat, 15 Mar 2025 21:09:30 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30153bc301esm3490438a91.49.2025.03.15.21.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Mar 2025 21:09:29 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 16 Mar 2025 09:39:03 +0530
Subject: [PATCH v8 3/4] PCI: dwc: Update pci->num_lanes to maximum
 supported link width
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250316-preset_v6-v8-3-0703a78cb355@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742098148; l=2659;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=vAL22FsrdmpzZDSOTzsqtv09wm/NpEqSyY/He8Q3rWo=;
 b=XkTqW+wbQkb014bseIYknxzoA8wxSZeIvxT06zSlEzmJYkckrvlhzr1tfNL/Op9BMYpBdKf1b
 NqxGAKxg22JBFuqt3wPQWSTUx3sfCHlNXshA1lA5Qjzm6MSM5XfPt+e
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: L3s84XNKtWEDqqYa8dyZzspKghzc7a1j
X-Authority-Analysis: v=2.4 cv=c42rQQ9l c=1 sm=1 tr=0 ts=67d64efb cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=kXhGf0cxdCgfIYue-YsA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: L3s84XNKtWEDqqYa8dyZzspKghzc7a1j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-16_01,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=999 priorityscore=1501 suspectscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503160029

If the num-lanes property is not present in the devicetree update the
pci->num_lanes with the hardware supported maximum link width using
the newly introduced dw_pcie_link_get_max_link_width() API.

Introduce dw_pcie_link_get_max_link_width() to get the maximum lane
width the hardware supports.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c | 3 +++
 drivers/pci/controller/dwc/pcie-designware.c      | 8 ++++++++
 drivers/pci/controller/dwc/pcie-designware.h      | 1 +
 3 files changed, 12 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index ffaded8f2df7..dd56cc02f4ef 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -504,6 +504,9 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
 
 	dw_pcie_iatu_detect(pci);
 
+	if (pci->num_lanes < 1)
+		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
+
 	/*
 	 * Allocate the resource for MSG TLP before programming the iATU
 	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
index 145e7f579072..f39e6f5732a9 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -737,6 +737,14 @@ static void dw_pcie_link_set_max_speed(struct dw_pcie *pci)
 
 }
 
+int dw_pcie_link_get_max_link_width(struct dw_pcie *pci)
+{
+	u8 cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	u32 lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
+
+	return FIELD_GET(PCI_EXP_LNKCAP_MLW, lnkcap);
+}
+
 static void dw_pcie_link_set_max_link_width(struct dw_pcie *pci, u32 num_lanes)
 {
 	u32 lnkcap, lwsc, plc;
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 501d9ddfea16..61d1fb6b437b 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -488,6 +488,7 @@ void dw_pcie_write_dbi2(struct dw_pcie *pci, u32 reg, size_t size, u32 val);
 int dw_pcie_link_up(struct dw_pcie *pci);
 void dw_pcie_upconfig_setup(struct dw_pcie *pci);
 int dw_pcie_wait_for_link(struct dw_pcie *pci);
+int dw_pcie_link_get_max_link_width(struct dw_pcie *pci);
 int dw_pcie_prog_outbound_atu(struct dw_pcie *pci,
 			      const struct dw_pcie_ob_atu_cfg *atu);
 int dw_pcie_prog_inbound_atu(struct dw_pcie *pci, int index, int type,

-- 
2.34.1


