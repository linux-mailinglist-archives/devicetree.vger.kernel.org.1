Return-Path: <devicetree+bounces-133857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9F69FBF0C
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 15:13:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F83C164B12
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 14:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 092C41DB55C;
	Tue, 24 Dec 2024 14:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="il/TPmrg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378DB1DB34E
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 14:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735049467; cv=none; b=cMSK6XqpdYCOGQOvrbi6jA5RUJlcFA4oT+nCKY7fLxvzeWhnp6CAStwMUsxfP/ov7txbxT/LCN3zswmWJNx3ugtRmZueLhSiV3tNnQTVahKVQMEkyYAEJp2gL+lD3o6FtwKRsucIHPSvIlDFGSBDvwjgy7fXetR0L/UdRu79O4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735049467; c=relaxed/simple;
	bh=wUYvHZAm3A/KcGP43qeUWycLI5gU56sEXnr/Lx8vtfw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XgglvxRJh1vUxGgt1T1l52XiMTrVZqOqbVCUcYe6bOn5PaNbyDh2EpmE3UrSXLAAJ2bjCobgweBSb9hurcY2EwAc8BY4hQAecRTUghxojCHwcQU7CU1VYP6v6coTY7UP8n65WB2dgDFc4wc++d6r9sBv6Zwb+o3LEt2xQlGmdok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=il/TPmrg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BOAfwR2028410
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 14:11:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vPQy9s4x824wAEkt8ywhd2HnwSF0tV7LCRg9PNd+bLc=; b=il/TPmrgxXzjYejR
	KrH1oV6naHe4APpK9pgQLFyET7/4BTk9nU8tLz1AKQt3mi4OIxkJmg3biyX6fLUo
	CvPlMqNmM5lLSCH8mpwmqoXcw23UxuZXZbxA1Sk4jyx8JqkZvvuxW7tPpOTsxjSy
	D8W1MFPD82ENQsZewb/xAIPWZckZCZQDlee1ty3BhKHtSwUnD9ToA7EWlnzCQrOB
	CLVHRUFzAjqtLpPFYeIw6rFv3u8qzhbzBuU3QGLl2MNdt8D68wLdvcRA1PImQOpK
	P1DX8c9wI5EsaM7FsKEZQTsgzM0WMLIUz9Q9sX3BzgwwjyegbYaj81lri1VvVK0E
	oHNN/w==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43qjqvkf0v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 14:11:04 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-2ef8c7ef51dso5058779a91.1
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 06:11:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735049464; x=1735654264;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vPQy9s4x824wAEkt8ywhd2HnwSF0tV7LCRg9PNd+bLc=;
        b=LKEYEiG0ONiXyW4UGUoCgwCW6aaaLqXE0l/gV5tG+zIOBaKje8xM/rOwLbRO+qZBz4
         PL03cmnZVyGV7Ias72O+fxwdaIZmvatluyaf/qcB7UhNfpIInjg8RhgZ1FiARZS5/doE
         5rrohHh6E1u/Okt7o/Aw3YFwTZJMpfKzNikdH00C22nl/DKoD/FSAytutSW9tPz6VCkn
         69qXFEJT9YAXYNWrh+I5iIfRhdZGMH4cyFfM+00mhuhYUxJKMIWb5FVhcy8PhPP7h969
         0ygl5OnWBY4PKtcgGZXKQ/gU46+0tldJbrAq6+7I0BwdNipzLOTP8gSWB99n2enULxo7
         Auiw==
X-Forwarded-Encrypted: i=1; AJvYcCXPFQQLj4bsbpVseD714vezmAHIMwZWHhrvBH3FWZhDL0PawPe8f1s/lnh8dLnrmHcnEvLnpJl1dWl0@vger.kernel.org
X-Gm-Message-State: AOJu0YxhWfYm6vbbiJU7yJrdI8BEj09pmcPLXDfFq+7VUhMUjQd5Y4pk
	GPdzu7Ut17EETtqu6Tjx0cpk1gJ4tDk7DcN+jpnqbZ/3ut6PzZpupUSpmT6I7c/SLJoq1M3GJ4E
	i58kFtwjSIUTUYO5auAkmvcn4zBBa/QxVPeA1qFvGi/UK1OTULts2i5zlOh0d
X-Gm-Gg: ASbGnctqUP7VIRJp+WcFG4xLBYkhV8WVZqQM54gcUNuE5NQ+1rZr8fqnHP8yCAY8KDx
	jK/k3sxArfQYOyuerG8WQs6wSQEzP/W5Y4LzoTzEZEGbPkTmm6gwQwlI18LMSC6AObzHZXMmILh
	p4eq9DzNejaIvEiM0zOs0j2LYwtpYLV/6GwbVG6pBLgehPsvhsvdmkjVX3NXu0rqwQG8ee8sMzP
	ep24FEdjteBaSrQ1xvFLFbpLzSYG9MHahFKZTgwDGrwYIv+aUC63sE18d7tn+cNz6m6nGMW0uY/
	Pgl0DMW82Y88c/zW
X-Received: by 2002:a05:6a00:7428:b0:725:4a1b:38ec with SMTP id d2e1a72fcca58-72aa9a10440mr28763221b3a.3.1735049463610;
        Tue, 24 Dec 2024 06:11:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IErff/FA1vKquEFtYhlg+zdGdF4K7JzJ02E1k3WXm+tdcOzvFvSCIJeGGmW9knAoOWGJCCAyw==
X-Received: by 2002:a05:6a00:7428:b0:725:4a1b:38ec with SMTP id d2e1a72fcca58-72aa9a10440mr28763175b3a.3.1735049463166;
        Tue, 24 Dec 2024 06:11:03 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad90b8f5sm9691216b3a.194.2024.12.24.06.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 06:11:02 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 24 Dec 2024 19:40:18 +0530
Subject: [PATCH v2 4/4] PCI: qcom: Enable ECAM feature
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-enable_ecam-v2-4-43daef68a901@oss.qualcomm.com>
References: <20241224-enable_ecam-v2-0-43daef68a901@oss.qualcomm.com>
In-Reply-To: <20241224-enable_ecam-v2-0-43daef68a901@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_vpernami@quicinc.com,
        quic_mrana@quicinc.com, mmareddy@quicinc.com,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735049433; l=6085;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=SYsZuISEFecO0dItPGcTh+FGUKWuxe8fmZZ5miNptNM=;
 b=dLBEFEgy1I5Gl1ZJAKGNY0qz6PpU7YGeC8ekRh7iiq6BJwbg6v31pm9WdBv1yxGgCqiFpqTsM
 zKTdDCvesKEAwi0z29XkkxKSQXAIBO5IzcBlW9NEbOn1SUMfYkE6DFX
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: JfJqBEQt4vfYMU4qDP43upQL4xku2vHB
X-Proofpoint-GUID: JfJqBEQt4vfYMU4qDP43upQL4xku2vHB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=999 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412240122

From: Krishna chaitanya chundru <quic_krichai@quicinc.com>

The ELBI registers falls after the DBI space, PARF_SLV_DBI_ELBI register
gives us the offset from which ELBI starts. so use this offset and cfg
win to map these regions instead of doing the ioremap again.

On root bus, we have only the root port. Any access other than that
should not go out of the link and should return all F's. Since the iATU
is configured for the buses which starts after root bus, block the
transactions starting from function 1 of the root bus to the end of
the root bus (i.e from dbi_base + 4kb to dbi_base + 1MB) from going
outside the link through ECAM blocker through PARF registers.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 81 ++++++++++++++++++++++++++++++++--
 1 file changed, 77 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index dc102d8bd58c..cf94718d3059 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -52,6 +52,7 @@
 #define PARF_AXI_MSTR_WR_ADDR_HALT_V2		0x1a8
 #define PARF_Q2A_FLUSH				0x1ac
 #define PARF_LTSSM				0x1b0
+#define PARF_SLV_DBI_ELBI			0x1b4
 #define PARF_INT_ALL_STATUS			0x224
 #define PARF_INT_ALL_CLEAR			0x228
 #define PARF_INT_ALL_MASK			0x22c
@@ -61,6 +62,17 @@
 #define PARF_DBI_BASE_ADDR_V2_HI		0x354
 #define PARF_SLV_ADDR_SPACE_SIZE_V2		0x358
 #define PARF_SLV_ADDR_SPACE_SIZE_V2_HI		0x35c
+#define PARF_BLOCK_SLV_AXI_WR_BASE		0x360
+#define PARF_BLOCK_SLV_AXI_WR_BASE_HI		0x364
+#define PARF_BLOCK_SLV_AXI_WR_LIMIT		0x368
+#define PARF_BLOCK_SLV_AXI_WR_LIMIT_HI		0x36c
+#define PARF_BLOCK_SLV_AXI_RD_BASE		0x370
+#define PARF_BLOCK_SLV_AXI_RD_BASE_HI		0x374
+#define PARF_BLOCK_SLV_AXI_RD_LIMIT		0x378
+#define PARF_BLOCK_SLV_AXI_RD_LIMIT_HI		0x37c
+#define PARF_ECAM_BASE				0x380
+#define PARF_ECAM_BASE_HI			0x384
+
 #define PARF_NO_SNOOP_OVERIDE			0x3d4
 #define PARF_ATU_BASE_ADDR			0x634
 #define PARF_ATU_BASE_ADDR_HI			0x638
@@ -84,6 +96,7 @@
 
 /* PARF_SYS_CTRL register fields */
 #define MAC_PHY_POWERDOWN_IN_P2_D_MUX_EN	BIT(29)
+#define PCIE_ECAM_BLOCKER_EN			BIT(26)
 #define MST_WAKEUP_EN				BIT(13)
 #define SLV_WAKEUP_EN				BIT(12)
 #define MSTR_ACLK_CGC_DIS			BIT(10)
@@ -294,15 +307,60 @@ static void qcom_ep_reset_deassert(struct qcom_pcie *pcie)
 	usleep_range(PERST_DELAY_US, PERST_DELAY_US + 500);
 }
 
+static int qcom_pci_config_ecam(struct dw_pcie_rp *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct qcom_pcie *pcie = to_qcom_pcie(pci);
+	u64 addr, addr_end;
+	u32 val;
+
+	/* Set the ECAM base */
+	writel(lower_32_bits(pci->dbi_phys_addr), pcie->parf + PARF_ECAM_BASE);
+	writel(upper_32_bits(pci->dbi_phys_addr), pcie->parf + PARF_ECAM_BASE_HI);
+
+	/*
+	 * The only device on root bus is the Root Port. Any access other than that
+	 * should not go out of the link and should return all F's. Since the iATU
+	 * is configured for the buses which starts after root bus, block the transactions
+	 * starting from function 1 of the root bus to the end of the root bus (i.e from
+	 * dbi_base + 4kb to dbi_base + 1MB) from going outside the link.
+	 */
+	addr = pci->dbi_phys_addr + SZ_4K;
+	writel(lower_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_WR_BASE);
+	writel(upper_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_WR_BASE_HI);
+
+	writel(lower_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_RD_BASE);
+	writel(upper_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_RD_BASE_HI);
+
+	addr_end = pci->dbi_phys_addr + SZ_1M - 1;
+
+	writel(lower_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_WR_LIMIT);
+	writel(upper_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_WR_LIMIT_HI);
+
+	writel(lower_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_RD_LIMIT);
+	writel(upper_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_RD_LIMIT_HI);
+
+	val = readl(pcie->parf + PARF_SYS_CTRL);
+	val |= PCIE_ECAM_BLOCKER_EN;
+	writel(val, pcie->parf + PARF_SYS_CTRL);
+	return 0;
+}
+
 static int qcom_pcie_start_link(struct dw_pcie *pci)
 {
 	struct qcom_pcie *pcie = to_qcom_pcie(pci);
+	int ret;
 
 	if (pcie_link_speed[pci->max_link_speed] == PCIE_SPEED_16_0GT) {
 		qcom_pcie_common_set_16gt_equalization(pci);
 		qcom_pcie_common_set_16gt_lane_margining(pci);
 	}
 
+	if (pci->pp.ecam_mode) {
+		ret = qcom_pci_config_ecam(&pci->pp);
+		if (ret)
+			return ret;
+	}
 	/* Enable Link Training state machine */
 	if (pcie->cfg->ops->ltssm_enable)
 		pcie->cfg->ops->ltssm_enable(pcie);
@@ -1233,6 +1291,7 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct qcom_pcie *pcie = to_qcom_pcie(pci);
+	u16 offset;
 	int ret;
 
 	qcom_ep_reset_assert(pcie);
@@ -1241,6 +1300,11 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	if (ret)
 		return ret;
 
+	if (pp->ecam_mode) {
+		offset = readl(pcie->parf + PARF_SLV_DBI_ELBI);
+		pcie->elbi = pci->dbi_base + offset;
+	}
+
 	ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
 	if (ret)
 		goto err_deinit;
@@ -1613,6 +1677,13 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 	pci->ops = &dw_pcie_ops;
 	pp = &pci->pp;
 
+	pp->bridge = devm_pci_alloc_host_bridge(dev, 0);
+	if (!pp->bridge) {
+		ret = -ENOMEM;
+		goto err_pm_runtime_put;
+	}
+
+	pci->pp.ecam_mode = dw_pcie_ecam_supported(pp);
 	pcie->pci = pci;
 
 	pcie->cfg = pcie_cfg;
@@ -1629,10 +1700,12 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 		goto err_pm_runtime_put;
 	}
 
-	pcie->elbi = devm_platform_ioremap_resource_byname(pdev, "elbi");
-	if (IS_ERR(pcie->elbi)) {
-		ret = PTR_ERR(pcie->elbi);
-		goto err_pm_runtime_put;
+	if (!pp->ecam_mode) {
+		pcie->elbi = devm_platform_ioremap_resource_byname(pdev, "elbi");
+		if (IS_ERR(pcie->elbi)) {
+			ret = PTR_ERR(pcie->elbi);
+			goto err_pm_runtime_put;
+		}
 	}
 
 	/* MHI region is optional */

-- 
2.34.1


