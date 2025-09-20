Return-Path: <devicetree+bounces-219481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 317D5B8BDEE
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 05:21:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E142B1BC733F
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4475226CFC;
	Sat, 20 Sep 2025 03:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RD62JpHU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4339221FDD
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758338479; cv=none; b=ulFGnTPwpI3p/2GWgTPqS3GbVbbOqXSpFdXNwJHHDSQ7BoNwV6cPjjgkIzqZNN7viCYzVxtRTn4/yPoZzWXlqUNbY7MJECo46d+dVBDluSxNJhY1m5MBq8YguxYXQEIm11YnbHh2eVluvwnzjlFkA1r/vUdsg0Hh7jY95os0rwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758338479; c=relaxed/simple;
	bh=YDlSoeRw2VbtYRMNUeSZVwJW+SmI0llmlSIr9kcNQWM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Jve9rz8tZfPyOqet3Ptc/efxuxm/E5LBouK7ci1aVWfbKxmnioh7yBQm8V2oO311u+puD90R6OINkTFq0iX0hSFDuFDUAcvaeeLJBFXiSMcdWHrluqN/EFtNUnsrJNex273qHnLPrM35CmhrJ55hIyBSItEXqg/zzqUDACwYF3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RD62JpHU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3G7wg006533
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=P4afTs2BZob
	5xp1NXhLP4wPYTnI4iHBaCCe4NNMHtss=; b=RD62JpHUQDrLOassI4J3yoVNtA4
	Xpfd5zUsF/IkTIdzVGulZKCQZvpHKcXFoep/5QXSItxcCXg3CcNvLlk918glR11l
	31hneOnrWcaeS5nnlz9zw5OPM/N1we7G/muPyXtDwOKp1Q0kkD4SfrgHNLHpGQ7C
	GxL37cVPtNsVoyQh5nILm6qJCAx4zV+TUh3xK0uVl/jJyoJir5tsTMCZh/op2QPD
	yMEP93rS/TRF8skqZ7NUkYKvE56XtXE43MysOF/PZk63L1dvSmxmn3B1tqzvAgoQ
	AQnbMd4PsPGu3T70HG+53huNp6C0EpDzragSEGsm+8J2gMdfiLi7pmihWeQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhg223-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:16 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77615793f06so2711511b3a.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 20:21:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338475; x=1758943275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P4afTs2BZob5xp1NXhLP4wPYTnI4iHBaCCe4NNMHtss=;
        b=gkhkGXisZn0S5jap1q4VB7p2AaSZA7NH3mpF39VsYz7mre1liZWBQkOVoJsOE+J+0v
         b21rbb3ZN30YdCcwi6N2L+3GsnXTioy7ijTkq+dZ/YYZDGRZimLQwiR7tysgzNb3VNyU
         hNC0eACPfzR24WTWhhFReh+FE/Y/G1zY3ZSOa5NaHR9PIyQLqTg9XvO4znmNoEsijmVW
         6uMrum+Pdqt78/GlCt5+IaNUka/8TYQ4uzPrYdxv6xtJFnmgIbi2nN98BiqMwsjmNEsV
         neprzjU6tnd6Q7cppiariA9CBFJBc/iQlRPwXJyue9bVwh9COQAFHAEWGa3eITxrlkwF
         1MZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnruAgXLc2KOnLH8BP65h8eR2i2Sycq7TY2phH7TochVzsUB782V1kUymdc4fs9k52RDBbYR6ewxU7@vger.kernel.org
X-Gm-Message-State: AOJu0YxOyAkmek4Db7kwrb4ecK9KtY3pmqPMfT1p9DWMRFFyNvlJSxfA
	m1brt8PuOBtVMJcL1Ly45SHXHcFzM5rm3s1BWIhggspNV3qCdidB1lhzRux1FtyhJyxui/VWdA5
	wCdW8VUMZklc3UJaRS04hQVxll8ES+H6QVGUOyI/vYP9zjKCWYVfZPV+kYwPqsBoF
X-Gm-Gg: ASbGncuZGzp5Vtn9VWQdnshx4X3DvDfL2BEu0XWvLB0SrFK41ymS2Vx3wvViRxBD3QO
	640XR8cozxZYnsMbVk2TSghLC1EbE0wMYPkfkzLuwC7SzIKwwUpApUIjlJSKsN7/fv2IBNn8Ywm
	R4mN1ybqkQxjgBapJA6lCzjj+GjMt0KvC/U77c9PMYL6axpzOGJSKH6sKwZHtnHPbgfxidV4HHi
	6FZBTHwi6WB7syBCmw84s3BIMlvUrISjZaAwogqZ0xai/a+BShK3hgoxPkPU7cB9NpTWAEj9HuM
	wtrIE5ydmLR2GGzxwTSK0kxeNkAdjcNafeSM61nkuT3qcVkt8qjeyIIcYVsRm1QQY0Ob7JIpVD1
	WzINxVoFdU4Zazxf+
X-Received: by 2002:a05:6a20:12c5:b0:250:e770:bcbc with SMTP id adf61e73a8af0-2927480f320mr7972238637.50.1758338475168;
        Fri, 19 Sep 2025 20:21:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjG+ljXA2NFGb12pwEQzj9q71gZ/HW4nxBM/YVfEycE18N8jKbIJHZotVnXmuXiSTZeajTQA==
X-Received: by 2002:a05:6a20:12c5:b0:250:e770:bcbc with SMTP id adf61e73a8af0-2927480f320mr7972210637.50.1758338474766;
        Fri, 19 Sep 2025 20:21:14 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:13 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Date: Fri, 19 Sep 2025 20:21:00 -0700
Message-Id: <20250920032108.242643-2-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 2JFkRwDkvlJRw1VNBSIQCu9U0kf1nT9m
X-Proofpoint-GUID: 2JFkRwDkvlJRw1VNBSIQCu9U0kf1nT9m
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68ce1dac cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gJ-VRbHUVreD3CQON-0A:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfX+4ndcOkWnjAp
 IogV/FHsYtgLOd479kQhwutB2+Osmd8N0wvcUUntN63a71a+qaQNS0Ml2SFw299uMcyiADB9CqX
 PAtjQbXQ9qk1J+eoxdhUytjMyx7Tl6pG0T5+Dm90R+SGSYHNWplDB/HCPyJ1KBamRcVHZCsZ3Ix
 qAX5mUnNJfqUBk4syjgDIQ4IlBYk3Gc/Mim+Z2Ok6bO7CWAgRxTzs/0orbSHuZ2UkV1VmHvfIhH
 4ARPn6jOB3SDZfFVZTslPHPVDjvbQobSC5lfdOQkosvHfptqRYXMKvJ4oaS1QSggdSudAmYCBEY
 f+HqV27RiyO4b15AZ0afgRAA9Eeqc60nLeAw0R4zow66V6FYEc0G6Nj+Ty5k1KPpJLsA51Xtzn9
 YfhBqOfV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022

Define a Glymur compatible string for the QMP PHY combo driver, along with
resource requirements.  Add a different identifier for the primary QMP PHY
instance as it does not require a clkref entry.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 45 ++++++++++++-------
 1 file changed, 28 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 38ce04c35d94..e0b10725a1c5 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -15,22 +15,28 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,sar2130p-qmp-usb3-dp-phy
-      - qcom,sc7180-qmp-usb3-dp-phy
-      - qcom,sc7280-qmp-usb3-dp-phy
-      - qcom,sc8180x-qmp-usb3-dp-phy
-      - qcom,sc8280xp-qmp-usb43dp-phy
-      - qcom,sdm845-qmp-usb3-dp-phy
-      - qcom,sm6350-qmp-usb3-dp-phy
-      - qcom,sm8150-qmp-usb3-dp-phy
-      - qcom,sm8250-qmp-usb3-dp-phy
-      - qcom,sm8350-qmp-usb3-dp-phy
-      - qcom,sm8450-qmp-usb3-dp-phy
-      - qcom,sm8550-qmp-usb3-dp-phy
-      - qcom,sm8650-qmp-usb3-dp-phy
-      - qcom,sm8750-qmp-usb3-dp-phy
-      - qcom,x1e80100-qmp-usb3-dp-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-qmp-usb3-prim-dp-phy
+          - const: qcom,glymur-qmp-usb3-dp-phy
+      - enum:
+          - qcom,glymur-qmp-usb3-dp-phy
+          - qcom,sar2130p-qmp-usb3-dp-phy
+          - qcom,sc7180-qmp-usb3-dp-phy
+          - qcom,sc7280-qmp-usb3-dp-phy
+          - qcom,sc8180x-qmp-usb3-dp-phy
+          - qcom,sc8280xp-qmp-usb43dp-phy
+          - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm6350-qmp-usb3-dp-phy
+          - qcom,sm8150-qmp-usb3-dp-phy
+          - qcom,sm8250-qmp-usb3-dp-phy
+          - qcom,sm8350-qmp-usb3-dp-phy
+          - qcom,sm8450-qmp-usb3-dp-phy
+          - qcom,sm8550-qmp-usb3-dp-phy
+          - qcom,sm8650-qmp-usb3-dp-phy
+          - qcom,sm8750-qmp-usb3-dp-phy
+          - qcom,x1e80100-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -46,7 +52,7 @@ properties:
       - const: ref
       - const: com_aux
       - const: usb3_pipe
-      - const: cfg_ahb
+      - enum: [cfg_ahb, clkref]
 
   power-domains:
     maxItems: 1
@@ -63,6 +69,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -110,6 +118,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sc7180-qmp-usb3-dp-phy
             - qcom,sdm845-qmp-usb3-dp-phy
     then:
@@ -129,6 +138,8 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
+            - qcom,glymur-qmp-usb3-prim-dp-phy
             - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy

