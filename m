Return-Path: <devicetree+bounces-16765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2497EFAAD
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 22:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4AADFB2113A
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D62815B21E;
	Fri, 17 Nov 2023 21:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="gFVSFG/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B885E421A;
	Fri, 17 Nov 2023 13:19:24 -0800 (PST)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AHK5cFd020069;
	Fri, 17 Nov 2023 21:19:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : date :
 subject : mime-version : content-type : content-transfer-encoding :
 message-id : references : in-reply-to : to : cc; s=qcppdkim1;
 bh=tc20QRO9Gcn9uIHfjtN4iUhRWAYiLSQYX4+FapLjlcA=;
 b=gFVSFG/ZI53/NvyfcJsZNFY2l6XVMo0exavhGEasXOFmvXaMzA44P/TYDvh9oxxBq/Ns
 AmH9JvO7dAyoC8YwkTsMiqtXDiNcffgWQFzRBBNWMpO8O1FL+P29VMG+6OEarOn047Bs
 rRH/RFNhEyVfZy6oC2l4cN5X56NIkQFMF6AEVhTJpVzrJpRgXv9OW6yU3vG6cYG+72is
 C1Hn51gen4xD4MSGIkxUvyC+cXIwVxTrNGaOeDCL1U+WHTdtPniQRs3kiZznjGI7zDDK
 ZUOnUdoayi4GcBpin0PWaRBsWHnv24Cu83uSSU6ZMWa+mTzKhwnBqEa6l4awVWfAZGTf 8g== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ue6vas86m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 21:19:10 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AHLJ8dw020571
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 21:19:08 GMT
Received: from hu-eberman-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 17 Nov 2023 13:19:08 -0800
From: Elliot Berman <quic_eberman@quicinc.com>
Date: Fri, 17 Nov 2023 13:18:47 -0800
Subject: [PATCH 2/3] dt-bindings: arm: Document reboot mode magic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231117-arm-psci-system_reset2-vendor-reboots-v1-2-03c4612153e2@quicinc.com>
References: <20231117-arm-psci-system_reset2-vendor-reboots-v1-0-03c4612153e2@quicinc.com>
In-Reply-To: <20231117-arm-psci-system_reset2-vendor-reboots-v1-0-03c4612153e2@quicinc.com>
To: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland
	<mark.rutland@arm.com>
CC: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Melody Olvera
	<quic_molvera@quicinc.com>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman
	<quic_eberman@quicinc.com>
X-Mailer: b4 0.13-dev
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: RJZNh-jv7ZNP5iyjIUm9V39tkPYYDi-4
X-Proofpoint-ORIG-GUID: RJZNh-jv7ZNP5iyjIUm9V39tkPYYDi-4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-17_21,2023-11-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 phishscore=0 impostorscore=0 mlxlogscore=999 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311060000
 definitions=main-2311170159

Add bindings to describe vendor-specific reboot modes. Values here
correspond to valid parameters to vendor-specific reset types in PSCI
SYSTEM_RESET2 call.

Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
---
 Documentation/devicetree/bindings/arm/psci.yaml | 36 +++++++++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 0c5381e081bd..ac95c1610287 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -136,8 +136,29 @@ allOf:
       required:
         - cpu_off
         - cpu_on
-
-additionalProperties: false
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: arm,psci-1.0
+    then:
+      $ref: /schemas/power/reset/reboot-mode.yaml#
+      properties:
+        # "mode-normal" is just SYSTEM_RESET
+        mode-normal: false
+      patternProperties:
+        "^mode-.*$":
+          maxItems: 2
+          description: |
+            Describes a vendor-specific reset type. The string after "mode-"
+            maps a reboot mode to the parameters in the PSCI SYSTEM_RESET2 call.
+
+            Parameters are named mode-xxx = <type[, cookie]>, where xxx
+            is the name of the magic reboot mode, type is the lower 31 bits
+            of the reset_type, and, optionally, the cookie value. If the cookie
+            is not provided, it is defaulted to zero.
+
+unevaluatedProperties: false
 
 examples:
   - |+
@@ -260,4 +281,15 @@ examples:
         domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
       };
     };
+
+  - |+
+
+    // Case 5: SYSTEM_RESET2 vendor resets
+    psci {
+      compatible = "arm,psci-1.0";
+      method = "smc";
+
+      mode-edl = <0>;
+      mode-bootloader = <1 2>;
+    };
 ...

-- 
2.41.0


