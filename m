Return-Path: <devicetree+bounces-13406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 740BB7DDFBC
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 11:49:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4D9A1C20C2F
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 10:49:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E722779FC;
	Wed,  1 Nov 2023 10:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="YQa8jK9w"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0014A79E6
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 10:49:00 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FCC0E8;
	Wed,  1 Nov 2023 03:48:56 -0700 (PDT)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A16vLIR013790;
	Wed, 1 Nov 2023 10:48:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=bNR2qiVHtdUZzZhYG+tRurwiGyYz3nXksI7XwGviLVU=;
 b=YQa8jK9wT6L+8x7XhZZa9NdGR7MzEbr7/9uet9epBLF7slVH4xZm77uuEKdc55xFUsLe
 W333jOl3aiRp2zAOPRXSmslaTWIzsBLbJySFbD4xAE3loEC8HMd9oGEjSdMdf7Q/K1gH
 xBdgkJSVU9kXOhi1JVViasQkOnA2L4xte7cshEKaShykf8cXnbHJDJixWnalxyCsewNe
 adDNlY9/ZcangvAaJ9qYDUQ7sV4iuTAGHSFRWIGLzAU1fJIlKgZud2/OOIea2B4JadFW
 eaVXOUHe9DeQiVttUzea7sd2zdATYkZXD3PNeXzUkeCeZlkTl46zMkjGjvHR8a5DvHsR vw== 
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u3huugs2k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 01 Nov 2023 10:48:31 +0000
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3A1AmTda013263;
	Wed, 1 Nov 2023 10:48:29 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTP id 3u0ucmk02s-1;
	Wed, 01 Nov 2023 10:48:29 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3A1AmSdK013258;
	Wed, 1 Nov 2023 10:48:28 GMT
Received: from cbsp-sh-gv.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTP id 3A1AmSES013257;
	Wed, 01 Nov 2023 10:48:28 +0000
Received: by cbsp-sh-gv.qualcomm.com (Postfix, from userid 393357)
	id 5975753D8; Wed,  1 Nov 2023 18:48:27 +0800 (CST)
From: Ziqi Chen <quic_ziqichen@quicinc.com>
To: quic_asutoshd@quicinc.com, quic_cang@quicinc.com, bvanassche@acm.org,
        mani@kernel.org, beanhuo@micron.com, avri.altman@wdc.com,
        junwoo80.lee@samsung.com, martin.petersen@oracle.com,
        quic_ziqichen@quicinc.com, quic_nguyenb@quicinc.com,
        quic_nitirawa@quicinc.com, quic_rampraka@quicinc.com
Cc: linux-scsi@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>, Wolfram Sang <wsa@kernel.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Mark Brown <broonie@kernel.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
        linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] dt-bindings: ufs: Add msi-parent for UFS MCQ
Date: Wed,  1 Nov 2023 18:48:13 +0800
Message-Id: <1698835699-28550-1-git-send-email-quic_ziqichen@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: WBs7Ic8XYZUXnpbPGV6sPaaPI-SLmp4s
X-Proofpoint-ORIG-GUID: WBs7Ic8XYZUXnpbPGV6sPaaPI-SLmp4s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-01_07,2023-11-01_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 adultscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 mlxscore=0 clxscore=1011 mlxlogscore=786 malwarescore=0 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311010089
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Message Signaled Interrupts (MSI) has been introduced
to UFS driver since the MCQ be enabled. Hence in UFS DT
node we need to give the msi-parent property that point
to the hardware entity which serves as the MSI controller
for this UFS controller.

Signed-off-by: Ziqi Chen <quic_ziqichen@quicinc.com>
---
 Documentation/devicetree/bindings/ufs/ufs-common.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
index bbaee4f5..42309bb 100644
--- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
+++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
@@ -73,6 +73,8 @@ properties:
     description:
       Specifies max. load that can be drawn from VCCQ2 supply.
 
+  msi-parent: true
+
 dependencies:
   freq-table-hz: [ clocks ]
 
-- 
2.7.4


