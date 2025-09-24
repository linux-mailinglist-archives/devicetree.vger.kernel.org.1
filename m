Return-Path: <devicetree+bounces-220859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 07306B9B85A
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 20:38:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FF8619C8374
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6263131B816;
	Wed, 24 Sep 2025 18:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JDso2loU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21E031B807
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758739092; cv=none; b=oOtD842LEBXniGIsFh8TzuUxHcAT5uga3xhImaC+aOuv71hMtlZ+Ap+6SaLwGcAsClDiklvfO9Gew2oPco9q8oZhlzjEvNZ2shOBTRnHCDcivcOjihohh7CztyuQpIGaI2mwNiO78voEp5lYjJkDmMDNuOSxVef+ZWmjb5zotSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758739092; c=relaxed/simple;
	bh=dWgRWKg9c1JS8VUIKBovpHGwX2fAT4eNnMOUTyOCEnI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Jo3k0id0MD1HCblTKG8QRB04k3ufEsuqWYrFNsR1w+FEdNo4SJv8deTU4MR0Xd+4LqMd+68R7U0u9ILp2khSW8CO/NTsIhHyX/PjKZhb5ki7OEZ2/jtA7m+G7Ycyq8kcgCRFxqRILFVN6YH5sOrvhFMHLAZit4xq7hWDHrrahxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JDso2loU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCvxwL021502
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2QgtMUT3ZcJ
	WxmG8dCgxr0VkowdSceCN1072QlAo8co=; b=JDso2loUSBk3hQ6nJsXjz2z2CVY
	mJw0O1Ul9o1SPoHPP4OPKSlJ+b8RHNXzf2NeqYe4F8m8KvP0kG+/r0CbrrZq98UK
	FD1FAPDAWPmoFLDU3H5b229wrZ+a4dLlHKJ0hXplO5UU0YHGq6OYvHNeSC1BU7H+
	s0hI2uicRkz7Y0NeaKc+qkejjYlAY0+WFRC1rHWxdXX+NyeRibmP4VVGdPh13m0R
	ZhL1fiTripmGVbPPMqgNMj5jkA5bqdUVf1dyzQvDfKotlAHrrscIhtpAyK8bd69T
	W6ivgyJrOcQB5xB03+B+Ppy6hWVWmP+4yBq/NEw3L2FpIGvLcey035sqbfw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budacyvu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:38:09 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-269af520712so1395555ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 11:38:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758739088; x=1759343888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2QgtMUT3ZcJWxmG8dCgxr0VkowdSceCN1072QlAo8co=;
        b=mdrC1hvetzm6CHxaw77iQhl743QVmL0coB0/7J2Vbcf/7V45nPm3F3X0t3VXq1ObuH
         1Sc8dJnGNOBbwhDA/v0Xe6u6jTCPUmZupKaDkSKTLqYQK8rtWWdPRQ0OtaErXySHRD7f
         vQyJufdOyQHrFYTpblgjnU0i3cLjW1w59rpqfO0Ul7DLPJajErSerH2yVa9nsbzChVW5
         ozrV+gPx8ikO1oQfwGNA6I7YRzF7IQ5sjFMlptYmU7bD+rrFf1glBReSUDe78ReFqm/j
         imBtR0vv2LEWkKpubmtw2mT9Y8nkVm2d0CDErMv1BpDR5FI3OvC7SEXhMScwCKM2yO4t
         PUIA==
X-Forwarded-Encrypted: i=1; AJvYcCWCpnrEO4ZQL2aYKX2ugMkQEJrKoURQdZs2h/U6WP/BekalLpX4vCd8ckdTPcoKtuX/vOVUDI50LAjN@vger.kernel.org
X-Gm-Message-State: AOJu0YyOqDNk2SDJOXPu5CVzbJnGtforz3BH/PJP8ZN9eDvSMxKOLYmA
	WdtQv6cxxDcArVYokaBqM8XZgAgfBWVg2j4GvteEerqa/ietwaJz7WcRBv5knsrGLYofxL9Qobh
	yo/qC3EJd+aJjkKKV5mWrqGd+gLTZIV3ZCgRC9kQFyvDnRAMtqZWTwcVsDZ2215bF
X-Gm-Gg: ASbGnctjizWkpHBx7GxWdqKzMVoGFoH1Dub9ZYHfd6kiafMbOrFdEA8BdN03gCa3uSx
	SHhAPNYOY1xfGBI47ArL03CEVSlMlnMImCnJ/qxR9zOjm4dJW1bZKIWQ0a7CdyY2jS4SQvS1Mf2
	FIKC2nQdS8IQLi38MhcP04QwIcMY/Me/hdWlXx4MrOxZNa9yJ30hfncyPBq018DqarW53agboei
	Z6U4/6RpjxG9GqOFvbrhMNGKpukZGpQqHBhea4j2S0PyIYdAO9q8plIDD/tuES7ZnKPoYeUTADb
	QXuOd2wiBHM9aro/dQWrrVxEWH+Qhd7WiZHfjXisU2cHZbadBpWQbEy9/Ok0bF35eZwRVMQc8VP
	mayx1jLrHX2bZYO6UZN1QrchvHOssAptIuT29kCBOPOQuNZN892bW1z8=
X-Received: by 2002:a17:903:384c:b0:27d:69cc:990 with SMTP id d9443c01a7336-27ed4ad102cmr8561575ad.49.1758739088484;
        Wed, 24 Sep 2025 11:38:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwx0Y5BNx/AZf0UKl2QB41ev/gZCluSWgmL2NlPqiBpOXayzifxVIa2OG4y7bWAT1hFew8XQ==
X-Received: by 2002:a17:903:384c:b0:27d:69cc:990 with SMTP id d9443c01a7336-27ed4ad102cmr8561265ad.49.1758739088033;
        Wed, 24 Sep 2025 11:38:08 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b555adca754sm6523412a12.16.2025.09.24.11.38.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 11:38:07 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mani@kernel.org, andersson@kernel.org,
        mathieu.poirier@linaro.org, konradybcio@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org
Subject: [PATCH 4/5] dt-bindings: remoteproc: qcom,sm8550-pas: Document Glymur ADSP
Date: Thu, 25 Sep 2025 00:07:25 +0530
Message-Id: <20250924183726.509202-5-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
References: <20250924183726.509202-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 217gdtsVJbFxFsRBKd77rxkumBJRRt4f
X-Proofpoint-ORIG-GUID: 217gdtsVJbFxFsRBKd77rxkumBJRRt4f
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d43a91 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Z4uQfrFFlNbWx1whHNsA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfXypLmW7iFAHZc
 8b5wVk0cE2ALZ9C3S8pTECUpCoeLfsGQTNk0uBX2+ska3OArhL0dBI0gT5AE16TQb9YXC0HUzzP
 eJHIajPEGvPzt59pJzd/I8Wiv+Mrs9Ehm/XTtPfYpQQ9Mboi2HlLMQoPbz2rhp5Dp1z7313+YJg
 DDdHTOfls65FGC6UsfdEDAEri3MYnhWN9Qu5trSN22SE+VCtVvZcmRzQ4E1H0Ji5llLSN1PUxCp
 j/w1X2utRmeA/QbSHHImApSIn/eQiClQxh5cePj7e/3kCoKgyEqDf9mokbeUTaljGcJFelk7jPv
 CVQ+88r5n81mZN3+XXd30gpoMIcJQOh2O6czARvuZQj5FXjzl/uydMxO4hvdgad2q3fCnGoMxu9
 nFR3Pnjg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

Document compatible for Qualcomm Glymur SoC ADSP which is fully compatible
with SM8750 ADSP. Also with the Linux Host running on EL2, the remoteprocs
need to be hypervisor independent, the iommu property is mandatory to
ensure proper functionality.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
---

Dependencies:
Peripheral Image Loader support for Qualcomm SoCs running Linux host at EL2:
https://patchwork.kernel.org/project/linux-arm-msm/cover/20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com/
This patch has a dependency on the iommu binding added in ^^ series.

 .../bindings/remoteproc/qcom,sm8550-pas.yaml     | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 2dd479cf4821..cba45ce2865e 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -28,7 +28,9 @@ properties:
           - qcom,x1e80100-adsp-pas
           - qcom,x1e80100-cdsp-pas
       - items:
-          - const: qcom,sm8750-adsp-pas
+          - enum:
+              - qcom,glymur-adsp-pas
+              - qcom,sm8750-adsp-pas
           - const: qcom,sm8550-adsp-pas
       - items:
           - const: qcom,sm8750-cdsp-pas
@@ -95,6 +97,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-adsp-pas
               - qcom,sm8750-adsp-pas
     then:
       properties:
@@ -185,6 +188,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-adsp-pas
               - qcom,sm8550-adsp-pas
               - qcom,sm8650-adsp-pas
               - qcom,sm8750-adsp-pas
@@ -238,6 +242,16 @@ allOf:
             - const: cx
             - const: mxc
             - const: nsp
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,glymur-adsp-pas
+    then:
+      properties:
+        iommus:
+          minItems: 1
+          maxItems: 1
 
 unevaluatedProperties: false
 
-- 
2.34.1


