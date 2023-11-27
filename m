Return-Path: <devicetree+bounces-19060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1627F98C4
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 06:37:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18EF21C208EB
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 05:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E926653A2;
	Mon, 27 Nov 2023 05:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="lH0u1Jeb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CED01BC0;
	Sun, 26 Nov 2023 21:36:39 -0800 (PST)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AR4FQGw011281;
	Mon, 27 Nov 2023 05:36:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=GCPVOVi5g6LysSZSqHHe3W2fDnHZfgK9keTuJB1q5wk=;
 b=lH0u1Jebzl+vy48uFnKxmgWh8IrF6Z5N52UuYyIUeZ2X60cNb/8WCXcaQh0YK4ZI9jdZ
 lgZS3sok/0tiqsev3xXQ4g7m7cgwYEBT2PR8LBm2stsYphBYzbwyMHpVPrrETK+gI82E
 7h4FdU2RrKXr/FnhQuKdpKyRgUNh+UQerQIWNt5wWQC+5gci0OyE+vsmGj6y/k2zMwDZ
 wKf7TemsFzsitYXJAOSCnBrCjxvcdSg6OHfCMVpSHXg+g6tdb3X3MN2BrA4MH7n1+QL0
 OktePYqmIqenl/JIlQKQhIjDIYhGPE886+1qbLK57d2CtPQ1LCeH0EOnSaMFmWkL2OTM gw== 
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uk9ppk7pe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Nov 2023 05:36:12 +0000
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3AR5a9FB023415;
	Mon, 27 Nov 2023 05:36:09 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTP id 3uka0k9hyh-1;
	Mon, 27 Nov 2023 05:36:09 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3AR5a9aT023409;
	Mon, 27 Nov 2023 05:36:09 GMT
Received: from cbsp-sh-gv.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTP id 3AR5a8Hq023405;
	Mon, 27 Nov 2023 05:36:09 +0000
Received: by cbsp-sh-gv.qualcomm.com (Postfix, from userid 393357)
	id 28F26552F; Mon, 27 Nov 2023 13:36:08 +0800 (CST)
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
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Wolfram Sang <wsa@kernel.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
        linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v3] dt-bindings: ufs: Add msi-parent for UFS MCQ
Date: Mon, 27 Nov 2023 13:36:02 +0800
Message-Id: <1701063365-82582-1-git-send-email-quic_ziqichen@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: gNL2OK04Xe0OSooPseeNyimQDizKgmP3
X-Proofpoint-GUID: gNL2OK04Xe0OSooPseeNyimQDizKgmP3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-27_03,2023-11-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 mlxlogscore=949 suspectscore=0 lowpriorityscore=0
 clxscore=1011 mlxscore=0 bulkscore=0 spamscore=0 adultscore=0
 malwarescore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2311060000 definitions=main-2311270038
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

Signed-off-by: Ziqi Chen <quic_ziqichen@quicinc.com>

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


