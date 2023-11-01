Return-Path: <devicetree+bounces-13338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9B87DDBBF
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 05:02:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2908B1C20CD0
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 04:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8267B137F;
	Wed,  1 Nov 2023 04:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="VVJxvFz7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B22C1116
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 04:02:09 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9367ADF;
	Tue, 31 Oct 2023 21:02:04 -0700 (PDT)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A11vpbZ031127;
	Wed, 1 Nov 2023 04:01:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=7hxHgKStLp4kLx/Vn0TFARVQ9iOgMIJxkdR3hYP1PNk=;
 b=VVJxvFz7FP6tXhettQd5y8Zm93H/W+8iJfM8lbzo5LXNSSQSpG6j6DXv69qFw7CV3KrM
 d5PifuQG7cAY9GoJMb9sxbt3sZ/nhXESGVAP7sx6OQqItk99OHe+3VOCStW6Ox0CFuvH
 vaM50Z8J75vliCowf37YDpW/nTH5DNi+j1W/YlSGQOUa1F1teyWDHIIjT/51UXpjC4kg
 ygWJ8wH3C2pocXVk8RoWKQM3DjAyfUX136T3cwXPYCPGYyAwf3bq2+mgjLaQSon3TzVI
 V5mF0h0s/YD1tbR28cm9BjHXvXsZadNomDzw5vP5ZzSOZVZYMz8lxLFTKB7y65RZQHtE hg== 
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u3ayvrkkb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 01 Nov 2023 04:01:21 +0000
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3A141IIT013366;
	Wed, 1 Nov 2023 04:01:18 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTP id 3u0ucma7sr-1;
	Wed, 01 Nov 2023 04:01:18 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3A141IP5013361;
	Wed, 1 Nov 2023 04:01:18 GMT
Received: from cbsp-sh-gv.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTP id 3A141HUt013360;
	Wed, 01 Nov 2023 04:01:18 +0000
Received: by cbsp-sh-gv.qualcomm.com (Postfix, from userid 393357)
	id DBB4853F5; Wed,  1 Nov 2023 12:01:16 +0800 (CST)
From: Ziqi Chen <quic_ziqichen@quicinc.com>
To: quic_asutoshd@quicinc.com, quic_cang@quicinc.com, bvanassche@acm.org,
        mani@kernel.org, beanhuo@micron.com, avri.altman@wdc.com,
        junwoo80.lee@samsung.com, martin.petersen@oracle.com,
        quic_ziqichen@quicinc.com, quic_nguyenb@quicinc.com,
        quic_nitirawa@quicinc.com, quic_rampraka@quicinc.com
Cc: linux-scsi@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org (open list:ARM/QUALCOMM SUPPORT),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
        linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] dt-bindings: ufs: qcom: Add msi-parent for UFS MCQ
Date: Wed,  1 Nov 2023 12:01:09 +0800
Message-Id: <1698811270-76312-1-git-send-email-quic_ziqichen@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Y0Ppfrsa43hIFi2NT0_LbgRnd-ns4l8x
X-Proofpoint-ORIG-GUID: Y0Ppfrsa43hIFi2NT0_LbgRnd-ns4l8x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-31_10,2023-10-31_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1011 mlxscore=0 phishscore=0 priorityscore=1501 mlxlogscore=736
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311010032
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Message Signaled Interrupt (MSI) has been used
by UFS driver since the MCQ be enabled. Hence in UFS
DT node, we need to give the msi-parent property that
point to the hardware entity that serves as the MSI
controller for this UFS controller.

Signed-off-by: Ziqi Chen <quic_ziqichen@quicinc.com>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 462ead5..d2f505a 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -103,6 +103,8 @@ properties:
     description:
       GPIO connected to the RESET pin of the UFS memory device.
 
+  msi-parent: true
+
 required:
   - compatible
   - reg
@@ -318,5 +320,6 @@ examples:
                             <0 0>,
                             <0 0>;
             qcom,ice = <&ice>;
+            msi-parent = <&gic_its 0x60>;
         };
     };
-- 
2.7.4


