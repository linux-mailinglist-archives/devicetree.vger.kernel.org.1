Return-Path: <devicetree+bounces-13299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 227AB7DD609
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 19:28:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5360A1C2089C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 18:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD73421A12;
	Tue, 31 Oct 2023 18:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="QHrR4KGl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237162599
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 18:28:39 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20475A3;
	Tue, 31 Oct 2023 11:28:37 -0700 (PDT)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39VHbc5L031484;
	Tue, 31 Oct 2023 18:28:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : date :
 subject : mime-version : content-type : content-transfer-encoding :
 message-id : to : cc; s=qcppdkim1;
 bh=I4RFhQ2hQV6Tnj5dqkgWY77r7FlmVBG3/GztMCq120Y=;
 b=QHrR4KGlVQ0xGDhzFqSYDrr6q7lzZ/jBGw6slv7J1eAZZpXx4OfUsYDO7RXENOjkav/o
 XPZv+2Et2DIA07GSm8W5jAmuropbZa2ZoSBeiS9aDOx3472xeS+DNkreBeyC6a88/Fyf
 qkbc9iBkU92omK01FJyQiSMspsHAZMLNGcyNr/fcO0RWcrpWIM4DDhmdf5bzF3eoCOkv
 +nkA7G9mfKi017yzWWd5bMk/rubmoO/Hy1iIUUmnkXmiSMNjqD7as9qdLYjknr59kqa2
 ZjY9Djk/ilY9mjxAAlld2j8g0COaSq1fQkYyLliWvtr6EhRog+bQ+4UmoKymoNE4dZ5p Qg== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u34sc0dj6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 31 Oct 2023 18:28:33 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39VISWDn024967
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 31 Oct 2023 18:28:32 GMT
Received: from hu-eberman-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Tue, 31 Oct 2023 11:28:31 -0700
From: Elliot Berman <quic_eberman@quicinc.com>
Date: Tue, 31 Oct 2023 11:28:22 -0700
Subject: [PATCH] dt-bindings: power: reset: $ref reboot-mode in
 nvmem-reboot-mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231031-ref-nvmem-reboot-mode-v1-1-c1af9070ce52@quicinc.com>
X-B4-Tracking: v=1; b=H4sIAEVHQWUC/x2MSwqAMAwFryJZG2htqehVxIWfqFm0lVaKIN7d4
 G4G5r0HMiWmDH31QKLCmWMQ0XUFyzGFnZBXcWhUY7QyGhNtGIonLzTHeKGPK6E2rutaZY0jC7I
 9JeP7/x3G9/0AIPVzXmcAAAA=
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
CC: <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Elliot Berman <quic_eberman@quicinc.com>
X-Mailer: b4 0.13-dev
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: s4FXohjvNU5aT42GKCEaqyCip83tRORd
X-Proofpoint-GUID: s4FXohjvNU5aT42GKCEaqyCip83tRORd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-31_05,2023-10-31_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 mlxlogscore=999 bulkscore=0 phishscore=0 priorityscore=1501
 mlxscore=0 spamscore=0 clxscore=1015 adultscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2310310148

nvmem-reboot-mode.yaml should $ref: reboot-mode.yaml, but instead
rewrites the properties. Update so it $refs instead.

Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
---
 .../devicetree/bindings/power/reset/nvmem-reboot-mode.yaml        | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.yaml b/Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.yaml
index 14a262bcbf7c..627f8a6078c2 100644
--- a/Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.yaml
+++ b/Documentation/devicetree/bindings/power/reset/nvmem-reboot-mode.yaml
@@ -28,17 +28,15 @@ properties:
     items:
       - const: reboot-mode
 
-patternProperties:
-  "^mode-.+":
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: Vendor-specific mode value written to the mode register
+allOf:
+  - $ref: reboot-mode.yaml#
 
 required:
   - compatible
   - nvmem-cells
   - nvmem-cell-names
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

---
base-commit: ffc253263a1375a65fa6c9f62a893e9767fbebfa
change-id: 20231031-ref-nvmem-reboot-mode-1369970436e4

Best regards,
-- 
Elliot Berman <quic_eberman@quicinc.com>


