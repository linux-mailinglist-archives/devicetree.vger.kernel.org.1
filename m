Return-Path: <devicetree+bounces-150940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16566A43F44
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:20:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F92B17793E
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 12:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15506268FDD;
	Tue, 25 Feb 2025 12:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Hj9DSQ+3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8395267B64;
	Tue, 25 Feb 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740485935; cv=none; b=FBpVLchvKfSF39IcwRVCRhDv9I68pPND+CxdaQ0RkHaJPxrKuVrvcAK4aqlLRVZ9BsNE9ey3LxdBPdKRsHrZtRoGtG60A+uxIIlCQtlOJsiuQMRGaSQrH08BLLnxntOnYcWWGJHO1RpYQTZO77bVoxcUkn09xj9b4GFBGgNZbmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740485935; c=relaxed/simple;
	bh=mYgDJH94ICdvAz/JhXRfMh/OKF+1pzCbMpON6+ulEVc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=emPFL9Vv3mzqsQiBF0hO6b7k1NaOXTO2PApOhMZmUZmuGLLhhoyBbUZ2SLs2YtEFdoMtB7NS7pmSPtkgnoNK+ZzM9ZVLtPqUk++VFMfwwH9A+BetLYzUpYvvq+6urmCIK89UhigLU7A9qeXXyLkIvOQ2yFMLw7Ni7T6gCqogHtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=Hj9DSQ+3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8oplJ017279;
	Tue, 25 Feb 2025 12:18:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ekYdLa4/0Vz
	1RVj+kC2ag4OwV8SsXSN8u/2tpE/AFzQ=; b=Hj9DSQ+3CrjcWJqTl4EsxvvcM7t
	V66CqeDOSHE0i65pPjn8wp65/gQMq+7UK4JCr7Wz2dDUfcMSkqpLkIefqwZF77Cd
	9bsmiY7YzHMNtQcKnFRMf+e2pBNYjI9AsW58wN0R/0zquYuzUFBGwan2deTa88SR
	3TSkaawuCIHRdQP5By3LsU6DzmsDIPXAe6O8YWkttuQK/vb8WFE5oXOHKGlIzkH/
	PLU7rnNmU9RKJokdd236TMYQ/vGjiTuIBezm+b9RYNCSqrDTyiu9njhwIPRCzT7r
	fT5X+GjL2m/sE/SYGDlrc7kVQdEuANCc7LfULhdcdX74TAnGO4ruKuare1A==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y5k68x90-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Feb 2025 12:18:38 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 51PCIXQt004486;
	Tue, 25 Feb 2025 12:18:34 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 44y7nkx1xh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Feb 2025 12:18:34 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 51PCIXtx004461;
	Tue, 25 Feb 2025 12:18:33 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-amakhija-hyd.qualcomm.com [10.213.99.91])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 51PCIXtl004453
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Feb 2025 12:18:33 +0000
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 4090850)
	id 8E9F957F; Tue, 25 Feb 2025 17:48:32 +0530 (+0530)
From: Ayushi Makhija <quic_amakhija@quicinc.com>
To: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Ayushi Makhija <quic_amakhija@quicinc.com>, robdclark@gmail.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
Subject: [PATCH 03/11] dt-bindings: display: msm: document DSI controller and phy on SA8775P
Date: Tue, 25 Feb 2025 17:48:16 +0530
Message-Id: <20250225121824.3869719-4-quic_amakhija@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250225121824.3869719-1-quic_amakhija@quicinc.com>
References: <20250225121824.3869719-1-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ZyccYoDPDp9tuExpb_73JWv1X5pNGWh7
X-Proofpoint-GUID: ZyccYoDPDp9tuExpb_73JWv1X5pNGWh7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_04,2025-02-25_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 bulkscore=0 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0
 mlxlogscore=999 suspectscore=0 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502250086

Document DSI controller and phy on SA8775P platform.

Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
---
 .../display/msm/qcom,sa8775p-mdss.yaml        | 170 ++++++++++++++++++
 1 file changed, 170 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
index a90a8b3f1a9e..25b65dda90ed 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
@@ -52,6 +52,22 @@ patternProperties:
         items:
           - const: qcom,sa8775p-dp
 
+  "^dsi@[0-9a-f]+$":
+    type: object
+    properties:
+      compatible:
+        items:
+          - const: qcom,sa8775p-dsi-ctrl
+          - const: qcom,mdss-dsi-ctrl
+
+  "^phy@[0-9a-f]+$":
+    type: object
+    properties:
+      compatible:
+        enum:
+          - qcom,sa8775p-dsi-phy-5nm
+          - qcom,sa8775p-edp-phy
+
 required:
   - compatible
 
@@ -158,6 +174,160 @@ examples:
             };
         };
 
+        dsi@ae94000 {
+            compatible = "qcom,sa8775p-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+            reg = <0x0ae94000 0x400>;
+            reg-names = "dsi_ctrl";
+
+            interrupt-parent = <&mdss>;
+            interrupts = <4>;
+
+            clocks = <&dispc_byte_clk>,
+                     <&dispcc_intf_clk>,
+                     <&dispcc_pclk>,
+                     <&dispcc_esc_clk>,
+                     <&dispcc_ahb_clk>,
+                     <&gcc_bus_clk>;
+            clock-names = "byte",
+                          "byte_intf",
+                          "pixel",
+                          "core",
+                          "iface",
+                          "bus";
+            assigned-clocks = <&dispcc_byte_clk>,
+                              <&dispcc_pclk>;
+            assigned-clock-parents = <&mdss0_dsi0_phy 0>, <&mdss0_dsi0_phy 1>;
+            phys = <&mdss0_dsi0_phy>;
+
+            operating-points-v2 = <&dsi0_opp_table>;
+            power-domains = <&rpmhpd SA8775P_MMCX>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    mdss_dsi0_in: endpoint {
+                        remote-endpoint = <&dpu_intf1_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    mdss_dsi0_out: endpoint { };
+                };
+            };
+
+            dsi0_opp_table: opp-table {
+                compatible = "operating-points-v2";
+
+                opp-358000000 {
+                    opp-hz = /bits/ 64 <358000000>;
+                    required-opps = <&rpmhpd_opp_svs_l1>;
+                };
+            };
+        };
+
+        mdss0_dsi0_phy: phy@ae94400 {
+            compatible = "qcom,sa8775p-dsi-phy-5nm";
+            reg = <0x0ae94400 0x200>,
+                  <0x0ae94600 0x280>,
+                  <0x0ae94900 0x27c>;
+            reg-names = "dsi_phy",
+                        "dsi_phy_lane",
+                        "dsi_pll";
+
+            #clock-cells = <1>;
+            #phy-cells = <0>;
+
+            clocks = <&dispcc_iface_clk>,
+                     <&rpmhcc_ref_clk>;
+            clock-names = "iface", "ref";
+
+            vdds-supply = <&vreg_dsi_supply>;
+        };
+
+        dsi@ae96000 {
+            compatible = "qcom,sa8775p-dsi-ctrl", "qcom,mdss-dsi-ctrl";
+            reg = <0x0ae96000 0x400>;
+            reg-names = "dsi_ctrl";
+
+            interrupt-parent = <&mdss>;
+            interrupts = <4>;
+
+            clocks = <&dispc_byte_clk>,
+                     <&dispcc_intf_clk>,
+                     <&dispcc_pclk>,
+                     <&dispcc_esc_clk>,
+                     <&dispcc_ahb_clk>,
+                     <&gcc_bus_clk>;
+            clock-names = "byte",
+                          "byte_intf",
+                          "pixel",
+                          "core",
+                          "iface",
+                          "bus";
+            assigned-clocks = <&dispcc_byte_clk>,
+                              <&dispcc_pclk>;
+            assigned-clock-parents = <&mdss0_dsi1_phy 0>, <&mdss0_dsi1_phy 1>;
+            phys = <&mdss0_dsi1_phy>;
+
+            operating-points-v2 = <&dsi1_opp_table>;
+            power-domains = <&rpmhpd SA8775P_MMCX>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    mdss_dsi1_in: endpoint {
+                        remote-endpoint = <&dpu_intf2_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    mdss_dsi1_out: endpoint { };
+                };
+            };
+
+            dsi1_opp_table: opp-table {
+                compatible = "operating-points-v2";
+
+                opp-358000000 {
+                    opp-hz = /bits/ 64 <358000000>;
+                    required-opps = <&rpmhpd_opp_svs_l1>;
+                };
+            };
+        };
+
+        mdss0_dsi1_phy: phy@ae96400 {
+            compatible = "qcom,sa8775p-dsi-phy-5nm";
+            reg = <0x0ae96400 0x200>,
+                  <0x0ae96600 0x280>,
+                  <0x0ae96900 0x27c>;
+            reg-names = "dsi_phy",
+                        "dsi_phy_lane",
+                        "dsi_pll";
+
+            #clock-cells = <1>;
+            #phy-cells = <0>;
+
+            clocks = <&dispcc_iface_clk>,
+                     <&rpmhcc_ref_clk>;
+            clock-names = "iface", "ref";
+
+            vdds-supply = <&vreg_dsi_supply>;
+        };
+
         displayport-controller@af54000 {
             compatible = "qcom,sa8775p-dp";
 
-- 
2.34.1


