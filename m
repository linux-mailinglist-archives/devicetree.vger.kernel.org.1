Return-Path: <devicetree+bounces-60145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E98F8A84E0
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 15:38:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1CEB1C20DF8
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 13:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAA431411D0;
	Wed, 17 Apr 2024 13:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="YjBTYRtf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20716140375;
	Wed, 17 Apr 2024 13:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713361086; cv=none; b=SKwBUSVwCtjEmOh3G7tlV48fqsvLJpqjmRM7P5AMOd+/4+wQubhsJXwZPCU6lPShratP5iRlwQn/0B+00jeFUzlc6jQyzebRs1fEM1kwBoIsFnsv1GmDeB/Q8WCefFXSABWYXAAQGtQcGOxeQB8rhi75ydHqC5pz2rTNnJY6N3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713361086; c=relaxed/simple;
	bh=CqoEd0wLcIC4hS6m6NvFliL5pxkXkKB+UnSmqcg24W0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YZf735vyugNNHg5vM+xk4dKXTiqfuhYR7L4YgMOX6i9xwfc8zSLF0uTfimKh0g78on/cTdRbEUGUQze/t58MUROkKcIhmxH93anh7UoKGdyzbZ2XHOws0/0VRuqtNDO12DbKGac8782sBKuidLMXT3Lq9CmYSuXxIfjpy/uKXEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=YjBTYRtf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 43HACWXp023131;
	Wed, 17 Apr 2024 13:37:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	qcppdkim1; bh=gq5Y6fts4+0RLwl3h1ZZJoRJGSHxELdkuZ0ASezVLjQ=; b=Yj
	BTYRtf9a21gcTx7HF+ZW4K6bJMVAbKE2Umvc5BeUiqWM0H7VpmHw/igOB0N1LrTl
	on5T6q7T1CDFXffyDfMDZgV4sw48ju1olkNr6LaBR8Hb4g7Bq855t+Eq1trTfLpY
	hkbXddWeD/Kpfq/NSJX+ZxYz8iFRvoTkRY6UwatK1IEMRt1bTjQSk/hRjPXxQSM+
	Q0JseuVcat42/sglkmH8nNPvvhaqyEmT5hzLRD6FM7i7Y4KZM8cKVYqK1aEg91cc
	RWCr1FJzi+NrMJReRVHvB+suO7PweM5u3q3gFi+EW/TbZjAC7nVFZbMjVaOaqRcH
	aiq5TSLT+A3bNEKEfeVA==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xjceh0fgs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 Apr 2024 13:37:47 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43HDbk98030713
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 17 Apr 2024 13:37:46 GMT
Received: from hu-c-gdjako-lv.qualcomm.com (10.49.16.6) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 17 Apr 2024 06:37:45 -0700
From: Georgi Djakov <quic_c_gdjako@quicinc.com>
To: <will@kernel.org>, <robin.murphy@arm.com>, <joro@8bytes.org>,
        <iommu@lists.linux.dev>
CC: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robdclark@gmail.com>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <quic_cgoldswo@quicinc.com>, <quic_sukadev@quicinc.com>,
        <quic_pdaly@quicinc.com>, <quic_sudaraja@quicinc.com>,
        <djakov@kernel.org>
Subject: [PATCH v8 4/7] iommu/arm-smmu-qcom: Use a custom context fault handler for sdm845
Date: Wed, 17 Apr 2024 06:37:28 -0700
Message-ID: <20240417133731.2055383-5-quic_c_gdjako@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240417133731.2055383-1-quic_c_gdjako@quicinc.com>
References: <20240417133731.2055383-1-quic_c_gdjako@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ZPvc9gdfCgVNsjbD2wA4QNaWJGZ7_M5R
X-Proofpoint-ORIG-GUID: ZPvc9gdfCgVNsjbD2wA4QNaWJGZ7_M5R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-17_10,2024-04-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404170094

The sdm845 platform now supports TBUs, so let's get additional debug
info from the TBUs when a context fault occurs. Implement a custom
context fault handler that does both software + hardware page table
walks and TLB Invalidate All.

Signed-off-by: Georgi Djakov <quic_c_gdjako@quicinc.com>
---
 .../iommu/arm/arm-smmu/arm-smmu-qcom-debug.c  | 143 ++++++++++++++++++
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c    |   4 +
 2 files changed, 147 insertions(+)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom-debug.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom-debug.c
index eff7ca94ec8d..552199cbd9e2 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom-debug.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom-debug.c
@@ -345,6 +345,149 @@ static phys_addr_t qcom_iova_to_phys(struct arm_smmu_domain *smmu_domain,
 	return phys;
 }
 
+static phys_addr_t qcom_smmu_iova_to_phys_hard(struct arm_smmu_domain *smmu_domain, dma_addr_t iova)
+{
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	int idx = smmu_domain->cfg.cbndx;
+	u32 frsynra;
+	u16 sid;
+
+	frsynra = arm_smmu_gr1_read(smmu, ARM_SMMU_GR1_CBFRSYNRA(idx));
+	sid = FIELD_GET(ARM_SMMU_CBFRSYNRA_SID, frsynra);
+
+	return qcom_iova_to_phys(smmu_domain, iova, sid);
+}
+
+static phys_addr_t qcom_smmu_verify_fault(struct arm_smmu_domain *smmu_domain, dma_addr_t iova, u32 fsr)
+{
+	struct io_pgtable *iop = io_pgtable_ops_to_pgtable(smmu_domain->pgtbl_ops);
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	phys_addr_t phys_post_tlbiall;
+	phys_addr_t phys;
+
+	phys = qcom_smmu_iova_to_phys_hard(smmu_domain, iova);
+	io_pgtable_tlb_flush_all(iop);
+	phys_post_tlbiall = qcom_smmu_iova_to_phys_hard(smmu_domain, iova);
+
+	if (phys != phys_post_tlbiall) {
+		dev_err(smmu->dev,
+			"ATOS results differed across TLBIALL... (before: %pa after: %pa)\n",
+			&phys, &phys_post_tlbiall);
+	}
+
+	return (phys == 0 ? phys_post_tlbiall : phys);
+}
+
+irqreturn_t qcom_smmu_context_fault(int irq, void *dev)
+{
+	struct arm_smmu_domain *smmu_domain = dev;
+	struct io_pgtable_ops *ops = smmu_domain->pgtbl_ops;
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	u32 fsr, fsynr, cbfrsynra, resume = 0;
+	int idx = smmu_domain->cfg.cbndx;
+	phys_addr_t phys_soft;
+	unsigned long iova;
+	int ret, tmp;
+
+	static DEFINE_RATELIMIT_STATE(_rs,
+				      DEFAULT_RATELIMIT_INTERVAL,
+				      DEFAULT_RATELIMIT_BURST);
+
+	fsr = arm_smmu_cb_read(smmu, idx, ARM_SMMU_CB_FSR);
+	if (!(fsr & ARM_SMMU_FSR_FAULT))
+		return IRQ_NONE;
+
+	fsynr = arm_smmu_cb_read(smmu, idx, ARM_SMMU_CB_FSYNR0);
+	iova = arm_smmu_cb_readq(smmu, idx, ARM_SMMU_CB_FAR);
+	cbfrsynra = arm_smmu_gr1_read(smmu, ARM_SMMU_GR1_CBFRSYNRA(idx));
+
+	if (list_empty(&tbu_list)) {
+		ret = report_iommu_fault(&smmu_domain->domain, NULL, iova,
+					 fsynr & ARM_SMMU_FSYNR0_WNR ? IOMMU_FAULT_WRITE : IOMMU_FAULT_READ);
+
+		if (ret == -ENOSYS)
+			dev_err_ratelimited(smmu->dev,
+					    "Unhandled context fault: fsr=0x%x, iova=0x%08lx, fsynr=0x%x, cbfrsynra=0x%x, cb=%d\n",
+					    fsr, iova, fsynr, cbfrsynra, idx);
+
+		arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_FSR, fsr);
+		return IRQ_HANDLED;
+	}
+
+	phys_soft = ops->iova_to_phys(ops, iova);
+
+	tmp = report_iommu_fault(&smmu_domain->domain, NULL, iova,
+				 fsynr & ARM_SMMU_FSYNR0_WNR ? IOMMU_FAULT_WRITE : IOMMU_FAULT_READ);
+	if (!tmp || tmp == -EBUSY) {
+		dev_dbg(smmu->dev,
+			"Context fault handled by client: iova=0x%08lx, fsr=0x%x, fsynr=0x%x, cb=%d\n",
+			iova, fsr, fsynr, idx);
+		dev_dbg(smmu->dev, "soft iova-to-phys=%pa\n", &phys_soft);
+		ret = IRQ_HANDLED;
+		resume = ARM_SMMU_RESUME_TERMINATE;
+	} else {
+		phys_addr_t phys_atos = qcom_smmu_verify_fault(smmu_domain, iova, fsr);
+
+		if (__ratelimit(&_rs)) {
+			dev_err(smmu->dev,
+				"Unhandled context fault: fsr=0x%x, iova=0x%08lx, fsynr=0x%x, cbfrsynra=0x%x, cb=%d\n",
+				fsr, iova, fsynr, cbfrsynra, idx);
+			dev_err(smmu->dev,
+				"FSR    = %08x [%s%s%s%s%s%s%s%s%s], SID=0x%x\n",
+				fsr,
+				(fsr & 0x02) ? "TF " : "",
+				(fsr & 0x04) ? "AFF " : "",
+				(fsr & 0x08) ? "PF " : "",
+				(fsr & 0x10) ? "EF " : "",
+				(fsr & 0x20) ? "TLBMCF " : "",
+				(fsr & 0x40) ? "TLBLKF " : "",
+				(fsr & 0x80) ? "MHF " : "",
+				(fsr & 0x40000000) ? "SS " : "",
+				(fsr & 0x80000000) ? "MULTI " : "",
+				cbfrsynra);
+
+			dev_err(smmu->dev,
+				"soft iova-to-phys=%pa\n", &phys_soft);
+			if (!phys_soft)
+				dev_err(smmu->dev,
+					"SOFTWARE TABLE WALK FAILED! Looks like %s accessed an unmapped address!\n",
+					dev_name(smmu->dev));
+			if (phys_atos)
+				dev_err(smmu->dev, "hard iova-to-phys (ATOS)=%pa\n",
+					&phys_atos);
+			else
+				dev_err(smmu->dev, "hard iova-to-phys (ATOS) failed\n");
+		}
+		ret = IRQ_NONE;
+		resume = ARM_SMMU_RESUME_TERMINATE;
+	}
+
+	/*
+	 * If the client returns -EBUSY, do not clear FSR and do not RESUME
+	 * if stalled. This is required to keep the IOMMU client stalled on
+	 * the outstanding fault. This gives the client a chance to take any
+	 * debug action and then terminate the stalled transaction.
+	 * So, the sequence in case of stall on fault should be:
+	 * 1) Do not clear FSR or write to RESUME here
+	 * 2) Client takes any debug action
+	 * 3) Client terminates the stalled transaction and resumes the IOMMU
+	 * 4) Client clears FSR. The FSR should only be cleared after 3) and
+	 *    not before so that the fault remains outstanding. This ensures
+	 *    SCTLR.HUPCF has the desired effect if subsequent transactions also
+	 *    need to be terminated.
+	 */
+	if (tmp != -EBUSY) {
+		/* Clear the faulting FSR */
+		arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_FSR, fsr);
+
+		/* Retry or terminate any stalled transactions */
+		if (fsr & ARM_SMMU_FSR_SS)
+			arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_RESUME, resume);
+	}
+
+	return ret;
+}
+
 static int qcom_tbu_probe(struct platform_device *pdev)
 {
 	struct of_phandle_args args = { .args_count = 2 };
diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index 5c7cfc51b57c..a901230dbabd 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -422,6 +422,10 @@ static const struct arm_smmu_impl sdm845_smmu_500_impl = {
 	.reset = qcom_sdm845_smmu500_reset,
 	.write_s2cr = qcom_smmu_write_s2cr,
 	.tlb_sync = qcom_smmu_tlb_sync,
+#ifdef CONFIG_ARM_SMMU_QCOM_DEBUG
+	.context_fault = qcom_smmu_context_fault,
+	.context_fault_needs_threaded_irq = true,
+#endif
 };
 
 static const struct arm_smmu_impl qcom_adreno_smmu_v2_impl = {

