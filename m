Return-Path: <devicetree+bounces-13298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B59B7DD604
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 19:27:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D614F28155F
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 18:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE0B52136B;
	Tue, 31 Oct 2023 18:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="QxhqddAS"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735F12599
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 18:27:10 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA37EA3;
	Tue, 31 Oct 2023 11:27:08 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39VEhXBa017754;
	Tue, 31 Oct 2023 18:27:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : date :
 subject : mime-version : content-type : content-transfer-encoding :
 message-id : to : cc; s=qcppdkim1;
 bh=1aiqPfkqrfk24xscMr9ACJG5fDGrPxUrkLLtvpjW5+c=;
 b=QxhqddASfaQkzNbmIYP+03ntGnE8tmSfJyXoisOotsm0g/xDo9EFX4ebMDsz0W5URsxP
 cTd5xIjS853ouRf2d443tx50lu1Zwon98zoP0GwW80Whqkk+lIH5vod0VDHkQx2stlzt
 op2d3tszUkiovmnyUE3dmY3Tie4JdNmcv4VDTLkTmiIZe2M/8boynhPWmOjRBwovzU3c
 kpPbc75lyy06MlsXNkc7tgRwdTm4FsYvXBl1jLTfJ5Dj6pLovui3LPSK4OzH/X/LtKKH
 +ZCT2vVFUxrxrpOZl+lFiQOrAqCxX6DevN6aiZPRQE8ZrId8uAGPJ6T+N0499sPtnIXf xg== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u30xe9are-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 31 Oct 2023 18:27:05 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39VIR5Uv030324
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 31 Oct 2023 18:27:05 GMT
Received: from hu-eberman-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Tue, 31 Oct 2023 11:27:04 -0700
From: Elliot Berman <quic_eberman@quicinc.com>
Date: Tue, 31 Oct 2023 11:27:00 -0700
Subject: [PATCH] dt-bindings: power: reset: $ref reboot-mode in
 syscon-reboot-mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231031-ref-reboot-mode-v1-1-18dde4faf7e8@quicinc.com>
X-B4-Tracking: v=1; b=H4sIAPNGQWUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2NDA2ND3aLUNCBOys8v0c3NT0nVTUtNSrOwSElNNDBPUgLqKgAqyKwAmxg
 dW1sLAHcrPx5hAAAA
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Elliot Berman <quic_eberman@quicinc.com>
X-Mailer: b4 0.13-dev
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 4-gsh6VaMGoQ-hNXe2ytBmMeok-j81h-
X-Proofpoint-ORIG-GUID: 4-gsh6VaMGoQ-hNXe2ytBmMeok-j81h-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-31_05,2023-10-31_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 clxscore=1011 mlxscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 impostorscore=0 mlxlogscore=998 phishscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2310310148

syscon-reboot-mode.yaml should $ref: reboot-mode.yaml, but instead
rewrites the properties. Update so it $refs instead.

Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
---
 .../devicetree/bindings/power/reset/syscon-reboot-mode.yaml       | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml b/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml
index 9b1ffceefe3d..b6acff199cde 100644
--- a/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml
+++ b/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml
@@ -29,12 +29,10 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: Offset in the register map for the mode register (in bytes)
 
-patternProperties:
-  "^mode-.+":
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: Vendor-specific mode value written to the mode register
+allOf:
+  - $ref: reboot-mode.yaml#
 
-additionalProperties: false
+unevaluatedProperties: false
 
 required:
   - compatible

---
base-commit: ffc253263a1375a65fa6c9f62a893e9767fbebfa
change-id: 20231031-ref-reboot-mode-febf88dea07b

Best regards,
-- 
Elliot Berman <quic_eberman@quicinc.com>


