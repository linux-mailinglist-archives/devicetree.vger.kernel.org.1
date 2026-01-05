Return-Path: <devicetree+bounces-251513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3A0CF3C71
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:26:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0AEB3030FEF
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8879633D6FB;
	Mon,  5 Jan 2026 13:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YQghvKkv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cdM9YC2G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4BCD33DECD
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619435; cv=none; b=pQUsbo0esbxRIvtgXR76ba8uqqlOX2ZMzSOPqeFY5OTZLTueLbf8kPMgMzxuSrSnSfRtNY4ncHhqRq2szIyJAmHOhp7+ySVuNeHvgMkP5WB80JP3As3aEl08/linSd1n+iqK9gnT3iETCH+63QDLzt4ByqWrl5/YtDJ/kOv/h+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619435; c=relaxed/simple;
	bh=2DBhRl0IrbEGORjCMRdcnMv1YwAZ0EWa5bKeuKqAi0Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=na97O3kQtpyYLbIVgni6Ue8/FrDIaVNO5oTgbaIHhfwnQjZ4qLA0NWVkw5FELwsAwiOxPtdlxAn+PCVTl7to11WYRRcWwJzIHZx0yrENI4xHFN9/MUg73tUXunOsW/zXivD15h9FWIiga+WGm7FtfQSnWRbxNRkoFa0lxfq+z04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YQghvKkv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cdM9YC2G; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058L6q51113132
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:23:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cKCQ9aHSsPPhuwQM80Usl9MqjI0vkKaSKtbQU2Gl8os=; b=YQghvKkvvjzLzupo
	9LkSb8TKXS8QqUK41jbJRGJ+Cqnkf2SYZc61XyCiShX9Cc/I3iR0xh1Ye3Y4DCVM
	Pk4Q9YLrqdQyKXDejJnkv7b+dbWIgYY/ztB85H4lbacyWE+r8kaRBSYX+Uyb8R6A
	zOsO/OI0q3NcORekiW2YN3rqqfJ9NtD/jk5/3KuY4l4SDEYrGZiT3I3dLDfp+2iD
	CG9u/c2vvMCtMGEFaf0/1AjQDxDd7dmfE4Jw1zmZngzZibK9LIVmR/DOQpuk937G
	mxqMSWVQdDwrey9IrvOlL5fLYlZAqrUhktbaOH+qcJLTDjOVNq/EJS4yknGeRTto
	rFRvSw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bev9hch84-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:23:53 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7ba92341f38so15119718b3a.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767619432; x=1768224232; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cKCQ9aHSsPPhuwQM80Usl9MqjI0vkKaSKtbQU2Gl8os=;
        b=cdM9YC2GopY4v/vStpJFtzQnlM52tICTIW4DkFhTf1lLdjWSBEUd1DvHMCl4zbzwLm
         HYwq0g8ajOQW7hBFMtcV92u0noosD9wtne0PHezeIj3vn1LLTIGyB99XiTHsCOg9ucDO
         o6RvJcg3p84iE7zJ1Iaf1zyT/B56ijoZs9mxwExva+r+leQ6blpn6uaXEQz62YRtWBzl
         DyhIETYRQZRKmWhKaa+QSv4QthHlCsBDhp/2uF4bBwwNyT+w9YzN6T6FLbmKOpbrPb33
         BKe7xHiqzpScQX7lce8MWDXfeyRpANLastTG03dKqDJXM4f9KJMTG15aMgCCMugv3D4v
         0/IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767619432; x=1768224232;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cKCQ9aHSsPPhuwQM80Usl9MqjI0vkKaSKtbQU2Gl8os=;
        b=Rx9R3avNXAH5eYxHgNwXk/X5K1mLJz4HBsRm6XP87G3UBFVCe4vMd6R7LuMP3WyUad
         lzNx6cCfqjRwyktPDUtzeKI5mdA4tcBEEgBK4LXauGfZoj7ZgFNtj+7NBRGM14Mu3q1O
         snfvTXUODKoiAV6Z4ZPHXyUMeKVo636zrwH84cQSu6N+KGUJ1vap1B5kROuFNC14oIfY
         yGT2t9T+Jyo04GH1gsClEyiHNAJKvZFPhhwtPWRkW2Tf0dFLnLk5glvR2JbGI81Og2s5
         2IDhywiOdfMpxCUN76q6vyTcIOlV47BhBPGfrPmT2z7Mav9Udc8jK4NvkUNQnEd18bR/
         /leg==
X-Forwarded-Encrypted: i=1; AJvYcCWrXvGs5xUJKXQij4WWU5WM1BFPy52zeg9nb3bqZbcJdk6MMVYkYYV/hnCdivz49o0hN8JTW9z8lXoD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4yO/WOieu4aJbUqbB/YYE5r+gNOVrVQfpfXWkSGI8kBdeeoJp
	cRxvtn6jTuaRdpCE6AUVL6ENjC21C1X7Hev8RhltLNaLt7vgGwaMbpsyXU9lD+PGt2SXX8w2NFH
	iOa7tWRo7Khei7sMxgrCNW4sFIgVTwh7xOHtSJc3+E2v/BCTjTmGkP0fdJUMcEqXS
X-Gm-Gg: AY/fxX5+D4Wi/QdmswK/XVF4sadPVF6tF3eZbdsPXafpfi82sVYMgcqLDiwWHwD3RMg
	cE1YXlBu54OwqJy7hcQyH2hbnU4edutmH1HidaQuJQ3hJMtjNa5lFswYIy/JCLFAe/ZsoDU024y
	SToCb228kFXJz2HUaB14ESFfWH6TE3qSplyd+BVquZkjoLcZMJPA2P/sol6g2fMoBi0GGz0FUO4
	YVbTC+U/vYg0xF0UbVGKoPyUD8Yw0gYxnA7OksW0VFVdpNnHh0giEh+N54BPk7iv+BAtwyC3Fm2
	lDWk4NI3wf/EJq0cbar1SnML2P4Cwb04weP0X3nrmA2Qs67tVj3j5tn5rwHxnsZjgjRFwJyTz62
	Vub8UfRrieZeZ+5HVa+pspL/O1WNKw4kjLYiU
X-Received: by 2002:a05:6a00:3286:b0:7ee:f5d7:cd9a with SMTP id d2e1a72fcca58-7ff6725628cmr36269406b3a.46.1767619432202;
        Mon, 05 Jan 2026 05:23:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE2XG3XjN5QeNn1sM3zpPqePFCmYcJHIrLCz+qQAstP8Q2dqozx8LgASDzhYYNzS05njEATcA==
X-Received: by 2002:a05:6a00:3286:b0:7ee:f5d7:cd9a with SMTP id d2e1a72fcca58-7ff6725628cmr36269384b3a.46.1767619431344;
        Mon, 05 Jan 2026 05:23:51 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b127b00sm48426542b3a.21.2026.01.05.05.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:23:51 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 18:52:57 +0530
Subject: [PATCH v10 09/14] firmware: qcom_scm: Refactor
 qcom_scm_pas_init_image()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-kvmrprocv10-v10-9-022e96815380@oss.qualcomm.com>
References: <20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com>
In-Reply-To: <20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767619390; l=3096;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=2DBhRl0IrbEGORjCMRdcnMv1YwAZ0EWa5bKeuKqAi0Y=;
 b=Lyd/uSQ6N0rBu5eNzSv3yVQuuAHRJmikgJvMdfs4glMVU9KhN8K6xQu0RIj4ymj7pkx7/V4L8
 R65ryurv6zbCCumT5DbWMcX71/4ATIOOVgwIcjv8/tbLRapWzlRAdbH
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExNyBTYWx0ZWRfXxtxKW9bMmig6
 cX5/jQ8YlN7+/HfLstCtKMJr1P0Au64SC9PhtxkDPTacVgoMnOwyZ5bSxRhsZ/FDe/qrV098bv8
 XhPqen2F0Tm0cbhb/xtzc9tsppDjPbTJ+n1ikENo/VhGQ5h6bqCUw/GdXnk8RaNJZLPYAQiFdrH
 Osk/wX8OH/HBJ5Hm+q+KQTV6VfyjeTlvz4iH84o86VmSA8wNyJF8ZqVMreYJ0uO/MtAXcC4dhmd
 rS+8SpX8TVuGK8T/xhX0NTgBGZKznZV7htyle9hr164Bxw8IMEzD1+0aPlIELgWAAgLQLWoXEs0
 28gK8ha3LjL++EbrY1CEoM/+jNuHs+2K98UGPwQ5IXhToEEaZk/hv3AKDqESHMuwCLWVZGJf2iJ
 8KpZUgemxYw/K1nn84dznhSiCtkrA9yZuzfvJbDpfbsTpDIQLCqMyfU2sJyZbZ0lx7KeMUT2PIA
 OOWZBeBJwq/K0bz65Jw==
X-Proofpoint-GUID: 4MNS8r21vqXVuweEgl6R8xNJEAhn9sYK
X-Authority-Analysis: v=2.4 cv=RrbI7SmK c=1 sm=1 tr=0 ts=695bbb69 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=EGCBOWN0xxkO3F07DQYA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 4MNS8r21vqXVuweEgl6R8xNJEAhn9sYK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 impostorscore=0 malwarescore=0
 suspectscore=0 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050117

Refactor qcom_scm_pas_init_image() by moving the memory allocation,
copy, and free operations to a higher-level function, and isolate the
actual SMC call in a separate function. The main intention is to allow
flexibility for different allocators and to respect any constraints that
the allocator API may impose before invoking the actual SCM function.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 58 +++++++++++++++++++++++-----------------
 1 file changed, 33 insertions(+), 25 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index de71536ef591..75a57fbea74b 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -592,6 +592,37 @@ struct qcom_scm_pas_context *devm_qcom_scm_pas_context_alloc(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_alloc);
 
+static int __qcom_scm_pas_init_image(u32 pas_id, dma_addr_t mdata_phys,
+				     struct qcom_scm_res *res)
+{
+	struct qcom_scm_desc desc = {
+		.svc = QCOM_SCM_SVC_PIL,
+		.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE,
+		.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW),
+		.args[0] = pas_id,
+		.owner = ARM_SMCCC_OWNER_SIP,
+	};
+	int ret;
+
+	ret = qcom_scm_clk_enable();
+	if (ret)
+		return ret;
+
+	ret = qcom_scm_bw_enable();
+	if (ret)
+		goto disable_clk;
+
+	desc.args[1] = mdata_phys;
+
+	ret = qcom_scm_call(__scm->dev, &desc, res);
+	qcom_scm_bw_disable();
+
+disable_clk:
+	qcom_scm_clk_disable();
+
+	return ret;
+}
+
 /**
  * qcom_scm_pas_init_image() - Initialize peripheral authentication service
  *			       state machine for a given peripheral, using the
@@ -612,17 +643,10 @@ EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_alloc);
 int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 			    struct qcom_scm_pas_context *ctx)
 {
+	struct qcom_scm_res res;
 	dma_addr_t mdata_phys;
 	void *mdata_buf;
 	int ret;
-	struct qcom_scm_desc desc = {
-		.svc = QCOM_SCM_SVC_PIL,
-		.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE,
-		.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW),
-		.args[0] = pas_id,
-		.owner = ARM_SMCCC_OWNER_SIP,
-	};
-	struct qcom_scm_res res;
 
 	/*
 	 * During the scm call memory protection will be enabled for the meta
@@ -643,23 +667,7 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 
 	memcpy(mdata_buf, metadata, size);
 
-	ret = qcom_scm_clk_enable();
-	if (ret)
-		goto out;
-
-	ret = qcom_scm_bw_enable();
-	if (ret)
-		goto disable_clk;
-
-	desc.args[1] = mdata_phys;
-
-	ret = qcom_scm_call(__scm->dev, &desc, &res);
-	qcom_scm_bw_disable();
-
-disable_clk:
-	qcom_scm_clk_disable();
-
-out:
+	ret = __qcom_scm_pas_init_image(pas_id, mdata_phys, &res);
 	if (ret < 0 || !ctx) {
 		dma_free_coherent(__scm->dev, size, mdata_buf, mdata_phys);
 	} else if (ctx) {

-- 
2.50.1


