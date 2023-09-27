Return-Path: <devicetree+bounces-3689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 952A17AFE0F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:19:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id B27B51C20908
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04C673C07;
	Wed, 27 Sep 2023 08:19:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A9614F67
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:19:17 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 408AD196;
	Wed, 27 Sep 2023 01:19:16 -0700 (PDT)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38R7BUlI006647;
	Wed, 27 Sep 2023 08:19:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=J9u/+D2zCY/87RIp3ZMHd3xTrm2mgrfjjUVaI33OnZk=;
 b=f6bjSowaC3aJHQNT3krztk1k/HPCU8UBepDAKx5T54h09GYUvS7balet6029sdeKB/In
 Mp+LWXJH4er76589b9AuJM6tDOE9L736hjIhn8oQMltQHI482KbBniGDSibHSqjqPa3W
 YM3zWH1LSkcU1d+z+ibrnF6LOwwLntCFIabaCKK604XRsD5fGoI8SYxJ2JwgCbNUEQnY
 bzZchsl2/LpurjnoJiPYs8TcnxY0yFTIoXmtKvHZZJuoiRTrNAjA+QDIjglST6dVPzTV
 JJ8X2oMG7TeWpTIfXMBzjiyAkHMQFtNY3X0fwc+vJtrqi21zUc+l3HnMGg7me1R/MtbC RQ== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tcfg7g4wy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 27 Sep 2023 08:19:04 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 38R8J1sr009655;
	Wed, 27 Sep 2023 08:19:01 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3t9s3ksnrr-1;
	Wed, 27 Sep 2023 08:19:01 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 38R8J10r009647;
	Wed, 27 Sep 2023 08:19:01 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 38R8J0UM009645;
	Wed, 27 Sep 2023 08:19:01 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id C69975000AA; Wed, 27 Sep 2023 13:48:59 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        mani@kernel.org, alim.akhtar@samsung.com, bvanassche@acm.org,
        avri.altman@wdc.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V3 0/4] Add UFS host controller and Phy nodes for sc7280
Date: Wed, 27 Sep 2023 13:48:54 +0530
Message-Id: <20230927081858.15961-1-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.17.1
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: lXgG2ODLh0-hBQbH58neyyyhUk-r_772
X-Proofpoint-ORIG-GUID: lXgG2ODLh0-hBQbH58neyyyhUk-r_772
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-27_03,2023-09-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 phishscore=0 spamscore=0 impostorscore=0 bulkscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 mlxlogscore=636 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309270067
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This patch adds UFS host controller and Phy nodes for Qualcomm sc7280 SOC
and sc7280 Board.

Changes from v2:
- Addressed Konrad comment to update binding qcom,ufs.yaml
- Addresses mani/konrad comment to align ufs clock entry in devicetree.

Changes from v1:
- Addressed mani comment to separate soc and board change.
- Addressed mani comment to sort ufs node in ascending order.

Nitin Rawat (4):
  scsi: ufs: qcom: dt-bindings: Add SC7280 compatible string
  arm64: dts: qcom: sc7280: Add UFS nodes for sc7280 soc
  arm64: dts: qcom: sc7280: Add UFS nodes for sc7280 IDP board
  dt-bindings: ufs: qcom: Align clk binding property for Qualcomm UFS

 .../devicetree/bindings/ufs/qcom,ufs.yaml     | 18 +++---
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi      | 19 ++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi          | 63 +++++++++++++++++++
 3 files changed, 92 insertions(+), 8 deletions(-)

--
2.17.1


