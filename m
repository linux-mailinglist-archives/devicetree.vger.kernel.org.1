Return-Path: <devicetree+bounces-221049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 17076B9CEE4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:52:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A5E01BC3D15
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FFC62D9EF3;
	Thu, 25 Sep 2025 00:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YknGhvU2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B662D8377
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758761558; cv=none; b=YgGsDbe1MOPbrBUmc8WyMCr0mOzcA0cLNqlJG0ajcpq9ucFbNfbEn+2rZkds7tdwu8caimZ4M+/xlrTvM2+HeYCTy+eIuRZwIS8Y/RlVlcEH0M6hNdLbZf24txO9YjyIXgTy5g0oq/7wkWduUEl1VuQ0fb/J40VGknq+gcCMWX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758761558; c=relaxed/simple;
	bh=hRao4UrERcNdb8WEbncfpT8mndQ9UcxF3KEWBpC5u2Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HbD5CrdqIxB3W5RGL4DuFfEtFkMAONVLxeIkvPJDubnRT9VqB/VYinI+C1hS/RpeUZD76LbUea1mlSyGuf1cSXTW4e9Nn0sLvoJZAPeiG78Sdg37ALAodQwj5illP4DlTQ+SCPtUYVLwdlV8PBJxTAfPeY4ntApr3iypJxGaMSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YknGhvU2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD8wUr002776
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Xn4sEHzNAa+
	rFACXl1zYTLnQ9MM2kFlvsIN0wm59uEQ=; b=YknGhvU2ad4B5JZ51NAbfxbq5CP
	B+J0ADTRSvaUnyAE2Gcf5XEivQcaFbrm6sd8D3am9X2WkrHM1cHcqILtRCigmr0p
	6h7PjnUNdR104FzHy3g6quV9LhDHEwXcAMr/DTy6o1K5CM3JYkwp2SQc/eFb3slP
	HB1IMrWHSO1XLBdQubqvW1C1iHUiehrLFGvyjlqtw6oEsTyizlIg94E1Z4EhWIHk
	aREXCHASackBMHLWFU8Ij7o+QAFxNLqMH58RP7UScN4TN5BfGb4fCbegMZJe6cjf
	zJuegYMpa429dvlImEKhZBkbzhcX11w4n+2Yv2PjE5y6YzeeHdTi+SIceNw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf0rts-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:52:34 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27eca7298d9so7903145ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:52:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761554; x=1759366354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xn4sEHzNAa+rFACXl1zYTLnQ9MM2kFlvsIN0wm59uEQ=;
        b=C875w+ZULV8u8VEJIzklhHBfQ6FauwUtOPHzEf5ZE1wR3YlUxpcjAU/R0kb1IlsgUM
         OaZODW3FsTIWhvE214pbZkRRfEK/rUljK1z7hzh8bvtuqZZ/RCKbzrAJgFd+Jv4gqpg7
         XiZjzrUy9+pebOwjNLlNqpkTJlwWTYLmdxyY5FxlWb1MhhIJKaMBA0c6WvnMp88iM+Pp
         cVCq9s7TuYbSljaLXftPkRezqAjS/JQREsj1WAglnjE3+4idBPXzjbGr/uyzUCbvWl7V
         SsXVwNEyD2xhj85DWXo9ZCvU67dyvPL+EG87LGDSm+oD2dsqAEtjmcUtGoGdOEhNG59l
         9seA==
X-Forwarded-Encrypted: i=1; AJvYcCUPuotgPXNMMh5AKx8KrZCCgh+WJQbeg6BnjwRYMMfs39cCsa1+Mg6EmABZfJtw8fLajC7+7T4EeCQK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqem85dK+m3jB4V+CHx33v0CNK2I66Xh27Zht4vFRs962n0T+S
	DFO6TJqXfcbIX7+WJSAxb38PhDJdbFLiI0W1zCiafhM1uhAT4gvOyPO0sKa9+IMleYTCVxgfS1y
	hbK7cOU3wAfz1F05rIxqNjCEonuAKdKEqKIINiF9XYe7WxIUJiRvisPEgA6Dt6ibm
X-Gm-Gg: ASbGnctTT/jq8JIgJCzW1fF8r1AHQ2Epb9qzbJSvk3Pz8sA7ErnfppcEkMY9IKyiXN1
	9BUoU2TSSPlpf8KW+RaPsWH2GLI03NFdKo2SgEmVeWd3JrqNzKik92OPGm+IQAtkjZFZSjMXIXC
	wCuvJkAg+r7tnbHPEpBKxJLm1thN+eE/HMQ2pfHbK7syVx4VT7SZKJV9pzXom8Aqc0ELUDPMUgU
	rb0lhqS1q2k76mFzk7WYJxn426UyPQZkn22eCYZXV6ZeD2pC76KJkbOXpgv8i8DM48muzE7+x72
	k5B69j6uZh4Xxcf7Ttzs/omyXY1hVnMwyCV1DoAoJVBcwEULL9HmsCFBkjycjDhjmcg8r5rfSmD
	WBZ2Zo8k5Za7r0k3N
X-Received: by 2002:a17:903:946:b0:271:49f:eaf5 with SMTP id d9443c01a7336-27ed4a30d16mr18646385ad.30.1758761554079;
        Wed, 24 Sep 2025 17:52:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0BLBhfqoLRlN6qFMkJxr7vlacqg8A7EpkzWtOHvCyZqAcmJHOiOE6WNsUjzSArIKZUFj+xQ==
X-Received: by 2002:a17:903:946:b0:271:49f:eaf5 with SMTP id d9443c01a7336-27ed4a30d16mr18646155ad.30.1758761553655;
        Wed, 24 Sep 2025 17:52:33 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:33 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Date: Wed, 24 Sep 2025 17:52:19 -0700
Message-Id: <20250925005228.4035927-2-wesley.cheng@oss.qualcomm.com>
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
X-Proofpoint-GUID: ASA_sOQILditlbS55-urXlqBPXoh8VYD
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d49253 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=tYbxrAoMRz_Rh0uxvwoA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX3vmM2dUeyUc2
 gaaywnoqn5hFHNT7NVmJm6Yz+2YGjBvDmGH/0MmKkGaMhyLOWlBgYdnAiuBuXcZzpXXVPR64/Mv
 YBCvb4PzLs3dlqxMXmR/AmrL7XTsQnhYNdhbbcXo1WMHfrW1d4PV2vcQfAm8zcj9r0BASjvWsZ+
 rjWB3xcXANaTtJRPzLey/oDYHCAdV6iU34m44M5ce3Y8/w7EoysvlOvj33L+sixiZ4fv20y79J5
 ZXzLws4BELIISa2pdnlope7pOvZm10VFHVUOgsPjrX94jDK8Op++hCuCr84BeKKhWn/XNSV2tTu
 jlPJPCZalYBqShhirIuhLTzYfWPDjnoI9VkapF5tdIWYbuK1wH7bg0e2pOcMBEOt7KHD6S2613a
 MgstP/Ng
X-Proofpoint-ORIG-GUID: ASA_sOQILditlbS55-urXlqBPXoh8VYD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

Define a Glymur compatible string for the QMP PHY combo driver, along with
resource requirements.  Add a different identifier for the primary QMP PHY
instance as it does not require a clkref entry.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..2f1f41b64bbd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-dp-phy
       - qcom,sar2130p-qmp-usb3-dp-phy
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
@@ -46,7 +47,7 @@ properties:
       - const: ref
       - const: com_aux
       - const: usb3_pipe
-      - const: cfg_ahb
+      - enum: [cfg_ahb, clkref]
 
   power-domains:
     maxItems: 1
@@ -63,6 +64,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -109,6 +112,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sc7180-qmp-usb3-dp-phy
             - qcom,sdm845-qmp-usb3-dp-phy
     then:
@@ -128,6 +132,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
@@ -142,6 +147,18 @@ allOf:
       properties:
         power-domains: false
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,glymur-qmp-usb3-dp-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

