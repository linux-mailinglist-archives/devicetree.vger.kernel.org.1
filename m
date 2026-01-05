Return-Path: <devicetree+bounces-251516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C61CF3C98
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:27:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E4EC3088B42
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD82A33DEF9;
	Mon,  5 Jan 2026 13:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YiGHyrck";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q6SXGtro"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327D133DEE6
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619446; cv=none; b=CZHdk1DNDsRs0rNTXcZ79Y/hOy9jxXMhGd9r/lnWCCqQd+pA0mFqMThM9xrWLXCNA4dzjhGWE5kPwE8K/JaTDMj+96oH85Rx3nMi1iknUG7qIqjFA2f5VTn0SJw9JxywB0KhBNWAE+dPTy2vj2eSiYEyAtYLZK63/Hww94paU8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619446; c=relaxed/simple;
	bh=m+YAA/mlyrayWpYlu2DW6FhqLXxGfoQH2bEiKAJCyR8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QkcGpWKAvV8PqPHv53GrErpLYiSGrhp5MgR85ZQsq+OQHnWOMqNsXoAqJbBH/fN7LxRCughQACKC3pQUsOLGI5eSdQD4gozcovezryChhrB/8CDFgRya98qnPNFP3TO9uTb39mAq1AtEFDv65P/pTNZAhImsebyPo/02hs26dhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YiGHyrck; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q6SXGtro; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6059d5vb610775
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:24:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X0h6ucEALCph7uDH9PI/I+8bZyfrAXR/0NCw42yTCYY=; b=YiGHyrcke/l66AhQ
	4z6AB1GbTK24Ays5qGJvBo2Zkx2tXllsMV6FNb+dn8XNnoVDFlD6q9rfpyICsfhI
	r/NdkFG9vpin7pcikIjAzRzScbL3gf4yb0AgtPbZ7yylm9zlPBt1wDvEaUOVTOEV
	Xwr9bDQE96GNJU5KXILVjWbsQoWKRBwiHVoCfZkYGqIZN8XQGge0MArAQXiw+VcO
	2X5wwevTl513q4MBRP6SK30AedZ0LjW1Zv//6ygj13312C0k3F9EafXdzQx41epj
	TbfxOFgNgL3z9z8HodYR98orAzDzA6ciShNIDw/kGgcAXYa2dCQk+wmsn0KKgrlO
	dapf8A==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgaus0hku-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:24:04 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7bf5cdef41dso24255418b3a.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767619444; x=1768224244; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X0h6ucEALCph7uDH9PI/I+8bZyfrAXR/0NCw42yTCYY=;
        b=Q6SXGtro0Efyci0XmMnraw/NdVR66P7l3setUzVAGSwCpdq+H0YBVgHVqcE9S0xxq0
         onVBiM9y5qdj5DN8JGJnXua5+2nf4s2Q9eJ2KmH3kxb90mOOEawYPjA2g4ZyER+praX+
         1VD7MWZu5WsGf2GhsByUYQO1cMZp2aUd7T0R2H9wxvMgVEbLfUlcI6pAI/VFEWHv4n/m
         aKqGLrZPSBvOTqxbS4fGKrBd/U1ovBvi+HFoW5sj/ymzCTuw6QiQ6kSy/YUmgD6CJ/6J
         jMGpst1INhZ7spjb2gnm0HBDJfL0hRR4CXvF71Hl1sy6EWqxT+ls4VzlQ0fHNTvWA8Ao
         eBJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767619444; x=1768224244;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X0h6ucEALCph7uDH9PI/I+8bZyfrAXR/0NCw42yTCYY=;
        b=SniCRveZqzUngb7ilKOO2jV37xlQMwWmmWnNreM+0H4/33JWEiGz6T7qw+g1OAlDCS
         y0pLeOiVFloFNRAkOi9BEPXnY1T3cV5pW2EwTC64i+oFzaOy2QqmNnLV8FoeNnSB2iFl
         z3qNb0WD/wEQCnrRHI8eIQnXqHDLf4MGjVroNi5LCUvA+o8IKp9BuYMiStApK9SGEj7h
         DuvKTCVY1WoeOq0NNZeea9E2fZqlED+L4YjcA4oYOoz3mfEdcwvXPBaHjZNZAqYA/Iy3
         4unpChymkqgmtb19wxePhAdqEwnjwJp1ebuv1ZcESkLmmLKN4ov5LrjKDNp6VIJS2Qt+
         Lejg==
X-Forwarded-Encrypted: i=1; AJvYcCXhDYi2UAkQ2iO6H/CluzKtk6O/xHPwrWsbma+ItOWGmDlc4upQ3DBqRlSqj2ooaH5xEYLm+tQhiqyQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxej/wchc71KIequAkYs1rT687OxhvK8UCM1Tff09cMIOwrB2jQ
	PYnrtqGdE3TtwsSSrTnXjXR8xnei+2soetXeK5WTQKyoHDfykg2YQHmEDvDi4G6PAIiBrqOMIHW
	HzBfmCPJr64wCjqwFq7dty2AZ1tdmNPoX6Wr7R2P2TBOJalHLmp6t3Oj7VsCB286I
X-Gm-Gg: AY/fxX5X2L+Yey6o0MATasZ0K6hLXmWTG86BhdaMG3DRY/idWRcUL08Q64yIskJyZ87
	2nshGsATzYO4JZT22pcgQNAt+9dxrlXNo41ewDrLw+A44FbTWoK7MgbBwivWLZGOXBr/3VnpySp
	BR6SQjo58kaLb2VrrW/Nac+bPjtfmN5ZZW5KJLa7RycJ1wEEMTYexMPHR+J6Tj4+Fkyoby5pR0M
	6oAUHk1OrpBPahBrSIYIq0gqaqBmnuusSULrN3B2IkuB/J6fj1FmAs3nldgUUo5cq4HDHAK4AXq
	5ApFTxHf57GM74JFkOMiIVx4QxjJmfPfdQ9shnejcFTMgdeY0gjMvDF1RzDUrmvZA/4JawCgD9Y
	IVW7iJjgiZ0vu8bpLokCpu0+mU41dRH/VkB2C
X-Received: by 2002:a05:6a00:e17:b0:7b9:ef46:ec70 with SMTP id d2e1a72fcca58-7ff65d7cdadmr40585493b3a.23.1767619443475;
        Mon, 05 Jan 2026 05:24:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFgyuCBGFHPb5OCLOWNDiAiIe7lRrT0NppIzDPvEtIcDi6hUXdhDMAjeHScMUcfWBz1kzxqLg==
X-Received: by 2002:a05:6a00:e17:b0:7b9:ef46:ec70 with SMTP id d2e1a72fcca58-7ff65d7cdadmr40585456b3a.23.1767619442722;
        Mon, 05 Jan 2026 05:24:02 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b127b00sm48426542b3a.21.2026.01.05.05.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:24:02 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 18:53:00 +0530
Subject: [PATCH v10 12/14] remoteproc: pas: Extend parse_fw callback to
 fetch resources via SMC call
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-kvmrprocv10-v10-12-022e96815380@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767619390; l=4556;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=m+YAA/mlyrayWpYlu2DW6FhqLXxGfoQH2bEiKAJCyR8=;
 b=MzmGh2T6Nx00u74BzgfyD5XBhQEncY2uP8O4v3wVTkmjs59o55xNazzdXVnqdm3WNBNyJaDF/
 lclaohDbYlgCM/ooIu9zryAvbluvENSn0L1rgrG5JFyt5VbxurunQNe
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-ORIG-GUID: 7iRPoQfuH5gtLgKMMiTgqb9duiEqcIFM
X-Authority-Analysis: v=2.4 cv=DP6CIiNb c=1 sm=1 tr=0 ts=695bbb74 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KMz1R6K7GWUeRkMKapkA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: 7iRPoQfuH5gtLgKMMiTgqb9duiEqcIFM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExNyBTYWx0ZWRfX4qQBzagdeJOV
 UhJDQQDv4dOdt7Ebv7iDvkuvFQynql/M3GGq1zFJpnhCMAi+ijxg+XI1UAMV0pnn2FsNu86NzrZ
 0vV5Sf7VuIHm2rYMgdea4wZVP/cesSnsfHx2FS0+8Ap4GDq2nf5130iXI32LKFi//7b5p1MqHR6
 E5rUNQGt0yNgkoACOlEi5tz+cr9LBkjl6L38uYUl41kGpw554Kxvjd5+PB3FVQLDG5ielKOKKIw
 gjYXZ4Q07gPI4/NsKAbjwdix8wJ77tKYguQ1QnQcR9bdgPyJu04S7wBJZifn23VVK2L1OyqRbos
 vQEOuh1PpK2657wGw5UVe+x8PntB6qCLY1osKlJSiAh+d2Zldl0jQlMqNR3Dhv6wpn5u+eZDB88
 dXbLM2IYa4UJKGKeT5mZ9yV5xI54RDIhXlDowctP0ZNipCi8ePXC3tEzxk+6MfIrfsJTSLK6Du/
 PO1VkVoitkBGaj0c9Vg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 malwarescore=0 phishscore=0 adultscore=0 spamscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050117

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

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 59 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 57 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index f746d2f39a1d..e0c7bf94bfc6 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -413,6 +413,61 @@ static void *qcom_pas_da_to_va(struct rproc *rproc, u64 da, size_t len, bool *is
 	return pas->mem_region + offset;
 }
 
+static int qcom_pas_parse_firmware(struct rproc *rproc, const struct firmware *fw)
+{
+	struct qcom_pas *pas = rproc->priv;
+	struct resource_table *table = NULL;
+	size_t output_rt_size;
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
+		return 0;
+
+	ret = rproc_elf_load_rsc_table(rproc, fw);
+	if (ret)
+		dev_dbg(&rproc->dev, "Failed to load resource table from firmware\n");
+
+	table = rproc->table_ptr;
+	table_sz = rproc->table_sz;
+
+	/*
+	 * The resources consumed by Qualcomm remote processors fall into two categories:
+	 * static (such as the memory carveouts for the rproc firmware) and dynamic (like
+	 * shared memory pools). Both are managed by a Qualcomm hypervisor (such as QHEE
+	 * or Gunyah), if one is present. Otherwise, a resource table must be retrieved
+	 * via an SCM call. That table will list all dynamic resources (if any) and possibly
+	 * the static ones. The static resources may also come from a resource table embedded
+	 * in the rproc firmware instead.
+	 *
+	 * Here, we call rproc_elf_load_rsc_table() to check firmware binary has resources
+	 * or not and if it is not having then we pass NULL and zero as input resource
+	 * table pointer and size respectively to the argument of qcom_scm_pas_get_rsc_table()
+	 * and this is even true for Qualcomm remote processor who does follow remoteproc
+	 * framework.
+	 */
+	output_rt = qcom_scm_pas_get_rsc_table(pas->pas_ctx, table, table_sz, &output_rt_size);
+	ret = IS_ERR(output_rt) ? PTR_ERR(output_rt) : 0;
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
@@ -425,7 +480,7 @@ static const struct rproc_ops qcom_pas_ops = {
 	.start = qcom_pas_start,
 	.stop = qcom_pas_stop,
 	.da_to_va = qcom_pas_da_to_va,
-	.parse_fw = qcom_register_dump_segments,
+	.parse_fw = qcom_pas_parse_firmware,
 	.load = qcom_pas_load,
 	.panic = qcom_pas_panic,
 };
@@ -435,7 +490,7 @@ static const struct rproc_ops qcom_pas_minidump_ops = {
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


