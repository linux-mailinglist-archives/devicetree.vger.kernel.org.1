Return-Path: <devicetree+bounces-3699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C437AFE51
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:27:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C5110283BFE
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:27:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFCFA1F602;
	Wed, 27 Sep 2023 08:27:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE1D1C6B6
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:27:21 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C4549F;
	Wed, 27 Sep 2023 01:27:19 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38R6IxWh021728;
	Wed, 27 Sep 2023 08:27:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=NubOk9Fr5GHnmC2WR7H/SN/HkQpOGeBqfzorOzIFcAI=;
 b=iIAX1dckmtUQYeXbwRr8oCSP944w1El0P2CT5NCB/EafBUFTNUK963ejcjQ6VZutyLNc
 d00I4otIZpRpD+Tv8n7sMDh8kk5tkP9Dmv7j4WDwmaxNxdkn8r8hetsZI/R0Qbbrdhng
 KQySm/cY/cpZmSuO9g+HxFGX0G6hcdSTaxxTFrmQ397XaXqH52zkINWyoNQY/uPOva/a
 eRHZeSFF0iycJuWP/P+G45daxHoCiKD//GE7cIHvwJa8I9QdgW9GTQj4bqS++NdmxRhy
 zgERE/j3qvdlhE7MhFjNVBYyMGKiJff2phPkIuJyTxesHhmILtBbplh9M4E4Gyfvl1wO wg== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tcdyfgapa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 27 Sep 2023 08:27:07 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 38R8R3q5018228;
	Wed, 27 Sep 2023 08:27:03 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3t9s3kspt9-1;
	Wed, 27 Sep 2023 08:27:03 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 38R8R3xg018222;
	Wed, 27 Sep 2023 08:27:03 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 38R8R3YX018221;
	Wed, 27 Sep 2023 08:27:03 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 20EE15000AA; Wed, 27 Sep 2023 13:57:02 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        mani@kernel.org, alim.akhtar@samsung.com, bvanassche@acm.org,
        avri.altman@wdc.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V3 4/4] dt-bindings: ufs: qcom: Align clk binding property for Qualcomm UFS
Date: Wed, 27 Sep 2023 13:57:00 +0530
Message-Id: <20230927082700.17593-1-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.17.1
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: rAyZAgcwrsMVjB_tjLoTmga8z_M-yKex
X-Proofpoint-GUID: rAyZAgcwrsMVjB_tjLoTmga8z_M-yKex
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-27_03,2023-09-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1015
 impostorscore=0 bulkscore=0 priorityscore=1501 mlxscore=0 suspectscore=0
 mlxlogscore=999 spamscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309270068
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

Align the binding property for clock such that "clocks" property
comes first followed by "clock-names" property.

Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 .../devicetree/bindings/ufs/qcom,ufs.yaml        | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 802640efa956..d17bdc4e934f 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -295,14 +295,6 @@ examples:
                             <&gem_noc MASTER_APPSS_PROC &config_noc SLAVE_UFS_MEM_CFG>;
             interconnect-names = "ufs-ddr", "cpu-ufs";

-            clock-names = "core_clk",
-                          "bus_aggr_clk",
-                          "iface_clk",
-                          "core_clk_unipro",
-                          "ref_clk",
-                          "tx_lane0_sync_clk",
-                          "rx_lane0_sync_clk",
-                          "rx_lane1_sync_clk";
             clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
                      <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
                      <&gcc GCC_UFS_PHY_AHB_CLK>,
@@ -311,6 +303,14 @@ examples:
                      <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
                      <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
                      <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
+            clock-names = "core_clk",
+                          "bus_aggr_clk",
+                          "iface_clk",
+                          "core_clk_unipro",
+                          "ref_clk",
+                          "tx_lane0_sync_clk",
+                          "rx_lane0_sync_clk",
+                          "rx_lane1_sync_clk";
             freq-table-hz = <75000000 300000000>,
                             <0 0>,
                             <0 0>,
--
2.17.1


