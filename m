Return-Path: <devicetree+bounces-232561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA787C1915C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8939C4648F4
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7A33328622;
	Wed, 29 Oct 2025 08:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vv6Gcvys";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Dw5cy4wm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A5625D917
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761725726; cv=none; b=jqe0+YpEFxW3hLS/jHWUbfSaB+PkEJySHWOIsZbDe7HDGmrF8XgpeAJug+urKfeu5bfaHg8f25/Gl9PYkyYgxBnr8C0m80z785iV8ZXBsNfWUNyBalm9LzSnn9Z9bWeRQVvMpJ7ReHYxyFzY2EGifAJSepSqzeqsEi0XVm34fxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761725726; c=relaxed/simple;
	bh=TkciV5L6JM+01E/lYW5v05wftpbi2+YjUAjiwwd/Ua8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uJjsWHcH30Yir5OC1KSZ5rkM1Q3XymGiTHawVJkL641B86ZW/1OLQa56lJL6Vq6FJC1Fj86Ljn0wbfCFK1INISY3+mH3R7DEln3BmkJtknFLN6CP2bIhC57ij2dpJF1HU+g92B4ziEsAl0LTswk+aXGddoVdLcpPpQ+IRKLOJWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vv6Gcvys; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Dw5cy4wm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4v1Hk3692374
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:15:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n9qTfeQHcmk6pSdw52hmK/bXe5LvYAFoUvzIvf5ipyo=; b=Vv6GcvysbtdzZTFs
	E3KvCE1WrxqaK3qWxvGPkpVwoW3SLEW0rlBA84jP5MVoPaCRMGmao4dh4enLEpQc
	p3OnTUqzKUelRN03sfH24GyfgBOCjYTdb1Y9GaB0wdonSrPYv39aqcpfjHzJqpvh
	8pLePCIPnewv4ZFZ6mArFq32lo9FFkmvLcNap7ydoNuX9DFujUK3Tln/uEXuFyIG
	f4UqWlQkVDIOZMMF7QvcZUywgI3GBXTJNDcXo5nrKJhZZqb72sCUVbxD+hg2N26h
	y6ZeKV93zIc90PxT7dtD6TOuJYDp1wrHHUaEB2hlzK8TOMK7dBtSSbVLBQ/xekWm
	dkOWZQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a2hr5s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:15:24 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7a26c0c057eso6168569b3a.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761725723; x=1762330523; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n9qTfeQHcmk6pSdw52hmK/bXe5LvYAFoUvzIvf5ipyo=;
        b=Dw5cy4wmZ0+CaGp+4QjcwVSPSLzw5ocrOsVjkCEZHnkmPkdGlAxftD0IIZd2OjqJHm
         imNBxjFp9nagLVBiJiE1nRJ1c4HRbGsp97uQGPpF7x2CehszxLX6H6op5KlwyzOynni4
         bH0i02hxwMGzvta4K9QgNekVKYFZF+ubGlLk8ZLQ2jCBGE8sM9OHB6uxRLR3Bga1HAKq
         Ihp2qEzbeJ/0VoqPYyHS/bh5hMX4NbdByEtCzFpXGzQX4ZTLtCFsOlJ2TEh1kn0oNMoN
         yFg5OMZVAR5+IlQhHvFOirU9vyCy4fSRYP9tGzZ0kzf4pkiWLWtTZVQ+02dBc3IrwG+X
         PeFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761725723; x=1762330523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n9qTfeQHcmk6pSdw52hmK/bXe5LvYAFoUvzIvf5ipyo=;
        b=D5bgSOhEIb+17WrO0SxsrBPPljKG3Z9QCFGO/V8Ny0x/5C2ZL7LTqF5EALicDdncIA
         t0suXiQ4knh6HaAer4HvXnz0vYCff4RbMy3BkHQoQ7TNDOKDICoPqwnPUgGh9iwUcU60
         hfVvOsefKWMZFv9EoQcfI06sjstkHsX4S8OkhCtiAgZI6CJ7Pzdo5GGudS557sPg/xBo
         v+XElRoUR3qGIBidN0sqTfwo0dBOqtn385BicVTMTn7MZCpaK90Vp9mBM+hx/w43+GFu
         7yeJeKrelhF4KUZ1Aee6vkHFYpEHcj1p6rbDkfpcXd+GgS0P+8gyRDlmEMScpB6VFKFd
         Z71w==
X-Forwarded-Encrypted: i=1; AJvYcCU9wJaVsfIszE2qSMYzwP7/VY6ZdEbKkkTqEW9mbMLh034ecznwfvyfVcdaw/w9FSq0ZMr0QDGUoq9J@vger.kernel.org
X-Gm-Message-State: AOJu0YxLWV76PApBgfcyM6iND8PhZE9C4hcxnj2HcY9gTieHzFw8jOx9
	xLhtcsYItQpAF69jqw0fzOr2lNEYj7nO855e8KiZvCFOYGRmAVuiacCVk55+507HmTZ+XJr4O74
	EzAi6DvRF7HL4+pa57X8zSuUKSbGHILZUY2ilCZSJqxdBd6ZvfbaOaJB4j0LefYR3
X-Gm-Gg: ASbGncvn7EzEqWExhDiOwTIV33W4jr1M9QWt+RIs0M/BcJ7yohg7So+SFKhH7bKX/uw
	BHy0WHD5NdRDnoBMOxzgL76n9ZNoh0GVdaFn+VALblWo0iu52N54QH70/l/va5JQAb+QeMslRGn
	MxWF2MIBAPYl1u4KUGig6xiXRhG7VNDLmE3z7QDz3eEyHIXbisxmm24IaZIVZcjdHnTgNYOTZ+Z
	puIXl9OKdVj13CrzfQA/I3xGwK4UMd9tno+Zcd+Zze9Mkfyey8gmmCJmxXuJaQo62PLqadQJTb8
	YP/8Ogws2ryxJObrbNw5QgVi5Xl3K0AsEO2wZOmq/zh4oNzLRakUGx9xxbn2ix6G9UbomkgEOBL
	c6wW9IT/CyIxfNOvdpE88LumYxNczb0ZjGtvokOtLb2glpobvcw==
X-Received: by 2002:a05:6a21:3283:b0:342:a7cd:91ff with SMTP id adf61e73a8af0-34654905a0cmr2474249637.43.1761725722971;
        Wed, 29 Oct 2025 01:15:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHsouTqoVmGim2iDk5My7a+Vn/mtKzduAD47zhPFUl+IjzjGmqbvARYu7EcpJmzKXxUY2/H1w==
X-Received: by 2002:a05:6a21:3283:b0:342:a7cd:91ff with SMTP id adf61e73a8af0-34654905a0cmr2474228637.43.1761725722506;
        Wed, 29 Oct 2025 01:15:22 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b71268bdb2dsm13187901a12.5.2025.10.29.01.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:15:22 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 01:15:10 -0700
Subject: [PATCH v2 2/2] dt-bindings: mailbox: qcom: Add IPCC support for
 Glymur Platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-knp-ipcc-v2-2-8ba303ab82de@oss.qualcomm.com>
References: <20251029-knp-ipcc-v2-0-8ba303ab82de@oss.qualcomm.com>
In-Reply-To: <20251029-knp-ipcc-v2-0-8ba303ab82de@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761725718; l=3337;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=fU0OsLER67I0hFf9SgsLjocbxhJL4s8Jmb67XuAG5Yw=;
 b=pAmiLZsTJ6CQSYieUR7EIqYfT8Hc6uSxMpfNjAct92rTmbqp1Giph2T7Zg2jliNKDe9dDHKPG
 869Y8k9tURMAiKagU0t43seavJWACsgAw1bF04rddIqmGUvepAyt4Bm
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: Ca-MbUTRFqbLBnbRBeKKBjL2VWhUOqq6
X-Proofpoint-ORIG-GUID: Ca-MbUTRFqbLBnbRBeKKBjL2VWhUOqq6
X-Authority-Analysis: v=2.4 cv=PcvyRyhd c=1 sm=1 tr=0 ts=6901cd1c cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QM22UDXQ-iN41G4mWLMA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA1OSBTYWx0ZWRfX4S9r6OgL3pm8
 kAC6TZzXp8eVUDIeiZIwuV9BX9ID0Aai8BHLSiFz8QK5pH53ckcIEPqFpAhpJAgRH6ZoAEnBbmz
 K+FdXENZ960wmEDXS9VYtst2dQ3xqAQfwBIHoOBcbDlYi4dQeDkucv6+mrpn9f6Paax3aVeIQAF
 /PVvCuCJ6hbBiop5wP0emBRF8ZcZZKKhMgX8qBr+6ktIAMOLU8mhFeN4pRALLVLZef+y8brU+f7
 257YkES5Wu085HaC3UfRIbHqMxRhZVyMBNmcq2NNyvDBTthQdGAzXlWtgQxwYfquBm5gL/Q48Vn
 mTUpHbdX1cNdfjmSje2N3/3hCm6oJrAwqkF0E7P0UnTpmJ9GCne+xK1HM5C3OKoAzQ5SKL8+6vU
 OxQMk+L8SFHydjdjnhia0+RmaJcjyw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290059

From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

Add binding and physical client ids for the Glymur platform. Physical
client IDs instead of virtual client IDs are used for qcom new platforms
in the Inter Process Communication Controller (IPCC) driver as virtual to
physical mapping logic is removed in HW.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../devicetree/bindings/mailbox/qcom-ipcc.yaml     |  1 +
 include/dt-bindings/mailbox/qcom,glymur-ipcc.h     | 68 ++++++++++++++++++++++
 2 files changed, 69 insertions(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
index ee3fe093e3ca..7c4d6170491d 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
@@ -24,6 +24,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-ipcc
           - qcom,kaanapali-ipcc
           - qcom,milos-ipcc
           - qcom,qcs8300-ipcc
diff --git a/include/dt-bindings/mailbox/qcom,glymur-ipcc.h b/include/dt-bindings/mailbox/qcom,glymur-ipcc.h
new file mode 100644
index 000000000000..3ab8189974a5
--- /dev/null
+++ b/include/dt-bindings/mailbox/qcom,glymur-ipcc.h
@@ -0,0 +1,68 @@
+/* SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef __DT_BINDINGS_MAILBOX_IPCC_GLYMUR_H
+#define __DT_BINDINGS_MAILBOX_IPCC_GLYMUR_H
+
+/* Glymur physical client IDs */
+#define IPCC_MPROC_AOP			0
+#define IPCC_MPROC_TZ			1
+#define IPCC_MPROC_MPSS			2
+#define IPCC_MPROC_LPASS		3
+#define IPCC_MPROC_SLPI			4
+#define IPCC_MPROC_SDC			5
+#define IPCC_MPROC_CDSP			6
+#define IPCC_MPROC_NPU			7
+#define IPCC_MPROC_APSS			8
+#define IPCC_MPROC_GPU			9
+#define IPCC_MPROC_ICP			11
+#define IPCC_MPROC_VPU			12
+#define IPCC_MPROC_PCIE0		13
+#define IPCC_MPROC_PCIE1		14
+#define IPCC_MPROC_PCIE2		15
+#define IPCC_MPROC_SPSS			16
+#define IPCC_MPROC_PCIE3		19
+#define IPCC_MPROC_PCIE4		20
+#define IPCC_MPROC_PCIE5		21
+#define IPCC_MPROC_PCIE6		22
+#define IPCC_MPROC_TME			23
+#define IPCC_MPROC_WPSS			24
+#define IPCC_MPROC_PCIE7		44
+#define IPCC_MPROC_SOCCP		46
+
+#define IPCC_COMPUTE_L0_LPASS		0
+#define IPCC_COMPUTE_L0_CDSP		1
+#define IPCC_COMPUTE_L0_APSS		2
+#define IPCC_COMPUTE_L0_GPU		3
+#define IPCC_COMPUTE_L0_CVP		6
+#define IPCC_COMPUTE_L0_ICP		7
+#define IPCC_COMPUTE_L0_VPU		8
+#define IPCC_COMPUTE_L0_DPU		9
+#define IPCC_COMPUTE_L0_SOCCP		11
+
+#define IPCC_COMPUTE_L1_LPASS		0
+#define IPCC_COMPUTE_L1_CDSP		1
+#define IPCC_COMPUTE_L1_APSS		2
+#define IPCC_COMPUTE_L1_GPU		3
+#define IPCC_COMPUTE_L1_CVP		6
+#define IPCC_COMPUTE_L1_ICP		7
+#define IPCC_COMPUTE_L1_VPU		8
+#define IPCC_COMPUTE_L1_DPU		9
+#define IPCC_COMPUTE_L1_SOCCP		11
+
+#define IPCC_PERIPH_LPASS		0
+#define IPCC_PERIPH_APSS		1
+#define IPCC_PERIPH_PCIE0		2
+#define IPCC_PERIPH_PCIE1		3
+#define IPCC_PERIPH_PCIE2		6
+#define IPCC_PERIPH_PCIE3		7
+#define IPCC_PERIPH_PCIE4		8
+#define IPCC_PERIPH_PCIE5		9
+#define IPCC_PERIPH_PCIE6		10
+#define IPCC_PERIPH_PCIE7		11
+#define IPCC_PERIPH_SOCCP		13
+#define IPCC_PERIPH_WPSS		16
+
+#endif

-- 
2.25.1


