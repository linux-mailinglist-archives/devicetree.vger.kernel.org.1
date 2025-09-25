Return-Path: <devicetree+bounces-221050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95485B9CEED
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:53:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4458E328011
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67BF52DA775;
	Thu, 25 Sep 2025 00:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fxNcja/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB722D839E
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758761559; cv=none; b=pNOZ94BtqtS3NOZloyRVCMnkf8rcCN3WpdF7ha3C1lfJl78r5bpvGKCcrW7APHYDJHVAnfsXnDb5uYDurtqcx3n6JrEK7b55byciIGduv3ljDQ+F4+kOw8HHXxH2te664XOOQLIQZmKhnuXq8OskJ/8PXRYcEDJPyaoH5tfI4KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758761559; c=relaxed/simple;
	bh=Li7Axgqj1Qyy3uX3oX9irsrd0UwAJw/MhTIJL1ssmMQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eDdK5+RQ3VgsvMBYeLa9Tj69cADZcQQDJJ1r2TLK8gBTqSpJY5V9w1loDpAk8kmtMg+1ktTAdfpdhKWF0MC6Mn1Z1opU6xslVjFQVO0/S2kPkM5lwq4ZGGc7xFOO44EBLsN3Or2Xc6Rxtx8ixPacLSAnesz8IyGRTF1L2Wft8o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fxNcja/f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONwfOR018449
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NkSIvXe2PoZ
	kc0A70JhcEzpgbRLO6/8AmGazVnh8Tx0=; b=fxNcja/fF5TShCb/P5DbtfyILXs
	03XEYEGvzjC6BpBdXmWb6MPyBEkx2yTfbWNRZjypJ39s7Qiz72R579j80w+FjnhK
	atUKHcw7fxURRVB3lJYM2CClhJsDeWUhaSU0vPg2v1SKgVj/JOWB/RE5L9dHQpSQ
	eclIUBhytoH6a7OBIqWRuJNoxanSBgz3FjMD/lcbPwIGO9Uhhf1DeqSlqRMnbNpw
	4c6A7kAkCiSCzC2X6oKi5SfLUoOTuOaK1dzNj4BespaRQjVO8B5DDWhAdHQOL3rM
	dbJMwobrL9MfWo8N0S4XHwmtSHLS/95qfB4nvWKf0F96TCr7nDWc3Ccrr+g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kka69g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:36 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24456ebed7bso4112495ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:52:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761555; x=1759366355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NkSIvXe2PoZkc0A70JhcEzpgbRLO6/8AmGazVnh8Tx0=;
        b=hIeGrITJlZl3Jq0y8J+Lsc2kU8Ev71+oDpTl7l4zMOnA54sU5zUgW0+0qPbP4vcdz7
         PZHL2eYbsTcsbDwDmxjooPyWoyE/rOIKHKw7jyQ96rd1OW7jM5rTbf2SZU9emgZmVijD
         jfTNwz1+6gOCmUQRNYHyd7v04gn6GOsXFwwaC4j8nuYEaMPZXWzPByUMST/xVIVXc5xA
         F4yjdef7gMB+jfP1Ss61snPPNdMwhx6MpG7geOkSnfPjcOwMR5SmFRUi4SiGz9VAGAEZ
         j+Win0KzdYiY77FCbnDyPGHcDV3TI853f2AEUibvvuw6YXmJWdgWcTu7xtl9RkEWMwzi
         ft/A==
X-Forwarded-Encrypted: i=1; AJvYcCUEy7rOal7ni9xE4M490yon7w3ksikvxsAHkfYduIsgtdQ7m6pQBBI5nLiEHZeuls79N8k/kJ56IPwb@vger.kernel.org
X-Gm-Message-State: AOJu0YzRsC65jgLOudV02eesRip3C3l2+wi8tYeYJz8rj64fmnsMohaC
	zbUOnkI7PiLNaQ34UoULwz6cCnoBPUiReFETBoyBCfiI3Wr+X5mjJImR0i5JYi1kiJz0rABLhX8
	Uu5CmeYEuh/poQnt/yVfFh/Ad5cRuCP6U8Vbc07rHPIYiACESpftKEvHBPME988Xu
X-Gm-Gg: ASbGncsemhr0jiz6oq/TenoQhjKPzij96p51nY3YLeC4AyBcBts7mKRJQYNprzykhmw
	EkZWkAfN7yQpmuXqgvGxDoRh8v3z+fQwiGn1gCi+KeZk5az8pcspuAgEE4DDIIfKZLjrxUZMhpW
	uxDFKW/6i/YLcBgWK7I63iID/kQSb9pnLrXbJv5rba8xY3YToRA+N0TeLlL5ogJ79EUBlwMl+s8
	aPPh0W0baoZw2VAr6Q+WCjgGZGQo3/5RBe9sj+SqD+XFnbmnsg52m0isYNpL4djljD5GYClxZem
	1hggyLm6sMP5jhv0WzoBFqkB1zQtcnC4YmkcsQwsES90HyKOnDmdMkz+owrEhdyK0jJLsRRGHBn
	AA7uYqa9UY0BuxNkf
X-Received: by 2002:a17:902:db11:b0:27c:3690:2c5d with SMTP id d9443c01a7336-27ed6780b92mr10331165ad.0.1758761555442;
        Wed, 24 Sep 2025 17:52:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGD71bqcxeydKwo12qj/CeiC45HSksvyE7WjcM/YRZ+SXEC1DBAWRjoO9AkKTUboK+ohtAoJQ==
X-Received: by 2002:a17:902:db11:b0:27c:3690:2c5d with SMTP id d9443c01a7336-27ed6780b92mr10330885ad.0.1758761555019;
        Wed, 24 Sep 2025 17:52:35 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:34 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Wed, 24 Sep 2025 17:52:20 -0700
Message-Id: <20250925005228.4035927-3-wesley.cheng@oss.qualcomm.com>
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
X-Proofpoint-GUID: SaxwjvFhWtAK-jBmGAhjBVLWAZyXtDlq
X-Proofpoint-ORIG-GUID: SaxwjvFhWtAK-jBmGAhjBVLWAZyXtDlq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX03RheZNyImUY
 gCOJ5vxrs5xjrRDVQSUD2Me2hIF0t95BUQufFU8/lLTJpjK5UEOJljXbfkxwnQkLJ9g2zuEU4Lb
 Mvp+jTo8oPDRxYI0YvEsIu+S9hJzPF9uqC9idGw4EQdH501q31Ht+VQ5HIoRhg9LVcIkfUUh3vU
 E6Wi5PBllpz2woAnNgI67KsBHxgIzY/IENYIjYaHFI5jwucd7Ob/zxES0Jjt7fF0EcqcFlpZdgQ
 D/mAoq/OCXHR+ntyxpKtGLyRBpgK8bsrkwKZdaDOVTAwxCx0Z7WVY+aEY+DxXYqPbzni3QzSewW
 019PSrzgJNCtuBAVAwFGl0aY3NjSQC2HHlLzUm8gMMRpQuteZFdDKY2TPSrOQoDsga46UCkx2FO
 Bvmxj3DN
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d49254 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=e4LYGitkWRZSOGXTHbEA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

The Glymur USB subsystem contains a multiport controller, which utilizes
two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index a1b55168e050..b0ce803d2b49 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-uni-phy
       - qcom,ipq5424-qmp-usb3-phy
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-usb3-phy
@@ -62,6 +63,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 0
 
@@ -157,6 +160,25 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          items:
+            - const: aux
+            - const: clkref
+            - const: ref
+            - const: com_aux
+            - const: pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
@@ -165,6 +187,19 @@ allOf:
       required:
         - power-domains
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

