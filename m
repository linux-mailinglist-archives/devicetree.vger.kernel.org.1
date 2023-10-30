Return-Path: <devicetree+bounces-12985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0967DC1F2
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 22:32:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88A0D1C2037A
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 21:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2822A1C2B4;
	Mon, 30 Oct 2023 21:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="S1mqshgY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9522D1CA95
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 21:32:20 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C7F911A;
	Mon, 30 Oct 2023 14:32:12 -0700 (PDT)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39UKrCE5004694;
	Mon, 30 Oct 2023 21:31:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : date :
 subject : mime-version : content-type : content-transfer-encoding :
 message-id : references : in-reply-to : to : cc; s=qcppdkim1;
 bh=XVmHylPLC71quZBcFwO83oe5ZnMrVX7JUjoNKkPYCNU=;
 b=S1mqshgYFz2C+r+D9yy9TooMsDjbI9iwBwdHQgnDmHTitZTQo5gfUmD+7ApEauDruPt9
 zwynO6RMfebiYBdCoTs9ogvd11LweZPLslrVs8e0mAGHxYf/j0cwC04Nam8RqFTr2F4s
 DbCMd+e6+jmqoMOKvhUde0XO7AYEooSC7Y/9Xq8q1vwZdXIXKqgJPExR+EWfWZoMkDgl
 WYLcOsXR+PtORCG893OnCRgLYXmGt1abJLZ/9BSrqLkUhHpWpY5yyYKOKGYR/kZFERli
 RMzTSmS7osd9ohNNZYVO34PkfvegJ99H2o+V4FSatn8B22O8RFygna2CY5/gygdXV8C7 KQ== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u2c4rs9ef-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 21:31:56 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39ULVtdd021818
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 21:31:55 GMT
Received: from hu-eberman-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Mon, 30 Oct 2023 14:31:55 -0700
From: Elliot Berman <quic_eberman@quicinc.com>
Date: Mon, 30 Oct 2023 14:31:33 -0700
Subject: [PATCH RFC 1/2] dt-bindings: arm: Document reboot mode magic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231030-arm-psci-system_reset2-vendor-reboots-v1-1-dcdd63352ad1@quicinc.com>
References: <20231030-arm-psci-system_reset2-vendor-reboots-v1-0-dcdd63352ad1@quicinc.com>
In-Reply-To: <20231030-arm-psci-system_reset2-vendor-reboots-v1-0-dcdd63352ad1@quicinc.com>
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
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: TC6wt5PFYEhWzV6GB5g3yj8in9UvKaWc
X-Proofpoint-GUID: TC6wt5PFYEhWzV6GB5g3yj8in9UvKaWc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_13,2023-10-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 bulkscore=0
 phishscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxlogscore=952
 malwarescore=0 mlxscore=0 suspectscore=0 impostorscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2310300168

Add bindings to describe vendor-specific reboot modes. Values here
correspond to valid parameters to vendor-specific reset types in PSCI
SYSTEM_RESET2 call.

Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
---
 Documentation/devicetree/bindings/arm/psci.yaml | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
index 0c5381e081bd..dc23e901bd0a 100644
--- a/Documentation/devicetree/bindings/arm/psci.yaml
+++ b/Documentation/devicetree/bindings/arm/psci.yaml
@@ -122,6 +122,19 @@ patternProperties:
       [3] Documentation/devicetree/bindings/power/power-domain.yaml
       [4] Documentation/devicetree/bindings/power/domain-idle-state.yaml
 
+  "^reboot-mode-.*$":
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 2
+    description: |
+      Describes a vendor-specific reset type. The string after "reboot-mode-"
+      maps a reboot mode to the parameters in the PSCI SYSTEM_RESET2 call.
+
+      Parameters are named reboot-mode-xxx = <type[, cookie]>, where xxx
+      is the name of the magic reboot mode, type is the lower 31 bits
+      of the reset_type, and, optionally, the cookie value. If the cookie
+      is not provided, it is defaulted to zero.
+
 required:
   - compatible
   - method

-- 
2.41.0


