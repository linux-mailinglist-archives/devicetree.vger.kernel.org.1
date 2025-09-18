Return-Path: <devicetree+bounces-218752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEB2B83C93
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 11:28:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F01BD188358F
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 09:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48BFD30215D;
	Thu, 18 Sep 2025 09:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iGCVQKFJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922623019C7
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758187690; cv=none; b=fVCLMIgzMqCTZN7ucaGZ4jpvtQmpEAaX1+ToKJcdv1grXvtvAuPy1LAbyLM3r+1yYxJZ2WjFif0mHuSAZQyN0OYeFsg3Bos6PJpAPuszGAT2FH7CQZ9921p3u9voL/Gropp0DR+y/luAwMbjjzIeE5BZc234b/vrB/N6WtQMMUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758187690; c=relaxed/simple;
	bh=ArXwDIA34+1WfUp8gIHMT40+a9JNYhOA/RMyYMWiy6U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TtBdufzd6VN2h65Ss+xG9Peem6KrzPuZNl0DbSW6CJLyWc4EN+icxdW96/kFs0grr64sgd4k/7veMFfE/W6C5Bf01MYwWgBM5a+UVPtaFzJLFziNOw4ivTAEco/sf1dy8HUKzw5ZBmPpuD0lwKgbd3Jzd1CdIYhO2hgGGlIgj4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iGCVQKFJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I53HW7017023
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:28:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3F+avBgCPtVijc/CXlYOC3xqwD3ll2D58Zhdko8e96g=; b=iGCVQKFJoCU6rSM4
	n/vtMg7pn/ZGQ+k3BZGhURIVRFr1trFI1LetKQEMVsNF7rHrqjwBRWOFkxPr5P0T
	4bv/pdqdQI8EptKkqsYvyLC1JjSriq2NStd0nEnFTyTtDYpnJzHwERaiXpJZktPZ
	H12tRAYpwRERYG8C32UeW8SL6dQwPXN1leEth+vxyqRYdkQC6a1N05JZ2Qe19kMD
	64oD0UEKZgL7O0OhsVx31/I24tpzivqsbX4xvAchLuxjAcPjruglzzwepqYAk+se
	jputYJpoNiWFL6wMBhH3O/iMWzDtWXUErwtnQGYwF826uHa2LaanTZmxijeTiS1p
	1I7dqQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4982dea8rt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:28:07 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32df881dce2so780813a91.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:28:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758187686; x=1758792486;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3F+avBgCPtVijc/CXlYOC3xqwD3ll2D58Zhdko8e96g=;
        b=PHr5oFVjtGwiGRpzHT132s9NRycoT93/fReWeHMXqHGQiyJN2bDaN4DGVwU0c2r8IX
         9CDux5wyRe8uD/OdpSiY+w2yNQQEKlhjVDXpCToGU0iAxTQ2uurL3luQHzLdgA4JWTZC
         UziEuVAVYMvs/Hkv3Uly8Jbq5k8o1S7/CwAfxhMbEf9aDKRkSbhouJ8grwCUBlH0fY7A
         Nk490K0VMKqWCtpYfQIhFWQ1b4YEmb5wwLYBDNk3Wag8Rf3APR5zgSkZXRilfe5/HN39
         lvwA6JsHMRJKyCbaPAF5H0ietHeCELCYjSdp4FbG2Vfwnqc57Hxw1UzW6lJvv0gkebI2
         /xZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWN+WQXUyIf+XLKyrBmHj0AcBPQ5BfqCB/XDcCHJqB/UaykEDBcgm/VgE0PIPSkBN/8csJ/fDPbiFKr@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1tJh61sCCLHvbJ3gai+9iav8HfYxIYM9D5k9Gu9eZqIbtC1/y
	qJmUpgRnuDxNt7jGVC0P7omoNKEC9kFzryo0/wCSafaHgYN20hi6lOr7it2Ujsizi+cSyAbC0Q5
	p5UERbNwLch5ClFbht6Iseqv/PK10r8zAObOc254IP4oTM0UrtVJdiynjHxlq/yOP
X-Gm-Gg: ASbGnctelI80rkDO0r2YH7WPSsQA29vwC2RAjWbSv4Z9mnrp/jVqhMj5dUmuhQn9IY2
	7S9rZQeM1n8HpWhNx3rcEtR5abG/KN/WVg0ohpJtWEC/j9vGakjuoouW3rA3mDG52dlY3gLFevU
	PzZUhhvctZKmv7Ek4ih6G4E+bfRxPAFRW01O9kLUX79Ggz38bQItDXy7Fbui7WF+QJivAsJZlDq
	BS50hwPctyNO7s08rCkhVnKzqoEq4ofJUXn/wpnWQUafMDi9K96t8zAEOcy88a7Vh/7dTHN8X0D
	UNMB1UjODyi+WRPSn434ov9Vn5fU5Vdzo6PXbDwAfXzSEOfkThaEq+o9kE5Mwz0tg3Z4Lr6e6iC
	esJ0i55ygbCfHv4rAS7BLEyLvfg==
X-Received: by 2002:a17:90b:28cd:b0:327:ba77:a47 with SMTP id 98e67ed59e1d1-32ee3eeb3b4mr7398892a91.15.1758187685878;
        Thu, 18 Sep 2025 02:28:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxAgLlv20QfQ7pYeroZaBP6I4S+pxEyWce3XgubjnvcE6lMDEzesNd8ntusI4J2/DS5D9dKQ==
X-Received: by 2002:a17:90b:28cd:b0:327:ba77:a47 with SMTP id 98e67ed59e1d1-32ee3eeb3b4mr7398850a91.15.1758187685382;
        Thu, 18 Sep 2025 02:28:05 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfbb79b81sm1819205b3a.10.2025.09.18.02.28.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 02:28:05 -0700 (PDT)
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 14:57:01 +0530
Subject: [PATCH v3 1/4] dt-bindings: rpmh-regulator : Add compatibles for
 PMH01XX & PMCX0102
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250918-glymur-rpmh-regulator-driver-v3-1-184c09678be3@oss.qualcomm.com>
References: <20250918-glymur-rpmh-regulator-driver-v3-0-184c09678be3@oss.qualcomm.com>
In-Reply-To: <20250918-glymur-rpmh-regulator-driver-v3-0-184c09678be3@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758187677; l=3104;
 i=kamal.wadhwa@oss.qualcomm.com; s=20241018; h=from:subject:message-id;
 bh=ArXwDIA34+1WfUp8gIHMT40+a9JNYhOA/RMyYMWiy6U=;
 b=0B2o6btoCTpfFbSbYve0QWiBMoOSBTxGHn8ncvs1EJxdlh6kWQQ3v/AA8O/6bulZ13bOL0ARq
 7IbHwBI+xaXC35QHZy8fPnzWm4lfaR6MBIstDPVsuVC7YL3+Gp+ZL5x
X-Developer-Key: i=kamal.wadhwa@oss.qualcomm.com; a=ed25519;
 pk=XbPE6DM5/mJi2tsiYwMCJCZ4O5XPMqColJRlGVcM7Hs=
X-Authority-Analysis: v=2.4 cv=YfO95xRf c=1 sm=1 tr=0 ts=68cbd0a7 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lsy0SRZfEzWN0kW82SEA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: IPHc_vho7kfOg-rnFnGSY-syyTnbsVDi
X-Proofpoint-ORIG-GUID: IPHc_vho7kfOg-rnFnGSY-syyTnbsVDi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDE4MiBTYWx0ZWRfX6RZnFaC/cm/x
 gFhaR98Vv+i0074effs8fRDk0KYN4r92deoU95FnPVMIZBCyHnR87fZltypPuYDoBDvR/Gqltrb
 HH6tN8EQkD8rjY3XTbTF4C0Kc8b0xL3Je6WDyCRoqfxX93pKy8tHxkkDPR4wFFvu5CldjpG/5NV
 hqRR9Kb7ODE0iLOoMrR7sSrJwlODwPEcCssPuxIYVks16gw+PaHiSua4FGitrfYkdQPRYEQ2SwB
 YncMc1A1lZ/D6Qbnc7aAMP5fZjqsVi1St7isiTr+B5IbPPjvrYhuyw0dZB/bqY93+DzQA8lhuLp
 xajQDPwCKvyzbEBSRkwmuE/xBSKwMougNkMA1kFWUKuH7jtXbDSnCexnSKOYtDG2y04abP65FTz
 Wd8ovrHc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509170182

Add rpmh-regulator driver compatibles strings for below PMICs:
- PMH0101
- PMH0104
- PMH0110
- PMCX0102

Also add the supply name properties for the regulators
present on these PMICs.

Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
---
 .../bindings/regulator/qcom,rpmh-regulator.yaml    | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 4c5b0629aa3e622579b54a226785139a0b986079..40e57b10ebbebeff130871b6d978df64111b6f29 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -51,8 +51,12 @@ description: |
       For PM8450, smps1 - smps6, ldo1 - ldo4
       For PM8550, smps1 - smps6, ldo1 - ldo17, bob1 - bob2
       For PM8998, smps1 - smps13, ldo1 - ldo28, lvs1 - lvs2
+      For PMH0101, ldo1 - ldo18, bob1 - bob2
+      For PMH0104, smps1 - smps4
+      For PMH0110, smps1 - smps10, ldo1 - ldo4
       For PMI8998, bob
       For PMC8380, smps1 - smps8, ldo1 - lodo3
+      For PMCX0102, smps1 - smps10, ldo1 - ldo4
       For PMR735A, smps1 - smps3, ldo1 - ldo7
       For PMR735B, ldo1 - ldo12
       For PMX55, smps1 - smps7, ldo1 - ldo16
@@ -85,7 +89,11 @@ properties:
       - qcom,pmc8180-rpmh-regulators
       - qcom,pmc8180c-rpmh-regulators
       - qcom,pmc8380-rpmh-regulators
+      - qcom,pmcx0102-rpmh-regulators
       - qcom,pmg1110-rpmh-regulators
+      - qcom,pmh0101-rpmh-regulators
+      - qcom,pmh0104-rpmh-regulators
+      - qcom,pmh0110-rpmh-regulators
       - qcom,pmi8998-rpmh-regulators
       - qcom,pmm8155au-rpmh-regulators
       - qcom,pmm8654au-rpmh-regulators
@@ -246,6 +254,7 @@ allOf:
         compatible:
           enum:
             - qcom,pm8005-rpmh-regulators
+            - qcom,pmh0104-rpmh-regulators
     then:
       patternProperties:
         "^vdd-s[1-4]-supply$": true
@@ -422,6 +431,34 @@ allOf:
       properties:
         vdd-s1-supply: true
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,pmh0101-rpmh-regulators
+    then:
+      properties:
+        vdd-l1-l4-l10-supply: true
+        vdd-l2-l13-l14-supply: true
+        vdd-l3-l11-supply: true
+        vdd-l5-l16-supply: true
+        vdd-l6-l7-supply: true
+        vdd-l8-l9-supply: true
+      patternProperties:
+        "^vdd-l(1[2578])-supply$": true
+        "^vdd-bob[1-2]-supply$": true
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,pmcx0102-rpmh-regulators
+            - qcom,pmh0110-rpmh-regulators
+    then:
+      patternProperties:
+        "^vdd-l[1-4]-supply$": true
+        "^vdd-s([1-9]|10)-supply$": true
+
   - if:
       properties:
         compatible:

-- 
2.25.1


