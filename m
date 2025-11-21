Return-Path: <devicetree+bounces-241009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2659BC78A43
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:04:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 7C9162915B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CAE534C83A;
	Fri, 21 Nov 2025 11:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QQOdspTO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jyX8NoMQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10A6346FD4
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763722924; cv=none; b=pqAtECmpbfbcAnTMvxRJd9RDtxKNCBR1tu+Rhb/mlYJmbl/+7TZo9ceUaHit74NxWRrieP2l+9kiF202GLXbgIjzQnx9vwjyhi4pl8Qy7fD5gZZNgcoawLs1bkbGkA5lY3qxUv1NTDnk41CJ2k1sfPtf4YjN8Zk6LdQfT0NN7Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763722924; c=relaxed/simple;
	bh=WhBuwExsVsI+8Yj8gpXVinRIooqGhxyPW83/caypxOY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lWnq5V3aZN2xCy0m6YCXh+P15F0bzMnzfwko2IUnK03S6TdwotHavzCX7+SPRrXp8ggxBnCbbUeHP8+O7VY4C47wUgoVel/Pl2MuVS7vG8ewgPmxzjeIIVk2nnY5nhY5nCPJ9pzOt0A2JJBW+ZZmtHh0MhvsBBa2uIGllE6S3DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QQOdspTO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jyX8NoMQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL7iFNa1391380
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:02:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dlX9tCMyfj6v0h2ombC9MqTa6CoSiT/Y2x1G6IPrzT8=; b=QQOdspTOhdbmS+EO
	S9SbKNUEy2nHZhFPrmcMfMf0mqo8Tb6R8qN6tThiJrI1/rmbsLHt07UK42eDNcYw
	FSdTAjd66R08SnI6M77xvDLMJ0v1R2GZxYN687EtOkRSUhQH0pR9/OpAtQO1eAuu
	bbRLde8WEUvOgPLTzdvWX4OoPdFuNBzOBmPxytr6DYyeTjEl+qMzyOnUMnuRcANH
	eXpgjK7Bzz1YHqRh6WYUbZWfDUptRDHhYlT+0PQS+xYfkgFb9Ap4Duvd534Jq0SD
	aSwhwYS0d05l/4FRh6XPFFnkBYLELScD5yjMyjEvy/YKKBPk2vQXkTPsN9U2hxcQ
	1TWJEg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajb53274n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:02:01 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-343725e6243so2881984a91.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763722921; x=1764327721; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dlX9tCMyfj6v0h2ombC9MqTa6CoSiT/Y2x1G6IPrzT8=;
        b=jyX8NoMQCzXZV6xYVAFf1QTykPy9a6J7MslcfWxM3W6JPksBneuQQrXgUeHeDgWlpZ
         P3fnWySp97pb+rPvIKNGXjiQyLkbT27o+1XDzELzL43v6ProypET2T9bol2wxEF5nQFm
         cccieOWp+BXLTKNN624yp+M/m8a+gM0uqiTaGU9/hcGMWQGG9pUMbjg0lj2jj8O8N48q
         CBR6Kp1WrujyMH6sDrV6ZYQC9z40bliRNMrw+sb6Su7uSKH9jfr+NlLPSf26GBZGH8FE
         XzUwdMrkkOg7W1MHroRwqTgjRGFxgL+5ZjFrTdMyF7ux96sRNgGmmWyPHsnVywxsfz81
         3Hmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763722921; x=1764327721;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dlX9tCMyfj6v0h2ombC9MqTa6CoSiT/Y2x1G6IPrzT8=;
        b=v/EKB8QOzLhpN9ABzVrYyqzXqPOPAqIhBhsvuLI0NOJYaVGoVosWNBjO5CgLRGL7Wc
         cE4BPTt5FdM60taUjXw8OR68ZNHacC7RsiTMoWDllsvhoxBwV96Ao//HMh5hzsRJn8O8
         q1ljQa3G0rbTaO5Ldu3DIKtojJoIgZR3Zhsh7yjdyhktWlCVFJIq2L33UTuUfFlWXbxG
         TekrrJfIXOGQ8EBzxBI+2QxbXtzOEWLQ+JW3sAqMLjuF6IOIenWExrJIZoTla32WP6Yl
         nYh++gZ1fUvGhVIYKR596hAuMoHGMr6hN2oLLVwunwHnYM308udZ/j4UstXNxpiF6MY2
         Iwog==
X-Forwarded-Encrypted: i=1; AJvYcCU+dyPcAyKRrX7bo9ov1f+/150PflKfMOFJGL8QryxX2HHB1gxFgL12I0aGlkPlTm5i2mNQVZ1JAKfp@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4GXlC6eHz+6kU/dFFyUgw+uXi9l252S+5HHAtKLwrfKammYMI
	LYSuWcs838ITBl5Lq/faex2dviijfovm1c7fXdeIZW9jzVolnZDrCl9PlKIRe6wAHH70KTHqVpv
	3tEB4JfUbczm+pYrev94Vkdh6n5enlTsgK9Rfeq60Luozjxr7pOIibBLgQezVBY8H
X-Gm-Gg: ASbGnct1Ka5sB0BFxYeBSaWJJuhuVK9UHILuP1p2Dvb/rHVbNxNcnRc9ltHlCiu6ozh
	ZP8HQaimU77q67QLtokhVuLPeXk6VE8FpFsklNX7ytkQ0UcaAoogmdbPa/GT0GINtDa4fOfiKMv
	duIB0tANcoSx8jw63QwEwWWW6aPpz8TNupJgxk6Ihp78YzkcNbu1raaEnPWJvWMi2Kt5gpngleV
	OHd4tVuYdWPu1fdKa3V6KXYxosp7eM/FDEWVn3r9xbMciB12gPMXJWj842SZmpPMfr4pvBs+6rM
	evZTa3aqoHH1wEVdL+zo/QtYvshaYYcXx3n4QariM4BMQJutHjTFqtVHjlajPEFCxV4qMO+Ga0/
	tzFmkWPAF969o6FKWSYXlN4OqnETRrmfKl1yx
X-Received: by 2002:a17:90b:2e03:b0:343:a298:90ac with SMTP id 98e67ed59e1d1-3472976090amr7563977a91.0.1763722920300;
        Fri, 21 Nov 2025 03:02:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEpO8joTe+3KL4VByz4ruBxOPPVuDamEIBR30hGSQsIWGTTCbHT4fpjWnEHMOGPd/OLL17s1Q==
X-Received: by 2002:a17:90b:2e03:b0:343:a298:90ac with SMTP id 98e67ed59e1d1-3472976090amr7563891a91.0.1763722919354;
        Fri, 21 Nov 2025 03:01:59 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34727d5208csm5191165a91.15.2025.11.21.03.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:01:58 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 16:31:11 +0530
Subject: [PATCH v8 09/14] firmware: qcom_scm: Refactor
 qcom_scm_pas_init_image()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251121-kvm_rproc_v8-v8-9-8e8e9fb0eca0@oss.qualcomm.com>
References: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
In-Reply-To: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763722879; l=3093;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=WhBuwExsVsI+8Yj8gpXVinRIooqGhxyPW83/caypxOY=;
 b=9UfiGNedwMif1vT58CvrqaHmQFd5mRZVlIbHVk8ys6doYfaQUs/eNG6cD0b5NadIJg/feKQ1H
 1elQ8f/50oEBECJEERZsFqztdULi1xWqkId35CBs28yZqBOV+TmBdVs
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: InDxGNRYDagr34stndye6KfKvFvK_ZDk
X-Proofpoint-ORIG-GUID: InDxGNRYDagr34stndye6KfKvFvK_ZDk
X-Authority-Analysis: v=2.4 cv=Wugm8Nfv c=1 sm=1 tr=0 ts=692046a9 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=DgMsYHmrIKO9_Yj2pW0A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA4NCBTYWx0ZWRfX0dxGMntCCmhb
 pIjAfK3OotIwkvJuJZ1AMXsUCaoh7g0L5uOVlAHs+z7iv0VDk/eLNFDWG1YSWrAcwoDB8t3tiOO
 h9yPCShJlLmmUxL8DX05ntfb3VgL4vCI/Y+r6Xc5pRX/88AQIh3ilrr6lRy92tB64dNezCDMZiI
 VdTLZuq0d0F4tRPB+a58v4CIGAVlh0fZ+ZfGnhxJRS3oiGGpWwnubOVFKz1fwu+wzhJ1mv9Ikau
 fxiKRc3fAxgS8iuZCG9L05Tq8sRUHPZzByXDjRzcaAikwGd9ic2Mtm8V8HfWmhTj4dROEh/X2IL
 /KDxlGAwgMlMaoLXlCT1jyYq3DkgYjJtYVJgD/CH87yHN6vlSXinlgZOsT7MdALovagLYuOFGGb
 /OBO4WFqvniyTqeLs7wsU8vpT794ww==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210084

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
index fdb736d839db..90649d9ade97 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -592,6 +592,37 @@ struct qcom_scm_pas_context *devm_qcom_scm_pas_context_init(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_init);
 
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
@@ -612,17 +643,10 @@ EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_init);
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


