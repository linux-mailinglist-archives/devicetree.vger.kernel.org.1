Return-Path: <devicetree+bounces-230139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3962CBFFFD6
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:45:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 731C13AD807
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D060D302CB1;
	Thu, 23 Oct 2025 08:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GNu+rqYa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450FD3019A1
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761209095; cv=none; b=I/5C286U0zv0Z913Nu0mXTEZ8txGZ4r5DTBfxsTTUDW9E6gRF/OMDEDKGSe7nAEuBqNzenXjlGwDdSdesMCD1jJDv9zOmcJQdmfw2PmlQKFqTIpQHlvKg1LoihM3yWHhk4UJ0ZF7m3+zj1kJKM8SVSJggcywjr8oohcbcBYcMy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761209095; c=relaxed/simple;
	bh=k+PmNoXDAXQJS7OetKj0dkK2qhIoz89vlGf8TIfy+1I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nBeUtx+t7nNJTsDS0rK3xU5PF2BMxnkIq8hadaxu5k6ltUa82kTXPgt90zH94HhqxGxn0id+zYEoNJM2jo6gqiLILGvRlWgVJp9Bcds1KhuJpylSkCTgQp+cWjWClrXrqdFY77wLocTN1F+59FO9DFaBDnrwnaOyMw4cA7d9f+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GNu+rqYa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6wGN0022476
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:44:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ifR645KuUyFxKA//L+5AC3NZ2Xa5Oh1zVhSgn6hJBRs=; b=GNu+rqYaSILiqoC3
	slUnNyXTp1RfFzljugTGF5gqyfoXbblqGXcjubZ3evWaKweK233cLi79zwOnbX9g
	uOBQqUljEBhW/dI0J0RmttlM93jMhxl1A0AtlJ3D/1t+Z6Mk0H6bLGsiEfx4qkYA
	F8YyezBSRqG/sNHsS+5KEnWEifnJK6mUZVRQVcXa1rmn+ohLTwcor0IkEWxnuqo2
	8u3gx7G6El8TaPJkAvPz/Tf689GJrRTQZTK22GS43oyfIvFPpjKrnmDKGxw/pJ6b
	2kwAvsWS6YvsFEkd4YTxcf78JTTW6G45d+inTUJIkzkDETUBDtnUmFdTXl5iyPfi
	lSd2ww==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w87p3p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:44:53 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7810e5a22f3so1383357b3a.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:44:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761209091; x=1761813891;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ifR645KuUyFxKA//L+5AC3NZ2Xa5Oh1zVhSgn6hJBRs=;
        b=E1h4tOcuzwPExq0m1wY6jrt6snBs+Aj4WXiAe822Xs9upKVc74biS2UGZWVInSwdBS
         pqsOQqFhSmsSJQKs0jgWX20hgAYT/Sx3njb34expkFPGA/nqbwS8ZQoyMIqX5ckftHMS
         FLUtIkotCEg4HfdoiN2FPZPjrpPyIz9z4d0M+GBJuVQe7Zsjlt//ez4tZVNEusEMQlGC
         dX+JajuoSXueHRZ3Q648z5Vhwt4wq7V963ikl6U/GqJZBiXbvjouA67ZDk6gn8iz6Enz
         FQFpjwZl1FiZgOM5ik+AY2apGR5lLscfSjNaPCLeBKz4V9xkHruPHgUT+2tdUn1l5+Pk
         937g==
X-Forwarded-Encrypted: i=1; AJvYcCVaCbXbf7mw2yzYZphWh5aw7BPVd0P0/dCEa6AJyWpaJevp6hvxf2KuUD47oqtRrIPfI1rNsv9V8Zn2@vger.kernel.org
X-Gm-Message-State: AOJu0YwVisYnce59HwFZ73SMCJ47fO7gJP059skqQ4H0zECM4XaSwVNJ
	vTjbB7TElBCO/fo6h95nwA/hm8qLMFFE5xhiwS2aoAJd2P5fZuuWpCBp/anr/A7F2rdV+x93TVn
	yu2CZZJM4jSREppqLAWDirsJ3zfz7CVoMd3+Z1dcnLyCaERqE6o9M3fxWIvccPtv/8pwyp4oY
X-Gm-Gg: ASbGncvd5xX9tYfu1yBI5BN61vvGSfn5o8iyw3uloseVlNYJJFPRog9RNmW6HaefE50
	fUFbHaOiDNeYuJf2knbD9+Mf2vO4WJOu8gmsqJeAJ0sGtqvD0N1Yjco+Sz/5Js01Oni918QJTIB
	5fD/314+Pr8vHc+r5Bo7W/1op4B8Zm2mnu9VKz1m4tE6+wDB4ez82Rb2HFTYuUz8cU6EK7uQCa/
	NR3ZYMHw/DYWPipEPoNl7bqsEHCYTtxxR0JYwg3ResaRJh/WxZ3IjNvsiyc5MqKLqijm69av1q3
	lj/hxrH1d0ZzfM2ZrzE1jBZ8p8BAvx02zP0fRaj8RITZ0ptncGJVS3bpWiIQYJtO57wDVPahXDB
	WXlmI6uQz5pwksRXgKRMQ/4HNHgGrwxA87g==
X-Received: by 2002:a05:6a21:3382:b0:319:1c54:1764 with SMTP id adf61e73a8af0-334a8650741mr33069445637.60.1761209091038;
        Thu, 23 Oct 2025 01:44:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEF7/01T06H3cxa6y7Y+3Sz9xWN4jXPTvHSIbK3VQSTfvu1y6FfQKeEEaZm5mzR/UjCiLhd6Q==
X-Received: by 2002:a05:6a21:3382:b0:319:1c54:1764 with SMTP id adf61e73a8af0-334a8650741mr33069410637.60.1761209090638;
        Thu, 23 Oct 2025 01:44:50 -0700 (PDT)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4c056fbsm1391414a12.17.2025.10.23.01.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 01:44:50 -0700 (PDT)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 14:14:36 +0530
Subject: [PATCH v2 1/2] regulator: dt-bindings: qcom,rpmh: Add support for
 PMR735D
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251023-pmr735d_regulator-v2-1-452e1b28cd38@oss.qualcomm.com>
References: <20251023-pmr735d_regulator-v2-0-452e1b28cd38@oss.qualcomm.com>
In-Reply-To: <20251023-pmr735d_regulator-v2-0-452e1b28cd38@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        jingyi.wang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761209080; l=1753;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=k+PmNoXDAXQJS7OetKj0dkK2qhIoz89vlGf8TIfy+1I=;
 b=nBl4+q7agGbU116/Y/hJMgAdhOCTqaxJ9umeS7PG+LDZT5GwQmZDDun+u9hc0eZK3tEv0lXf4
 tTdomc0YuolAprxvorr0kbUTx8SNsdwRlzE0gDo5927Sw1weP2FDyV1
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX5SfsyPzw8/Sl
 PbZOHNRLExNer8IHsLHmZ6ejHGq9o9yLwhZu8rOrkbQq1tI5u7VQJS2TPHzJtzLPqyE8AuhlVLE
 RJeP5TIeuegIrVkc2TSeOStHHlm/9fLe7He8aPdOpeuq1Pkb7ajJ5xY19kSUmvVH99VABXd0IR3
 EEppPfp6MoNYM+VRrFuahRpBMSFeUG6HJLYQ+ZGif8/12dLANmEc/V/LFtuNhv+uA/0VGaoO+B9
 5Nef2I5DxHXolkdAw9CED0tqhycmOr7ds8gwlEdj4KdHLOC0oAUOrtn96wj3xEBUdYcvVDhOMyc
 gGA7Sw/CoVvSNa/V3fqakWg170BTRKJfuM51uyR6JX08Rt6tpWwc2japAVuUc30IY4Mu/kkrjWB
 bFoTTLnfbApH2nCxwYOvrZs01Pge2Q==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68f9eb05 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=S1N0t0yXLE9zJeP-jjEA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: SVxhanvzsXZnEQBqU2KFpe5SaC1cicV5
X-Proofpoint-ORIG-GUID: SVxhanvzsXZnEQBqU2KFpe5SaC1cicV5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1011
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

Add support for PMR735D PMIC used on Kaanapali boards.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 40ddc64577e7..4669095039c8 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -59,6 +59,7 @@ description: |
       For PMCX0102, smps1 - smps10, ldo1 - ldo4
       For PMR735A, smps1 - smps3, ldo1 - ldo7
       For PMR735B, ldo1 - ldo12
+      For PMR735D, ldo1 - ldo7
       For PMX55, smps1 - smps7, ldo1 - ldo16
       For PMX65, smps1 - smps8, ldo1 - ldo21
       For PMX75, smps1 - smps10, ldo1 - ldo21
@@ -99,6 +100,7 @@ properties:
       - qcom,pmm8654au-rpmh-regulators
       - qcom,pmr735a-rpmh-regulators
       - qcom,pmr735b-rpmh-regulators
+      - qcom,pmr735d-rpmh-regulators
       - qcom,pmx55-rpmh-regulators
       - qcom,pmx65-rpmh-regulators
       - qcom,pmx75-rpmh-regulators
@@ -496,6 +498,18 @@ allOf:
       patternProperties:
         "^vdd-l([3-6]|9|1[0-2])-supply$": true
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,pmr735d-rpmh-regulators
+    then:
+      properties:
+        vdd-l1-l2-l5-supply: true
+        vdd-l3-l4-supply: true
+      patternProperties:
+        "^vdd-l[6-7]-supply$": true
+
   - if:
       properties:
         compatible:

-- 
2.25.1


