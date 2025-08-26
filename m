Return-Path: <devicetree+bounces-209219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E2FB353B3
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 08:03:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8EF3B1B62F9D
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 06:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E932F3C29;
	Tue, 26 Aug 2025 06:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VKpsrFNt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE54285CA9
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 06:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756188189; cv=none; b=AE4yLKpK2D0e6oLYdxtmgzNRz7CuZls1xLsHeCvECBwaF7PBYdf9Jum0ARzI1vkvh8BBmLSncxw+IB3qY0LAUMNmuJ3NlLwvdxCDJ4xBpXS5YKOC7LlWJQ5jzzzVdytnwwEWOxkjHFQrtbdY4Df0brciLRgT/Zk7Rbs10hl8l0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756188189; c=relaxed/simple;
	bh=NMvu6tjTeXh3gl/g/huT9wGas8Pnxc/WPB+nobZ03RQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=G8waaVZTvro/+OFtR+6WRfHC44PAnv4pT+vyN7oVmwLyGTAV0fnLcCbe7r0/KM6ksYQrrTsr1PlcsLMpl9xJOmAe12Ngk7ofxh7nD06VroATR6LqaV6UOxSXoAx2EQUyiiRw8bnYgJdRdkuMbM8vhMfABPUNfzkQHQZGQTYdckc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VKpsrFNt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q5U2nS021029
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 06:03:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=lEftv+FACOPDXFccinKHuv
	dGuhyZZ2/i2kFzrCdq/HU=; b=VKpsrFNtY4a27z1SxEYC76HosUbyWYVw2qp/cd
	U7pIbhtxdNjJbrimgLDz7kTUf9uM/x+EzFeOSS/BC0Akeu94rT+4CO5lt/ZkuuBG
	Kf+i5Gg9kDIfJOgooTgFJQvJYBSVLbW6NO+2YVY90+VlbeyrlqC1Ff+XNeiXgMNF
	a/+v9GUsYhLwoihVMdbRNjCSqBLeGddGMU+sp5NHNjKwJu58+qcrZWAD3gaoBkpE
	975CyLwRLqRUOCIOVLe+AcPCFaZZ0M9cuu4Pk/IC3LgyHXunmSnCNB7xixV7abJI
	qzSpVSRPA1wwSVSzeSh9XGASrolnGqkJ/vViIE7hqVdmGUAw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q6x87nuf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 06:03:07 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2464dc09769so81996565ad.0
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 23:03:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756188186; x=1756792986;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lEftv+FACOPDXFccinKHuvdGuhyZZ2/i2kFzrCdq/HU=;
        b=o/kQaW8lPSlZaCvSVVA+qxksjyLAn70XUnoMNKxJDr8sQAeJe5o4faI6StPomMHUvO
         QdLbTS7rP7sJRucAc+dBhvqNgzt4cj2swobBsRVYXKce2ApQQD321vC+DXEEOuEHy5tR
         oaveRahhcw0d+xlltvGHsw0WL6yYyo9VNKwHDKntMuQ+Ic6WRpJPFy9GCgY5JuImiCdk
         3OnI/uU8F2zttqGOFzoXBVOMn7G9n2RIHo/W4LVyo/I4UaChMvlkGyEVNTMQ/Ks+Hm6/
         UsQO1GWt4Q/OVN4YjJlW59IbOPgeylo5luJHvz83ufNZXt0nZJpj0g29t7Z5m1Rt135O
         mWyg==
X-Forwarded-Encrypted: i=1; AJvYcCXyeCusX0e25I4DkBT8RnLjJEXw4tg7ecLaUl5xuRs/R4wEouUlYzrk/KedEXoY4OFGyET0Kdl429rG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0FnwbjHdjgLgTAz/9cQT0oWkh2BFeejbA9MNlWPcc8W2l36nt
	mLdKJc0To+rb5JzQ9cr6DW1tqEPgmEXXLEf3a1MvsuEdcaIgPpsZ5U1zYcTIBWGRbSNeqm22TAU
	9mgiH0Ym8StrFE6s2zGnxhn1wgevFE7DrVpVZXrxuvd8+bmRC4bGwKdNSvCHSI0i/
X-Gm-Gg: ASbGncvZ18LmXLzuzek/Np8KplWYv65bF1K2P/Q7hH5fXQA2ZOL4dkXrgjzovoW15Uu
	m4uf5VKzkFB8xsX6Vu3Ad0ZuJN85ewHC4IMRgLgOy7mvZEqGTJE0MWlXbgH+GxXLFXsFfbW9rjq
	M2njPPIlEz4Ea3LqNZLBk59tXJT8hOIaOP6oo18/nMU85o+FPeljyF0eXL70DZ7VcpCn2Ce4M5v
	szBMD5qoAJ9w5JNm70Fa1vXE4VIjcns/LqqR+/yXYpJjV4ldmrnBpX9djbEgr2U20xM0oox5e7B
	BhfGdE/wCix2jWunAG3+PIzKlKE0Xi01dzoPy87UVASkpQZXCfXoH90Zck/d+yfvQiQ90omwjyG
	VcWsRUSIhgr10DQs=
X-Received: by 2002:a17:903:2347:b0:246:d743:b0fc with SMTP id d9443c01a7336-246d743bde9mr69827085ad.44.1756188186316;
        Mon, 25 Aug 2025 23:03:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYhe4dXjLNGhJZGzARNQrnPNogJdMJqZaTMcpoZSngAMDqHiAexd97bFcuHHEUnL/JnUfghw==
X-Received: by 2002:a17:903:2347:b0:246:d743:b0fc with SMTP id d9443c01a7336-246d743bde9mr69826445ad.44.1756188185606;
        Mon, 25 Aug 2025 23:03:05 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24668864431sm84989705ad.93.2025.08.25.23.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 23:03:05 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Subject: [PATCH v3 0/4] PCI: qcom: Add support for Glymur PCIe Gen5x4
Date: Mon, 25 Aug 2025 23:01:46 -0700
Message-Id: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMpNrWgC/5XQzWoDIRDA8VcJnmvQcf3qqe9RSnHcMRGy2VSbp
 SHsu9cNPYQ0OeQijPD/oXNmlUqmyl5XZ1ZoyjWP+zaolxWL27DfEM99mxkI0MJJxze703Asn4e
 YSfMeO0pCAYFSrCWHQin/XLj3jzZvc/0ey+miT3K5fQBNkgtuPVKyCrWJ3dtY6/rrGHZxHIZ1O
 xb+r/V32mRTECAlok3PtrpLZDwRgsBnW6AgfHIqIor/7bKDCa7+DfLGgGbEXktjXVslPDLUtaF
 vDLW8wxlvZOd0CPqOMc/zLyMOxejrAQAA
X-Change-ID: 20250818-glymur_pcie5-db4ef032e233
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756188184; l=1916;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=NMvu6tjTeXh3gl/g/huT9wGas8Pnxc/WPB+nobZ03RQ=;
 b=YIkUZc5qn1Aw090tYWuUOaTqjC0ZXyb3a1sjTjdoAmHUO5INUREbVNsHk+Bw3ggIMk6XAxerR
 daW51x1xUzmDcoBRxrxYxgivfp/YY9HAWFm0vfikTRhAeuTn+hKsrHn
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-ORIG-GUID: iqCP6w2Oy1kVIJL4JMf8WAfZKIXw7Qgj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDA0NCBTYWx0ZWRfX6ov+rkFrjGoy
 NhjHLtXeT2iqqpS+xDVk0sdaUzr3u0v68GPbSs6flOBbTGxc3rZHuD1SWjHmvdGvqMDiBQXPwH2
 oDBmfBI7P0W0KQYOueBZUX88ujueKKg9WrK+oHmXhsi7P/reeMBHY4j4QIEsfzA3PsFS5WJbGBn
 hI1cJb6nr3uInUXTpUiB/ckx5yaxxBoo+6n3qCc4hUW5UyxBYTFN7wjiNiVnc9wdaOZVbL81Rc+
 5BH5bcyIPz0BilAF+h7N+K5ykEjcDmLnO9JEBbQRr15Xe/+ZAdjxx+i99T3G2fiSRIniFf+8zlu
 gslAsCQJaPeU3qoanIv+zEurkXKlKRnkdyPWjU+M/SIa9cJuXEAOOIXKdTZLxx+qu8Zm+Ohp4Tj
 sINJwhK0
X-Proofpoint-GUID: iqCP6w2Oy1kVIJL4JMf8WAfZKIXw7Qgj
X-Authority-Analysis: v=2.4 cv=Ep/SrTcA c=1 sm=1 tr=0 ts=68ad4e1b cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=450xJL59MvcON_dSg4wA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230044

Glymur is the next generation compute SoC of Qualcomm. This patch series
aims to add support for the fifth PCIe instance on it. The fifth PCIe
instance on Glymur has a Gen5 4-lane PHY. Patch [1/4] documents PHY as a
separate compatible and Patch [2/4] documents controller as a separate
compatible. Patch [3/4] describles the new PCS offsets in a dedicated
header file. Patch [4/4] adds configuration and compatible for PHY.

The device tree changes and whatever driver patches that are not part of
this patch series will be posted separately after official announcement of
the SOC.

Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
Changes in v3:
- Keep qmp_pcie_of_match_table array sorted.
- Drop qref supply for PCIe Gen5x4 PHY.
- Link to v2: https://lore.kernel.org/r/20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com

Changes in v2:
- Add offsets of PLL and TXRXZ register blocks for v8.50 PHY in Patch[4/4].
- Link to v1: https://lore.kernel.org/r/20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com

---
Prudhvi Yarlagadda (4):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
      dt-bindings: PCI: qcom: Document the Glymur PCIe Controller
      phy: qcom-qmp: pcs: Add v8.50 register offsets
      phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY

 .../bindings/pci/qcom,pcie-x1e80100.yaml           |  7 ++++-
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 ++
 5 files changed, 56 insertions(+), 1 deletion(-)
---
base-commit: 886e5e7b0432360842303d587bb4a65d10741ae8
change-id: 20250818-glymur_pcie5-db4ef032e233

Best regards,
-- 
Wenbin Yao <wenbin.yao@oss.qualcomm.com>


