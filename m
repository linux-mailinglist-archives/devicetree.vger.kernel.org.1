Return-Path: <devicetree+bounces-19462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC53A7FB0D2
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 05:08:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A70DD281B1A
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 04:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A389EAD5;
	Tue, 28 Nov 2023 04:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="V8/m46iq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEF47C1;
	Mon, 27 Nov 2023 20:08:32 -0800 (PST)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AS3Tqan029324;
	Tue, 28 Nov 2023 04:07:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=qUwNKjV6vBhluDMosGG/8iehvGvwRyNVKPeilLEK/9k=;
 b=V8/m46iqlUfIOanMV6EWFJynpU3Ug8Cnvbc0t1YzoohTzqQCLM5eq90vv0PyDyPv+i2z
 3UOpsO9S8FG05BPmW8y1CVJ/5xb+c7Fn8AmYEj3ojekH2d0XZlYDBXloEiwtsPZW1KWS
 LubXJqx2OGXDvAzv1vzTNXvpAs8+QuF5uF6WVLoLMLsa9ZMM6tyr/DXtwcwVEbkxcgF4
 jiA7f132nMmxqiDGnrHP/ZuVOsVUTNj+s9I9DuvA4O+9kihEnLIhCnxu5xGc4tvh1lCn
 SojXYhah23IhS0XhlbKAzfidkmr6qrOiiMsyYyi3s3YtnUxI3AAbj4dzfi0ddsLrTd8d Gw== 
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3un586rdff-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Nov 2023 04:07:57 +0000
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3AS47swO026209;
	Tue, 28 Nov 2023 04:07:54 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTP id 3uka0ke4d8-1;
	Tue, 28 Nov 2023 04:07:54 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3AS47sEW026149;
	Tue, 28 Nov 2023 04:07:54 GMT
Received: from cbsp-sh-gv.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTP id 3AS47rW9026147;
	Tue, 28 Nov 2023 04:07:54 +0000
Received: by cbsp-sh-gv.qualcomm.com (Postfix, from userid 393357)
	id D54EA5535; Tue, 28 Nov 2023 12:07:52 +0800 (CST)
From: Ziqi Chen <quic_ziqichen@quicinc.com>
To: quic_asutoshd@quicinc.com, quic_cang@quicinc.com, bvanassche@acm.org,
        mani@kernel.org, stanley.chu@mediatek.com, adrian.hunter@intel.com,
        beanhuo@micron.com, avri.altman@wdc.com, junwoo80.lee@samsung.com,
        martin.petersen@oracle.com, quic_ziqichen@quicinc.com,
        quic_nguyenb@quicinc.com, quic_nitirawa@quicinc.com
Cc: linux-scsi@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Sudeep Holla <sudeep.holla@arm.com>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
        linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v4] dt-bindings: ufs: Add msi-parent for UFS MCQ
Date: Tue, 28 Nov 2023 12:07:47 +0800
Message-Id: <1701144469-1018-1-git-send-email-quic_ziqichen@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: jQe91lEE1mZXUhaeS7LmGUao8ukLbf-b
X-Proofpoint-GUID: jQe91lEE1mZXUhaeS7LmGUao8ukLbf-b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-28_02,2023-11-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=888 priorityscore=1501 spamscore=0 impostorscore=0
 adultscore=0 mlxscore=0 phishscore=0 suspectscore=0 clxscore=1011
 bulkscore=0 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2311060000 definitions=main-2311280031
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Message Signaled Interrupts (MSI) support has been introduced in
UFSHCI version 4.0 (JESD223E). The MSI is the recommended interrupt
approach for MCQ. If choose to use MSI, In UFS DT, we need to provide
msi-parent property that point to the hardware entity which serves as
the MSI controller for this UFS controller.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Ziqi Chen <quic_ziqichen@quicinc.com>
---
V3 -> V4: Corrected version change format.
V2 -> V3: Wrap commit message to meet Linux coding style.
V1 -> V2: Rebased on Linux 6.7-rc1 and updated the commit message to
          incorporate the details about when MCQ/MSI got introduced.
---
 Documentation/devicetree/bindings/ufs/ufs-common.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
index 985ea8f..31fe7f3 100644
--- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
+++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
@@ -87,6 +87,8 @@ properties:
     description:
       Specifies max. load that can be drawn from VCCQ2 supply.
 
+  msi-parent: true
+
 dependencies:
   freq-table-hz: [ clocks ]
   operating-points-v2: [ clocks, clock-names ]
-- 
2.7.4


