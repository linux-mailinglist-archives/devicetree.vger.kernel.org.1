Return-Path: <devicetree+bounces-221052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CE895B9CF08
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:53:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1DA11BC3ED9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F7172DC782;
	Thu, 25 Sep 2025 00:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QkMLuuqs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628E52D839D
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758761562; cv=none; b=qaJPkFH/RJpdL/ttGx4L8WgGGIndfyD1jYRYL62kD5B8LtszunNkzZpccjYPlLUFxJ8wEiehbeYAgFCNpykWGE/SjRf1GpAjgFYsz/TKYkjScAf89Vtq9HM6ySqe5pqnjbY3eZsYZxnTMCspktIRf+A3+eV+WJ80KpCNpF8H9Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758761562; c=relaxed/simple;
	bh=y84fa6fvuCZpJxjEsWR6XfroWoXIZOXTyVARiLBoUh8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AEwL34B1hiDWV5mHC3jVJbcDPIY6MSPj3b0dPo5H5jgtyIIlBI1W9rprAKvnj+x0ez3FCkJu4C+KdOW+UI/yq4d3iMH9NAAormeyNhQFbsLbDYENVD3QLpWOu0VAkb0L68IHKWloVvVGUP3ui/Ij6nYeknDGC7DQgq6VIFSkOlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QkMLuuqs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONHgOs027912
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g6hGIMMv3wb
	uPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=; b=QkMLuuqsFM29KbrDAK/a+azVlvh
	YnT80zPogffOPos/f7UhMCxbu8q8dg6fw2va0FA4lDlJNTygR1GmoLIiI/gNjYAU
	RRyFkrHEm8JmqfN7RBUHDFT/R2c26xLpD1lGNmAsdM5gQZ+LTCSGl4ZbrktblIAl
	hlbaNy2aPmXqx0lf3jd22IyFnuSzga2dTFEn8vxDFp5SrllI6T/IMrSAAGRr7d0L
	wgFo9Ynh0Yyd6zU6jBtGT5qLUFawM9jb7Tm5RA957Io1oPcRulDaxeKdj+O3iKHu
	iqzoBu69UWqPxV/xIRGnyEjVTQNpW+RAFi/AsEbSnS1Nsv+o/DCXkvThaPw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnxjnv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:39 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24458274406so8025035ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:52:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761558; x=1759366358;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6hGIMMv3wbuPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=;
        b=Gf5c/fQRiiksGkAUfaES3ex2nRAoTbrpKpBtCgNIvk7Tp3EeEsx3b9qxE/+VjVZWov
         3c/nQq69BkzSV/pVY8zkiYyGMzyioITJizTQ9zL/nhmgh1P4+QvFYf/LNqD4CqeE9H5u
         ewgR1qp+XjJseEn4Fq7qPpIlmlszwiX00Dt6mV4IO5aK6N161KDTvckCHstDst5hiamE
         nloo5c7R8i2kjrPipXM7KfPpDMGuolyG6Koiqg/suDgzbBZ/2krKj759qHdv0Us/5Z9Z
         LdHiVI90otc4t6zQpkeSlkFf29Gh0+yp9tngxwLQpJGIfCo7nRvUi4Ue+vUkX/tpR8sU
         Rffw==
X-Forwarded-Encrypted: i=1; AJvYcCWcDebYCJQgSOtdE3lYU3tPuivM7M6zj3ScXCb0AWnCC4gPIHUFnjDMRI0OxwmaV4HKeBiIogW92kgc@vger.kernel.org
X-Gm-Message-State: AOJu0YyPkvzq86gMMbebxui0XrnbG2OdrECBBWzuf50K0ZlHvlTxBm2q
	EQPs4PT+YB8slnxeScZv+tqVihCUild8adUx/kHBQN1MIhDFjAZK9WicO7vr0TL7sAQD+UyJNWN
	pA7GxT6QxnxFaBvN/NKbEFyKAtNRjnUeN1xxI1sHuq4tBOtHCuptDWCMjbzz3vmn4
X-Gm-Gg: ASbGncv1GFFBHSxsXdLNfZHVut6JgMtPZrUNxau7VcIi4cusVO9aqJOlugUROPa4FrJ
	4B87rtWmx7cAVSVoE80/ARL1EQlpeldHj6ixnfJZ6iGIw7KaUtRzQ2esNlMUvs0nZZIqGequvEc
	CuFW78gPn+tZCNPEu8ykVDkmtiWhOKU6bp0c3tfeoTDNBtKPNVXbZtwLDG5Zm6qWt0+aUZ2QyyE
	SAJawWA+MeJ7AKQSfF7RvWWGi6SUHpNRTwPSD4lwhRLaEUAEgymtNHrdEplfCqB036O9DZyxUMj
	t36UQk0C8Sx2Bc2ZL8pdown7gI9bAWwlY674w1ychmMwRaJ8lvd5mEx3aLVhsP8CfirQl/m6ed6
	JPQUBSiot8L6tQcWc
X-Received: by 2002:a17:902:e84f:b0:26a:8171:dafa with SMTP id d9443c01a7336-27ed49df04amr17503645ad.21.1758761558250;
        Wed, 24 Sep 2025 17:52:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhvOp7wNsS51SpI6EOA2HUs8VBQEy/ZyUwfDL4ym4Id0/ZhPRPzk6mTrQR2czfWa7itiQZ0Q==
X-Received: by 2002:a17:902:e84f:b0:26a:8171:dafa with SMTP id d9443c01a7336-27ed49df04amr17503285ad.21.1758761557758;
        Wed, 24 Sep 2025 17:52:37 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:37 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 04/10] dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
Date: Wed, 24 Sep 2025 17:52:22 -0700
Message-Id: <20250925005228.4035927-5-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d49257 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JYTQWVwI1XGucIoeipMA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: IA0BaKVkPd0SQw0PFHVCd9lN9FU1d5pR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX5SdyBgtJgGl0
 xgOGw27bOHEApYaYZce++xI2c6Xn5ZFpiESxtmTXgtevuui08Xw+aJmSQ+d/4wsu5KPeDOeGPKI
 COlsYqgSWnzMgSiEnAY0WKnQsgOBs70M4Qgbx19KZ+onMdo/mj86NHgIXxoJWuj94CTYjFsf1qz
 YuzqnOwkCn+AzoOSHd8tCGeosuj6jNpsHQIKXdDCBfcJ2JpmUFGgKCI9oGVDZJvRscFCfw6k933
 Rs0Z/hSK72A/b/u9o6vLFnmwwg7dYSGcKRtm/MUPo7w0HLgiPXs7ilV17vxLGE1rQqytJIi4S2H
 FB3xr4C9QoDGGoToHyKSck4XciF+JtHSbhnLi8kDy9oHPsKGZu/moOeX/MLTYwSmrJZNQz2WiXo
 Kb1NQvrr
X-Proofpoint-GUID: IA0BaKVkPd0SQw0PFHVCd9lN9FU1d5pR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

Introduce the compatible definition for Glymur QCOM SNPS DWC3.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/usb/qcom,snps-dwc3.yaml          | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..eaa0067ee313 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -24,6 +24,8 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-dwc3
+          - qcom,glymur-dwc3-mp
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
           - qcom,ipq5332-dwc3
@@ -386,6 +388,28 @@ allOf:
             - const: mock_utmi
             - const: xo
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-dwc3
+              - qcom,glymur-dwc3-mp
+
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: cfg_noc
+            - const: core
+            - const: iface
+            - const: sleep
+            - const: mock_utmi
+            - const: noc_aggr_north
+            - const: noc_aggr_south
+
   - if:
       properties:
         compatible:
@@ -455,6 +479,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3
               - qcom,milos-dwc3
               - qcom,x1e80100-dwc3
     then:
@@ -518,6 +543,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3-mp
               - qcom,sc8180x-dwc3-mp
               - qcom,x1e80100-dwc3-mp
     then:

