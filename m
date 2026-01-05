Return-Path: <devicetree+bounces-251508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CC2CF3D34
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:33:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A7DDB30312E3
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:32:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF5D33B979;
	Mon,  5 Jan 2026 13:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TgmxVvoY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I7KNwkRZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A1033B6F4
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619414; cv=none; b=NimJN0gM1mY1UpmqvzUqDdZDhaqiupf8G3qnob+uc3A3qSF6UIjb25ZE2Of9w6aSyYV3A3051Q5A4Hv0Stl2SDkwLJcyXqejX5lNTz55y3+AXcnYgxBhgxfXxPCgJmo7fjlfJ1ExC9txOnt2rWIO/4W8KioJUuWsV/ODTe2g0mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619414; c=relaxed/simple;
	bh=HrLkG36I07Ib0XRgEzoPfMEgZMeQfHT6NhYwPB4Ll/Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lm++KogqqdrD7f56JYbls6ZkZDthC2a4cuNqBC8z8V6r3eS6whWzwUXIvLupuF9XjsSiBaUQ+kT7R8heDVRI31xeZF2b4PkZ+3YWpMKB8hWIhRrsnoB/lnvYKQo22qlDYuqMJf8vZFS5ydioVYM+f/cyYQBWqOlla7JsLYonpWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TgmxVvoY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I7KNwkRZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6059nquv3541817
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:23:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+ixUkiWjvrA2xnuQivPNMlYRl32u7TOycV7BpXyApjM=; b=TgmxVvoYUlLvcu4F
	1aCF99jzASv23+RPtdpBV8v87aMdpFk0Gesh1SU/OSa5s9slFDas+iubdhXQZPIB
	xg+cHdC8rChoAmeXelqldFYSPa0PcXzIJCSIdIQWB3Hijb+jOoa1mbXS+vAItdLy
	iyc3mMwAjcoMIUnTuRsa3FkiCT7z3eNSnqtJx3yGAtQx47LVXTM8bbov3O+wTsM3
	VcOcR+tcZ4WHEij/NijV9l6+qjpaeEvs+J5z1aCMTaaFrAvp3X9AvUxuXYkpuG2p
	YxurqE5Y4yZQea1dQQSwxVXt97f/nWxi0wQbPzmAAOwzBE4WIE50DBd3GviSZQYx
	0W3o/w==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg57shkfr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:23:32 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7f21951c317so11253499b3a.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767619412; x=1768224212; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+ixUkiWjvrA2xnuQivPNMlYRl32u7TOycV7BpXyApjM=;
        b=I7KNwkRZUbSoY+kTnnkyhIppabcjsoUzsOzyKwSV2LUXHZkoCNkrnr/6tS0S61E5R2
         IkE18oHkr5RTtYct3M75e7eYZSJ8IU2vwEO3i95sADbhHM4CT4YC+pWMyHEP9CNJCLah
         mg7KpNI3/Et2CUqzOEKfOVl+yZXpxa5gKC+R5T5/5A/2LT4tGOXGsR8vyFus9sYlWb4r
         9AyLT7Xzgie+XE4CrNthLBdLYAQfqSJy375Y4rrRWrE9uSgQuEZxrjjWsVcI1pGH0c9g
         NY3VNd8DNQjZTomvtFy/NKccxO+ThDaA9gd2P7zbkspG7ZhM2LgKXPcSSn9OFPYjG6Bd
         AtVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767619412; x=1768224212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+ixUkiWjvrA2xnuQivPNMlYRl32u7TOycV7BpXyApjM=;
        b=boYxmEJM+R89GDfBlE4i5FLJlOasMd8yefjb6fqYnaejGGOgTGPNorH6QEfO7YbAf6
         wAf3x5lG73siPsd8SFtG+2VxzVUrOmYv74oNyg6rCp/DkmO2FoM0sPImscZYoZQt1i7m
         E36tC/2/kYF/koGxlD7aEHIOvxw9MBLXyfksuVb4uAeB8RD56TQ6/9Z+AeG9asdpErTw
         5DDzhohpsV4Xgu/aHcUkSTYUya9M5nU4pbNTgJainUm2BmgtxeH2f6mZbg+8Z7kUPXdq
         W4RSyPpRF9xOye302Kcl66BEr6Enx9Ex1Vhe4eMe5r7fxHBi1d6GNjvHZAcIPhv9VVJi
         4nPg==
X-Forwarded-Encrypted: i=1; AJvYcCWXdJLWv+T8sLdDHkF4gW+RSYYz4dGN0S9rfmpG9wUpEzROt79DttuozAlvNTzV/NQA6XwGl33VKevw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8wXh1CcRy0Qrddeymjpi2wZ7OYihKlqrF9uKWznrtXNTZ47Ww
	48H2ds653VrvDjbDGOPUXjFPtd2WKPCd8sYmh4My5YZCHr9T20GSAYVww9c4AeQbnYegSQj4y/y
	yDBSqBkbqhkJyWtaAQdzTo5lWOpmntmu5oP4eDPw2TkD+ZOb7/2sStOhY+0Z/idhf
X-Gm-Gg: AY/fxX7roerHHPAtm9xXVsObDM0WALWJiJ10ROwJFLg9oIJOTNSAL8rQ0D7t0xSv1/y
	xQO3reO59dAnuqjBNggVJSFBCGeFxHW/C7A7ShQGUNyHkoeU/Z8eqg+KKbHZH7DfIdJqxrmKZFZ
	u2UhLslmPfR4p4ufGuGqYroO8KYxWgihK89LW9rquRJ0vvv9L5+Thbr2ExZtXH78VoVdS3Xv0fQ
	gUc00mF4cP/hcW+OSVgjyVSv+5ov/KQ7z+d+Q3dAQ1Qb5govBAzkOXYz7ONeTIs1qqWPvEGuLRQ
	g/PkM2jUAhRzyq6ALYtEZLq49rK/Mi7+7WWv4VoP6U5r9Z2AxXbAnZep/X6wVCW/QtEwPdjMxgW
	5PrrZLbWoNJwmlY0fiLDmf9/fRxXTPUAUqWu5
X-Received: by 2002:a05:6a00:4483:b0:7e8:4471:8e4 with SMTP id d2e1a72fcca58-7ff66f5ae03mr38215255b3a.69.1767619411412;
        Mon, 05 Jan 2026 05:23:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+OmHz3U8kN2GWNtwM65IjApm5j0ep/tO3ITPoxAyzCoic25jZF7MQ25wgM4nE9IGG8nMJhg==
X-Received: by 2002:a05:6a00:4483:b0:7e8:4471:8e4 with SMTP id d2e1a72fcca58-7ff66f5ae03mr38215227b3a.69.1767619410822;
        Mon, 05 Jan 2026 05:23:30 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b127b00sm48426542b3a.21.2026.01.05.05.23.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:23:30 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 18:52:52 +0530
Subject: [PATCH v10 04/14] firmware: qcom_scm: Introduce PAS context
 allocator helper function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-kvmrprocv10-v10-4-022e96815380@oss.qualcomm.com>
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
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767619390; l=4036;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=HrLkG36I07Ib0XRgEzoPfMEgZMeQfHT6NhYwPB4Ll/Q=;
 b=YiRaLse+KM8syyQNGIDwZvKaM1DSMbpFOU4ROmDFa2yVE9Paj9VMYZI8oxQ03C2ZkNdgyI/X5
 /oSxL26nZJfABAeJBF7CAAQZ1zSuYkLon7814XQ9qEfh70m07uk1eun
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=UJ/Q3Sfy c=1 sm=1 tr=0 ts=695bbb54 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=FtZ2CgB1kwCBZN0VdloA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExNyBTYWx0ZWRfXxI9aAjHETn4X
 wx5Jdc7+UUINw36hpy1UVaP7LEBSpbtsfcG6nqimTBOWXounazdGXeid1ZJzgaGY+xZu02XDUMn
 R3/z2W/JsewAF9yUo1PGVQciwAX6rWpPnhgdmxdKVs1d1vZmTJKfRjpPONbToTFdyNCdSA4ak7M
 YexdTI+LKV1XrCrOc6FUx+EE1xJOo+Ycq77ggOA5Skqk6MJGEW3Ci2df9uV6/dxNZQhoYObaFTb
 cuEgThvCzccOP5cF/rPLqqt6xQH6+t2SSMUvu8YqfdUu91ZbT4wAlvCRqhUbGgwymiCqG7zIzjP
 CzehGG6NKg833YWPK+N+XM6nNXzdkmQNzpli1hqN5C7Zy+ipFzmV9PHvz1LeRzqkmQeF/nrDaBG
 OT/hVG2BeAtwyP7EZmQZv0OaJGKHv8oqGT3pbKwFxX2sTi5lTCY35HG2i81iUU7obtoS1jAaIy1
 VzifKmrdk5wV7EHkHfA==
X-Proofpoint-ORIG-GUID: kmp4XoevhAHWPFjMXknzGM0M7z-qENuk
X-Proofpoint-GUID: kmp4XoevhAHWPFjMXknzGM0M7z-qENuk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050117

When the Peripheral Authentication Service (PAS) method runs on a SoC
where Linux operates at EL2 (i.e., without the Gunyah hypervisor), the
reset sequences are handled by TrustZone. In such cases, Linux must
perform additional steps before invoking PAS SMC calls, such as creating
a SHM bridge. Therefore, PAS SMC calls require awareness and handling of
these additional steps when Linux runs at EL2.

To support this, there is a need for a data structure that can be
initialized prior to invoking any SMC or MDT functions. This structure
allows those functions to determine whether they are operating in the
presence or absence of the Gunyah hypervisor and behave accordingly.

Currently, remoteproc and non-remoteproc subsystems use different
variants of the MDT loader helper API, primarily due to differences in
metadata context handling. Remoteproc subsystems retain the metadata
context until authentication and reset are completed, while
non-remoteproc subsystems (e.g., video, graphics, IPA, etc.) do not
retain the metadata context and can free it within the
qcom_scm_pas_init() call by passing a NULL context parameter and due to
these differences, it is not possible to extend metadata context
handling to support remoteproc and non remoteproc subsystem use PAS
operations, when Linux operates at EL2.

Add PAS context data structure allocator helper function.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c       | 34 ++++++++++++++++++++++++++++++++++
 include/linux/firmware/qcom/qcom_scm.h | 14 ++++++++++++++
 2 files changed, 48 insertions(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 0a4d5d58c177..43a6187f4bd2 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -558,6 +558,40 @@ static void qcom_scm_set_download_mode(u32 dload_mode)
 		dev_err(__scm->dev, "failed to set download mode: %d\n", ret);
 }
 
+/**
+ * devm_qcom_scm_pas_context_alloc() - Allocate peripheral authentication service
+ *				       context for a given peripheral
+ *
+ * PAS context is device-resource managed, so the caller does not need
+ * to worry about freeing the context memory.
+ *
+ * @dev:	  PAS firmware device
+ * @pas_id:	  peripheral authentication service id
+ * @mem_phys:	  Subsystem reserve memory start address
+ * @mem_size:	  Subsystem reserve memory size
+ *
+ * Returns: The new PAS context, or ERR_PTR() on failure.
+ */
+struct qcom_scm_pas_context *devm_qcom_scm_pas_context_alloc(struct device *dev,
+							     u32 pas_id,
+							     phys_addr_t mem_phys,
+							     size_t mem_size)
+{
+	struct qcom_scm_pas_context *ctx;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return ERR_PTR(-ENOMEM);
+
+	ctx->dev = dev;
+	ctx->pas_id = pas_id;
+	ctx->mem_phys = mem_phys;
+	ctx->mem_size = mem_size;
+
+	return ctx;
+}
+EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_alloc);
+
 /**
  * qcom_scm_pas_init_image() - Initialize peripheral authentication service
  *			       state machine for a given peripheral, using the
diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
index a13f703b16cd..5045f8fe876d 100644
--- a/include/linux/firmware/qcom/qcom_scm.h
+++ b/include/linux/firmware/qcom/qcom_scm.h
@@ -72,6 +72,20 @@ struct qcom_scm_pas_metadata {
 	ssize_t size;
 };
 
+struct qcom_scm_pas_context {
+	struct device *dev;
+	u32 pas_id;
+	phys_addr_t mem_phys;
+	size_t mem_size;
+	void *ptr;
+	dma_addr_t phys;
+	ssize_t size;
+};
+
+struct qcom_scm_pas_context *devm_qcom_scm_pas_context_alloc(struct device *dev,
+							     u32 pas_id,
+							     phys_addr_t mem_phys,
+							     size_t mem_size);
 int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 			    struct qcom_scm_pas_metadata *ctx);
 void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx);

-- 
2.50.1


