Return-Path: <devicetree+bounces-195658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF1FB027CC
	for <lists+devicetree@lfdr.de>; Sat, 12 Jul 2025 01:44:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 833EB1C866FA
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 23:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 501ED22DF9E;
	Fri, 11 Jul 2025 23:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mDN3r2zU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD97622DFB5
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 23:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752277409; cv=none; b=Wutn5Vleb/ppz7DwYN0tYKm8w79Q+syS2MPXLYENM59VUCxLC2KC00XRT8XMKpLVf22AqnvopB0IiTI6wWeFYpRcc9/QLM44RzUsutXTyTHYfDBmrLrea4HzIEchxQpQLl0WRLnrlaTMCFhDjCq5+KzZ5i5CtXTeA8CKDKwHsVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752277409; c=relaxed/simple;
	bh=NBnIXgXK6Trlsnr6CsojwAon1qRSKMZl8uFGRJ7oMJc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cyfbDJL7bKzO/+YJ7CQXrUOXPZSOXiFopR3l0gHHYtiFmcE6ajm0+pwS/IKTpi3BDRQNjqqaYxI3YsQBnvmdAEyfjwt3HryDy1B6k3LGnPbm2uRq0liEvAdfd+IdOiKCW24fl01MNkicdhLx1nS6odZzzWe95av9J7j0vbQJZO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mDN3r2zU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BAuOKg016817
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 23:43:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w5OXNXJSNeQPojGoozGDIex2yCVHfTQL7ulled+ZDo4=; b=mDN3r2zUac4ld6tt
	aUahx2g83rdC3HLqRpYCAhxbxC1/syr6NWrnvI9H7IxB681q8Ld7+Locdl0sNyrl
	+hgUh9MFAEDrRmZnnG8Ez4EN+GXjdkfI1tbUI1/V1E+/jPThkWzHbhe72jp19nA3
	NptliXHzS53b5mr0eCLto3eJ3HV/qC4kvS3CSJbXXdsC6r/9PduieN/o+5LAwPtR
	beSeG/f63HIzNLKuz9D3UQdkxHWlOlYY4YnriZyLZBm09mtThK3N5d3oIpSDfDtS
	AlWji5RDEUsMJXo7pXb++haDt3O/eLL+Ub3dM3N4pdyeutlYV7XshFvRMhRhTYqV
	DW77+Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smapa52a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 23:43:26 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-748cf01de06so3909948b3a.3
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 16:43:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752277405; x=1752882205;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w5OXNXJSNeQPojGoozGDIex2yCVHfTQL7ulled+ZDo4=;
        b=ufhHfk+VnTTK4DUoBBjU5bga/U+YaMPGm+DqnqRMh8+4gx6RSCWg+y0BRvm9qjUHqW
         pSYT2PRQkY/Gs0ytwfkkGAtE6GQty2at8JG4lGZSCb31hJNcpfUVNLbn+11rQYe1lw3y
         Y390++n42Veo2SXZm3MGP43kPYwYddckIQaocwrBfziFFK1LLUGIPP3mGwVhQfRks1G4
         dq3CQ5rXE1Fq3wneQjyK+Hz+HPvvychN284sFN95SPMCHZ/qmJ6UE0xbk3cuaA6Guabj
         v9pe9ayB7abILcK1vE3tLN6YxdYlMYxf5BRFxqv3yncxy11PYgo7Z+8cXel9lvwhutrJ
         kLHA==
X-Forwarded-Encrypted: i=1; AJvYcCVaEwykPym3TqLDSDz9stEpilzUxC2KLc5C3j0lGWGRYkBxaMWHmjzJHNkmaU6U8tNr299njeIhe+BO@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzj9Zg0uy/ZPsp469uMjNqv0ndWf1JKDn8konnRj+VLCtpRHOG
	JK2RTugyvr/KH1+srmbCY9hn4KdgSv63jdoZufV7J4oOBCC5PaPLu3KEt5aQmvnHkX407BXl4da
	8O8vi6Xao3446VWM4aKqxyos5rN9HPxTb3t/BmyvFtlhnwuC1dSNHpjf+TRkt/4I4
X-Gm-Gg: ASbGncuzXwys93wbZON7WP3E3xHpTZTKoPD6VJBICGRVPNVO8zpVHai/1LEDteZBKqm
	lzsJLDRylFW07HVh/sSB62jtWuSnuOEC8hadivt8lR2YTzxg4TvIl/p8Ye29ZVHN5yfy7n/K00J
	TajMLkVQPK+6m9tkOql4UQHmmIZRzju+HF0WlKeihndpmCcPZCcNVph4ab5K04+05rMC/FT2kU4
	6stRxSlQOhlqlW5Z0NCbCOoBrMyb48q78TG2IkpDJidA83LV/yo5vd98UC3BFN0FnJVwPjJcb+E
	7LH46wlmsCicNqJ1PXYvHTMKP3Vl/IxM47qJlvEBewEohnFyWZkOmMdwPmz2PGQS0/oD2NkkUDY
	=
X-Received: by 2002:a05:6a00:391e:b0:748:311a:8aef with SMTP id d2e1a72fcca58-74ee284c6f9mr6864755b3a.12.1752277405410;
        Fri, 11 Jul 2025 16:43:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESWwcWYL5Go6OZu92auIZBwE0qGU4Adi+hbhTx59gkI6Or2b0dENFe4wyqlSvOE5PeIEBeYA==
X-Received: by 2002:a05:6a00:391e:b0:748:311a:8aef with SMTP id d2e1a72fcca58-74ee284c6f9mr6864718b3a.12.1752277404948;
        Fri, 11 Jul 2025 16:43:24 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9f1a851sm5869781b3a.82.2025.07.11.16.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 16:43:24 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 12 Jul 2025 05:12:39 +0530
Subject: [PATCH v6 3/5] PCI: dwc: qcom: Switch to dwc ELBI resource mapping
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250712-ecam_v4-v6-3-d820f912e354@qti.qualcomm.com>
References: <20250712-ecam_v4-v6-0-d820f912e354@qti.qualcomm.com>
In-Reply-To: <20250712-ecam_v4-v6-0-d820f912e354@qti.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752277383; l=1933;
 i=krichai@qti.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=NBnIXgXK6Trlsnr6CsojwAon1qRSKMZl8uFGRJ7oMJc=;
 b=0z1CvtLP6c2xTt2ueNc3NFR+LEvWRjutC4Thlotpk3pqH6sc+7hGFtvdR+4JssLP6eMuU2RYA
 GrA51P6OGgIA/llFPOVZ5xRs4Uw6TyBf+CHn66E22ENiDpBb8nz6eWY
X-Developer-Key: i=krichai@qti.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=Ar7u3P9P c=1 sm=1 tr=0 ts=6871a19e cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Py5lcOcq67Lbq8UMOfUA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 657LM7HRTLXqgt7AsCA1MGNaxUXyUbwA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDE4MCBTYWx0ZWRfX8WovA4yFMTq9
 kH5y0VIWmSJp3WV4ALnUJ3laaRnGmdXIXgrm4n2c1oagvcN8YwNT4t2si2UfDEG6yC0affmG3Qi
 WIkzM66RyIO0qdeIhxBDQj4b0ZlrLduymNib5miF2ydsncTDIJdEOZbyckan0wrYuvIpoWuPFGQ
 VyAveCBAbFryQFO0V8oy4qLDsJXxXG7930Q7z5HqbALLEjQFFP8ajzR0xAXdDhTOCSQDNLgG6Sf
 a9vmFMwJoJHBuTif4hLsO+kvrjMS0VHCMx4AW4f58hXP9Z9IhYvG2oEHIPZlNIlc2FqoNZcr68/
 wt0gcswkrIxKaV3vLTOWVCJn24gZvzZWyrQH6hwa6LN3sTaOl4tRR6ZElmutBBSOAZfa8xR8n8S
 7D6Jdopr1TUCzFmRBXhRUb2n2EZ1QabTrzHRYS5zFwigJaxksAvz2ekDVI//INb0E6ClJjYf
X-Proofpoint-GUID: 657LM7HRTLXqgt7AsCA1MGNaxUXyUbwA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_07,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=999 clxscore=1015 adultscore=0
 phishscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507110180

Instead of using qcom ELBI resources mapping let the DWC core map it
ELBI is DWC specific.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index c789e3f856550bcfa1ce09962ba9c086d117de05..6acbf17caf90b0582b31bc4ee3a99601d078a45a 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -265,7 +265,6 @@ struct qcom_pcie_cfg {
 struct qcom_pcie {
 	struct dw_pcie *pci;
 	void __iomem *parf;			/* DT parf */
-	void __iomem *elbi;			/* DT elbi */
 	void __iomem *mhi;
 	union qcom_pcie_resources res;
 	struct phy *phy;
@@ -390,12 +389,17 @@ static void qcom_pcie_configure_dbi_atu_base(struct qcom_pcie *pcie)
 
 static void qcom_pcie_2_1_0_ltssm_enable(struct qcom_pcie *pcie)
 {
+	struct dw_pcie *pci = pcie->pci;
 	u32 val;
 
+	if (!pci->elbi_base) {
+		dev_err(pci->dev, "ELBI is not present\n");
+		return;
+	}
 	/* enable link training */
-	val = readl(pcie->elbi + ELBI_SYS_CTRL);
+	val = readl(pci->elbi_base + ELBI_SYS_CTRL);
 	val |= ELBI_SYS_CTRL_LT_ENABLE;
-	writel(val, pcie->elbi + ELBI_SYS_CTRL);
+	writel(val, pci->elbi_base + ELBI_SYS_CTRL);
 }
 
 static int qcom_pcie_get_resources_2_1_0(struct qcom_pcie *pcie)
@@ -1631,12 +1635,6 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 		goto err_pm_runtime_put;
 	}
 
-	pcie->elbi = devm_platform_ioremap_resource_byname(pdev, "elbi");
-	if (IS_ERR(pcie->elbi)) {
-		ret = PTR_ERR(pcie->elbi);
-		goto err_pm_runtime_put;
-	}
-
 	/* MHI region is optional */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mhi");
 	if (res) {

-- 
2.34.1


