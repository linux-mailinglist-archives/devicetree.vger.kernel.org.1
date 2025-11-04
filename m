Return-Path: <devicetree+bounces-234675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A55C2FAF7
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 08:41:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 416334F2B5F
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 07:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BD4D30F81C;
	Tue,  4 Nov 2025 07:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WHAwzN++";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ITjnEyjV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A8230F807
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 07:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762241820; cv=none; b=T99lQqbOr1OwTqSc3867MTBQuJBHoGaW9ZWJRlYBOMOoDO7K8qfbD8m2K3ui5udcgxujsecP9E9B/qD+YUlFed6hwZJb/CtTERkLwrxXKE1pNURFKZiIxe1AsVD9JLEkdriLFiZPeq2M0RTBxlOkQAxQFXpyDoNIs4eMCkObBOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762241820; c=relaxed/simple;
	bh=SPbBPSi10R6lHblb1vpzpsFayZmQBr0aoeBUarYvBas=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gL/qPRSwWkmCfwKw5/G6/Dm6qQ92+kdwy90uGLesHduPg70lezZpFohcWxgeOXWioJhoVmdtB6Z284HvEycZ9JXf2XOq6LcmLcMnwgYUdCzM91akYnqSxdRvXEHOlIumImWKGK1RDeWib4t/ulOyZYNp1QHg7eDUVi7aU6KJ6Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WHAwzN++; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ITjnEyjV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A43BTnQ3846001
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 07:36:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QN79bYgLExrHMDLw3jtkYM5FTuW1mphr8s/36p5UKqM=; b=WHAwzN++1n7wudld
	lEIM7fj3duHH8WmYX7cxJMW7xLJnxSkejADlBtBflai9h+lYKXQpR86O3tNvSm0L
	unoSsXuqzRwjgOxvyG5gmPFNAKc9jk8He/CPVEz5s2QfW62nWuTa6xPyKNy0y8pc
	Dhb+l/+D25EhTuV2O5SM8OUENDv9h5+xW38gsm6Juj3hR6MaebxCIprDoRcYEnFN
	7ilvma888vMj2ix8ss7nqjUMRa8u8xIlDRzz02XFWi3DZhJ4VSCzIkemj+1qkc1r
	Z3wQn3DsNv17JH7fQe1A0mm3DhuIGXormyPxC+ceIyEn4/T5dQ90Oswvs+JlQ6Di
	atv3qg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70f1j3bk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 07:36:56 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-340562297b9so4511999a91.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 23:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762241815; x=1762846615; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QN79bYgLExrHMDLw3jtkYM5FTuW1mphr8s/36p5UKqM=;
        b=ITjnEyjVCb/rQ1rloRkOzTlxSmiItNd5VgYx7RxuJrGHLTSKf1ix4VOYvzx1yXnsTe
         pvaS4OzFEbYq7lwE3Fdm2EwKEmrFag6vS0p61e43EwUIDyuJ6mYT1WP9jrB3Bv8J52SA
         WutTth56JwszwkR7fxon146PvqWNltFGfDsi65sBQP9GDsVT/vJuGUuZWkUR6Y91avSF
         62wzKohI5lQwC64gAnGL8ughBMqiIfUw8Q7yktE7VKD623o2O3YtuCS6/IFoft3qW1bg
         KijvVD86YJg7JJJvA1JiuliNvW1Ml7etVB2gw/ardLbQB+MIZucDQnzJ4MG4Ojpq+Idc
         LjYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762241815; x=1762846615;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QN79bYgLExrHMDLw3jtkYM5FTuW1mphr8s/36p5UKqM=;
        b=Zhy4ZW+jBkISYVKozJHmKraMxlRs8wta047X0hGnEIo8Fstebee6L3ag9riBdiAsoR
         IYfaAoP+62ZE815OHm6uS4AAS9hUrarBb5gbOZdJQeBdIxruFxFUI1tkvSdW+zZW7Kk7
         3d7XNYV9+ayD7r9WkItmnEGOmbJwrP0VQTAy/mJXWb9lHgYzN/DZEIr+lBlhDxuvpiuR
         vFh5ohwppQETzRXC2mjgm5IK2hgbf0zQ7ky203RUi1N6CnsjNDl0g00Q4YsrgszCnUP5
         vL4GrfCsZhvjh0PvxSPX5zvUREsaMtfd+FJO5+1kFMVbK0vt/3dIbluhCnF0twrlK5Zv
         pO3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUfevnN9e/AGwlHHZE3Rk91EQbcCgaWuL/XKg6uIc9dfhaPzPCiIGcDIMdNlvAmJRBh7JuSCHgouZxi@vger.kernel.org
X-Gm-Message-State: AOJu0YxHhkmYNMKBhVkW+JWDQ+2BH21RNfdYVIT/zwSZt7v0fPIsidzc
	TEUxRoFBEayQgTIvEWeS8W4DprP4FNZKy7jEzvpFAxBGp9MVt5eROoUhO8jmiCpR8KpzGoB6VeN
	5KOzLbPwqBEXrYhDgf5IIpusHx33n86QNbpzUmpMAUmGvEoOE29HqnonDG0e4/233
X-Gm-Gg: ASbGnct3WekhqHu2+gqxZljVuLyimS04TIfMEmXTtcQwJOcZ9qWZ9vHnI7kIDBpxtJK
	8YEgkc72vcY6ws74+g9G9Zs2pw1Ee9Z7XIMxiLBuS3x/QCOUiUhu0PrhUX6oPdudK1putC9g4jN
	Zcl7WbJkPA/PC2oZT1UBeIuJ/x8Tyztt9XAgeg+JYcowgGAkDYE1TcPEK3g/KtljuXRB/6SeRFQ
	fAuMHXA7rG2uiFtQb9cKVOrG47np/CGW3CW0WQCImJ32M10i2eSsrBEzKJ1aPk8A2eVJ34He9Gs
	h4mgBTP70LlDcjABUQNsyTxxuXTNYgB8UjVheVNv+4s30B55wUltHzCoXnNWpmKcvHGBWSicFqa
	GAhC1WoADndiH+ynr0V/R/No7gQ==
X-Received: by 2002:a17:90b:518c:b0:33d:ad58:cb6a with SMTP id 98e67ed59e1d1-3417187536dmr2597612a91.8.1762241814871;
        Mon, 03 Nov 2025 23:36:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/DMF+EhMqUVtc2g9eEHl4gKchAJbU8OscDik87oWC0apUaH5ar1uUgv3iGcIE1UDZCfpn5w==
X-Received: by 2002:a17:90b:518c:b0:33d:ad58:cb6a with SMTP id 98e67ed59e1d1-3417187536dmr2597566a91.8.1762241814220;
        Mon, 03 Nov 2025 23:36:54 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3415c8b5cfcsm3484367a91.19.2025.11.03.23.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 23:36:53 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Tue, 04 Nov 2025 13:05:52 +0530
Subject: [PATCH v6 12/14] remoteproc: pas: Extend parse_fw callback to
 fetch resources via SMC call
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251104-kvm_rproc_v6-v6-12-7017b0adc24e@oss.qualcomm.com>
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
In-Reply-To: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762241765; l=4665;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=SPbBPSi10R6lHblb1vpzpsFayZmQBr0aoeBUarYvBas=;
 b=x4jQH2sLeXvW02fYEgGlcX6Tivl1hQxt/Rf8NiqrZhz9/Z/HL73VufuzT8YaDeQK2aa5DbHPT
 KS4CUvEtFFMCoqpVWasUPxQrRkjRII3Ir4CohYicaQ/HHgmkQ/8xHy9
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=JLQ2csKb c=1 sm=1 tr=0 ts=6909ad18 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KMz1R6K7GWUeRkMKapkA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2MSBTYWx0ZWRfXwgKbC2SWippf
 hOc5le7YLCJ4z4oNuVajbbmtUIUKINKBy7gLxg7/Ci8Povzz3W/1ezq5z2a5fRev4zwGCYbo+zV
 ovXBBLmz+F5uLcqgIIj3TXP3YiOPfGGSrxzqCH2yufmLf2LqIkSYZRPWVtsVMZ/wmTvLcVwrJKm
 BY9DBLPOUWU79m1vV71d94sPSvhr1CdAb/8XK7TpfBNFkutO1cwEAr2Wet+3NlIjUGX/pyRlimA
 wD75Tv4F9nETuZ7cq0mXK1ZTLFLSAnH8aKTEA+JCA7P/Tco0bJ4f95PJ2Y/15PUH+Bxm3wRVadE
 PGwomPrptT+1YeJEAWH9ksFVuCQi09o24gEBXyd+6dxkzV4+UbNrU7JQwk5rXVCUNURPG9vLIew
 VXj57EQIbvuBrNWU/8DJbDnzscGh4w==
X-Proofpoint-ORIG-GUID: 4NiSne1zJCPEhO4nZsIe7xaFkx22xkCX
X-Proofpoint-GUID: 4NiSne1zJCPEhO4nZsIe7xaFkx22xkCX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0 malwarescore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040061

Qualcomm remote processor may rely on static and dynamic resources for
it to be functional. For most of the Qualcomm SoCs, when run with Gunyah
or older QHEE hypervisor, all the resources whether it is static or
dynamic, is managed by the hypervisor. Dynamic resources if it is
present for a remote processor will always be coming from secure world
via SMC call while static resources may be present in remote processor
firmware binary or it may be coming from SMC call along with dynamic
resources.

Remoteproc already has method like rproc_elf_load_rsc_table() to check
firmware binary has resources or not and if it is not having then we
pass NULL and zero as input resource table and its size argument
respectively to qcom_scm_pas_get_rsc_table() and while it has resource
present then it should pass the present resources to Trustzone(TZ) so that
it could authenticate the present resources and append dynamic resource
to return in output_rt argument along with authenticated resources.

Extend parse_fw callback to include SMC call to get resources from
Trustzone and to leverage resource table parsing and mapping and
unmapping code from the remoteproc framework.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 60 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 58 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 9feee2cb1883..a8d3d2e9a70e 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -34,6 +34,7 @@
 #define QCOM_PAS_DECRYPT_SHUTDOWN_DELAY_MS	100
 
 #define MAX_ASSIGN_COUNT 3
+#define MAX_RSCTABLE_SIZE	SZ_16K
 
 struct qcom_pas_data {
 	int crash_reason_smem;
@@ -413,6 +414,61 @@ static void *qcom_pas_da_to_va(struct rproc *rproc, u64 da, size_t len, bool *is
 	return pas->mem_region + offset;
 }
 
+static int qcom_pas_parse_firmware(struct rproc *rproc, const struct firmware *fw)
+{
+	size_t output_rt_size = MAX_RSCTABLE_SIZE;
+	struct qcom_pas *pas = rproc->priv;
+	struct resource_table *table = NULL;
+	void *output_rt;
+	size_t table_sz;
+	int ret;
+
+	ret = qcom_register_dump_segments(rproc, fw);
+	if (ret) {
+		dev_err(pas->dev, "Error in registering dump segments\n");
+		return ret;
+	}
+
+	if (!rproc->has_iommu)
+		return ret;
+
+	ret = rproc_elf_load_rsc_table(rproc, fw);
+	if (ret)
+		dev_info(&rproc->dev, "Error in loading resource table from firmware\n");
+
+	table = rproc->table_ptr;
+	table_sz = rproc->table_sz;
+
+	/*
+	 * Qualcomm remote processor may rely on static and dynamic resources for
+	 * it to be functional. For most of the Qualcomm SoCs, when run with Gunyah
+	 * or older QHEE hypervisor, all the resources whether it is static or dynamic,
+	 * is managed by present hypervisor. Dynamic resources if it is present for
+	 * a remote processor will always be coming from secure world via SMC call
+	 * while static resources may be present in remote processor firmware binary
+	 * or it may be coming from SMC call along with dynamic resources.
+	 *
+	 * Here, we call rproc_elf_load_rsc_table() to check firmware binary has resources
+	 * or not and if it is not having then we pass NULL and zero as input resource
+	 * table pointer and size respectively to the argument of qcom_scm_pas_get_rsc_table()
+	 * and this is even true for Qualcomm remote processor who does follow remoteproc
+	 * framework.
+	 */
+	ret = qcom_scm_pas_get_rsc_table(pas->pas_ctx, table, table_sz, &output_rt,
+					 &output_rt_size);
+	if (ret) {
+		dev_err(pas->dev, "Error in getting resource table: %d\n", ret);
+		return ret;
+	}
+
+	kfree(rproc->cached_table);
+	rproc->cached_table = output_rt;
+	rproc->table_ptr = rproc->cached_table;
+	rproc->table_sz = output_rt_size;
+
+	return ret;
+}
+
 static unsigned long qcom_pas_panic(struct rproc *rproc)
 {
 	struct qcom_pas *pas = rproc->priv;
@@ -425,7 +481,7 @@ static const struct rproc_ops qcom_pas_ops = {
 	.start = qcom_pas_start,
 	.stop = qcom_pas_stop,
 	.da_to_va = qcom_pas_da_to_va,
-	.parse_fw = qcom_register_dump_segments,
+	.parse_fw = qcom_pas_parse_firmware,
 	.load = qcom_pas_load,
 	.panic = qcom_pas_panic,
 };
@@ -435,7 +491,7 @@ static const struct rproc_ops qcom_pas_minidump_ops = {
 	.start = qcom_pas_start,
 	.stop = qcom_pas_stop,
 	.da_to_va = qcom_pas_da_to_va,
-	.parse_fw = qcom_register_dump_segments,
+	.parse_fw = qcom_pas_parse_firmware,
 	.load = qcom_pas_load,
 	.panic = qcom_pas_panic,
 	.coredump = qcom_pas_minidump,

-- 
2.50.1


