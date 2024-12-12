Return-Path: <devicetree+bounces-130204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEC09EE434
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 11:33:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B7C81684A6
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 10:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8712B2116E3;
	Thu, 12 Dec 2024 10:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m4sUkCaG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46E621170C
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733999591; cv=none; b=j1Mzj4EObwVPavLbXyWBshPJ9EXoFxdnK0qy/VG0xrQcayKdOpb81QqaGMTbZ1vRIrD2Cw2LYKZpGgBpc6i33mfZOzlzWtCjDbhCDLZ86rKZWQtlIYpTV73CrBFWXvxNGCu8I5/9vGO9pUfLU3y0w/RWE5TpKbMv95vEyiyZnDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733999591; c=relaxed/simple;
	bh=rCnbx3o95poXDb2/YuVF9r73FJXlFhkxVyGpIDaXoNQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MuVCLtskH1DmJHT/ruullZZGCB3Szu36oWc7DI4XZP4Y0SVR9vS4qDlZJKwuJ9GgrqfHnYoust4RTA2ItfurYFD9uKdnTZP5MVi3OhA2lx1OfC7OPLuTmrFtCM0nkUtcYH8Xy/KepSeCogHcRVdFS4cXiRAukjKi1zYgp1ow1YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m4sUkCaG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BC815Ex029230
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:33:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zTx4AaOAcUgRsKy4qkO3gaODbvQmZWa1pu23pK5Xnvo=; b=m4sUkCaGmvQz+Hlj
	eVBUDssJcBOF2NADCZKwxEOrXi8Tvvks3Vp0gjZCV0IZnl/8+LjxCzhOsDmIJAfq
	tZKr54o1mAgtocrNI8xN6PcwayqOH+IRqx/OvSUsdKQrjiZkOuvkBV2e81p3m0df
	8SUXlK6eXLfJq1BrupZXmAVYZh3IqJavejAlaiYY21SbTJ8c33dhiFr8FZuEJcFu
	GluFe5u/q+1yrJOiHC/vLo7toj1LCCsNoGFLdtnKv6ASFpZ3HG6ONLF080r1wUsH
	k7mqxtH2IBXUrJgPVe0UZCErzHZh+ZplLz0YD0ZCWtvP4BqRPekTJiS2OprSRG62
	bMsOoA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fd4xtk01-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:33:08 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-216311faa51so5325485ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 02:33:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733999587; x=1734604387;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zTx4AaOAcUgRsKy4qkO3gaODbvQmZWa1pu23pK5Xnvo=;
        b=pblweGY3iYsFN3rO1JuvWYS2z9J4xvkUNKbLQ/zbl0oQbrgthVah9HbJi++ExaD6AD
         rUPyGMqGygbgoSSvVMpe8XnyzvKrjU/rFNt+R2FJmGEheIvLspAYnLxrzQAUvMyktv4Y
         IYCeqFkzm5VOUynYSeMw6KzKO+8WJEN7GXP/G3RNsvA3FlkFkpVweD8QO93/2RF3/Y1R
         ftobdsq2VjhxwtEjolAgiZ5IErbzgM65i+NwryjLpv1Opy1iHiCBQBbCIYqeDFb+onVg
         AISO2QH5yj6pKkLs87yiOvXrUpIj0vaTcLglJobUSYE8MPpqgkOBLm1C9jjKmoaX3CBs
         12Xw==
X-Forwarded-Encrypted: i=1; AJvYcCV5FZ/tAIXDbvos1iUlW867Clg0H3c2JV2MpFeNB/0euEvwsdFqIUpI7c9a7J7GS2AEqzY2tGjA4arN@vger.kernel.org
X-Gm-Message-State: AOJu0YztGHxUQ4qKRXlEi7B/RJw4L2gtGs7LIxs3zUw9NGGJqv2ly4Lk
	daFgTzvsCfeJj5DafAewpV+9U4zEzm4Fte50DEfP31TNgFpbIVDSHaUbMGTc9LBma5P9t83fGgx
	2DKme8/+b1I0tBhHkyXV+v5g+V82MeLqaycsrfOqjZ+7w1i+nK67KgonFaqy1
X-Gm-Gg: ASbGncv9n9N3v2F/hDmEfwKcwM9dx5V5ezoKgRGXLD9iwHKqYdlzMk0Kh0pvKzuZB2d
	s4NOk5ywYp/xo++eHeERuEZd03OwAoQ0SM36CE5cOruGduFYA/Uhd4k6eqXo2m70XwDfI5upi0K
	ipim1jaq43P0IK06enmqKfJ2AWF+zfir2k0sDznXVxb7L2gtnHGzLbtuwaC8s57o08a5XFeSREu
	RBYueU4Kl1mnsDab/nZUKcgW4lzdppLbZce/9t/BtfW65dBRHe7wGJ75Rdly9Mg1uKv5/qCMlAk
	HIhZMiAvyy42J1Jr
X-Received: by 2002:a17:902:c403:b0:215:758c:52ea with SMTP id d9443c01a7336-2178c834419mr40594665ad.9.1733999587350;
        Thu, 12 Dec 2024 02:33:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSZS7M1+e2mSpSTWbXLTkDIPYkw2W31sDaXU8xPhcAptvNEzmguFjLvOVr4BVhHwV0LKzhzg==
X-Received: by 2002:a17:902:c403:b0:215:758c:52ea with SMTP id d9443c01a7336-2178c834419mr40594305ad.9.1733999586971;
        Thu, 12 Dec 2024 02:33:06 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2178db5b42asm11102335ad.244.2024.12.12.02.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 02:33:06 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 16:02:17 +0530
Subject: [PATCH v2 3/4] PCI: dwc: Improve handling of PCIe lane
 configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-preset_v2-v2-3-210430fbcd8a@oss.qualcomm.com>
References: <20241212-preset_v2-v2-0-210430fbcd8a@oss.qualcomm.com>
In-Reply-To: <20241212-preset_v2-v2-0-210430fbcd8a@oss.qualcomm.com>
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
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733999565; l=3448;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=5rxRkPnumzzfAdemdZBFDf4pCGC4z3dLReWUJOLysOk=;
 b=PfWVknQFvds1Vncgw8MASrZsGeAdq18UFhYaeSeVV0UZEfJnZ3Lq/buK38XEW+1jRTxbIcrum
 O73OaU8IybTBbBquqghOBSF5AbS0n20cNl5BcvOK+u7/yZW9aFD2UMF
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: Q4aW9Rbb5yXEoN-6sXn_T8_1SwwQcCfR
X-Proofpoint-GUID: Q4aW9Rbb5yXEoN-6sXn_T8_1SwwQcCfR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=999 phishscore=0 adultscore=0
 suspectscore=0 spamscore=0 mlxscore=0 impostorscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120074

From: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Currently even if the number of lanes hardware supports is equal to
the number lanes provided in the devicetree, the driver is trying to
configure again the maximum number of lanes which is not needed.

Update number of lanes only when it is not equal to hardware capability.

And also if the num-lanes property is not present in the devicetree
update the num_lanes with the maximum hardware supports.

Introduce dw_pcie_link_get_max_link_width() to get the maximum lane
width the hardware supports.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware-host.c |  3 +++
 drivers/pci/controller/dwc/pcie-designware.c      | 14 +++++++++++++-
 drivers/pci/controller/dwc/pcie-designware.h      |  1 +
 3 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 3e41865c7290..2cd0acbf9e18 100644
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
index 6d6cbc8b5b2c..acb2a963ae1a 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -736,6 +736,16 @@ static void dw_pcie_link_set_max_speed(struct dw_pcie *pci)
 
 }
 
+int dw_pcie_link_get_max_link_width(struct dw_pcie *pci)
+{
+	u32 lnkcap;
+	u8 cap;
+
+	cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
+	lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
+	return FIELD_GET(PCI_EXP_LNKCAP_MLW, lnkcap);
+}
+
 static void dw_pcie_link_set_max_link_width(struct dw_pcie *pci, u32 num_lanes)
 {
 	u32 lnkcap, lwsc, plc;
@@ -1069,6 +1079,7 @@ void dw_pcie_edma_remove(struct dw_pcie *pci)
 
 void dw_pcie_setup(struct dw_pcie *pci)
 {
+	int num_lanes = dw_pcie_link_get_max_link_width(pci);
 	u32 val;
 
 	dw_pcie_link_set_max_speed(pci);
@@ -1102,5 +1113,6 @@ void dw_pcie_setup(struct dw_pcie *pci)
 	val |= PORT_LINK_DLL_LINK_EN;
 	dw_pcie_writel_dbi(pci, PCIE_PORT_LINK_CONTROL, val);
 
-	dw_pcie_link_set_max_link_width(pci, pci->num_lanes);
+	if (num_lanes != pci->num_lanes)
+		dw_pcie_link_set_max_link_width(pci, pci->num_lanes);
 }
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 347ab74ac35a..500e793c9361 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -486,6 +486,7 @@ void dw_pcie_write_dbi2(struct dw_pcie *pci, u32 reg, size_t size, u32 val);
 int dw_pcie_link_up(struct dw_pcie *pci);
 void dw_pcie_upconfig_setup(struct dw_pcie *pci);
 int dw_pcie_wait_for_link(struct dw_pcie *pci);
+int dw_pcie_link_get_max_link_width(struct dw_pcie *pci);
 int dw_pcie_prog_outbound_atu(struct dw_pcie *pci,
 			      const struct dw_pcie_ob_atu_cfg *atu);
 int dw_pcie_prog_inbound_atu(struct dw_pcie *pci, int index, int type,

-- 
2.34.1


