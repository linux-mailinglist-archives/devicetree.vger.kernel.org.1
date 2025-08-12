Return-Path: <devicetree+bounces-203823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3777CB229F5
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 16:17:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BD4B188201D
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 13:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A3FD2874F7;
	Tue, 12 Aug 2025 13:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K0rib+nv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F49928727F
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 13:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755007024; cv=none; b=cQc8Z/iLWt4KUzGfWswVslPvfuHVcTKMPGSuWUDEfCwBdNsZbB8bdoyKJLElCngpJl0FZKdtTIgG9ma2i7yM+JQ3Il8fIi8ivf71nPF6oZ5lcBeVfz5hK6mm+lD7LasWznNYJVh5mXMzOOyVb7HrCpwHiMXdCYuUMr/rz9pc1Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755007024; c=relaxed/simple;
	bh=x+vJsdB5UbWnDVZfy6kpse5FbjcsZdmkhpaMMIlOSS0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GsQ5UN9w3l5q0PhM8XvjHl0aGIHdm/WYd+ZJ186CCDHuIb4jPfKRbMMoJJ+Bz5JNWZO/AL5wQA/5Jj6RJd/8SeapmD47D76AF/zG3UiuRQTi2qrtVMF4LdZyyDlznD9jnEyu9zS60CPJXYey3kRNcQ4Ymok9b5iax+pjVQL8jzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K0rib+nv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57CAvfeC012906
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 13:57:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZQ8+tiX7M0E6mUEBR+uWjNOhJ1OIH6kHczo6fKhd1q0=; b=K0rib+nv07uua6VW
	nuXfD0F5HGud5JLVQGV4eLODA20goezDAju+rxuI+/FHMRt5vPu814Qu+FhA4hrT
	KeORaKJ59xgpBhLRIGpVD1VYMuvstOccBvIBF63Jvc2A2XMflxB7fSpuYuoyoPig
	fq2pbWDvFiTzQAN2qBZs/eilUVhs5S8Y+W67DqwJwOalIDAOlEs8zt525rOkOr0G
	cY28WjtXPTzi6XmVzFU9rPWmqd/42IJKWIjbyZV7i1KNkhDg2udOH0MkehdOyCpV
	KMYfdThQ41noldqwqjlfHQzmCtHT6t2cmv1Iwb5c3pJNKn8ekPBAj3n4PnMbGTPq
	JvUdBg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fjxbbgea-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 13:57:01 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b3510c0cfc7so4166773a12.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 06:57:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755007021; x=1755611821;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZQ8+tiX7M0E6mUEBR+uWjNOhJ1OIH6kHczo6fKhd1q0=;
        b=Nc2UdSCNpkgncDUIQvHbGXtwO1J6ba4suLJ1Of9xIlKJ0cG9U4rrFuKxOeEGHdXpY1
         4nDqZUr7BP79OlVPq0GaLnT+cKUN5HfuM6I8fyHzIuQ4HOw/+MXrq7g3Gb/g+zjcuROO
         +aISOuLw/DZb+deJWza7+OHYy866l9HXTJZ5GXHwcNkUfqiZ3G/MoM6UGW96ow7vrjQc
         rCCUF4Hg2c3+4vtqwTltbIiEt/BfXO2xXsFbXChApOTM1tIWLe/6Cbh/GcAyYJLUKL4L
         4trB+tbSi5IEsajDDr+s5eRGBO8Hba9xAv4dRclIWJRlKvbFL7+xFxZWSyQtJbeB96AR
         tjyA==
X-Forwarded-Encrypted: i=1; AJvYcCXzk8VgTUllao7pMyQ/iP8TqswPpcHFINbHjj609V2AxS/ueIm7CFz9KJkna7ZbqQoz5MaDMMUvF1A3@vger.kernel.org
X-Gm-Message-State: AOJu0YwIgWqs3Gbr6bzzoeM7yEij0h7T2saQ8W1WVzVpqkdzffUJ78u+
	utn3mU8FSOgOwCkI8V5DsUDW7u96g6kIwzj1hBdqVvv2iHJDmQEHZbUEyKynTWTVNbLoLfbeZdl
	FsMI2irlL+qM5pYBnh4imjtzjVliN+7JT4Y53UwQ8jl1U6+uZol44zfFddt9ooHRp
X-Gm-Gg: ASbGncuZqlA4e6mIbLDqUBjPbB71WfDD9n/imIiAhh6l67UMD9ruSm3iI5CszUiFMhd
	+Ahv/XvKJAjdGn1w1Ii9joRyjUoQWZLhkN97JX5U5QDb8tbI4DzdPvoSh29b0VcoYoYrkrbwOoh
	Job+qrwiXUN+hazhmygE/3NllMvp+iCiaaYpVZpTIbb2MJUyfXtqg8lugrnAwhlLIKsIzhxkXjD
	9xexSLIOPoJkE0xv9f9h9t+LDtFI4ezz/YtaPgLnSADGkKv9APXGH343AGJFecy960ZVctnFkvs
	ZB1FUxGUiC8JE3ZP3MCZNPUyzlbtHvc1+bhmnAVIqHOiXvkVCFEXZrrQARaBVGKRGu+5md8nh2I
	=
X-Received: by 2002:a17:902:f786:b0:243:43a:fa2b with SMTP id d9443c01a7336-243043afee2mr24964775ad.56.1755007020862;
        Tue, 12 Aug 2025 06:57:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/Ll1cwqHkzp4WWLM0KEdu6MBHiByEt78BDHl1i8byC65D++79kI5HRM3rx5blTvOTvRZLdQ==
X-Received: by 2002:a17:902:f786:b0:243:43a:fa2b with SMTP id d9443c01a7336-243043afee2mr24964415ad.56.1755007020412;
        Tue, 12 Aug 2025 06:57:00 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24302e028dcsm16703265ad.91.2025.08.12.06.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 06:57:00 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 19:26:44 +0530
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document SC7280 PCIe0 phy
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250812-sc7280-v2-1-814e36121af0@oss.qualcomm.com>
References: <20250812-sc7280-v2-0-814e36121af0@oss.qualcomm.com>
In-Reply-To: <20250812-sc7280-v2-0-814e36121af0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755007012; l=4032;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=x+vJsdB5UbWnDVZfy6kpse5FbjcsZdmkhpaMMIlOSS0=;
 b=fWhFHgoWQEMAvJ1DN8osk233BTcVPVYyvwBmN6wSuJ/meEyBZHsLk/RFvE/UF0PrIJD76vLP8
 qzTKCqQL7FiB9k/qQ+lM7BF+G1+jXOrrdT7wkLTE54Lpbb1P9GSDCUl
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=G6EcE8k5 c=1 sm=1 tr=0 ts=689b482d cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=dTY-U6FrE7cCJ7g73hYA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA5NyBTYWx0ZWRfXwJqV7ZhG01YM
 6GcQUa7XwG/SgfBBUxy2oT67vg/M88UAJQF03u8CU7wKBTJuyH2LP6FEV2Oc5mI7WftP55xwaRg
 6jzaMe8QITs0LqBZ+KPqwgL3Kidu+weJmVQGAtFSqxqRV9lAw039dNIh5wwnS5raGrVgZjU6/Zz
 Z6rp9z+IV03C8xF+Ap1g+kM9HbcomuWzwRc8FouHXhwnlJFdXU9UHmuWDqYqsIE7B3oH7140qFW
 leQ+TJv26Gg+Id8gfXBm2mTyWCmplACSq7O8Z6FLTJf5ydWWTFHlFoGffGzxnM89SiNKlyoP2Sn
 qxlATPcOilrocEXZ+SLCfIEmZbFzRqJLow2JQ1abWgfE+RsxhgJ4xcrdwoKRDY+SK9jyTl4yico
 OZNdeEoX
X-Proofpoint-ORIG-GUID: sYPnxtHusdHdxHwkyr-bjcFF_OoSeApT
X-Proofpoint-GUID: sYPnxtHusdHdxHwkyr-bjcFF_OoSeApT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_07,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110097

SC7280 PCIe0 PHY is functionally compatible with the SM8250 Gen3 x1 PCIe
PHY. To reflect this compatibility, update the binding schema to include
qcom,sc7280-qmp-gen3x1-pcie-phy using enum within a oneOf block, while
retaining qcom,sm8250-qmp-gen3x1-pcie-phy as a const.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 69 ++++++++++++----------
 1 file changed, 37 insertions(+), 32 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index a1ae8c7988c891a11f6872e58d25e9d04abb41ce..1e08e26892f7b769b75bb905377d30a301e6631c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -15,38 +15,43 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,qcs615-qmp-gen3x1-pcie-phy
-      - qcom,qcs8300-qmp-gen4x2-pcie-phy
-      - qcom,sa8775p-qmp-gen4x2-pcie-phy
-      - qcom,sa8775p-qmp-gen4x4-pcie-phy
-      - qcom,sar2130p-qmp-gen3x2-pcie-phy
-      - qcom,sc8180x-qmp-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x1-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x2-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x4-pcie-phy
-      - qcom,sdm845-qhp-pcie-phy
-      - qcom,sdm845-qmp-pcie-phy
-      - qcom,sdx55-qmp-pcie-phy
-      - qcom,sdx65-qmp-gen4x2-pcie-phy
-      - qcom,sm8150-qmp-gen3x1-pcie-phy
-      - qcom,sm8150-qmp-gen3x2-pcie-phy
-      - qcom,sm8250-qmp-gen3x1-pcie-phy
-      - qcom,sm8250-qmp-gen3x2-pcie-phy
-      - qcom,sm8250-qmp-modem-pcie-phy
-      - qcom,sm8350-qmp-gen3x1-pcie-phy
-      - qcom,sm8350-qmp-gen3x2-pcie-phy
-      - qcom,sm8450-qmp-gen3x1-pcie-phy
-      - qcom,sm8450-qmp-gen4x2-pcie-phy
-      - qcom,sm8550-qmp-gen3x2-pcie-phy
-      - qcom,sm8550-qmp-gen4x2-pcie-phy
-      - qcom,sm8650-qmp-gen3x2-pcie-phy
-      - qcom,sm8650-qmp-gen4x2-pcie-phy
-      - qcom,x1e80100-qmp-gen3x2-pcie-phy
-      - qcom,x1e80100-qmp-gen4x2-pcie-phy
-      - qcom,x1e80100-qmp-gen4x4-pcie-phy
-      - qcom,x1e80100-qmp-gen4x8-pcie-phy
-      - qcom,x1p42100-qmp-gen4x4-pcie-phy
+    oneOf:
+      - items:
+          - const: qcom,sc7280-qmp-gen3x1-pcie-phy
+          - const: qcom,sm8250-qmp-gen3x1-pcie-phy
+      - items:
+          - enum:
+              - qcom,qcs615-qmp-gen3x1-pcie-phy
+              - qcom,qcs8300-qmp-gen4x2-pcie-phy
+              - qcom,sa8775p-qmp-gen4x2-pcie-phy
+              - qcom,sa8775p-qmp-gen4x4-pcie-phy
+              - qcom,sar2130p-qmp-gen3x2-pcie-phy
+              - qcom,sc8180x-qmp-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x1-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x2-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,sdm845-qhp-pcie-phy
+              - qcom,sdm845-qmp-pcie-phy
+              - qcom,sdx55-qmp-pcie-phy
+              - qcom,sdx65-qmp-gen4x2-pcie-phy
+              - qcom,sm8150-qmp-gen3x1-pcie-phy
+              - qcom,sm8150-qmp-gen3x2-pcie-phy
+              - qcom,sm8250-qmp-gen3x1-pcie-phy
+              - qcom,sm8250-qmp-gen3x2-pcie-phy
+              - qcom,sm8250-qmp-modem-pcie-phy
+              - qcom,sm8350-qmp-gen3x1-pcie-phy
+              - qcom,sm8350-qmp-gen3x2-pcie-phy
+              - qcom,sm8450-qmp-gen3x1-pcie-phy
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
+              - qcom,sm8550-qmp-gen3x2-pcie-phy
+              - qcom,sm8550-qmp-gen4x2-pcie-phy
+              - qcom,sm8650-qmp-gen3x2-pcie-phy
+              - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen3x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x8-pcie-phy
+              - qcom,x1p42100-qmp-gen4x4-pcie-phy
 
   reg:
     minItems: 1

-- 
2.34.1


